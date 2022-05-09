; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_cursor.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_cursor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.sti_cursor = type { %struct.sti_plane, ptr, ptr, i32, i32, ptr, i32, %struct.dma_pixmap }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
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
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.dma_pixmap = type { i32, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.86 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate memory for cursor\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to allocate memory for cursor clut\0A\00", [53 x i8] zeroinitializer }, align 32
@sti_cursor_plane_helpers_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @sti_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr @sti_cursor_late_register, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@cursor_supported_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713089], [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize universal plane\0A\00", [58 x i8] zeroinitializer }, align 32
@sti_cursor_helpers_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sti_cursor_atomic_check, ptr @sti_cursor_atomic_update, ptr @sti_cursor_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cursor_debugfs_files = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.3, ptr @cursor_dbg_show, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cursor\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: (vaddr = 0x%p)\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A  %-25s 0x%08X\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CUR_CTL\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CUR_VPO\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CUR_PML\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CUR_PMP\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CUR_SIZE\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CUR_CML\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CUR_AWS\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CUR_AWE\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09xdo:%4d\09ydo:%4d\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09Virt @: %p\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09%d x %d\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid cursor size (%dx%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to allocate memory for pixmap\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't get CMA GEM object for fb\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(%dx%d)@(%d,%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drm plane:%d not enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 371, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 381, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"sti_cursor_plane_helpers_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 350, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"cursor_supported_formats\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 73, i32 23 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 399, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"sti_cursor_helpers_funcs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 334, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"cursor_debugfs_files\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 130, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 131, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 111, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 114, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 115, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 117, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 119, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 120, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 122, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 124, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 125, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 84, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 96, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 89, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 217, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 240, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 246, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 250, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 253, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [36 x i8] c"../drivers/gpu/drm/sti/sti_cursor.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 321, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @sti_cursor_plane_helpers_funcs, ptr @cursor_supported_formats, ptr @.str.2, ptr @sti_cursor_helpers_funcs, ptr @cursor_debugfs_files, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cursor_plane_helpers_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_supported_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cursor_helpers_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_debugfs_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sti_cursor_create(ptr noundef %drm_dev, ptr noundef %dev, i32 noundef %desc, ptr noundef %baseaddr, i32 noundef %possible_crtcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 864, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %clut_paddr = getelementptr inbounds %struct.sti_cursor, ptr %call.i, i32 0, i32 6
  %call.i43 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %clut_paddr, i32 noundef 3265, i32 noundef 4) #3
  %clut = getelementptr inbounds %struct.sti_cursor, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %clut to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i43, ptr %clut, align 8
  %tobool3.not = icmp eq ptr %call.i43, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #3
  br label %err_clut

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.sti_cursor, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev6, align 8
  %regs = getelementptr inbounds %struct.sti_cursor, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %baseaddr, ptr %regs, align 4
  %desc7 = getelementptr inbounds %struct.sti_plane, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %desc7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %desc, ptr %desc7, align 8
  %status = getelementptr inbounds %struct.sti_plane, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %status, align 4
  %incdec.ptr.i = getelementptr i16, ptr %call.i43, i32 1
  %5 = ptrtoint ptr %call.i43 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %call.i43, align 2
  %incdec.ptr.1.i = getelementptr i16, ptr %call.i43, i32 2
  %6 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 5, ptr %incdec.ptr.i, align 2
  %incdec.ptr.2.i = getelementptr i16, ptr %call.i43, i32 3
  %7 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 10, ptr %incdec.ptr.1.i, align 2
  %incdec.ptr.3.i = getelementptr i16, ptr %call.i43, i32 4
  %8 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 15, ptr %incdec.ptr.2.i, align 2
  %incdec.ptr.143.i = getelementptr i16, ptr %call.i43, i32 5
  %9 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 80, ptr %incdec.ptr.3.i, align 2
  %incdec.ptr.1.1.i = getelementptr i16, ptr %call.i43, i32 6
  %10 = ptrtoint ptr %incdec.ptr.143.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 85, ptr %incdec.ptr.143.i, align 2
  %incdec.ptr.2.1.i = getelementptr i16, ptr %call.i43, i32 7
  %11 = ptrtoint ptr %incdec.ptr.1.1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 90, ptr %incdec.ptr.1.1.i, align 2
  %incdec.ptr.3.1.i = getelementptr i16, ptr %call.i43, i32 8
  %12 = ptrtoint ptr %incdec.ptr.2.1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 95, ptr %incdec.ptr.2.1.i, align 2
  %incdec.ptr.245.i = getelementptr i16, ptr %call.i43, i32 9
  %13 = ptrtoint ptr %incdec.ptr.3.1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 160, ptr %incdec.ptr.3.1.i, align 2
  %incdec.ptr.1.2.i = getelementptr i16, ptr %call.i43, i32 10
  %14 = ptrtoint ptr %incdec.ptr.245.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 165, ptr %incdec.ptr.245.i, align 2
  %incdec.ptr.2.2.i = getelementptr i16, ptr %call.i43, i32 11
  %15 = ptrtoint ptr %incdec.ptr.1.2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 170, ptr %incdec.ptr.1.2.i, align 2
  %incdec.ptr.3.2.i = getelementptr i16, ptr %call.i43, i32 12
  %16 = ptrtoint ptr %incdec.ptr.2.2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 175, ptr %incdec.ptr.2.2.i, align 2
  %incdec.ptr.347.i = getelementptr i16, ptr %call.i43, i32 13
  %17 = ptrtoint ptr %incdec.ptr.3.2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 240, ptr %incdec.ptr.3.2.i, align 2
  %incdec.ptr.1.3.i = getelementptr i16, ptr %call.i43, i32 14
  %18 = ptrtoint ptr %incdec.ptr.347.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 245, ptr %incdec.ptr.347.i, align 2
  %incdec.ptr.2.3.i = getelementptr i16, ptr %call.i43, i32 15
  %19 = ptrtoint ptr %incdec.ptr.1.3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 250, ptr %incdec.ptr.1.3.i, align 2
  %incdec.ptr.3.3.i = getelementptr i16, ptr %call.i43, i32 16
  %20 = ptrtoint ptr %incdec.ptr.2.3.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 255, ptr %incdec.ptr.2.3.i, align 2
  %incdec.ptr.149.i = getelementptr i16, ptr %call.i43, i32 17
  %21 = ptrtoint ptr %incdec.ptr.3.3.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1280, ptr %incdec.ptr.3.3.i, align 2
  %incdec.ptr.1.152.i = getelementptr i16, ptr %call.i43, i32 18
  %22 = ptrtoint ptr %incdec.ptr.149.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1285, ptr %incdec.ptr.149.i, align 2
  %incdec.ptr.2.155.i = getelementptr i16, ptr %call.i43, i32 19
  %23 = ptrtoint ptr %incdec.ptr.1.152.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1290, ptr %incdec.ptr.1.152.i, align 2
  %incdec.ptr.3.158.i = getelementptr i16, ptr %call.i43, i32 20
  %24 = ptrtoint ptr %incdec.ptr.2.155.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1295, ptr %incdec.ptr.2.155.i, align 2
  %incdec.ptr.143.1.i = getelementptr i16, ptr %call.i43, i32 21
  %25 = ptrtoint ptr %incdec.ptr.3.158.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1360, ptr %incdec.ptr.3.158.i, align 2
  %incdec.ptr.1.1.1.i = getelementptr i16, ptr %call.i43, i32 22
  %26 = ptrtoint ptr %incdec.ptr.143.1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1365, ptr %incdec.ptr.143.1.i, align 2
  %incdec.ptr.2.1.1.i = getelementptr i16, ptr %call.i43, i32 23
  %27 = ptrtoint ptr %incdec.ptr.1.1.1.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1370, ptr %incdec.ptr.1.1.1.i, align 2
  %incdec.ptr.3.1.1.i = getelementptr i16, ptr %call.i43, i32 24
  %28 = ptrtoint ptr %incdec.ptr.2.1.1.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1375, ptr %incdec.ptr.2.1.1.i, align 2
  %incdec.ptr.245.1.i = getelementptr i16, ptr %call.i43, i32 25
  %29 = ptrtoint ptr %incdec.ptr.3.1.1.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1440, ptr %incdec.ptr.3.1.1.i, align 2
  %incdec.ptr.1.2.1.i = getelementptr i16, ptr %call.i43, i32 26
  %30 = ptrtoint ptr %incdec.ptr.245.1.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1445, ptr %incdec.ptr.245.1.i, align 2
  %incdec.ptr.2.2.1.i = getelementptr i16, ptr %call.i43, i32 27
  %31 = ptrtoint ptr %incdec.ptr.1.2.1.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1450, ptr %incdec.ptr.1.2.1.i, align 2
  %incdec.ptr.3.2.1.i = getelementptr i16, ptr %call.i43, i32 28
  %32 = ptrtoint ptr %incdec.ptr.2.2.1.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1455, ptr %incdec.ptr.2.2.1.i, align 2
  %incdec.ptr.347.1.i = getelementptr i16, ptr %call.i43, i32 29
  %33 = ptrtoint ptr %incdec.ptr.3.2.1.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1520, ptr %incdec.ptr.3.2.1.i, align 2
  %incdec.ptr.1.3.1.i = getelementptr i16, ptr %call.i43, i32 30
  %34 = ptrtoint ptr %incdec.ptr.347.1.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1525, ptr %incdec.ptr.347.1.i, align 2
  %incdec.ptr.2.3.1.i = getelementptr i16, ptr %call.i43, i32 31
  %35 = ptrtoint ptr %incdec.ptr.1.3.1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1530, ptr %incdec.ptr.1.3.1.i, align 2
  %incdec.ptr.3.3.1.i = getelementptr i16, ptr %call.i43, i32 32
  %36 = ptrtoint ptr %incdec.ptr.2.3.1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1535, ptr %incdec.ptr.2.3.1.i, align 2
  %incdec.ptr.261.i = getelementptr i16, ptr %call.i43, i32 33
  %37 = ptrtoint ptr %incdec.ptr.3.3.1.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2560, ptr %incdec.ptr.3.3.1.i, align 2
  %incdec.ptr.1.264.i = getelementptr i16, ptr %call.i43, i32 34
  %38 = ptrtoint ptr %incdec.ptr.261.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2565, ptr %incdec.ptr.261.i, align 2
  %incdec.ptr.2.267.i = getelementptr i16, ptr %call.i43, i32 35
  %39 = ptrtoint ptr %incdec.ptr.1.264.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2570, ptr %incdec.ptr.1.264.i, align 2
  %incdec.ptr.3.270.i = getelementptr i16, ptr %call.i43, i32 36
  %40 = ptrtoint ptr %incdec.ptr.2.267.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2575, ptr %incdec.ptr.2.267.i, align 2
  %incdec.ptr.143.2.i = getelementptr i16, ptr %call.i43, i32 37
  %41 = ptrtoint ptr %incdec.ptr.3.270.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2640, ptr %incdec.ptr.3.270.i, align 2
  %incdec.ptr.1.1.2.i = getelementptr i16, ptr %call.i43, i32 38
  %42 = ptrtoint ptr %incdec.ptr.143.2.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2645, ptr %incdec.ptr.143.2.i, align 2
  %incdec.ptr.2.1.2.i = getelementptr i16, ptr %call.i43, i32 39
  %43 = ptrtoint ptr %incdec.ptr.1.1.2.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2650, ptr %incdec.ptr.1.1.2.i, align 2
  %incdec.ptr.3.1.2.i = getelementptr i16, ptr %call.i43, i32 40
  %44 = ptrtoint ptr %incdec.ptr.2.1.2.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2655, ptr %incdec.ptr.2.1.2.i, align 2
  %incdec.ptr.245.2.i = getelementptr i16, ptr %call.i43, i32 41
  %45 = ptrtoint ptr %incdec.ptr.3.1.2.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2720, ptr %incdec.ptr.3.1.2.i, align 2
  %incdec.ptr.1.2.2.i = getelementptr i16, ptr %call.i43, i32 42
  %46 = ptrtoint ptr %incdec.ptr.245.2.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 2725, ptr %incdec.ptr.245.2.i, align 2
  %incdec.ptr.2.2.2.i = getelementptr i16, ptr %call.i43, i32 43
  %47 = ptrtoint ptr %incdec.ptr.1.2.2.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2730, ptr %incdec.ptr.1.2.2.i, align 2
  %incdec.ptr.3.2.2.i = getelementptr i16, ptr %call.i43, i32 44
  %48 = ptrtoint ptr %incdec.ptr.2.2.2.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 2735, ptr %incdec.ptr.2.2.2.i, align 2
  %incdec.ptr.347.2.i = getelementptr i16, ptr %call.i43, i32 45
  %49 = ptrtoint ptr %incdec.ptr.3.2.2.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2800, ptr %incdec.ptr.3.2.2.i, align 2
  %incdec.ptr.1.3.2.i = getelementptr i16, ptr %call.i43, i32 46
  %50 = ptrtoint ptr %incdec.ptr.347.2.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2805, ptr %incdec.ptr.347.2.i, align 2
  %incdec.ptr.2.3.2.i = getelementptr i16, ptr %call.i43, i32 47
  %51 = ptrtoint ptr %incdec.ptr.1.3.2.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2810, ptr %incdec.ptr.1.3.2.i, align 2
  %incdec.ptr.3.3.2.i = getelementptr i16, ptr %call.i43, i32 48
  %52 = ptrtoint ptr %incdec.ptr.2.3.2.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 2815, ptr %incdec.ptr.2.3.2.i, align 2
  %incdec.ptr.373.i = getelementptr i16, ptr %call.i43, i32 49
  %53 = ptrtoint ptr %incdec.ptr.3.3.2.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 3840, ptr %incdec.ptr.3.3.2.i, align 2
  %incdec.ptr.1.376.i = getelementptr i16, ptr %call.i43, i32 50
  %54 = ptrtoint ptr %incdec.ptr.373.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 3845, ptr %incdec.ptr.373.i, align 2
  %incdec.ptr.2.379.i = getelementptr i16, ptr %call.i43, i32 51
  %55 = ptrtoint ptr %incdec.ptr.1.376.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 3850, ptr %incdec.ptr.1.376.i, align 2
  %incdec.ptr.3.382.i = getelementptr i16, ptr %call.i43, i32 52
  %56 = ptrtoint ptr %incdec.ptr.2.379.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 3855, ptr %incdec.ptr.2.379.i, align 2
  %incdec.ptr.143.3.i = getelementptr i16, ptr %call.i43, i32 53
  %57 = ptrtoint ptr %incdec.ptr.3.382.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 3920, ptr %incdec.ptr.3.382.i, align 2
  %incdec.ptr.1.1.3.i = getelementptr i16, ptr %call.i43, i32 54
  %58 = ptrtoint ptr %incdec.ptr.143.3.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 3925, ptr %incdec.ptr.143.3.i, align 2
  %incdec.ptr.2.1.3.i = getelementptr i16, ptr %call.i43, i32 55
  %59 = ptrtoint ptr %incdec.ptr.1.1.3.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 3930, ptr %incdec.ptr.1.1.3.i, align 2
  %incdec.ptr.3.1.3.i = getelementptr i16, ptr %call.i43, i32 56
  %60 = ptrtoint ptr %incdec.ptr.2.1.3.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 3935, ptr %incdec.ptr.2.1.3.i, align 2
  %incdec.ptr.245.3.i = getelementptr i16, ptr %call.i43, i32 57
  %61 = ptrtoint ptr %incdec.ptr.3.1.3.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 4000, ptr %incdec.ptr.3.1.3.i, align 2
  %incdec.ptr.1.2.3.i = getelementptr i16, ptr %call.i43, i32 58
  %62 = ptrtoint ptr %incdec.ptr.245.3.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 4005, ptr %incdec.ptr.245.3.i, align 2
  %incdec.ptr.2.2.3.i = getelementptr i16, ptr %call.i43, i32 59
  %63 = ptrtoint ptr %incdec.ptr.1.2.3.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 4010, ptr %incdec.ptr.1.2.3.i, align 2
  %incdec.ptr.3.2.3.i = getelementptr i16, ptr %call.i43, i32 60
  %64 = ptrtoint ptr %incdec.ptr.2.2.3.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 4015, ptr %incdec.ptr.2.2.3.i, align 2
  %incdec.ptr.347.3.i = getelementptr i16, ptr %call.i43, i32 61
  %65 = ptrtoint ptr %incdec.ptr.3.2.3.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 4080, ptr %incdec.ptr.3.2.3.i, align 2
  %incdec.ptr.1.3.3.i = getelementptr i16, ptr %call.i43, i32 62
  %66 = ptrtoint ptr %incdec.ptr.347.3.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 4085, ptr %incdec.ptr.347.3.i, align 2
  %incdec.ptr.2.3.3.i = getelementptr i16, ptr %call.i43, i32 63
  %67 = ptrtoint ptr %incdec.ptr.1.3.3.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 4090, ptr %incdec.ptr.1.3.3.i, align 2
  %incdec.ptr.3.3.3.i = getelementptr i16, ptr %call.i43, i32 64
  %68 = ptrtoint ptr %incdec.ptr.2.3.3.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 4095, ptr %incdec.ptr.2.3.3.i, align 2
  %incdec.ptr.i.1 = getelementptr i16, ptr %call.i43, i32 65
  %69 = ptrtoint ptr %incdec.ptr.3.3.3.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 20480, ptr %incdec.ptr.3.3.3.i, align 2
  %incdec.ptr.1.i.1 = getelementptr i16, ptr %call.i43, i32 66
  %70 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 20485, ptr %incdec.ptr.i.1, align 2
  %incdec.ptr.2.i.1 = getelementptr i16, ptr %call.i43, i32 67
  %71 = ptrtoint ptr %incdec.ptr.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 20490, ptr %incdec.ptr.1.i.1, align 2
  %incdec.ptr.3.i.1 = getelementptr i16, ptr %call.i43, i32 68
  %72 = ptrtoint ptr %incdec.ptr.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 20495, ptr %incdec.ptr.2.i.1, align 2
  %incdec.ptr.143.i.1 = getelementptr i16, ptr %call.i43, i32 69
  %73 = ptrtoint ptr %incdec.ptr.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 20560, ptr %incdec.ptr.3.i.1, align 2
  %incdec.ptr.1.1.i.1 = getelementptr i16, ptr %call.i43, i32 70
  %74 = ptrtoint ptr %incdec.ptr.143.i.1 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 20565, ptr %incdec.ptr.143.i.1, align 2
  %incdec.ptr.2.1.i.1 = getelementptr i16, ptr %call.i43, i32 71
  %75 = ptrtoint ptr %incdec.ptr.1.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 20570, ptr %incdec.ptr.1.1.i.1, align 2
  %incdec.ptr.3.1.i.1 = getelementptr i16, ptr %call.i43, i32 72
  %76 = ptrtoint ptr %incdec.ptr.2.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 20575, ptr %incdec.ptr.2.1.i.1, align 2
  %incdec.ptr.245.i.1 = getelementptr i16, ptr %call.i43, i32 73
  %77 = ptrtoint ptr %incdec.ptr.3.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 20640, ptr %incdec.ptr.3.1.i.1, align 2
  %incdec.ptr.1.2.i.1 = getelementptr i16, ptr %call.i43, i32 74
  %78 = ptrtoint ptr %incdec.ptr.245.i.1 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 20645, ptr %incdec.ptr.245.i.1, align 2
  %incdec.ptr.2.2.i.1 = getelementptr i16, ptr %call.i43, i32 75
  %79 = ptrtoint ptr %incdec.ptr.1.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 20650, ptr %incdec.ptr.1.2.i.1, align 2
  %incdec.ptr.3.2.i.1 = getelementptr i16, ptr %call.i43, i32 76
  %80 = ptrtoint ptr %incdec.ptr.2.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 20655, ptr %incdec.ptr.2.2.i.1, align 2
  %incdec.ptr.347.i.1 = getelementptr i16, ptr %call.i43, i32 77
  %81 = ptrtoint ptr %incdec.ptr.3.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 20720, ptr %incdec.ptr.3.2.i.1, align 2
  %incdec.ptr.1.3.i.1 = getelementptr i16, ptr %call.i43, i32 78
  %82 = ptrtoint ptr %incdec.ptr.347.i.1 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 20725, ptr %incdec.ptr.347.i.1, align 2
  %incdec.ptr.2.3.i.1 = getelementptr i16, ptr %call.i43, i32 79
  %83 = ptrtoint ptr %incdec.ptr.1.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 20730, ptr %incdec.ptr.1.3.i.1, align 2
  %incdec.ptr.3.3.i.1 = getelementptr i16, ptr %call.i43, i32 80
  %84 = ptrtoint ptr %incdec.ptr.2.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 20735, ptr %incdec.ptr.2.3.i.1, align 2
  %incdec.ptr.149.i.1 = getelementptr i16, ptr %call.i43, i32 81
  %85 = ptrtoint ptr %incdec.ptr.3.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 21760, ptr %incdec.ptr.3.3.i.1, align 2
  %incdec.ptr.1.152.i.1 = getelementptr i16, ptr %call.i43, i32 82
  %86 = ptrtoint ptr %incdec.ptr.149.i.1 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 21765, ptr %incdec.ptr.149.i.1, align 2
  %incdec.ptr.2.155.i.1 = getelementptr i16, ptr %call.i43, i32 83
  %87 = ptrtoint ptr %incdec.ptr.1.152.i.1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 21770, ptr %incdec.ptr.1.152.i.1, align 2
  %incdec.ptr.3.158.i.1 = getelementptr i16, ptr %call.i43, i32 84
  %88 = ptrtoint ptr %incdec.ptr.2.155.i.1 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 21775, ptr %incdec.ptr.2.155.i.1, align 2
  %incdec.ptr.143.1.i.1 = getelementptr i16, ptr %call.i43, i32 85
  %89 = ptrtoint ptr %incdec.ptr.3.158.i.1 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 21840, ptr %incdec.ptr.3.158.i.1, align 2
  %incdec.ptr.1.1.1.i.1 = getelementptr i16, ptr %call.i43, i32 86
  %90 = ptrtoint ptr %incdec.ptr.143.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 21845, ptr %incdec.ptr.143.1.i.1, align 2
  %incdec.ptr.2.1.1.i.1 = getelementptr i16, ptr %call.i43, i32 87
  %91 = ptrtoint ptr %incdec.ptr.1.1.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 21850, ptr %incdec.ptr.1.1.1.i.1, align 2
  %incdec.ptr.3.1.1.i.1 = getelementptr i16, ptr %call.i43, i32 88
  %92 = ptrtoint ptr %incdec.ptr.2.1.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 21855, ptr %incdec.ptr.2.1.1.i.1, align 2
  %incdec.ptr.245.1.i.1 = getelementptr i16, ptr %call.i43, i32 89
  %93 = ptrtoint ptr %incdec.ptr.3.1.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 21920, ptr %incdec.ptr.3.1.1.i.1, align 2
  %incdec.ptr.1.2.1.i.1 = getelementptr i16, ptr %call.i43, i32 90
  %94 = ptrtoint ptr %incdec.ptr.245.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 21925, ptr %incdec.ptr.245.1.i.1, align 2
  %incdec.ptr.2.2.1.i.1 = getelementptr i16, ptr %call.i43, i32 91
  %95 = ptrtoint ptr %incdec.ptr.1.2.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 21930, ptr %incdec.ptr.1.2.1.i.1, align 2
  %incdec.ptr.3.2.1.i.1 = getelementptr i16, ptr %call.i43, i32 92
  %96 = ptrtoint ptr %incdec.ptr.2.2.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 21935, ptr %incdec.ptr.2.2.1.i.1, align 2
  %incdec.ptr.347.1.i.1 = getelementptr i16, ptr %call.i43, i32 93
  %97 = ptrtoint ptr %incdec.ptr.3.2.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 22000, ptr %incdec.ptr.3.2.1.i.1, align 2
  %incdec.ptr.1.3.1.i.1 = getelementptr i16, ptr %call.i43, i32 94
  %98 = ptrtoint ptr %incdec.ptr.347.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 22005, ptr %incdec.ptr.347.1.i.1, align 2
  %incdec.ptr.2.3.1.i.1 = getelementptr i16, ptr %call.i43, i32 95
  %99 = ptrtoint ptr %incdec.ptr.1.3.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 22010, ptr %incdec.ptr.1.3.1.i.1, align 2
  %incdec.ptr.3.3.1.i.1 = getelementptr i16, ptr %call.i43, i32 96
  %100 = ptrtoint ptr %incdec.ptr.2.3.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 22015, ptr %incdec.ptr.2.3.1.i.1, align 2
  %incdec.ptr.261.i.1 = getelementptr i16, ptr %call.i43, i32 97
  %101 = ptrtoint ptr %incdec.ptr.3.3.1.i.1 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 23040, ptr %incdec.ptr.3.3.1.i.1, align 2
  %incdec.ptr.1.264.i.1 = getelementptr i16, ptr %call.i43, i32 98
  %102 = ptrtoint ptr %incdec.ptr.261.i.1 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 23045, ptr %incdec.ptr.261.i.1, align 2
  %incdec.ptr.2.267.i.1 = getelementptr i16, ptr %call.i43, i32 99
  %103 = ptrtoint ptr %incdec.ptr.1.264.i.1 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 23050, ptr %incdec.ptr.1.264.i.1, align 2
  %incdec.ptr.3.270.i.1 = getelementptr i16, ptr %call.i43, i32 100
  %104 = ptrtoint ptr %incdec.ptr.2.267.i.1 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 23055, ptr %incdec.ptr.2.267.i.1, align 2
  %incdec.ptr.143.2.i.1 = getelementptr i16, ptr %call.i43, i32 101
  %105 = ptrtoint ptr %incdec.ptr.3.270.i.1 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 23120, ptr %incdec.ptr.3.270.i.1, align 2
  %incdec.ptr.1.1.2.i.1 = getelementptr i16, ptr %call.i43, i32 102
  %106 = ptrtoint ptr %incdec.ptr.143.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 23125, ptr %incdec.ptr.143.2.i.1, align 2
  %incdec.ptr.2.1.2.i.1 = getelementptr i16, ptr %call.i43, i32 103
  %107 = ptrtoint ptr %incdec.ptr.1.1.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 23130, ptr %incdec.ptr.1.1.2.i.1, align 2
  %incdec.ptr.3.1.2.i.1 = getelementptr i16, ptr %call.i43, i32 104
  %108 = ptrtoint ptr %incdec.ptr.2.1.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 23135, ptr %incdec.ptr.2.1.2.i.1, align 2
  %incdec.ptr.245.2.i.1 = getelementptr i16, ptr %call.i43, i32 105
  %109 = ptrtoint ptr %incdec.ptr.3.1.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 23200, ptr %incdec.ptr.3.1.2.i.1, align 2
  %incdec.ptr.1.2.2.i.1 = getelementptr i16, ptr %call.i43, i32 106
  %110 = ptrtoint ptr %incdec.ptr.245.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 23205, ptr %incdec.ptr.245.2.i.1, align 2
  %incdec.ptr.2.2.2.i.1 = getelementptr i16, ptr %call.i43, i32 107
  %111 = ptrtoint ptr %incdec.ptr.1.2.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 23210, ptr %incdec.ptr.1.2.2.i.1, align 2
  %incdec.ptr.3.2.2.i.1 = getelementptr i16, ptr %call.i43, i32 108
  %112 = ptrtoint ptr %incdec.ptr.2.2.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 23215, ptr %incdec.ptr.2.2.2.i.1, align 2
  %incdec.ptr.347.2.i.1 = getelementptr i16, ptr %call.i43, i32 109
  %113 = ptrtoint ptr %incdec.ptr.3.2.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 23280, ptr %incdec.ptr.3.2.2.i.1, align 2
  %incdec.ptr.1.3.2.i.1 = getelementptr i16, ptr %call.i43, i32 110
  %114 = ptrtoint ptr %incdec.ptr.347.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 23285, ptr %incdec.ptr.347.2.i.1, align 2
  %incdec.ptr.2.3.2.i.1 = getelementptr i16, ptr %call.i43, i32 111
  %115 = ptrtoint ptr %incdec.ptr.1.3.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 23290, ptr %incdec.ptr.1.3.2.i.1, align 2
  %incdec.ptr.3.3.2.i.1 = getelementptr i16, ptr %call.i43, i32 112
  %116 = ptrtoint ptr %incdec.ptr.2.3.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 23295, ptr %incdec.ptr.2.3.2.i.1, align 2
  %incdec.ptr.373.i.1 = getelementptr i16, ptr %call.i43, i32 113
  %117 = ptrtoint ptr %incdec.ptr.3.3.2.i.1 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 24320, ptr %incdec.ptr.3.3.2.i.1, align 2
  %incdec.ptr.1.376.i.1 = getelementptr i16, ptr %call.i43, i32 114
  %118 = ptrtoint ptr %incdec.ptr.373.i.1 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 24325, ptr %incdec.ptr.373.i.1, align 2
  %incdec.ptr.2.379.i.1 = getelementptr i16, ptr %call.i43, i32 115
  %119 = ptrtoint ptr %incdec.ptr.1.376.i.1 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 24330, ptr %incdec.ptr.1.376.i.1, align 2
  %incdec.ptr.3.382.i.1 = getelementptr i16, ptr %call.i43, i32 116
  %120 = ptrtoint ptr %incdec.ptr.2.379.i.1 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 24335, ptr %incdec.ptr.2.379.i.1, align 2
  %incdec.ptr.143.3.i.1 = getelementptr i16, ptr %call.i43, i32 117
  %121 = ptrtoint ptr %incdec.ptr.3.382.i.1 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 24400, ptr %incdec.ptr.3.382.i.1, align 2
  %incdec.ptr.1.1.3.i.1 = getelementptr i16, ptr %call.i43, i32 118
  %122 = ptrtoint ptr %incdec.ptr.143.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 24405, ptr %incdec.ptr.143.3.i.1, align 2
  %incdec.ptr.2.1.3.i.1 = getelementptr i16, ptr %call.i43, i32 119
  %123 = ptrtoint ptr %incdec.ptr.1.1.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 24410, ptr %incdec.ptr.1.1.3.i.1, align 2
  %incdec.ptr.3.1.3.i.1 = getelementptr i16, ptr %call.i43, i32 120
  %124 = ptrtoint ptr %incdec.ptr.2.1.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 24415, ptr %incdec.ptr.2.1.3.i.1, align 2
  %incdec.ptr.245.3.i.1 = getelementptr i16, ptr %call.i43, i32 121
  %125 = ptrtoint ptr %incdec.ptr.3.1.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 24480, ptr %incdec.ptr.3.1.3.i.1, align 2
  %incdec.ptr.1.2.3.i.1 = getelementptr i16, ptr %call.i43, i32 122
  %126 = ptrtoint ptr %incdec.ptr.245.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 24485, ptr %incdec.ptr.245.3.i.1, align 2
  %incdec.ptr.2.2.3.i.1 = getelementptr i16, ptr %call.i43, i32 123
  %127 = ptrtoint ptr %incdec.ptr.1.2.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 24490, ptr %incdec.ptr.1.2.3.i.1, align 2
  %incdec.ptr.3.2.3.i.1 = getelementptr i16, ptr %call.i43, i32 124
  %128 = ptrtoint ptr %incdec.ptr.2.2.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 24495, ptr %incdec.ptr.2.2.3.i.1, align 2
  %incdec.ptr.347.3.i.1 = getelementptr i16, ptr %call.i43, i32 125
  %129 = ptrtoint ptr %incdec.ptr.3.2.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 24560, ptr %incdec.ptr.3.2.3.i.1, align 2
  %incdec.ptr.1.3.3.i.1 = getelementptr i16, ptr %call.i43, i32 126
  %130 = ptrtoint ptr %incdec.ptr.347.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 24565, ptr %incdec.ptr.347.3.i.1, align 2
  %incdec.ptr.2.3.3.i.1 = getelementptr i16, ptr %call.i43, i32 127
  %131 = ptrtoint ptr %incdec.ptr.1.3.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 24570, ptr %incdec.ptr.1.3.3.i.1, align 2
  %incdec.ptr.3.3.3.i.1 = getelementptr i16, ptr %call.i43, i32 128
  %132 = ptrtoint ptr %incdec.ptr.2.3.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 24575, ptr %incdec.ptr.2.3.3.i.1, align 2
  %incdec.ptr.i.2 = getelementptr i16, ptr %call.i43, i32 129
  %133 = ptrtoint ptr %incdec.ptr.3.3.3.i.1 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 -24576, ptr %incdec.ptr.3.3.3.i.1, align 2
  %incdec.ptr.1.i.2 = getelementptr i16, ptr %call.i43, i32 130
  %134 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -24571, ptr %incdec.ptr.i.2, align 2
  %incdec.ptr.2.i.2 = getelementptr i16, ptr %call.i43, i32 131
  %135 = ptrtoint ptr %incdec.ptr.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -24566, ptr %incdec.ptr.1.i.2, align 2
  %incdec.ptr.3.i.2 = getelementptr i16, ptr %call.i43, i32 132
  %136 = ptrtoint ptr %incdec.ptr.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -24561, ptr %incdec.ptr.2.i.2, align 2
  %incdec.ptr.143.i.2 = getelementptr i16, ptr %call.i43, i32 133
  %137 = ptrtoint ptr %incdec.ptr.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -24496, ptr %incdec.ptr.3.i.2, align 2
  %incdec.ptr.1.1.i.2 = getelementptr i16, ptr %call.i43, i32 134
  %138 = ptrtoint ptr %incdec.ptr.143.i.2 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 -24491, ptr %incdec.ptr.143.i.2, align 2
  %incdec.ptr.2.1.i.2 = getelementptr i16, ptr %call.i43, i32 135
  %139 = ptrtoint ptr %incdec.ptr.1.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -24486, ptr %incdec.ptr.1.1.i.2, align 2
  %incdec.ptr.3.1.i.2 = getelementptr i16, ptr %call.i43, i32 136
  %140 = ptrtoint ptr %incdec.ptr.2.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -24481, ptr %incdec.ptr.2.1.i.2, align 2
  %incdec.ptr.245.i.2 = getelementptr i16, ptr %call.i43, i32 137
  %141 = ptrtoint ptr %incdec.ptr.3.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -24416, ptr %incdec.ptr.3.1.i.2, align 2
  %incdec.ptr.1.2.i.2 = getelementptr i16, ptr %call.i43, i32 138
  %142 = ptrtoint ptr %incdec.ptr.245.i.2 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 -24411, ptr %incdec.ptr.245.i.2, align 2
  %incdec.ptr.2.2.i.2 = getelementptr i16, ptr %call.i43, i32 139
  %143 = ptrtoint ptr %incdec.ptr.1.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -24406, ptr %incdec.ptr.1.2.i.2, align 2
  %incdec.ptr.3.2.i.2 = getelementptr i16, ptr %call.i43, i32 140
  %144 = ptrtoint ptr %incdec.ptr.2.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 -24401, ptr %incdec.ptr.2.2.i.2, align 2
  %incdec.ptr.347.i.2 = getelementptr i16, ptr %call.i43, i32 141
  %145 = ptrtoint ptr %incdec.ptr.3.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -24336, ptr %incdec.ptr.3.2.i.2, align 2
  %incdec.ptr.1.3.i.2 = getelementptr i16, ptr %call.i43, i32 142
  %146 = ptrtoint ptr %incdec.ptr.347.i.2 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 -24331, ptr %incdec.ptr.347.i.2, align 2
  %incdec.ptr.2.3.i.2 = getelementptr i16, ptr %call.i43, i32 143
  %147 = ptrtoint ptr %incdec.ptr.1.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -24326, ptr %incdec.ptr.1.3.i.2, align 2
  %incdec.ptr.3.3.i.2 = getelementptr i16, ptr %call.i43, i32 144
  %148 = ptrtoint ptr %incdec.ptr.2.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 -24321, ptr %incdec.ptr.2.3.i.2, align 2
  %incdec.ptr.149.i.2 = getelementptr i16, ptr %call.i43, i32 145
  %149 = ptrtoint ptr %incdec.ptr.3.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 -23296, ptr %incdec.ptr.3.3.i.2, align 2
  %incdec.ptr.1.152.i.2 = getelementptr i16, ptr %call.i43, i32 146
  %150 = ptrtoint ptr %incdec.ptr.149.i.2 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 -23291, ptr %incdec.ptr.149.i.2, align 2
  %incdec.ptr.2.155.i.2 = getelementptr i16, ptr %call.i43, i32 147
  %151 = ptrtoint ptr %incdec.ptr.1.152.i.2 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 -23286, ptr %incdec.ptr.1.152.i.2, align 2
  %incdec.ptr.3.158.i.2 = getelementptr i16, ptr %call.i43, i32 148
  %152 = ptrtoint ptr %incdec.ptr.2.155.i.2 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 -23281, ptr %incdec.ptr.2.155.i.2, align 2
  %incdec.ptr.143.1.i.2 = getelementptr i16, ptr %call.i43, i32 149
  %153 = ptrtoint ptr %incdec.ptr.3.158.i.2 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 -23216, ptr %incdec.ptr.3.158.i.2, align 2
  %incdec.ptr.1.1.1.i.2 = getelementptr i16, ptr %call.i43, i32 150
  %154 = ptrtoint ptr %incdec.ptr.143.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 -23211, ptr %incdec.ptr.143.1.i.2, align 2
  %incdec.ptr.2.1.1.i.2 = getelementptr i16, ptr %call.i43, i32 151
  %155 = ptrtoint ptr %incdec.ptr.1.1.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 -23206, ptr %incdec.ptr.1.1.1.i.2, align 2
  %incdec.ptr.3.1.1.i.2 = getelementptr i16, ptr %call.i43, i32 152
  %156 = ptrtoint ptr %incdec.ptr.2.1.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 -23201, ptr %incdec.ptr.2.1.1.i.2, align 2
  %incdec.ptr.245.1.i.2 = getelementptr i16, ptr %call.i43, i32 153
  %157 = ptrtoint ptr %incdec.ptr.3.1.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -23136, ptr %incdec.ptr.3.1.1.i.2, align 2
  %incdec.ptr.1.2.1.i.2 = getelementptr i16, ptr %call.i43, i32 154
  %158 = ptrtoint ptr %incdec.ptr.245.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -23131, ptr %incdec.ptr.245.1.i.2, align 2
  %incdec.ptr.2.2.1.i.2 = getelementptr i16, ptr %call.i43, i32 155
  %159 = ptrtoint ptr %incdec.ptr.1.2.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -23126, ptr %incdec.ptr.1.2.1.i.2, align 2
  %incdec.ptr.3.2.1.i.2 = getelementptr i16, ptr %call.i43, i32 156
  %160 = ptrtoint ptr %incdec.ptr.2.2.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 -23121, ptr %incdec.ptr.2.2.1.i.2, align 2
  %incdec.ptr.347.1.i.2 = getelementptr i16, ptr %call.i43, i32 157
  %161 = ptrtoint ptr %incdec.ptr.3.2.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 -23056, ptr %incdec.ptr.3.2.1.i.2, align 2
  %incdec.ptr.1.3.1.i.2 = getelementptr i16, ptr %call.i43, i32 158
  %162 = ptrtoint ptr %incdec.ptr.347.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 -23051, ptr %incdec.ptr.347.1.i.2, align 2
  %incdec.ptr.2.3.1.i.2 = getelementptr i16, ptr %call.i43, i32 159
  %163 = ptrtoint ptr %incdec.ptr.1.3.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 -23046, ptr %incdec.ptr.1.3.1.i.2, align 2
  %incdec.ptr.3.3.1.i.2 = getelementptr i16, ptr %call.i43, i32 160
  %164 = ptrtoint ptr %incdec.ptr.2.3.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 -23041, ptr %incdec.ptr.2.3.1.i.2, align 2
  %incdec.ptr.261.i.2 = getelementptr i16, ptr %call.i43, i32 161
  %165 = ptrtoint ptr %incdec.ptr.3.3.1.i.2 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -22016, ptr %incdec.ptr.3.3.1.i.2, align 2
  %incdec.ptr.1.264.i.2 = getelementptr i16, ptr %call.i43, i32 162
  %166 = ptrtoint ptr %incdec.ptr.261.i.2 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 -22011, ptr %incdec.ptr.261.i.2, align 2
  %incdec.ptr.2.267.i.2 = getelementptr i16, ptr %call.i43, i32 163
  %167 = ptrtoint ptr %incdec.ptr.1.264.i.2 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -22006, ptr %incdec.ptr.1.264.i.2, align 2
  %incdec.ptr.3.270.i.2 = getelementptr i16, ptr %call.i43, i32 164
  %168 = ptrtoint ptr %incdec.ptr.2.267.i.2 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 -22001, ptr %incdec.ptr.2.267.i.2, align 2
  %incdec.ptr.143.2.i.2 = getelementptr i16, ptr %call.i43, i32 165
  %169 = ptrtoint ptr %incdec.ptr.3.270.i.2 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 -21936, ptr %incdec.ptr.3.270.i.2, align 2
  %incdec.ptr.1.1.2.i.2 = getelementptr i16, ptr %call.i43, i32 166
  %170 = ptrtoint ptr %incdec.ptr.143.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 -21931, ptr %incdec.ptr.143.2.i.2, align 2
  %incdec.ptr.2.1.2.i.2 = getelementptr i16, ptr %call.i43, i32 167
  %171 = ptrtoint ptr %incdec.ptr.1.1.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -21926, ptr %incdec.ptr.1.1.2.i.2, align 2
  %incdec.ptr.3.1.2.i.2 = getelementptr i16, ptr %call.i43, i32 168
  %172 = ptrtoint ptr %incdec.ptr.2.1.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 -21921, ptr %incdec.ptr.2.1.2.i.2, align 2
  %incdec.ptr.245.2.i.2 = getelementptr i16, ptr %call.i43, i32 169
  %173 = ptrtoint ptr %incdec.ptr.3.1.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 -21856, ptr %incdec.ptr.3.1.2.i.2, align 2
  %incdec.ptr.1.2.2.i.2 = getelementptr i16, ptr %call.i43, i32 170
  %174 = ptrtoint ptr %incdec.ptr.245.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -21851, ptr %incdec.ptr.245.2.i.2, align 2
  %incdec.ptr.2.2.2.i.2 = getelementptr i16, ptr %call.i43, i32 171
  %175 = ptrtoint ptr %incdec.ptr.1.2.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -21846, ptr %incdec.ptr.1.2.2.i.2, align 2
  %incdec.ptr.3.2.2.i.2 = getelementptr i16, ptr %call.i43, i32 172
  %176 = ptrtoint ptr %incdec.ptr.2.2.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 -21841, ptr %incdec.ptr.2.2.2.i.2, align 2
  %incdec.ptr.347.2.i.2 = getelementptr i16, ptr %call.i43, i32 173
  %177 = ptrtoint ptr %incdec.ptr.3.2.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 -21776, ptr %incdec.ptr.3.2.2.i.2, align 2
  %incdec.ptr.1.3.2.i.2 = getelementptr i16, ptr %call.i43, i32 174
  %178 = ptrtoint ptr %incdec.ptr.347.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 -21771, ptr %incdec.ptr.347.2.i.2, align 2
  %incdec.ptr.2.3.2.i.2 = getelementptr i16, ptr %call.i43, i32 175
  %179 = ptrtoint ptr %incdec.ptr.1.3.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -21766, ptr %incdec.ptr.1.3.2.i.2, align 2
  %incdec.ptr.3.3.2.i.2 = getelementptr i16, ptr %call.i43, i32 176
  %180 = ptrtoint ptr %incdec.ptr.2.3.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 -21761, ptr %incdec.ptr.2.3.2.i.2, align 2
  %incdec.ptr.373.i.2 = getelementptr i16, ptr %call.i43, i32 177
  %181 = ptrtoint ptr %incdec.ptr.3.3.2.i.2 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -20736, ptr %incdec.ptr.3.3.2.i.2, align 2
  %incdec.ptr.1.376.i.2 = getelementptr i16, ptr %call.i43, i32 178
  %182 = ptrtoint ptr %incdec.ptr.373.i.2 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 -20731, ptr %incdec.ptr.373.i.2, align 2
  %incdec.ptr.2.379.i.2 = getelementptr i16, ptr %call.i43, i32 179
  %183 = ptrtoint ptr %incdec.ptr.1.376.i.2 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 -20726, ptr %incdec.ptr.1.376.i.2, align 2
  %incdec.ptr.3.382.i.2 = getelementptr i16, ptr %call.i43, i32 180
  %184 = ptrtoint ptr %incdec.ptr.2.379.i.2 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 -20721, ptr %incdec.ptr.2.379.i.2, align 2
  %incdec.ptr.143.3.i.2 = getelementptr i16, ptr %call.i43, i32 181
  %185 = ptrtoint ptr %incdec.ptr.3.382.i.2 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 -20656, ptr %incdec.ptr.3.382.i.2, align 2
  %incdec.ptr.1.1.3.i.2 = getelementptr i16, ptr %call.i43, i32 182
  %186 = ptrtoint ptr %incdec.ptr.143.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 -20651, ptr %incdec.ptr.143.3.i.2, align 2
  %incdec.ptr.2.1.3.i.2 = getelementptr i16, ptr %call.i43, i32 183
  %187 = ptrtoint ptr %incdec.ptr.1.1.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 -20646, ptr %incdec.ptr.1.1.3.i.2, align 2
  %incdec.ptr.3.1.3.i.2 = getelementptr i16, ptr %call.i43, i32 184
  %188 = ptrtoint ptr %incdec.ptr.2.1.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 -20641, ptr %incdec.ptr.2.1.3.i.2, align 2
  %incdec.ptr.245.3.i.2 = getelementptr i16, ptr %call.i43, i32 185
  %189 = ptrtoint ptr %incdec.ptr.3.1.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -20576, ptr %incdec.ptr.3.1.3.i.2, align 2
  %incdec.ptr.1.2.3.i.2 = getelementptr i16, ptr %call.i43, i32 186
  %190 = ptrtoint ptr %incdec.ptr.245.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -20571, ptr %incdec.ptr.245.3.i.2, align 2
  %incdec.ptr.2.2.3.i.2 = getelementptr i16, ptr %call.i43, i32 187
  %191 = ptrtoint ptr %incdec.ptr.1.2.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -20566, ptr %incdec.ptr.1.2.3.i.2, align 2
  %incdec.ptr.3.2.3.i.2 = getelementptr i16, ptr %call.i43, i32 188
  %192 = ptrtoint ptr %incdec.ptr.2.2.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -20561, ptr %incdec.ptr.2.2.3.i.2, align 2
  %incdec.ptr.347.3.i.2 = getelementptr i16, ptr %call.i43, i32 189
  %193 = ptrtoint ptr %incdec.ptr.3.2.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 -20496, ptr %incdec.ptr.3.2.3.i.2, align 2
  %incdec.ptr.1.3.3.i.2 = getelementptr i16, ptr %call.i43, i32 190
  %194 = ptrtoint ptr %incdec.ptr.347.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 -20491, ptr %incdec.ptr.347.3.i.2, align 2
  %incdec.ptr.2.3.3.i.2 = getelementptr i16, ptr %call.i43, i32 191
  %195 = ptrtoint ptr %incdec.ptr.1.3.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 -20486, ptr %incdec.ptr.1.3.3.i.2, align 2
  %incdec.ptr.3.3.3.i.2 = getelementptr i16, ptr %call.i43, i32 192
  %196 = ptrtoint ptr %incdec.ptr.2.3.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 -20481, ptr %incdec.ptr.2.3.3.i.2, align 2
  %incdec.ptr.i.3 = getelementptr i16, ptr %call.i43, i32 193
  %197 = ptrtoint ptr %incdec.ptr.3.3.3.i.2 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 -4096, ptr %incdec.ptr.3.3.3.i.2, align 2
  %incdec.ptr.1.i.3 = getelementptr i16, ptr %call.i43, i32 194
  %198 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 -4091, ptr %incdec.ptr.i.3, align 2
  %incdec.ptr.2.i.3 = getelementptr i16, ptr %call.i43, i32 195
  %199 = ptrtoint ptr %incdec.ptr.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -4086, ptr %incdec.ptr.1.i.3, align 2
  %incdec.ptr.3.i.3 = getelementptr i16, ptr %call.i43, i32 196
  %200 = ptrtoint ptr %incdec.ptr.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 -4081, ptr %incdec.ptr.2.i.3, align 2
  %incdec.ptr.143.i.3 = getelementptr i16, ptr %call.i43, i32 197
  %201 = ptrtoint ptr %incdec.ptr.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 -4016, ptr %incdec.ptr.3.i.3, align 2
  %incdec.ptr.1.1.i.3 = getelementptr i16, ptr %call.i43, i32 198
  %202 = ptrtoint ptr %incdec.ptr.143.i.3 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 -4011, ptr %incdec.ptr.143.i.3, align 2
  %incdec.ptr.2.1.i.3 = getelementptr i16, ptr %call.i43, i32 199
  %203 = ptrtoint ptr %incdec.ptr.1.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 -4006, ptr %incdec.ptr.1.1.i.3, align 2
  %incdec.ptr.3.1.i.3 = getelementptr i16, ptr %call.i43, i32 200
  %204 = ptrtoint ptr %incdec.ptr.2.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 -4001, ptr %incdec.ptr.2.1.i.3, align 2
  %incdec.ptr.245.i.3 = getelementptr i16, ptr %call.i43, i32 201
  %205 = ptrtoint ptr %incdec.ptr.3.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -3936, ptr %incdec.ptr.3.1.i.3, align 2
  %incdec.ptr.1.2.i.3 = getelementptr i16, ptr %call.i43, i32 202
  %206 = ptrtoint ptr %incdec.ptr.245.i.3 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -3931, ptr %incdec.ptr.245.i.3, align 2
  %incdec.ptr.2.2.i.3 = getelementptr i16, ptr %call.i43, i32 203
  %207 = ptrtoint ptr %incdec.ptr.1.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -3926, ptr %incdec.ptr.1.2.i.3, align 2
  %incdec.ptr.3.2.i.3 = getelementptr i16, ptr %call.i43, i32 204
  %208 = ptrtoint ptr %incdec.ptr.2.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 -3921, ptr %incdec.ptr.2.2.i.3, align 2
  %incdec.ptr.347.i.3 = getelementptr i16, ptr %call.i43, i32 205
  %209 = ptrtoint ptr %incdec.ptr.3.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 -3856, ptr %incdec.ptr.3.2.i.3, align 2
  %incdec.ptr.1.3.i.3 = getelementptr i16, ptr %call.i43, i32 206
  %210 = ptrtoint ptr %incdec.ptr.347.i.3 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 -3851, ptr %incdec.ptr.347.i.3, align 2
  %incdec.ptr.2.3.i.3 = getelementptr i16, ptr %call.i43, i32 207
  %211 = ptrtoint ptr %incdec.ptr.1.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 -3846, ptr %incdec.ptr.1.3.i.3, align 2
  %incdec.ptr.3.3.i.3 = getelementptr i16, ptr %call.i43, i32 208
  %212 = ptrtoint ptr %incdec.ptr.2.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 -3841, ptr %incdec.ptr.2.3.i.3, align 2
  %incdec.ptr.149.i.3 = getelementptr i16, ptr %call.i43, i32 209
  %213 = ptrtoint ptr %incdec.ptr.3.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 -2816, ptr %incdec.ptr.3.3.i.3, align 2
  %incdec.ptr.1.152.i.3 = getelementptr i16, ptr %call.i43, i32 210
  %214 = ptrtoint ptr %incdec.ptr.149.i.3 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 -2811, ptr %incdec.ptr.149.i.3, align 2
  %incdec.ptr.2.155.i.3 = getelementptr i16, ptr %call.i43, i32 211
  %215 = ptrtoint ptr %incdec.ptr.1.152.i.3 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 -2806, ptr %incdec.ptr.1.152.i.3, align 2
  %incdec.ptr.3.158.i.3 = getelementptr i16, ptr %call.i43, i32 212
  %216 = ptrtoint ptr %incdec.ptr.2.155.i.3 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 -2801, ptr %incdec.ptr.2.155.i.3, align 2
  %incdec.ptr.143.1.i.3 = getelementptr i16, ptr %call.i43, i32 213
  %217 = ptrtoint ptr %incdec.ptr.3.158.i.3 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 -2736, ptr %incdec.ptr.3.158.i.3, align 2
  %incdec.ptr.1.1.1.i.3 = getelementptr i16, ptr %call.i43, i32 214
  %218 = ptrtoint ptr %incdec.ptr.143.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 -2731, ptr %incdec.ptr.143.1.i.3, align 2
  %incdec.ptr.2.1.1.i.3 = getelementptr i16, ptr %call.i43, i32 215
  %219 = ptrtoint ptr %incdec.ptr.1.1.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 -2726, ptr %incdec.ptr.1.1.1.i.3, align 2
  %incdec.ptr.3.1.1.i.3 = getelementptr i16, ptr %call.i43, i32 216
  %220 = ptrtoint ptr %incdec.ptr.2.1.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 -2721, ptr %incdec.ptr.2.1.1.i.3, align 2
  %incdec.ptr.245.1.i.3 = getelementptr i16, ptr %call.i43, i32 217
  %221 = ptrtoint ptr %incdec.ptr.3.1.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 -2656, ptr %incdec.ptr.3.1.1.i.3, align 2
  %incdec.ptr.1.2.1.i.3 = getelementptr i16, ptr %call.i43, i32 218
  %222 = ptrtoint ptr %incdec.ptr.245.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 -2651, ptr %incdec.ptr.245.1.i.3, align 2
  %incdec.ptr.2.2.1.i.3 = getelementptr i16, ptr %call.i43, i32 219
  %223 = ptrtoint ptr %incdec.ptr.1.2.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 -2646, ptr %incdec.ptr.1.2.1.i.3, align 2
  %incdec.ptr.3.2.1.i.3 = getelementptr i16, ptr %call.i43, i32 220
  %224 = ptrtoint ptr %incdec.ptr.2.2.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 -2641, ptr %incdec.ptr.2.2.1.i.3, align 2
  %incdec.ptr.347.1.i.3 = getelementptr i16, ptr %call.i43, i32 221
  %225 = ptrtoint ptr %incdec.ptr.3.2.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 -2576, ptr %incdec.ptr.3.2.1.i.3, align 2
  %incdec.ptr.1.3.1.i.3 = getelementptr i16, ptr %call.i43, i32 222
  %226 = ptrtoint ptr %incdec.ptr.347.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 -2571, ptr %incdec.ptr.347.1.i.3, align 2
  %incdec.ptr.2.3.1.i.3 = getelementptr i16, ptr %call.i43, i32 223
  %227 = ptrtoint ptr %incdec.ptr.1.3.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 -2566, ptr %incdec.ptr.1.3.1.i.3, align 2
  %incdec.ptr.3.3.1.i.3 = getelementptr i16, ptr %call.i43, i32 224
  %228 = ptrtoint ptr %incdec.ptr.2.3.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 -2561, ptr %incdec.ptr.2.3.1.i.3, align 2
  %incdec.ptr.261.i.3 = getelementptr i16, ptr %call.i43, i32 225
  %229 = ptrtoint ptr %incdec.ptr.3.3.1.i.3 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 -1536, ptr %incdec.ptr.3.3.1.i.3, align 2
  %incdec.ptr.1.264.i.3 = getelementptr i16, ptr %call.i43, i32 226
  %230 = ptrtoint ptr %incdec.ptr.261.i.3 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 -1531, ptr %incdec.ptr.261.i.3, align 2
  %incdec.ptr.2.267.i.3 = getelementptr i16, ptr %call.i43, i32 227
  %231 = ptrtoint ptr %incdec.ptr.1.264.i.3 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 -1526, ptr %incdec.ptr.1.264.i.3, align 2
  %incdec.ptr.3.270.i.3 = getelementptr i16, ptr %call.i43, i32 228
  %232 = ptrtoint ptr %incdec.ptr.2.267.i.3 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 -1521, ptr %incdec.ptr.2.267.i.3, align 2
  %incdec.ptr.143.2.i.3 = getelementptr i16, ptr %call.i43, i32 229
  %233 = ptrtoint ptr %incdec.ptr.3.270.i.3 to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 -1456, ptr %incdec.ptr.3.270.i.3, align 2
  %incdec.ptr.1.1.2.i.3 = getelementptr i16, ptr %call.i43, i32 230
  %234 = ptrtoint ptr %incdec.ptr.143.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 -1451, ptr %incdec.ptr.143.2.i.3, align 2
  %incdec.ptr.2.1.2.i.3 = getelementptr i16, ptr %call.i43, i32 231
  %235 = ptrtoint ptr %incdec.ptr.1.1.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 -1446, ptr %incdec.ptr.1.1.2.i.3, align 2
  %incdec.ptr.3.1.2.i.3 = getelementptr i16, ptr %call.i43, i32 232
  %236 = ptrtoint ptr %incdec.ptr.2.1.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 -1441, ptr %incdec.ptr.2.1.2.i.3, align 2
  %incdec.ptr.245.2.i.3 = getelementptr i16, ptr %call.i43, i32 233
  %237 = ptrtoint ptr %incdec.ptr.3.1.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 -1376, ptr %incdec.ptr.3.1.2.i.3, align 2
  %incdec.ptr.1.2.2.i.3 = getelementptr i16, ptr %call.i43, i32 234
  %238 = ptrtoint ptr %incdec.ptr.245.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 -1371, ptr %incdec.ptr.245.2.i.3, align 2
  %incdec.ptr.2.2.2.i.3 = getelementptr i16, ptr %call.i43, i32 235
  %239 = ptrtoint ptr %incdec.ptr.1.2.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 -1366, ptr %incdec.ptr.1.2.2.i.3, align 2
  %incdec.ptr.3.2.2.i.3 = getelementptr i16, ptr %call.i43, i32 236
  %240 = ptrtoint ptr %incdec.ptr.2.2.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 -1361, ptr %incdec.ptr.2.2.2.i.3, align 2
  %incdec.ptr.347.2.i.3 = getelementptr i16, ptr %call.i43, i32 237
  %241 = ptrtoint ptr %incdec.ptr.3.2.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 -1296, ptr %incdec.ptr.3.2.2.i.3, align 2
  %incdec.ptr.1.3.2.i.3 = getelementptr i16, ptr %call.i43, i32 238
  %242 = ptrtoint ptr %incdec.ptr.347.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 -1291, ptr %incdec.ptr.347.2.i.3, align 2
  %incdec.ptr.2.3.2.i.3 = getelementptr i16, ptr %call.i43, i32 239
  %243 = ptrtoint ptr %incdec.ptr.1.3.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 -1286, ptr %incdec.ptr.1.3.2.i.3, align 2
  %incdec.ptr.3.3.2.i.3 = getelementptr i16, ptr %call.i43, i32 240
  %244 = ptrtoint ptr %incdec.ptr.2.3.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 -1281, ptr %incdec.ptr.2.3.2.i.3, align 2
  %incdec.ptr.373.i.3 = getelementptr i16, ptr %call.i43, i32 241
  %245 = ptrtoint ptr %incdec.ptr.3.3.2.i.3 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 -256, ptr %incdec.ptr.3.3.2.i.3, align 2
  %incdec.ptr.1.376.i.3 = getelementptr i16, ptr %call.i43, i32 242
  %246 = ptrtoint ptr %incdec.ptr.373.i.3 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 -251, ptr %incdec.ptr.373.i.3, align 2
  %incdec.ptr.2.379.i.3 = getelementptr i16, ptr %call.i43, i32 243
  %247 = ptrtoint ptr %incdec.ptr.1.376.i.3 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 -246, ptr %incdec.ptr.1.376.i.3, align 2
  %incdec.ptr.3.382.i.3 = getelementptr i16, ptr %call.i43, i32 244
  %248 = ptrtoint ptr %incdec.ptr.2.379.i.3 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 -241, ptr %incdec.ptr.2.379.i.3, align 2
  %incdec.ptr.143.3.i.3 = getelementptr i16, ptr %call.i43, i32 245
  %249 = ptrtoint ptr %incdec.ptr.3.382.i.3 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 -176, ptr %incdec.ptr.3.382.i.3, align 2
  %incdec.ptr.1.1.3.i.3 = getelementptr i16, ptr %call.i43, i32 246
  %250 = ptrtoint ptr %incdec.ptr.143.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 -171, ptr %incdec.ptr.143.3.i.3, align 2
  %incdec.ptr.2.1.3.i.3 = getelementptr i16, ptr %call.i43, i32 247
  %251 = ptrtoint ptr %incdec.ptr.1.1.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 -166, ptr %incdec.ptr.1.1.3.i.3, align 2
  %incdec.ptr.3.1.3.i.3 = getelementptr i16, ptr %call.i43, i32 248
  %252 = ptrtoint ptr %incdec.ptr.2.1.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 -161, ptr %incdec.ptr.2.1.3.i.3, align 2
  %incdec.ptr.245.3.i.3 = getelementptr i16, ptr %call.i43, i32 249
  %253 = ptrtoint ptr %incdec.ptr.3.1.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 -96, ptr %incdec.ptr.3.1.3.i.3, align 2
  %incdec.ptr.1.2.3.i.3 = getelementptr i16, ptr %call.i43, i32 250
  %254 = ptrtoint ptr %incdec.ptr.245.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 -91, ptr %incdec.ptr.245.3.i.3, align 2
  %incdec.ptr.2.2.3.i.3 = getelementptr i16, ptr %call.i43, i32 251
  %255 = ptrtoint ptr %incdec.ptr.1.2.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 -86, ptr %incdec.ptr.1.2.3.i.3, align 2
  %incdec.ptr.3.2.3.i.3 = getelementptr i16, ptr %call.i43, i32 252
  %256 = ptrtoint ptr %incdec.ptr.2.2.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 -81, ptr %incdec.ptr.2.2.3.i.3, align 2
  %incdec.ptr.347.3.i.3 = getelementptr i16, ptr %call.i43, i32 253
  %257 = ptrtoint ptr %incdec.ptr.3.2.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 -16, ptr %incdec.ptr.3.2.3.i.3, align 2
  %incdec.ptr.1.3.3.i.3 = getelementptr i16, ptr %call.i43, i32 254
  %258 = ptrtoint ptr %incdec.ptr.347.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 -11, ptr %incdec.ptr.347.3.i.3, align 2
  %incdec.ptr.2.3.3.i.3 = getelementptr i16, ptr %call.i43, i32 255
  %259 = ptrtoint ptr %incdec.ptr.1.3.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 -6, ptr %incdec.ptr.1.3.3.i.3, align 2
  %260 = ptrtoint ptr %incdec.ptr.2.3.3.i.3 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 -1, ptr %incdec.ptr.2.3.3.i.3, align 2
  %call10 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm_dev, ptr noundef nonnull %call.i, i32 noundef %possible_crtcs, ptr noundef nonnull @sti_cursor_plane_helpers_funcs, ptr noundef nonnull @cursor_supported_formats, i32 noundef 1, ptr noundef null, i32 noundef 2, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #3
  %261 = ptrtoint ptr %clut to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %clut, align 8
  %263 = ptrtoint ptr %clut_paddr to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %clut_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %262, i32 noundef %264, i32 noundef 4) #3
  br label %err_clut

if.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %265 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr @sti_cursor_helpers_funcs, ptr %helper_private.i, align 8
  tail call void @sti_plane_init_property(ptr noundef nonnull %call.i, i32 noundef 2) #3
  br label %cleanup

err_clut:                                         ; preds = %if.then12, %if.then4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %err_clut, %if.end13, %if.then
  %retval.0 = phi ptr [ null, %err_clut ], [ %call.i, %if.end13 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_init_property(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_cursor_late_register(ptr noundef %drm_plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drm_plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_plane, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  store ptr %drm_plane, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @cursor_debugfs_files, i32 0, i32 0, i32 3), align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @cursor_debugfs_files, i32 noundef 1, ptr noundef %5, ptr noundef %3) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cursor_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %call = tail call ptr @sti_plane_to_str(ptr noundef %5) #3
  %regs = getelementptr inbounds %struct.sti_cursor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.4, ptr noundef %call, ptr noundef %7) #3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #3, !srcloc !62
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %11) #3
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #3, !srcloc !62
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef %15) #3
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #3, !srcloc !62
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !65
  %and.i = and i32 %19, 4095
  %shr.i = lshr i32 %19, 16
  %and1.i = and i32 %shr.i, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %and.i, i32 noundef %and1.i) #3
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #3, !srcloc !62
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !66
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef %23) #3
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr29 = getelementptr i8, ptr %25, i32 20
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #3, !srcloc !62
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !67
  %pixmap.i = getelementptr inbounds %struct.sti_cursor, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %pixmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixmap.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.i = icmp eq i32 %29, %27
  br i1 %cmp.i, label %if.then.i, label %entry.cursor_dbg_pml.exit_crit_edge

entry.cursor_dbg_pml.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cursor_dbg_pml.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %base.i = getelementptr inbounds %struct.sti_cursor, ptr %5, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, ptr noundef %31) #3
  br label %cursor_dbg_pml.exit

cursor_dbg_pml.exit:                              ; preds = %if.then.i, %entry.cursor_dbg_pml.exit_crit_edge
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr36 = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #3, !srcloc !62
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !68
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %35) #3
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %37, i32 28
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #3, !srcloc !62
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !69
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef %39) #3
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr50 = getelementptr i8, ptr %41, i32 28
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #3, !srcloc !62
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !70
  %and.i111 = and i32 %43, 2047
  %shr.i112 = lshr i32 %43, 16
  %and1.i113 = and i32 %shr.i112, 2047
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %and.i111, i32 noundef %and1.i113) #3
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %add.ptr57 = getelementptr i8, ptr %45, i32 32
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #3, !srcloc !62
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !71
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, i32 noundef %47) #3
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr64 = getelementptr i8, ptr %49, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #3, !srcloc !62
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !72
  %clut_paddr.i = getelementptr inbounds %struct.sti_cursor, ptr %5, i32 0, i32 6
  %52 = ptrtoint ptr %clut_paddr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %clut_paddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.i114 = icmp eq i32 %53, %51
  br i1 %cmp.i114, label %if.then.i115, label %cursor_dbg_pml.exit.cursor_dbg_cml.exit_crit_edge

cursor_dbg_pml.exit.cursor_dbg_cml.exit_crit_edge: ; preds = %cursor_dbg_pml.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cursor_dbg_cml.exit

if.then.i115:                                     ; preds = %cursor_dbg_pml.exit
  call void @__sanitizer_cov_trace_pc() #5
  %clut.i = getelementptr inbounds %struct.sti_cursor, ptr %5, i32 0, i32 5
  %54 = ptrtoint ptr %clut.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clut.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, ptr noundef %55) #3
  br label %cursor_dbg_cml.exit

cursor_dbg_cml.exit:                              ; preds = %if.then.i115, %cursor_dbg_pml.exit.cursor_dbg_cml.exit_crit_edge
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr71 = getelementptr i8, ptr %57, i32 40
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #3, !srcloc !62
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, i32 noundef %59) #3
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr78 = getelementptr i8, ptr %61, i32 44
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #3, !srcloc !62
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !74
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.13, i32 noundef %63) #3
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_cursor_atomic_check(ptr noundef %drm_plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb5, align 4
  %tobool.not = icmp eq ptr %7, null
  %tobool6.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %7) #3
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_y, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_w, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 8, i32 13
  %16 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %crtc_hdisplay, align 4
  %conv = zext i16 %17 to i32
  %sub = sub i32 %conv, %11
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub)
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_h, align 4
  %crtc_vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 8, i32 20
  %21 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %crtc_vdisplay, align 2
  %conv24 = zext i16 %22 to i32
  %sub25 = sub i32 %conv24, %13
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub25)
  %src_w33 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %src_w33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_w33, align 4
  %shr = lshr i32 %25, 16
  %src_h34 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %26 = ptrtoint ptr %src_h34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_h34, align 4
  %shr35 = lshr i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %cmp36 = icmp ult i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %27)
  %cmp39 = icmp ult i32 %27, 65536
  %or.cond165 = select i1 %cmp36, i1 true, i1 %cmp39
  call void @__sanitizer_cov_trace_const_cmp4(i32 8454143, i32 %25)
  %cmp42 = icmp ugt i32 %25, 8454143
  %or.cond166 = or i1 %cmp42, %or.cond165
  call void @__sanitizer_cov_trace_const_cmp4(i32 8454143, i32 %27)
  %cmp45 = icmp ugt i32 %27, 8454143
  %or.cond167 = select i1 %or.cond166, i1 true, i1 %cmp45
  br i1 %or.cond167, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %shr, i32 noundef %shr35) #3
  br label %cleanup

if.end48:                                         ; preds = %if.end
  %pixmap = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 7
  %base = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 7, i32 2
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %tobool49.not = icmp eq ptr %29, null
  %width57 = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 3
  br i1 %tobool49.not, label %if.then56, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.end48
  %30 = ptrtoint ptr %width57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %width57, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %shr)
  %cmp51.not = icmp eq i32 %31, %shr
  br i1 %cmp51.not, label %lor.lhs.false53, label %lor.lhs.false50.if.then62_crit_edge

lor.lhs.false50.if.then62_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then62

lor.lhs.false53:                                  ; preds = %lor.lhs.false50
  %height = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 4
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %shr35)
  %cmp54.not = icmp eq i32 %33, %shr35
  br i1 %cmp54.not, label %lor.lhs.false53.if.end85_crit_edge, label %lor.lhs.false53.if.then62_crit_edge

lor.lhs.false53.if.then62_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then62

lor.lhs.false53.if.end85_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %width57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr, ptr %width57, align 8
  %height58 = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 4
  %35 = ptrtoint ptr %height58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr35, ptr %height58, align 4
  br label %if.end67

if.then62:                                        ; preds = %lor.lhs.false53.if.then62_crit_edge, %lor.lhs.false50.if.then62_crit_edge
  %36 = ptrtoint ptr %width57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr, ptr %width57, align 8
  %height58169 = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 4
  %37 = ptrtoint ptr %height58169 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr35, ptr %height58169, align 4
  %dev = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 1
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %size = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size, align 4
  %42 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixmap, align 8
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef %41, ptr noundef nonnull %29, i32 noundef %43, i32 noundef 4) #3
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.then56
  %height58173 = phi ptr [ %height58169, %if.then62 ], [ %height58, %if.then56 ]
  %44 = ptrtoint ptr %width57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %width57, align 8
  %46 = ptrtoint ptr %height58173 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height58173, align 4
  %mul = mul i32 %47, %45
  %size71 = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %size71 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul, ptr %size71, align 4
  %dev72 = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 1
  %49 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev72, align 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %50, i32 noundef %mul, ptr noundef %pixmap, i32 noundef 3265, i32 noundef 4) #3
  %51 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i, ptr %base, align 8
  %tobool82.not = icmp eq ptr %call.i, null
  br i1 %tobool82.not, label %if.then83, label %if.end67.if.end85_crit_edge

if.end67.if.end85_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end85

if.then83:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #3
  br label %cleanup

if.end85:                                         ; preds = %if.end67.if.end85_crit_edge, %lor.lhs.false53.if.end85_crit_edge
  %call86 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %9, i32 noundef 0) #3
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #3
  br label %cleanup

if.end89:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #5
  %base90 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %52 = ptrtoint ptr %base90 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base90, align 8
  %add.ptr93 = getelementptr i8, ptr %7, i32 -16
  %call94 = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr93) #3
  %base95 = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %54 = ptrtoint ptr %base95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base95, align 4
  %call97 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %53, ptr noundef %call94, i32 noundef %55, ptr noundef %call97) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %18, i32 noundef %23, i32 noundef %11, i32 noundef %13) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.then88, %if.then83, %if.then47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then47 ], [ 0, %if.end89 ], [ -22, %if.then88 ], [ -22, %if.then83 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_cursor_atomic_update(ptr noundef %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb5, align 4
  %tobool.not = icmp eq ptr %7, null
  %tobool6.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode7 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_y, align 4
  %call8 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %9, i32 noundef 0) #3
  %height.i = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 4
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32.not.i = icmp eq i32 %15, 0
  br i1 %cmp32.not.i, label %if.end.sti_cursor_argb8888_to_clut8.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

if.end.sti_cursor_argb8888_to_clut8.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sti_cursor_argb8888_to_clut8.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end
  %vaddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call8, i32 0, i32 3
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vaddr, align 8
  %base.i = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 8
  %width.i = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 3
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc15.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.035.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc16.i, %for.inc15.i.for.cond1.preheader.i_crit_edge ]
  %dst.034.i = phi ptr [ %19, %for.cond1.preheader.lr.ph.i ], [ %dst.1.lcssa.i, %for.inc15.i.for.cond1.preheader.i_crit_edge ]
  %src.addr.033.i = phi ptr [ %17, %for.cond1.preheader.lr.ph.i ], [ %src.addr.1.lcssa.i, %for.inc15.i.for.cond1.preheader.i_crit_edge ]
  %20 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp227.not.i = icmp eq i32 %21, 0
  br i1 %cmp227.not.i, label %for.cond1.preheader.i.for.inc15.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.inc15.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc15.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %j.030.i = phi i32 [ %inc.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %dst.129.i = phi ptr [ %incdec.ptr14.i, %for.body3.i.for.body3.i_crit_edge ], [ %dst.034.i, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %src.addr.128.i = phi ptr [ %incdec.ptr.i, %for.body3.i.for.body3.i_crit_edge ], [ %src.addr.033.i, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %22 = ptrtoint ptr %src.addr.128.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src.addr.128.i, align 4
  %shr8.i = lshr i32 %23, 6
  %and9.i = and i32 %shr8.i, 3
  %24 = lshr i32 %23, 24
  %shl.i = and i32 %24, 192
  %25 = lshr i32 %23, 18
  %shl10.i = and i32 %25, 48
  %or.i = or i32 %shl.i, %shl10.i
  %26 = lshr i32 %23, 12
  %shl11.i = and i32 %26, 12
  %or12.i = or i32 %or.i, %shl11.i
  %or13.i = or i32 %or12.i, %and9.i
  %conv.i = trunc i32 %or13.i to i8
  %27 = ptrtoint ptr %dst.129.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %dst.129.i, align 1
  %incdec.ptr.i = getelementptr i32, ptr %src.addr.128.i, i32 1
  %incdec.ptr14.i = getelementptr i8, ptr %dst.129.i, i32 1
  %inc.i = add nuw i32 %j.030.i, 1
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 8
  %cmp2.i = icmp ult i32 %inc.i, %29
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.inc15.i_crit_edge

for.body3.i.for.inc15.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc15.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body3.i

for.inc15.i:                                      ; preds = %for.body3.i.for.inc15.i_crit_edge, %for.cond1.preheader.i.for.inc15.i_crit_edge
  %src.addr.1.lcssa.i = phi ptr [ %src.addr.033.i, %for.cond1.preheader.i.for.inc15.i_crit_edge ], [ %incdec.ptr.i, %for.body3.i.for.inc15.i_crit_edge ]
  %dst.1.lcssa.i = phi ptr [ %dst.034.i, %for.cond1.preheader.i.for.inc15.i_crit_edge ], [ %incdec.ptr14.i, %for.body3.i.for.inc15.i_crit_edge ]
  %inc16.i = add nuw i32 %i.035.i, 1
  %30 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height.i, align 4
  %cmp.i = icmp ult i32 %inc16.i, %31
  br i1 %cmp.i, label %for.inc15.i.for.cond1.preheader.i_crit_edge, label %for.inc15.i.sti_cursor_argb8888_to_clut8.exit_crit_edge

for.inc15.i.sti_cursor_argb8888_to_clut8.exit_crit_edge: ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sti_cursor_argb8888_to_clut8.exit

for.inc15.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond1.preheader.i

sti_cursor_argb8888_to_clut8.exit:                ; preds = %for.inc15.i.sti_cursor_argb8888_to_clut8.exit_crit_edge, %if.end.sti_cursor_argb8888_to_clut8.exit_crit_edge
  %32 = ptrtoint ptr %mode7 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 112)
  %call9 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode7, i32 noundef 0) #3
  %call10 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode7, i32 noundef 0) #3
  %shl = shl i32 %call9, 16
  %or = or i32 %shl, %call10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !75
  tail call void @arm_heavy_mb() #3
  %33 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 2
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %33) #3, !srcloc !76
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 6
  %36 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdisplay, align 2
  %conv = zext i16 %37 to i32
  %sub = add nsw i32 %conv, -1
  %38 = ptrtoint ptr %mode7 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 112)
  %call12 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode7, i32 noundef %sub) #3
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  %conv13 = zext i16 %40 to i32
  %sub14 = add nsw i32 %conv13, -1
  %call15 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode7, i32 noundef %sub14) #3
  %shl16 = shl i32 %call12, 16
  %or17 = or i32 %call15, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !77
  tail call void @arm_heavy_mb() #3
  %41 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr22 = getelementptr i8, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %41) #3, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !78
  tail call void @arm_heavy_mb() #3
  %pixmap = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 7
  %44 = ptrtoint ptr %pixmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pixmap, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %48, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %46) #3, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !79
  tail call void @arm_heavy_mb() #3
  %width = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 3
  %49 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr32 = getelementptr i8, ptr %53, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %51) #3, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !80
  tail call void @arm_heavy_mb() #3
  %54 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i, align 4
  %shl36 = shl i32 %55, 16
  %56 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width, align 8
  %or38 = or i32 %shl36, %57
  %58 = tail call i32 @llvm.bswap.i32(i32 %or38)
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr40 = getelementptr i8, ptr %60, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %58) #3, !srcloc !76
  %61 = ptrtoint ptr %mode7 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 112)
  %call41 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode7, i32 noundef %13) #3
  %call42 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode7, i32 noundef %11) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !81
  tail call void @arm_heavy_mb() #3
  %shl46 = shl i32 %call41, 16
  %or47 = or i32 %shl46, %call42
  %62 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr49 = getelementptr i8, ptr %64, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %62) #3, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !82
  tail call void @arm_heavy_mb() #3
  %clut_paddr = getelementptr inbounds %struct.sti_cursor, ptr %drm_plane, i32 0, i32 6
  %65 = ptrtoint ptr %clut_paddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %clut_paddr, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr54 = getelementptr i8, ptr %69, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %67) #3, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !83
  tail call void @arm_heavy_mb() #3
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 33554432) #3, !srcloc !76
  tail call void @sti_plane_update_fps(ptr noundef %drm_plane, i1 noundef zeroext true, i1 noundef zeroext false) #3
  %status = getelementptr inbounds %struct.sti_plane, ptr %drm_plane, i32 0, i32 2
  %72 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %sti_cursor_argb8888_to_clut8.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_cursor_atomic_disable(ptr noundef %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %base = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %9) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %base2 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base2, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 -16
  %call8 = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr7) #3
  %base9 = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %12 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base9, align 4
  %call11 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %11, ptr noundef %call8, i32 noundef %13, ptr noundef %call11) #3
  %status = getelementptr inbounds %struct.sti_plane, ptr %drm_plane, i32 0, i32 2
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_update_fps(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 371, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 381, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 399, i32 3}
!6 = !{ptr @sti_cursor_plane_helpers_funcs, !7, !"sti_cursor_plane_helpers_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 350, i32 37}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 131, i32 4}
!10 = !{ptr @cursor_debugfs_files, !11, !"cursor_debugfs_files", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 130, i32 29}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 111, i32 16}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 114, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 115, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 117, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 119, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 120, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 122, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 124, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 125, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 84, i32 16}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 96, i32 17}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 89, i32 16}
!37 = !{ptr @cursor_supported_formats, !38, !"cursor_supported_formats", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 73, i32 23}
!39 = !{ptr @sti_cursor_helpers_funcs, !40, !"sti_cursor_helpers_funcs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 334, i32 44}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 217, i32 3}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 240, i32 4}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 246, i32 3}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 250, i32 2}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 253, i32 2}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sti/sti_cursor.c", i32 321, i32 3}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 6226529}
!63 = !{i64 2156784278}
!64 = !{i64 2156784868}
!65 = !{i64 2156785367}
!66 = !{i64 2156785957}
!67 = !{i64 2156786456}
!68 = !{i64 2156787046}
!69 = !{i64 2156787637}
!70 = !{i64 2156788136}
!71 = !{i64 2156788726}
!72 = !{i64 2156789225}
!73 = !{i64 2156789815}
!74 = !{i64 2156790405}
!75 = !{i64 2156837742}
!76 = !{i64 6226111}
!77 = !{i64 2156838140}
!78 = !{i64 2156838555}
!79 = !{i64 2156839014}
!80 = !{i64 2156839475}
!81 = !{i64 2156839982}
!82 = !{i64 2156840425}
!83 = !{i64 2156840974}
