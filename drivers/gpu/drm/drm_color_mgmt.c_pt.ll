; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_color_mgmt.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_color_mgmt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_color_ctm_s31_32_to_qm_n\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_color_ctm_s31_32_to_qm_n\09\09\09\09"
module asm "\09.long\09__crc_drm_color_ctm_s31_32_to_qm_n\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_color_ctm_s31_32_to_qm_n:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_color_ctm_s31_32_to_qm_n\22\09\09\09\09\09"
module asm "__kstrtabns_drm_color_ctm_s31_32_to_qm_n:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_crtc_enable_color_mgmt\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_crtc_enable_color_mgmt\09\09\09\09"
module asm "\09.long\09__crc_drm_crtc_enable_color_mgmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_crtc_enable_color_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_crtc_enable_color_mgmt\22\09\09\09\09\09"
module asm "__kstrtabns_drm_crtc_enable_color_mgmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_mode_crtc_set_gamma_size\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_crtc_set_gamma_size\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_crtc_set_gamma_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_crtc_set_gamma_size:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_crtc_set_gamma_size\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_crtc_set_gamma_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_plane_create_color_properties\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_plane_create_color_properties\09\09\09\09"
module asm "\09.long\09__crc_drm_plane_create_color_properties\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_plane_create_color_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_plane_create_color_properties\22\09\09\09\09\09"
module asm "__kstrtabns_drm_plane_create_color_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_color_lut_check\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_color_lut_check\09\09\09\09"
module asm "\09.long\09__crc_drm_color_lut_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_color_lut_check:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_color_lut_check\22\09\09\09\09\09"
module asm "__kstrtabns_drm_color_lut_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_crtc_lut = type { i32, i32, i64, i64, i64 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/drm_color_mgmt.c\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_drm_color_ctm_s31_32_to_qm_n = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_color_ctm_s31_32_to_qm_n = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_color_ctm_s31_32_to_qm_n = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_color_ctm_s31_32_to_qm_n to i32), ptr @__kstrtab_drm_color_ctm_s31_32_to_qm_n, ptr @__kstrtabns_drm_color_ctm_s31_32_to_qm_n }, section "___ksymtab+drm_color_ctm_s31_32_to_qm_n", align 4
@__kstrtab_drm_crtc_enable_color_mgmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_crtc_enable_color_mgmt = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_crtc_enable_color_mgmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_crtc_enable_color_mgmt to i32), ptr @__kstrtab_drm_crtc_enable_color_mgmt, ptr @__kstrtabns_drm_crtc_enable_color_mgmt }, section "___ksymtab+drm_crtc_enable_color_mgmt", align 4
@__kstrtab_drm_mode_crtc_set_gamma_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_crtc_set_gamma_size = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_crtc_set_gamma_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_crtc_set_gamma_size to i32), ptr @__kstrtab_drm_mode_crtc_set_gamma_size, ptr @__kstrtabns_drm_mode_crtc_set_gamma_size }, section "___ksymtab+drm_mode_crtc_set_gamma_size", align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@color_encoding_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@color_range_name = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"COLOR_ENCODING\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COLOR_RANGE\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_drm_plane_create_color_properties = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_plane_create_color_properties = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_plane_create_color_properties = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_plane_create_color_properties to i32), ptr @__kstrtab_drm_plane_create_color_properties, ptr @__kstrtabns_drm_plane_create_color_properties }, section "___ksymtab+drm_plane_create_color_properties", align 4
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"All LUT entries must have equal r/g/b\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"LUT entries must never decrease.\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_drm_color_lut_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_color_lut_check = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_color_lut_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_color_lut_check to i32), ptr @__kstrtab_drm_color_lut_check, ptr @__kstrtabns_drm_color_lut_check }, section "___ksymtab+drm_color_lut_check", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ITU-R BT.601 YCbCr\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ITU-R BT.709 YCbCr\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ITU-R BT.2020 YCbCr\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"YCbCr limited range\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YCbCr full range\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 136, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 489, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"color_encoding_name\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 468, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"color_range_name\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 474, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 555, i32 42 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 574, i32 42 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 611, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 620, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 230, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 214, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 156, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 469, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 470, i32 28 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 471, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 476, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [36 x i8] c"../drivers/gpu/drm/drm_color_mgmt.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 475, i32 33 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_drm_color_ctm_s31_32_to_qm_n, ptr @__ksymtab_drm_color_lut_check, ptr @__ksymtab_drm_crtc_enable_color_mgmt, ptr @__ksymtab_drm_mode_crtc_set_gamma_size, ptr @__ksymtab_drm_plane_create_color_properties, ptr @.str, ptr @.str.1, ptr @color_encoding_name, ptr @color_range_name, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @color_encoding_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @color_range_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @drm_color_ctm_s31_32_to_qm_n(i64 noundef %user_input, i32 noundef %m, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %user_input)
  %tobool.not = icmp sgt i64 %user_input, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %m)
  %cmp = icmp ugt i32 %m, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %n)
  %cmp3 = icmp ugt i32 %n, 32
  %spec.select = or i1 %cmp, %cmp3
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !53

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 136, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add31 = add i32 %m, -1
  %sub32 = add i32 %add31, %n
  %sh_prom33 = zext i32 %sub32 to i64
  br i1 %tobool.not, label %cond.false30, label %cond.true27

cond.true27:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i64 1, %sh_prom33
  br label %cond.end36

cond.false30:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %notmask = shl nsw i64 -1, %sh_prom33
  %sub35 = xor i64 %notmask, -1
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false30, %cond.true27
  %cond37 = phi i64 [ %shl, %cond.true27 ], [ %sub35, %cond.false30 ]
  %and = and i64 %user_input, 9223372036854775807
  %sub = sub i32 32, %n
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %and, %sh_prom
  %0 = tail call i64 @llvm.umin.i64(i64 %shr, i64 %cond37)
  %sub46 = sub nsw i64 0, %0
  %cond49 = select i1 %tobool.not, i64 %0, i64 %sub46
  ret i64 %cond49
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_crtc_enable_color_mgmt(ptr noundef %crtc, i32 noundef %degamma_lut_size, i1 noundef zeroext %has_ctm, i32 noundef %gamma_lut_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %degamma_lut_size)
  %tobool.not = icmp eq i32 %degamma_lut_size, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %degamma_lut_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 76
  %2 = ptrtoint ptr %degamma_lut_property to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %degamma_lut_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %3, i64 noundef 0) #7
  %degamma_lut_size_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 77
  %4 = ptrtoint ptr %degamma_lut_size_property to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %degamma_lut_size_property, align 4
  %conv = zext i32 %degamma_lut_size to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %5, i64 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %has_ctm, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base5 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %ctm_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 78
  %6 = ptrtoint ptr %ctm_property to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctm_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base5, ptr noundef %7, i64 noundef 0) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gamma_lut_size)
  %tobool7.not = icmp eq i32 %gamma_lut_size, 0
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %base9 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %gamma_lut_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 79
  %8 = ptrtoint ptr %gamma_lut_property to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gamma_lut_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base9, ptr noundef %9, i64 noundef 0) #7
  %gamma_lut_size_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 80
  %10 = ptrtoint ptr %gamma_lut_size_property to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gamma_lut_size_property, align 4
  %conv11 = zext i32 %gamma_lut_size to i64
  tail call void @drm_object_attach_property(ptr noundef %base9, ptr noundef %11, i64 noundef %conv11) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_crtc_set_gamma_size(ptr nocapture noundef writeonly %crtc, i32 noundef %gamma_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gamma_size1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %0 = ptrtoint ptr %gamma_size1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %gamma_size, ptr %gamma_size1, align 8
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %gamma_size, i32 6) #7
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !53

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %gamma_store33 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %3 = ptrtoint ptr %gamma_store33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %gamma_store33, align 4
  br label %if.then

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #10
  %gamma_store = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %5 = ptrtoint ptr %gamma_store to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %gamma_store, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.if.then_crit_edge, label %if.end

if.end7.i.i.if.then_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.end7.i.i.if.then_crit_edge, %kcalloc.exit.thread
  %6 = ptrtoint ptr %gamma_size1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %gamma_size1, align 8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %add.ptr = getelementptr i16, ptr %call8.i.i, i32 %gamma_size
  %add.ptr5 = getelementptr i16, ptr %add.ptr, i32 %gamma_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gamma_size)
  %cmp40.not = icmp eq i32 %gamma_size, 0
  br i1 %cmp40.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.041 to i16
  %conv = shl i16 %i.0.tr, 8
  %arrayidx = getelementptr i16, ptr %call8.i.i, i32 %i.041
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %arrayidx, align 2
  %arrayidx8 = getelementptr i16, ptr %add.ptr, i32 %i.041
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %arrayidx8, align 2
  %arrayidx11 = getelementptr i16, ptr %add.ptr5, i32 %i.041
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %arrayidx11, align 2
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, %gamma_size
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_gamma_set_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #7
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %2, i32 0, i32 24
  %3 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %4, 2
  %and2.i.i = and i32 %and.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i.i)
  %cmp.i.i149 = icmp eq i32 %and2.i.i, 2
  br i1 %cmp.i.i149, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 8
  %call.i = tail call ptr @drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %8, i32 noundef -858993460) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -128
  %tobool.not196 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not196
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %gamma_lut_property.i = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 79
  %11 = ptrtoint ptr %gamma_lut_property.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gamma_lut_property.i, align 4
  %base.i = getelementptr inbounds %struct.drm_property, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i, align 4
  %degamma_lut_property.i = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 76
  %15 = ptrtoint ptr %degamma_lut_property.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %degamma_lut_property.i, align 4
  %base3.i = getelementptr inbounds %struct.drm_property, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base3.i, align 4
  %gamma_size.i = getelementptr i8, ptr %call.i, i32 280
  %19 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gamma_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i150 = icmp eq i32 %20, 0
  br i1 %tobool.not.i150, label %if.end3.cleanup_crit_edge, label %if.end.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %funcs.i = getelementptr i8, ptr %call.i, i32 276
  %21 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs.i, align 4
  %gamma_set.i = getelementptr inbounds %struct.drm_crtc_funcs, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %gamma_set.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gamma_set.i, align 4
  %tobool5.not.i = icmp eq ptr %24, null
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end7.i:                                        ; preds = %if.end.i
  %call.i151 = tail call ptr @drm_mode_obj_find_prop_id(ptr noundef nonnull %call.i, i32 noundef %14) #7
  %tobool9.not.i = icmp eq ptr %call.i151, null
  br i1 %tobool9.not.i, label %drm_crtc_supports_legacy_gamma.exit, label %if.end7.i.if.end6_crit_edge

if.end7.i.if.end6_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

drm_crtc_supports_legacy_gamma.exit:              ; preds = %if.end7.i
  %call11.i = tail call ptr @drm_mode_obj_find_prop_id(ptr noundef nonnull %call.i, i32 noundef %18) #7
  %tobool12.i.not = icmp eq ptr %call11.i, null
  br i1 %tobool12.i.not, label %drm_crtc_supports_legacy_gamma.exit.cleanup_crit_edge, label %drm_crtc_supports_legacy_gamma.exit.if.end6_crit_edge

drm_crtc_supports_legacy_gamma.exit.if.end6_crit_edge: ; preds = %drm_crtc_supports_legacy_gamma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

drm_crtc_supports_legacy_gamma.exit.cleanup_crit_edge: ; preds = %drm_crtc_supports_legacy_gamma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %drm_crtc_supports_legacy_gamma.exit.if.end6_crit_edge, %if.end7.i.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %gamma_size = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gamma_size, align 4
  %27 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gamma_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not = icmp eq i32 %26, %28
  br i1 %cmp.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %29 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %driver_features.i.i.i, align 4
  %33 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i.i = and i32 %32, 16
  %and2.i.i.i = and i32 %and.i.i.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and2.i.i.i, 16
  br i1 %cmp.i.i.i, label %if.end9.if.end12_crit_edge, label %lor.rhs.i154

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

lor.rhs.i154:                                     ; preds = %if.end9
  %funcs.i152 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %35 = ptrtoint ptr %funcs.i152 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %funcs.i152, align 4
  %tobool.not.i153 = icmp eq ptr %36, null
  br i1 %tobool.not.i153, label %lor.rhs.i154.if.then11_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i154.if.then11_crit_edge:                 ; preds = %lor.rhs.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i154
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %38, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.then11_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.end12_crit_edge

drm_drv_uses_atomic_modeset.exit.if.end12_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

drm_drv_uses_atomic_modeset.exit.if.then11_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.then11:                                        ; preds = %drm_drv_uses_atomic_modeset.exit.if.then11_crit_edge, %lor.rhs.i154.if.then11_crit_edge
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config, i32 noundef 0) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %drm_drv_uses_atomic_modeset.exit.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #7
  %gamma_store = getelementptr i8, ptr %call.i, i32 284
  %red = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 2
  %green = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 3
  %blue = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 4
  br label %modeset_lock_retry

modeset_lock_retry:                               ; preds = %if.then37.modeset_lock_retry_crit_edge, %if.end12
  %call13 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %dev, ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %modeset_lock_retry.modeset_lock_fail_crit_edge

modeset_lock_retry.modeset_lock_fail_crit_edge:   ; preds = %modeset_lock_retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %modeset_lock_fail

if.end16:                                         ; preds = %modeset_lock_retry
  %39 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gamma_size, align 4
  %mul = shl i32 %40, 1
  %41 = ptrtoint ptr %gamma_store to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gamma_store, align 4
  %43 = ptrtoint ptr %red to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %red, align 8
  %conv = trunc i64 %44 to i32
  %45 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end16
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.end42_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.if.end42_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.end42

if.then.i.i.i:                                    ; preds = %if.end16
  call void @__check_object_size(ptr noundef %42, i32 noundef %mul, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %45, i32 %mul, i32 -1226833920) #11, !srcloc !55
  %asmresult.i.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !54

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %42, i32 noundef %mul) #7
  %47 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !56
  %and.i.i.i.i = and i32 %49, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %42, ptr noundef %45, i32 noundef %mul) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end21, label %if.then11.i.i, !prof !54

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %sub.i.i
  %50 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.end42

if.end21:                                         ; preds = %if.end.i.i
  %add.ptr = getelementptr i8, ptr %42, i32 %mul
  %51 = ptrtoint ptr %green to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %green, align 8
  %conv22 = trunc i64 %52 to i32
  %53 = inttoptr i32 %conv22 to ptr
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %mul, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i96 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i96, label %if.end21.if.end.i.i110_crit_edge, label %land.lhs.true.i.i100

if.end21.if.end.i.i110_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i110

land.lhs.true.i.i100:                             ; preds = %if.end21
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %53, i32 %mul, i32 -1226833920) #11, !srcloc !55
  %asmresult.i.i98 = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i98)
  %cmp.i6.i99 = icmp eq i32 %asmresult.i.i98, 0
  br i1 %cmp.i6.i99, label %if.then.i7.i107, label %land.lhs.true.i.i100.if.end.i.i110_crit_edge, !prof !54

land.lhs.true.i.i100.if.end.i.i110_crit_edge:     ; preds = %land.lhs.true.i.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i110

if.then.i7.i107:                                  ; preds = %land.lhs.true.i.i100
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %mul) #7
  %55 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i.i102 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i102 to ptr
  %cpu_domain.i.i.i.i.i103 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 4
  %57 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i103) #5, !srcloc !56
  %and.i.i.i.i104 = and i32 %57, -13
  %or.i.i.i.i105 = or i32 %and.i.i.i.i104, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i105) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %call1.i.i.i106 = call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %53, i32 noundef %mul) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  br label %if.end.i.i110

if.end.i.i110:                                    ; preds = %if.then.i7.i107, %land.lhs.true.i.i100.if.end.i.i110_crit_edge, %if.end21.if.end.i.i110_crit_edge
  %res.0.i.i108 = phi i32 [ %mul, %if.end21.if.end.i.i110_crit_edge ], [ %call1.i.i.i106, %if.then.i7.i107 ], [ %mul, %land.lhs.true.i.i100.if.end.i.i110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i108)
  %tobool4.not.i.i109 = icmp eq i32 %res.0.i.i108, 0
  br i1 %tobool4.not.i.i109, label %if.end26, label %if.then11.i.i113, !prof !54

if.then11.i.i113:                                 ; preds = %if.end.i.i110
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i111 = sub i32 %mul, %res.0.i.i108
  %add.ptr.i.i112 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i111
  %58 = call ptr @memset(ptr %add.ptr.i.i112, i32 0, i32 %res.0.i.i108)
  br label %if.end42

if.end26:                                         ; preds = %if.end.i.i110
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 %mul
  %59 = ptrtoint ptr %blue to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %blue, align 8
  %conv28 = trunc i64 %60 to i32
  %61 = inttoptr i32 %conv28 to ptr
  call void @__check_object_size(ptr noundef %add.ptr27, i32 noundef %mul, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #7
  %call.i.i129 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i129, label %if.end26.if.end.i.i143_crit_edge, label %land.lhs.true.i.i133

if.end26.if.end.i.i143_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i143

land.lhs.true.i.i133:                             ; preds = %if.end26
  %62 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %61, i32 %mul, i32 -1226833920) #11, !srcloc !55
  %asmresult.i.i131 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i131)
  %cmp.i6.i132 = icmp eq i32 %asmresult.i.i131, 0
  br i1 %cmp.i6.i132, label %if.then.i7.i140, label %land.lhs.true.i.i133.if.end.i.i143_crit_edge, !prof !54

land.lhs.true.i.i133.if.end.i.i143_crit_edge:     ; preds = %land.lhs.true.i.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i143

if.then.i7.i140:                                  ; preds = %land.lhs.true.i.i133
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i134 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr27, i32 noundef %mul) #7
  %63 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i.i135 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i135 to ptr
  %cpu_domain.i.i.i.i.i136 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i136) #5, !srcloc !56
  %and.i.i.i.i137 = and i32 %65, -13
  %or.i.i.i.i138 = or i32 %and.i.i.i.i137, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i138) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %call1.i.i.i139 = call i32 @arm_copy_from_user(ptr noundef %add.ptr27, ptr noundef %61, i32 noundef %mul) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  br label %if.end.i.i143

if.end.i.i143:                                    ; preds = %if.then.i7.i140, %land.lhs.true.i.i133.if.end.i.i143_crit_edge, %if.end26.if.end.i.i143_crit_edge
  %res.0.i.i141 = phi i32 [ %mul, %if.end26.if.end.i.i143_crit_edge ], [ %call1.i.i.i139, %if.then.i7.i140 ], [ %mul, %land.lhs.true.i.i133.if.end.i.i143_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i141)
  %tobool4.not.i.i142 = icmp eq i32 %res.0.i.i141, 0
  br i1 %tobool4.not.i.i142, label %if.end32, label %if.then11.i.i146, !prof !54

if.then11.i.i146:                                 ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i144 = sub i32 %mul, %res.0.i.i141
  %add.ptr.i.i145 = getelementptr i8, ptr %add.ptr27, i32 %sub.i.i144
  %66 = call ptr @memset(ptr %add.ptr.i.i145, i32 0, i32 %res.0.i.i141)
  br label %if.end42

if.end32:                                         ; preds = %if.end.i.i143
  %67 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gamma_size.i, align 8
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 8
  %degamma_lut_property.i155 = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 30, i32 76
  %71 = ptrtoint ptr %degamma_lut_property.i155 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %degamma_lut_property.i155, align 4
  %base3.i156 = getelementptr inbounds %struct.drm_property, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %base3.i156 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base3.i156, align 4
  %75 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %funcs.i, align 4
  %gamma_set.i158 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %gamma_set.i158 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gamma_set.i158, align 4
  %tobool.not.i159 = icmp eq ptr %78, null
  br i1 %tobool.not.i159, label %if.end.i165, label %if.then.i161

if.then.i161:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call.i160 = call i32 %78(ptr noundef %add.ptr.i, ptr noundef %42, ptr noundef %add.ptr, ptr noundef %add.ptr27, i32 noundef %68, ptr noundef nonnull %ctx) #7
  br label %modeset_lock_fail

if.end.i165:                                      ; preds = %if.end32
  %gamma_lut_property.i162 = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 30, i32 79
  %79 = ptrtoint ptr %gamma_lut_property.i162 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %gamma_lut_property.i162, align 4
  %base.i163 = getelementptr inbounds %struct.drm_property, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %base.i163 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %base.i163, align 4
  %call8.i = call ptr @drm_mode_obj_find_prop_id(ptr noundef %call.i, i32 noundef %82) #7
  %tobool9.not.i164 = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i164, label %if.else.i, label %if.end.i165.if.end17.i_crit_edge

if.end.i165.if.end17.i_crit_edge:                 ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end.i165
  %call12.i = call ptr @drm_mode_obj_find_prop_id(ptr noundef %call.i, i32 noundef %74) #7
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.else.i.if.end42_crit_edge, label %if.else.i.if.end17.i_crit_edge

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else.i.if.end42_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end17.i:                                       ; preds = %if.else.i.if.end17.i_crit_edge, %if.end.i165.if.end17.i_crit_edge
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %call19.i = call ptr @drm_atomic_state_alloc(ptr noundef %84) #7
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end17.i.if.end42_crit_edge, label %if.end22.i

if.end17.i.if.end42_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end22.i:                                       ; preds = %if.end17.i
  %mul.i = shl i32 %68, 3
  %call23.i = call ptr @drm_property_create_blob(ptr noundef %70, i32 noundef %mul.i, ptr noundef null) #7
  %cmp.i.i166 = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i166, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %call23.i to i32
  br label %fail.i

if.end27.i:                                       ; preds = %if.end22.i
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %call23.i, i32 0, i32 5
  %86 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp125.not.i = icmp eq i32 %68, 0
  br i1 %cmp125.not.i, label %if.end27.i.for.end.i_crit_edge, label %if.end27.i.for.body.i_crit_edge

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  br label %for.body.i

if.end27.i.for.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end27.i.for.body.i_crit_edge
  %i.0126.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end27.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %42, i32 %i.0126.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i, align 2
  %arrayidx28.i = getelementptr %struct.drm_color_lut, ptr %87, i32 %i.0126.i
  %90 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %arrayidx28.i, align 2
  %arrayidx30.i = getelementptr i16, ptr %add.ptr, i32 %i.0126.i
  %91 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx30.i, align 2
  %green32.i = getelementptr %struct.drm_color_lut, ptr %87, i32 %i.0126.i, i32 1
  %93 = ptrtoint ptr %green32.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %green32.i, align 2
  %arrayidx33.i = getelementptr i16, ptr %add.ptr27, i32 %i.0126.i
  %94 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx33.i, align 2
  %blue35.i = getelementptr %struct.drm_color_lut, ptr %87, i32 %i.0126.i, i32 2
  %96 = ptrtoint ptr %blue35.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %blue35.i, align 2
  %inc.i = add nuw i32 %i.0126.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %68
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end27.i.for.end.i_crit_edge
  %acquire_ctx.i = getelementptr inbounds %struct.drm_atomic_state, ptr %call19.i, i32 0, i32 9
  %97 = ptrtoint ptr %acquire_ctx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %ctx, ptr %acquire_ctx.i, align 4
  %call36.i = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %call19.i, ptr noundef %add.ptr.i) #7
  %cmp.i124.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124.i, label %if.then38.i, label %if.end40.i

if.then38.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %call36.i to i32
  br label %fail.i

if.end40.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %degamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %call36.i, i32 0, i32 10
  %spec.select.i167 = select i1 %tobool9.not.i164, ptr %call23.i, ptr null
  %call42.i = call zeroext i1 @drm_property_replace_blob(ptr noundef %degamma_lut.i, ptr noundef %spec.select.i167) #7
  %ctm.i = getelementptr inbounds %struct.drm_crtc_state, ptr %call36.i, i32 0, i32 11
  %call43.i = call zeroext i1 @drm_property_replace_blob(ptr noundef %ctm.i, ptr noundef null) #7
  %or121.i = or i1 %call42.i, %call43.i
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %call36.i, i32 0, i32 12
  %cond53.i = select i1 %tobool9.not.i164, ptr null, ptr %call23.i
  %call54.i = call zeroext i1 @drm_property_replace_blob(ptr noundef %gamma_lut.i, ptr noundef %cond53.i) #7
  %or58122.i = or i1 %or121.i, %call54.i
  %color_mgmt_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %call36.i, i32 0, i32 3
  %99 = ptrtoint ptr %color_mgmt_changed.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load.i = load i8, ptr %color_mgmt_changed.i, align 2
  %bf.load.mask.i = and i8 %bf.load.i, 4
  %bf.shl.i = select i1 %or58122.i, i8 4, i8 %bf.load.mask.i
  %bf.clear67.i = and i8 %bf.load.i, -5
  %bf.set.i = or i8 %bf.shl.i, %bf.clear67.i
  store i8 %bf.set.i, ptr %color_mgmt_changed.i, align 2
  %call69.i = call i32 @drm_atomic_commit(ptr noundef nonnull %call19.i) #7
  br label %fail.i

fail.i:                                           ; preds = %if.end40.i, %if.then38.i, %if.then25.i
  %blob.0.i = phi ptr [ null, %if.then25.i ], [ %call23.i, %if.then38.i ], [ %call23.i, %if.end40.i ]
  %ret.0.i = phi i32 [ %85, %if.then25.i ], [ %98, %if.then38.i ], [ %call69.i, %if.end40.i ]
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call19.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @llvm.prefetch.p0(ptr nonnull %call19.i, i32 1, i32 3, i32 1) #7
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call19.i, ptr nonnull %call19.i, i32 1, ptr nonnull elementtype(i32) %call19.i) #7, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i168, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %fail.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_atomic_state_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.i.drm_atomic_state_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_atomic_state_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %call19.i, i32 noundef 3) #7
  br label %drm_atomic_state_put.exit.i

if.then.i.i.i168:                                 ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @__drm_atomic_state_free(ptr noundef nonnull %call19.i) #7
  br label %drm_atomic_state_put.exit.i

drm_atomic_state_put.exit.i:                      ; preds = %if.then.i.i.i168, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_atomic_state_put.exit.i_crit_edge
  call void @drm_property_blob_put(ptr noundef %blob.0.i) #7
  br label %modeset_lock_fail

modeset_lock_fail:                                ; preds = %drm_atomic_state_put.exit.i, %if.then.i161, %modeset_lock_retry.modeset_lock_fail_crit_edge
  %ret.0 = phi i32 [ %call13, %modeset_lock_retry.modeset_lock_fail_crit_edge ], [ %call.i160, %if.then.i161 ], [ %ret.0.i, %drm_atomic_state_put.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %ret.0)
  %cmp35 = icmp eq i32 %ret.0, -35
  br i1 %cmp35, label %if.then37, label %modeset_lock_fail.if.end42_crit_edge

modeset_lock_fail.if.end42_crit_edge:             ; preds = %modeset_lock_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then37:                                        ; preds = %modeset_lock_fail
  %call38 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #7
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.modeset_lock_retry_crit_edge, label %if.then37.if.end42_crit_edge

if.then37.if.end42_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then37.modeset_lock_retry_crit_edge:           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %modeset_lock_retry

if.end42:                                         ; preds = %if.then37.if.end42_crit_edge, %modeset_lock_fail.if.end42_crit_edge, %if.end17.i.if.end42_crit_edge, %if.else.i.if.end42_crit_edge, %if.then11.i.i146, %if.then11.i.i113, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.end42_crit_edge
  %ret.1 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.if.end42_crit_edge ], [ -14, %if.then11.i.i113 ], [ -14, %if.then11.i.i146 ], [ -19, %if.else.i.if.end42_crit_edge ], [ -12, %if.end17.i.if.end42_crit_edge ], [ %ret.0, %modeset_lock_fail.if.end42_crit_edge ], [ %call38, %if.then37.if.end42_crit_edge ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #7
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #7
  %101 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i.i171 = getelementptr inbounds %struct.drm_driver, ptr %102, i32 0, i32 24
  %103 = ptrtoint ptr %driver_features.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %driver_features.i.i.i171, align 4
  %105 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i.i173 = and i32 %104, 16
  %and2.i.i.i174 = and i32 %and.i.i.i173, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and2.i.i.i174)
  %cmp.i.i.i175 = icmp eq i32 %and2.i.i.i174, 16
  br i1 %cmp.i.i.i175, label %if.end42.cleanup_crit_edge, label %lor.rhs.i178

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.rhs.i178:                                     ; preds = %if.end42
  %funcs.i176 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %107 = ptrtoint ptr %funcs.i176 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %funcs.i176, align 4
  %tobool.not.i177 = icmp eq ptr %108, null
  br i1 %tobool.not.i177, label %lor.rhs.i178.if.then44_crit_edge, label %drm_drv_uses_atomic_modeset.exit182

lor.rhs.i178.if.then44_crit_edge:                 ; preds = %lor.rhs.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

drm_drv_uses_atomic_modeset.exit182:              ; preds = %lor.rhs.i178
  %atomic_commit.i179 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %108, i32 0, i32 5
  %109 = ptrtoint ptr %atomic_commit.i179 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %atomic_commit.i179, align 4
  %cmp.i180.not = icmp eq ptr %110, null
  br i1 %cmp.i180.not, label %drm_drv_uses_atomic_modeset.exit182.if.then44_crit_edge, label %drm_drv_uses_atomic_modeset.exit182.cleanup_crit_edge

drm_drv_uses_atomic_modeset.exit182.cleanup_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

drm_drv_uses_atomic_modeset.exit182.if.then44_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then44:                                        ; preds = %drm_drv_uses_atomic_modeset.exit182.if.then44_crit_edge, %lor.rhs.i178.if.then44_crit_edge
  %mode_config45 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %mode_config45) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %drm_drv_uses_atomic_modeset.exit182.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %drm_crtc_supports_legacy_gamma.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -38, %drm_crtc_supports_legacy_gamma.exit.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %ret.1, %if.then44 ], [ %ret.1, %drm_drv_uses_atomic_modeset.exit182.cleanup_crit_edge ], [ -38, %if.end3.cleanup_crit_edge ], [ %ret.1, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_gamma_get_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i.i)
  %cmp.i.i93 = icmp eq i32 %and2.i.i, 2
  br i1 %cmp.i.i93, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  %call.i = tail call ptr @drm_mode_object_find(ptr noundef %dev, ptr noundef %file_priv, i32 noundef %7, i32 noundef -858993460) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -128
  %tobool.not98 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not98
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %gamma_size = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gamma_size, align 4
  %gamma_size4 = getelementptr i8, ptr %call.i, i32 280
  %10 = ptrtoint ptr %gamma_size4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gamma_size4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %mutex = getelementptr i8, ptr %call.i, i32 -108
  %call7 = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #7
  %12 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gamma_size, align 4
  %mul = shl i32 %13, 1
  %gamma_store = getelementptr i8, ptr %call.i, i32 284
  %14 = ptrtoint ptr %gamma_store to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gamma_store, align 4
  %red = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %red to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %red, align 8
  %conv = trunc i64 %17 to i32
  %18 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end6
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !54

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %out

if.then.i.i.i:                                    ; preds = %if.end6
  tail call void @__check_object_size(ptr noundef %15, i32 noundef %mul, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %mul, i32 -1226833920) #11, !srcloc !62
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %15, i32 noundef %mul) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %18, ptr noundef %15, i32 noundef %mul) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool10.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool10.not, label %if.end12, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %15, i32 %mul
  %green = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %green to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %green, align 8
  %conv13 = trunc i64 %21 to i32
  %22 = inttoptr i32 %conv13 to ptr
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %mul, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #7
  %call.i.i60 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i60, label %if.end12.copy_to_user.exit69_crit_edge, label %if.end.i.i64

if.end12.copy_to_user.exit69_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit69

if.end.i.i64:                                     ; preds = %if.end12
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 %mul, i32 -1226833920) #11, !srcloc !62
  %asmresult.i.i62 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i62)
  %cmp.i6.i63 = icmp eq i32 %asmresult.i.i62, 0
  br i1 %cmp.i6.i63, label %if.then2.i.i67, label %if.end.i.i64.copy_to_user.exit69_crit_edge

if.end.i.i64.copy_to_user.exit69_crit_edge:       ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit69

if.then2.i.i67:                                   ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %mul) #7
  %call.i12.i.i66 = tail call i32 @arm_copy_to_user(ptr noundef %22, ptr noundef %add.ptr, i32 noundef %mul) #7
  br label %copy_to_user.exit69

copy_to_user.exit69:                              ; preds = %if.then2.i.i67, %if.end.i.i64.copy_to_user.exit69_crit_edge, %if.end12.copy_to_user.exit69_crit_edge
  %n.addr.0.i68 = phi i32 [ %mul, %if.end12.copy_to_user.exit69_crit_edge ], [ %call.i12.i.i66, %if.then2.i.i67 ], [ %mul, %if.end.i.i64.copy_to_user.exit69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i68)
  %tobool15.not = icmp eq i32 %n.addr.0.i68, 0
  br i1 %tobool15.not, label %if.end17, label %copy_to_user.exit69.out_crit_edge

copy_to_user.exit69.out_crit_edge:                ; preds = %copy_to_user.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %copy_to_user.exit69
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %mul
  %blue = getelementptr inbounds %struct.drm_mode_crtc_lut, ptr %data, i32 0, i32 4
  %24 = ptrtoint ptr %blue to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %blue, align 8
  %conv19 = trunc i64 %25 to i32
  %26 = inttoptr i32 %conv19 to ptr
  tail call void @__check_object_size(ptr noundef %add.ptr18, i32 noundef %mul, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #7
  %call.i.i83 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i83, label %if.end17.copy_to_user.exit92_crit_edge, label %if.end.i.i87

if.end17.copy_to_user.exit92_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit92

if.end.i.i87:                                     ; preds = %if.end17
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 %mul, i32 -1226833920) #11, !srcloc !62
  %asmresult.i.i85 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i85)
  %cmp.i6.i86 = icmp eq i32 %asmresult.i.i85, 0
  br i1 %cmp.i6.i86, label %if.then2.i.i90, label %if.end.i.i87.copy_to_user.exit92_crit_edge

if.end.i.i87.copy_to_user.exit92_crit_edge:       ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit92

if.then2.i.i90:                                   ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i88 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr18, i32 noundef %mul) #7
  %call.i12.i.i89 = tail call i32 @arm_copy_to_user(ptr noundef %26, ptr noundef %add.ptr18, i32 noundef %mul) #7
  br label %copy_to_user.exit92

copy_to_user.exit92:                              ; preds = %if.then2.i.i90, %if.end.i.i87.copy_to_user.exit92_crit_edge, %if.end17.copy_to_user.exit92_crit_edge
  %n.addr.0.i91 = phi i32 [ %mul, %if.end17.copy_to_user.exit92_crit_edge ], [ %call.i12.i.i89, %if.then2.i.i90 ], [ %mul, %if.end.i.i87.copy_to_user.exit92_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i91)
  %tobool21.not = icmp eq i32 %n.addr.0.i91, 0
  %spec.select = select i1 %tobool21.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit92, %copy_to_user.exit69.out_crit_edge, %copy_to_user.exit.out_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %ret.0 = phi i32 [ -14, %copy_to_user.exit.out_crit_edge ], [ -14, %copy_to_user.exit69.out_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ], [ %spec.select, %copy_to_user.exit92 ]
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_get_color_encoding_name(i32 noundef %encoding) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %encoding)
  %cmp = icmp ugt i32 %encoding, 2
  br i1 %cmp, label %do.end, label %if.end21, !prof !53

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [3 x ptr], ptr @color_encoding_name, i32 0, i32 %encoding
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi ptr [ @.str.1, %do.end ], [ %1, %if.end21 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_get_color_range_name(i32 noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %range)
  %cmp = icmp ugt i32 %range, 1
  br i1 %cmp, label %do.end, label %if.end21, !prof !53

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [2 x ptr], ptr @color_range_name, i32 0, i32 %range
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi ptr [ @.str.1, %do.end ], [ %1, %if.end21 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_plane_create_color_properties(ptr noundef %plane, i32 noundef %supported_encodings, i32 noundef %supported_ranges, i32 noundef %default_encoding, i32 noundef %default_range) #0 align 64 {
entry:
  %enum_list = alloca [3 x %struct.drm_prop_enum_list], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %enum_list) #7
  %2 = getelementptr inbounds %struct.drm_prop_enum_list, ptr %enum_list, i32 0, i32 1
  %3 = add i32 %supported_encodings, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ult i32 %3, 7
  %5 = call ptr @memset(ptr %enum_list, i32 255, i32 24)
  br i1 %4, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %shl = shl nuw i32 1, %default_encoding
  %and3 = and i32 %shl, %supported_encodings
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !53

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 537, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  %6 = add i32 %supported_ranges, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %lor.rhs31, label %if.end25.do.end51_crit_edge

if.end25.do.end51_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

lor.rhs31:                                        ; preds = %if.end25
  %shl32 = shl nuw i32 1, %default_range
  %and33 = and i32 %shl32, %supported_ranges
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34 = icmp eq i32 %and33, 0
  br i1 %cmp34, label %lor.rhs31.do.end51_crit_edge, label %for.body.preheader, !prof !53

lor.rhs31.do.end51_crit_edge:                     ; preds = %lor.rhs31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

for.body.preheader:                               ; preds = %lor.rhs31
  %and70 = and i32 %supported_encodings, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %cmp71 = icmp eq i32 %and70, 0
  br i1 %cmp71, label %for.body.preheader.for.inc_crit_edge, label %if.end73

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end51:                                         ; preds = %lor.rhs31.do.end51_crit_edge, %if.end25.do.end51_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 542, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end73:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %enum_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %enum_list, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.9, ptr %2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end73, %for.body.preheader.for.inc_crit_edge
  %len.1 = phi i32 [ 0, %for.body.preheader.for.inc_crit_edge ], [ 1, %if.end73 ]
  %and70.1 = and i32 %supported_encodings, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.1)
  %cmp71.1 = icmp eq i32 %and70.1, 0
  br i1 %cmp71.1, label %for.inc.for.inc.1_crit_edge, label %if.end73.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end73.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %enum_list, i32 0, i32 %len.1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arrayidx.1, align 4
  %name.1 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %enum_list, i32 0, i32 %len.1, i32 1
  %11 = ptrtoint ptr %name.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.10, ptr %name.1, align 4
  %inc.1 = add nuw nsw i32 %len.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end73.1, %for.inc.for.inc.1_crit_edge
  %len.1.1 = phi i32 [ %len.1, %for.inc.for.inc.1_crit_edge ], [ %inc.1, %if.end73.1 ]
  %and70.2 = and i32 %supported_encodings, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.2)
  %cmp71.2 = icmp eq i32 %and70.2, 0
  br i1 %cmp71.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end73.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end73.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %enum_list, i32 0, i32 %len.1.1
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %arrayidx.2, align 4
  %name.2 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %enum_list, i32 0, i32 %len.1.1, i32 1
  %13 = ptrtoint ptr %name.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.11, ptr %name.2, align 4
  %inc.2 = add nuw nsw i32 %len.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end73.2, %for.inc.1.for.inc.2_crit_edge
  %len.1.2 = phi i32 [ %len.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %inc.2, %if.end73.2 ]
  %call = call ptr @drm_property_create_enum(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %enum_list, i32 noundef %len.1.2) #7
  %tobool77.not = icmp eq ptr %call, null
  br i1 %tobool77.not, label %for.inc.2.cleanup_crit_edge, label %if.end79

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79:                                         ; preds = %for.inc.2
  %color_encoding_property = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 24
  %14 = ptrtoint ptr %color_encoding_property to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %color_encoding_property, align 8
  %base = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 4
  %conv = zext i32 %default_encoding to i64
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef nonnull %call, i64 noundef %conv) #7
  %state = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %tobool80.not = icmp eq ptr %16, null
  br i1 %tobool80.not, label %if.end79.if.end83_crit_edge, label %if.then81

if.end79.if.end83_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %color_encoding = getelementptr inbounds %struct.drm_plane_state, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %color_encoding to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %default_encoding, ptr %color_encoding, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end79.if.end83_crit_edge
  %and89 = and i32 %supported_ranges, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %cmp90 = icmp eq i32 %and89, 0
  br i1 %cmp90, label %if.end83.for.inc100_crit_edge, label %if.end93

if.end83.for.inc100_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc100

if.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %enum_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %enum_list, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.12, ptr %2, align 4
  br label %for.inc100

for.inc100:                                       ; preds = %if.end93, %if.end83.for.inc100_crit_edge
  %len.3 = phi i32 [ 0, %if.end83.for.inc100_crit_edge ], [ 1, %if.end93 ]
  %and89.1 = and i32 %supported_ranges, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.1)
  %cmp90.1 = icmp eq i32 %and89.1, 0
  br i1 %cmp90.1, label %for.inc100.for.inc100.1_crit_edge, label %if.end93.1

for.inc100.for.inc100.1_crit_edge:                ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc100.1

if.end93.1:                                       ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx94.1 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %enum_list, i32 0, i32 %len.3
  %20 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %arrayidx94.1, align 4
  %name98.1 = getelementptr [3 x %struct.drm_prop_enum_list], ptr %enum_list, i32 0, i32 %len.3, i32 1
  %21 = ptrtoint ptr %name98.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.13, ptr %name98.1, align 4
  %inc99.1 = add nuw nsw i32 %len.3, 1
  br label %for.inc100.1

for.inc100.1:                                     ; preds = %if.end93.1, %for.inc100.for.inc100.1_crit_edge
  %len.3.1 = phi i32 [ %len.3, %for.inc100.for.inc100.1_crit_edge ], [ %inc99.1, %if.end93.1 ]
  %call104 = call ptr @drm_property_create_enum(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %enum_list, i32 noundef %len.3.1) #7
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %for.inc100.1.cleanup_crit_edge, label %if.end107

for.inc100.1.cleanup_crit_edge:                   ; preds = %for.inc100.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107:                                        ; preds = %for.inc100.1
  %color_range_property = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 25
  %22 = ptrtoint ptr %color_range_property to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call104, ptr %color_range_property, align 4
  %conv109 = zext i32 %default_range to i64
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef nonnull %call104, i64 noundef %conv109) #7
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  %tobool111.not = icmp eq ptr %24, null
  br i1 %tobool111.not, label %if.end107.cleanup_crit_edge, label %if.then112

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  %color_range = getelementptr inbounds %struct.drm_plane_state, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %color_range to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %default_range, ptr %color_range, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %if.end107.cleanup_crit_edge, %for.inc100.1.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %do.end51, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end51 ], [ -12, %for.inc.2.cleanup_crit_edge ], [ -12, %for.inc100.1.cleanup_crit_edge ], [ 0, %if.then112 ], [ 0, %if.end107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %enum_list) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_color_lut_check(ptr noundef readonly %lut, i32 noundef %tests) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %lut, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tests)
  %tobool2.not = icmp eq i32 %tests, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.drm_property_blob, ptr %lut, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %lut, i32 0, i32 4
  %2 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp83.not = icmp ult i32 %3, 8
  br i1 %cmp83.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %div1.i = lshr i32 %3, 3
  %and = and i32 %tests, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %and22 = and i32 %tests, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool3.not, label %for.body.if.end19_crit_edge, label %if.then4

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then4:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.drm_color_lut, ptr %1, i32 %i.084
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %blue = getelementptr %struct.drm_color_lut, ptr %1, i32 %i.084, i32 2
  %6 = ptrtoint ptr %blue to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %blue, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp7.not = icmp eq i16 %5, %7
  br i1 %cmp7.not, label %lor.lhs.false9, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false9:                                   ; preds = %if.then4
  %green = getelementptr %struct.drm_color_lut, ptr %1, i32 %i.084, i32 1
  %8 = ptrtoint ptr %green to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %green, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %9)
  %cmp15.not = icmp eq i16 %5, %9
  br i1 %cmp15.not, label %lor.lhs.false9.if.end19_crit_edge, label %lor.lhs.false9.cleanup.sink.split_crit_edge

lor.lhs.false9.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false9.if.end19_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %lor.lhs.false9.if.end19_crit_edge, %for.body.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.084)
  %cmp20 = icmp eq i32 %i.084, 0
  %or.cond82 = or i1 %tobool23.not, %cmp20
  br i1 %or.cond82, label %if.end19.for.inc_crit_edge, label %if.then24

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then24:                                        ; preds = %if.end19
  %arrayidx25 = getelementptr %struct.drm_color_lut, ptr %1, i32 %i.084
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx25, align 2
  %sub = add nsw i32 %i.084, -1
  %arrayidx28 = getelementptr %struct.drm_color_lut, ptr %1, i32 %sub
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx28, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp31 = icmp ult i16 %11, %13
  br i1 %cmp31, label %if.then24.cleanup.sink.split_crit_edge, label %lor.lhs.false33

if.then24.cleanup.sink.split_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false33:                                  ; preds = %if.then24
  %green35 = getelementptr %struct.drm_color_lut, ptr %1, i32 %i.084, i32 1
  %14 = ptrtoint ptr %green35 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %green35, align 2
  %green39 = getelementptr %struct.drm_color_lut, ptr %1, i32 %sub, i32 1
  %16 = ptrtoint ptr %green39 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %green39, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp41 = icmp ult i16 %15, %17
  br i1 %cmp41, label %lor.lhs.false33.cleanup.sink.split_crit_edge, label %lor.lhs.false43

lor.lhs.false33.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

lor.lhs.false43:                                  ; preds = %lor.lhs.false33
  %blue45 = getelementptr %struct.drm_color_lut, ptr %1, i32 %i.084, i32 2
  %18 = ptrtoint ptr %blue45 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %blue45, align 2
  %blue49 = getelementptr %struct.drm_color_lut, ptr %1, i32 %sub, i32 2
  %20 = ptrtoint ptr %blue49 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %blue49, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp51 = icmp ult i16 %19, %21
  br i1 %cmp51, label %lor.lhs.false43.cleanup.sink.split_crit_edge, label %lor.lhs.false43.for.inc_crit_edge

lor.lhs.false43.for.inc_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false43.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc:                                          ; preds = %lor.lhs.false43.for.inc_crit_edge, %if.end19.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %div1.i
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %lor.lhs.false43.cleanup.sink.split_crit_edge, %lor.lhs.false33.cleanup.sink.split_crit_edge, %if.then24.cleanup.sink.split_crit_edge, %lor.lhs.false9.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.4, %lor.lhs.false9.cleanup.sink.split_crit_edge ], [ @.str.4, %if.then4.cleanup.sink.split_crit_edge ], [ @.str.5, %lor.lhs.false43.cleanup.sink.split_crit_edge ], [ @.str.5, %lor.lhs.false33.cleanup.sink.split_crit_edge ], [ @.str.5, %if.then24.cleanup.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.5.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_object_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_obj_find_prop_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_blob(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_replace_blob(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 136, i32 2}
!2 = !{ptr @__ksymtab_drm_color_ctm_s31_32_to_qm_n, !3, !"__ksymtab_drm_color_ctm_s31_32_to_qm_n", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 143, i32 1}
!4 = !{ptr @__ksymtab_drm_crtc_enable_color_mgmt, !5, !"__ksymtab_drm_crtc_enable_color_mgmt", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 188, i32 1}
!6 = !{ptr @__ksymtab_drm_mode_crtc_set_gamma_size, !7, !"__ksymtab_drm_mode_crtc_set_gamma_size", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 229, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 489, i32 10}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 555, i32 42}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 574, i32 42}
!14 = !{ptr @__ksymtab_drm_plane_create_color_properties, !15, !"__ksymtab_drm_plane_create_color_properties", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 585, i32 1}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 611, i32 5}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 620, i32 5}
!20 = !{ptr @__ksymtab_drm_color_lut_check, !21, !"__ksymtab_drm_color_lut_check", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 628, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 469, i32 28}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 470, i32 28}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 471, i32 29}
!35 = !{ptr @color_encoding_name, !36, !"color_encoding_name", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 468, i32 27}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 476, i32 36}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 475, i32 33}
!41 = !{ptr @color_range_name, !42, !"color_range_name", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/drm_color_mgmt.c", i32 474, i32 27}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2150515627, i64 2150515652}
!56 = !{i64 3011182}
!57 = !{i64 3011379}
!58 = !{i64 2150496612}
!59 = !{i64 2148550458}
!60 = !{i64 2148464922, i64 2148464954, i64 2148464983, i64 2148465017, i64 2148465048, i64 2148465071}
!61 = !{i64 2149586181}
!62 = !{i64 2150516308, i64 2150516333}
