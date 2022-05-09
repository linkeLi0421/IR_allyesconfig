; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_encoder_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_encoder_init\09\09\09\09"
module asm "\09.long\09__crc_drm_encoder_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_encoder_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_encoder_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_encoder_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_encoder_cleanup\09\09\09\09"
module asm "\09.long\09__crc_drm_encoder_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_encoder_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_encoder_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_encoder_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__drmm_encoder_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc___drmm_encoder_alloc\09\09\09\09"
module asm "\09.long\09__crc___drmm_encoder_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_encoder_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_encoder_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.anon.85 = type { i32, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_mode_get_encoder = type { i32, i32, i32, i32, i32 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/drm_encoder.c\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_drm_encoder_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_encoder_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_encoder_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_encoder_init to i32), ptr @__kstrtab_drm_encoder_init, ptr @__kstrtabns_drm_encoder_init }, section "___ksymtab+drm_encoder_init", align 4
@__kstrtab_drm_encoder_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_encoder_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_encoder_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_encoder_cleanup to i32), ptr @__kstrtab_drm_encoder_cleanup, ptr @__kstrtabns_drm_encoder_cleanup }, section "___ksymtab+drm_encoder_cleanup", align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drmm_encoder_alloc_release\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab___drmm_encoder_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_encoder_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_encoder_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_encoder_alloc to i32), ptr @__kstrtab___drmm_encoder_alloc, ptr @__kstrtabns___drmm_encoder_alloc }, section "___ksymtab+__drmm_encoder_alloc", align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@drm_encoder_enum_list = internal constant { [9 x %struct.drm_prop_enum_list], [56 x i8] } { [9 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.3 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.4 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.5 }, %struct.drm_prop_enum_list { i32 3, ptr @.str.6 }, %struct.drm_prop_enum_list { i32 4, ptr @.str.7 }, %struct.drm_prop_enum_list { i32 5, ptr @.str.8 }, %struct.drm_prop_enum_list { i32 6, ptr @.str.9 }, %struct.drm_prop_enum_list { i32 7, ptr @.str.10 }, %struct.drm_prop_enum_list { i32 8, ptr @.str.11 }], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TMDS\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LVDS\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TV\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Virtual\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSI\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DP MST\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DPI\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 166, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 239, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 117, i32 41 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"drm_encoder_enum_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 58, i32 40 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 59, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 60, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 61, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 62, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 63, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 64, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 65, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 66, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [33 x i8] c"../drivers/gpu/drm/drm_encoder.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 67, i32 26 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab___drmm_encoder_alloc, ptr @__ksymtab_drm_encoder_cleanup, ptr @__ksymtab_drm_encoder_init, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @drm_encoder_enum_list, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_encoder_enum_list to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_encoder_register_all(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %encoder_list, %entry ], [ %.pn, %if.end.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %encoder.0 = getelementptr i8, ptr %.pn, i32 -4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %funcs = getelementptr i8, ptr %.pn, i32 60
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %late_register = getelementptr inbounds %struct.drm_encoder_funcs, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %late_register to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %late_register, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %4(ptr noundef %encoder.0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %ret.1 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  %tobool7.not = icmp eq i32 %ret.1, 0
  br i1 %tobool7.not, label %if.end.for.cond_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_encoder_unregister_all(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %0 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn19 = load ptr, ptr %encoder_list, align 4
  %cmp.not21 = icmp eq ptr %.pn19, %encoder_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn22 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %encoder.023 = getelementptr i8, ptr %.pn22, i32 -4
  %funcs = getelementptr i8, ptr %.pn22, i32 60
  %1 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %funcs, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %early_unregister = getelementptr inbounds %struct.drm_encoder_funcs, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %early_unregister to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %early_unregister, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %4(ptr noundef %encoder.023) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_encoder_init(ptr noundef %dev, ptr noundef %encoder, ptr noundef %funcs, i32 noundef %encoder_type, ptr noundef %name, ...) #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #4
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !41
  %destroy = getelementptr inbounds %struct.drm_encoder_funcs, ptr %funcs, i32 0, i32 1
  %1 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %destroy, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.va_start(ptr nonnull %ap)
  %3 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call fastcc i32 @__drm_encoder_init(ptr noundef %dev, ptr noundef %encoder, ptr noundef %funcs, i32 noundef %encoder_type, ptr noundef %name, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__drm_encoder_init(ptr noundef %dev, ptr noundef %encoder, ptr noundef %funcs, i32 noundef %encoder_type, ptr noundef %name, [1 x i32] %ap.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_encoder = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 15
  %0 = ptrtoint ptr %num_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_encoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %do.end, label %if.end21, !prof !42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end21:                                         ; preds = %entry
  %base = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 2
  %call = tail call i32 @drm_mode_object_add(ptr noundef %dev, ptr noundef %base, i32 noundef -522133280) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %encoder, align 4
  %encoder_type26 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %3 = ptrtoint ptr %encoder_type26 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %encoder_type, ptr %encoder_type26, align 4
  %funcs27 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 10
  %4 = ptrtoint ptr %funcs27 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %funcs, ptr %funcs27, align 4
  %tobool28.not = icmp eq ptr %name, null
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef nonnull %name, [1 x i32] %ap.coerce) #4
  br label %if.end37

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %name33 = getelementptr [9 x %struct.drm_prop_enum_list], ptr @drm_encoder_enum_list, i32 0, i32 %encoder_type, i32 1
  %5 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name33, align 4
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  %call35 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %6, i32 noundef %8) #4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29
  %call31.sink = phi ptr [ %call35, %if.else ], [ %call31, %if.then29 ]
  %9 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call31.sink, ptr %9, align 4
  %tobool39.not = icmp eq ptr %call31.sink, null
  br i1 %tobool39.not, label %if.then46, label %if.end41

if.end41:                                         ; preds = %if.end37
  %bridge_chain = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 9
  %11 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %bridge_chain, ptr %bridge_chain, align 4
  %prev.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bridge_chain, ptr %prev.i, align 4
  %head = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 1
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %prev.i71 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16, i32 1
  %13 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i71, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %14, ptr noundef %encoder_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.out_put_crit_edge

if.end41.out_put_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i71 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %head, ptr %prev.i71, align 4
  %16 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %encoder_list, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %head, ptr %14, align 4
  br label %out_put

out_put:                                          ; preds = %if.end.i.i, %if.end41.out_put_crit_edge
  %19 = ptrtoint ptr %num_encoder to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_encoder, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %num_encoder, align 4
  %index = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 5
  %21 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %index, align 4
  br label %cleanup

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mode_object_unregister(ptr noundef %dev, ptr noundef %base) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %out_put, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end21.cleanup_crit_edge ], [ -12, %if.then46 ], [ 0, %out_put ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_encoder_cleanup(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %bridge_chain = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 9
  %2 = ptrtoint ptr %bridge_chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_chain, align 4
  %cmp.not25 = icmp eq ptr %3, %bridge_chain
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in26 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %bridge.0 = getelementptr i8, ptr %.pn.in26, i32 -132
  %4 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in26, align 4
  tail call void @drm_bridge_detach(ptr noundef %bridge.0) #4
  %cmp.not = icmp eq ptr %.pn, %bridge_chain
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %base = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 2
  tail call void @drm_mode_object_unregister(ptr noundef %1, ptr noundef %base) #4
  %name = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %6) #4
  %head = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_encoder = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 15
  %15 = ptrtoint ptr %num_encoder to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_encoder, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %num_encoder, align 4
  %17 = call ptr @memset(ptr %encoder, i32 0, i32 72)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__drmm_encoder_alloc(ptr noundef %dev, i32 noundef %size, i32 noundef %offset, ptr noundef %funcs, i32 noundef %encoder_type, ptr noundef %name, ...) #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #4
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !41
  %tobool.not = icmp eq ptr %funcs, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %land.rhs

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

land.rhs:                                         ; preds = %entry
  %destroy = getelementptr inbounds %struct.drm_encoder_funcs, ptr %funcs, i32 0, i32 1
  %1 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %destroy, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %land.rhs.if.end23_crit_edge, label %do.end, !prof !43

land.rhs.if.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 224, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %land.rhs.if.end23_crit_edge, %entry.if.end23_crit_edge
  %call.i = tail call noalias ptr @drmm_kmalloc(ptr noundef %dev, i32 noundef %size, i32 noundef 3520) #4
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %add.ptr = getelementptr i8, ptr %call.i, i32 %offset
  call void @llvm.va_start(ptr nonnull %ap)
  %3 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %3)
  %.fca.0.load = load i32, ptr %ap, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call29 = call fastcc i32 @__drm_encoder_init(ptr noundef %dev, ptr noundef %add.ptr, ptr noundef %funcs, i32 noundef %encoder_type, ptr noundef %name, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %4 = inttoptr i32 %call29 to ptr
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @drmm_encoder_alloc_release, ptr noundef %add.ptr, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  %5 = inttoptr i32 %call34 to ptr
  %spec.select = select i1 %tobool35.not, ptr %call.i, ptr %5
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %4, %if.then31 ], [ inttoptr (i32 -22 to ptr), %if.end23.cleanup_crit_edge ], [ %spec.select, %if.end33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drmm_encoder_alloc_release(ptr nocapture noundef readnone %dev, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end24:                                         ; preds = %entry
  %bridge_chain.i = getelementptr inbounds %struct.drm_encoder, ptr %ptr, i32 0, i32 9
  %2 = ptrtoint ptr %bridge_chain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge_chain.i, align 4
  %cmp.not25.i = icmp eq ptr %3, %bridge_chain.i
  br i1 %cmp.not25.i, label %if.end24.for.end.i_crit_edge, label %if.end24.for.body.i_crit_edge

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

if.end24.for.end.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %3, %if.end24.for.body.i_crit_edge ]
  %bridge.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -132
  %4 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  tail call void @drm_bridge_detach(ptr noundef %bridge.0.i) #4
  %cmp.not.i = icmp eq ptr %.pn.i, %bridge_chain.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end24.for.end.i_crit_edge
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %ptr, i32 0, i32 2
  tail call void @drm_mode_object_unregister(ptr noundef nonnull %1, ptr noundef %base.i) #4
  %name.i = getelementptr inbounds %struct.drm_encoder, ptr %ptr, i32 0, i32 3
  %5 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %6) #4
  %head.i = getelementptr inbounds %struct.drm_encoder, ptr %ptr, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.drm_encoder_cleanup.exit_crit_edge

for.end.i.drm_encoder_cleanup.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %drm_encoder_cleanup.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.drm_encoder, ptr %ptr, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %drm_encoder_cleanup.exit

drm_encoder_cleanup.exit:                         ; preds = %if.end.i.i.i, %for.end.i.drm_encoder_cleanup.exit_crit_edge
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.drm_encoder, ptr %ptr, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %num_encoder.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 15
  %15 = ptrtoint ptr %num_encoder.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_encoder.i, align 4
  %dec.i = add i32 %16, -1
  store i32 %dec.i, ptr %num_encoder.i, align 4
  %17 = call ptr @memset(ptr %ptr, i32 0, i32 72)
  br label %cleanup

cleanup:                                          ; preds = %drm_encoder_cleanup.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_getencoder(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %conn_iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %3, 2
  %and2.i.i = and i32 %and.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %call.i = tail call ptr @drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %7, i32 noundef -522133280) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -12
  %tobool.not46 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not46
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 1
  %call4 = tail call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter.i) #4
  %10 = ptrtoint ptr %conn_iter.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter.i, align 4, !annotation !41
  %11 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !41
  call void @drm_connector_list_iter_begin(ptr noundef %9, ptr noundef nonnull %conn_iter.i) #4
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end.i.while.cond.outer.i_crit_edge, %if.end3
  %uses_atomic.0.off0.ph.i = phi i1 [ true, %if.end.i.while.cond.outer.i_crit_edge ], [ false, %if.end3 ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %call.i42 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter.i) #4
  %tobool.not.i43 = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i43, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %state.i = getelementptr inbounds %struct.drm_connector, ptr %call.i42, i32 0, i32 52
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state.i, align 8
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

if.end.i:                                         ; preds = %while.body.i
  %best_encoder.i = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %best_encoder.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %best_encoder.i, align 4
  %cmp.not.i = icmp eq ptr %16, %add.ptr.i
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.while.cond.outer.i_crit_edge

if.end.i.while.cond.outer.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.outer.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %state.i.le.le = getelementptr inbounds %struct.drm_connector, ptr %call.i42, i32 0, i32 52
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter.i) #4
  %17 = ptrtoint ptr %state.i.le.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state.i.le.le, align 8
  %crtc.i = getelementptr inbounds %struct.drm_connector_state, ptr %18, i32 0, i32 1
  br label %drm_encoder_get_crtc.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter.i) #4
  br i1 %uses_atomic.0.off0.ph.i, label %drm_encoder_get_crtc.exit.thread, label %if.end9.i

drm_encoder_get_crtc.exit.thread:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter.i) #4
  br label %if.end12

if.end9.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %crtc10.i = getelementptr i8, ptr %call.i, i32 40
  br label %drm_encoder_get_crtc.exit

drm_encoder_get_crtc.exit:                        ; preds = %if.end9.i, %if.end5.i
  %crtc10.sink.i = phi ptr [ %crtc10.i, %if.end9.i ], [ %crtc.i, %if.end5.i ]
  %19 = ptrtoint ptr %crtc10.sink.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc10.sink.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter.i) #4
  %tobool6.not = icmp eq ptr %20, null
  br i1 %tobool6.not, label %drm_encoder_get_crtc.exit.if.end12_crit_edge, label %land.lhs.true

drm_encoder_get_crtc.exit.if.end12_crit_edge:     ; preds = %drm_encoder_get_crtc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

land.lhs.true:                                    ; preds = %drm_encoder_get_crtc.exit
  %base = getelementptr inbounds %struct.drm_crtc, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 8
  %call7 = call zeroext i1 @drm_lease_held(ptr noundef %file_priv, i32 noundef %22) #4
  br i1 %call7, label %if.then8, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %land.lhs.true.if.end12_crit_edge, %drm_encoder_get_crtc.exit.if.end12_crit_edge, %drm_encoder_get_crtc.exit.thread
  %.sink = phi i32 [ %24, %if.then8 ], [ 0, %drm_encoder_get_crtc.exit.thread ], [ 0, %land.lhs.true.if.end12_crit_edge ], [ 0, %drm_encoder_get_crtc.exit.if.end12_crit_edge ]
  %crtc_id11 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %crtc_id11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %crtc_id11, align 4
  call void @drm_modeset_unlock(ptr noundef %connection_mutex) #4
  %encoder_type = getelementptr i8, ptr %call.i, i32 24
  %26 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %encoder_type, align 4
  %encoder_type15 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %encoder_type15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %encoder_type15, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call.i, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %data, align 4
  %possible_crtcs = getelementptr i8, ptr %call.i, i32 32
  %32 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %possible_crtcs, align 4
  %call19 = call i32 @drm_lease_filter_crtcs(ptr noundef %file_priv, i32 noundef %33) #4
  %possible_crtcs20 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %data, i32 0, i32 3
  %34 = ptrtoint ptr %possible_crtcs20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call19, ptr %possible_crtcs20, align 4
  %possible_clones = getelementptr i8, ptr %call.i, i32 36
  %35 = ptrtoint ptr %possible_clones to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %possible_clones, align 4
  %possible_clones21 = getelementptr inbounds %struct.drm_mode_get_encoder, ptr %data, i32 0, i32 4
  %37 = ptrtoint ptr %possible_clones21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %possible_clones21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -95, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_lease_filter_crtcs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 166, i32 2}
!2 = !{ptr @__ksymtab_drm_encoder_init, !3, !"__ksymtab_drm_encoder_init", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 174, i32 1}
!4 = !{ptr @__ksymtab_drm_encoder_cleanup, !5, !"__ksymtab_drm_encoder_cleanup", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 203, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 239, i32 8}
!8 = !{ptr @__ksymtab___drmm_encoder_alloc, !9, !"__ksymtab___drmm_encoder_alloc", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 245, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 117, i32 41}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 59, i32 27}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 60, i32 26}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 61, i32 27}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 62, i32 27}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 63, i32 28}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 64, i32 30}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 65, i32 26}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 66, i32 28}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 67, i32 26}
!30 = !{ptr @drm_encoder_enum_list, !31, !"drm_encoder_enum_list", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/drm_encoder.c", i32 58, i32 40}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 2000, i32 1}
