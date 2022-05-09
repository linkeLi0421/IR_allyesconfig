; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.omap_framebuffer = type { %struct.drm_framebuffer, i32, ptr, [2 x %struct.plane], %struct.mutex }
%struct.plane = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.omap_overlay_info = type { i32, i32, i16, i16, i16, i32, i8, i32, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.86 = type { i32, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
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

@omap_framebuffer_update_scanout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rotation '%d' ignored for non-tiled fb\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"omap_framebuffer_update_scanout\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/omapdrm/omap_fb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_framebuffer_update_scanout._entry_ptr = internal global ptr @omap_framebuffer_update_scanout._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fb: %dx%d@%4.4s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"   %d: offset=%d pitch=%d, obj: \00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"create framebuffer: dev=%p, mode_cmd=%p (%dx%d@%4.4s)\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_framebuffer_init.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap_framebuffer_init\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported pixel format: %4.4s\0A\00", [63 x i8] zeroinitializer }, align 32
@omap_framebuffer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&omap_fb->lock\00", [17 x i8] zeroinitializer }, align 32
@omap_framebuffer_init.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pitches differ between planes 0 and 1\0A\00", [57 x i8] zeroinitializer }, align 32
@omap_framebuffer_init.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"buffer pitch (%u bytes) is not a multiple of pixel size (%u bytes)\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_framebuffer_init.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"provided buffer object is too small! %zu < %d\0A\00", [49 x i8] zeroinitializer }, align 32
@omap_framebuffer_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr @omap_framebuffer_dirty }, [20 x i8] zeroinitializer }, align 32
@omap_framebuffer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.2, i32 444, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"framebuffer init failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@omap_framebuffer_init._entry_ptr = internal global ptr @omap_framebuffer_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create: FB ID: %d (%p)\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.omap_framebuffer_update_scanout = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -1610612736, i32 0, i32 1610612736, i32 0, i32 0, i32 0, i32 -1073741824], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 842088786, i64 842093121, i64 842093144, i64 842094158, i64 842094674, i64 875708754, i64 875710290, i64 875713089, i64 875713112, i64 875714642, i64 892424769, i64 892424792, i64 909199186, i64 1448695129, i64 1498831189]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 197, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 323, i32 16 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 327, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 374, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 386, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 400, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 408, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 414, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 429, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [23 x i8] c"omap_framebuffer_funcs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 76, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 444, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [37 x i8] c"../drivers/gpu/drm/omapdrm/omap_fb.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 448, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [45 x i8] c"switch.table.omap_framebuffer_update_scanout\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @omap_framebuffer_init._entry, ptr @omap_framebuffer_init._entry_ptr, ptr @omap_framebuffer_update_scanout._entry, ptr @omap_framebuffer_update_scanout._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @omap_framebuffer_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @omap_framebuffer_funcs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.omap_framebuffer_update_scanout], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_framebuffer_update_scanout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_framebuffer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_framebuffer_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_framebuffer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_framebuffer_update_scanout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @omap_framebuffer_supports_rotation(ptr nocapture noundef readonly %fb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj, align 4
  %call = tail call i32 @omap_gem_flags(ptr noundef %1) #6
  %and = and i32 %call, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_framebuffer_update_scanout(ptr nocapture noundef readonly %fb, ptr nocapture noundef readonly %state, ptr noundef %info, ptr noundef %r_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.omap_framebuffer, ptr %fb, i32 0, i32 2
  %0 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format1, align 4
  %format2 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %2 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %fourcc = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fourcc, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 4
  %7 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crtc_x, align 4
  %conv = trunc i32 %8 to i16
  %pos_x = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 8
  %9 = ptrtoint ptr %pos_x to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %pos_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 5
  %10 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_y, align 4
  %conv4 = trunc i32 %11 to i16
  %pos_y = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 9
  %12 = ptrtoint ptr %pos_y to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv4, ptr %pos_y, align 2
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 6
  %13 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crtc_w, align 4
  %conv5 = trunc i32 %14 to i16
  %out_width = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 10
  %15 = ptrtoint ptr %out_width to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5, ptr %out_width, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 7
  %16 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_h, align 4
  %conv6 = trunc i32 %17 to i16
  %out_height = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 11
  %18 = ptrtoint ptr %out_height to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6, ptr %out_height, align 2
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 11
  %19 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_w, align 4
  %shr = lshr i32 %20, 16
  %conv7 = trunc i32 %shr to i16
  %width = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 3
  %21 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv7, ptr %width, align 2
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 10
  %22 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_h, align 4
  %shr8 = lshr i32 %23, 16
  %conv9 = trunc i32 %shr8 to i16
  %height = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 4
  %24 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv9, ptr %height, align 4
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 14
  %25 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rotation, align 4
  %and.i = and i32 %26, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv9, ptr %width, align 2
  %28 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv7, ptr %height, align 4
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 8
  %29 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_x, align 4
  %shr14 = lshr i32 %30, 16
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 9
  %31 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_y, align 4
  %shr15 = lshr i32 %32, 16
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %33 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %obj, align 4
  %call16 = tail call i32 @omap_gem_flags(ptr noundef %34) #6
  %and = and i32 %call16, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  %35 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_w, align 4
  %37 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %src_h, align 4
  %shr21 = lshr i32 %38, 16
  %39 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rotation, align 4
  %and.i282 = and i32 %40, 15
  %switch.tableidx = add nsw i32 %and.i282, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %41 = icmp ult i32 %switch.tableidx, 7
  br i1 %41, label %switch.lookup, label %if.then17.drm_rotation_to_tiler.exit_crit_edge

if.then17.drm_rotation_to_tiler.exit_crit_edge:   ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_rotation_to_tiler.exit

switch.lookup:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.omap_framebuffer_update_scanout, i32 0, i32 %switch.tableidx
  %42 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %drm_rotation_to_tiler.exit

drm_rotation_to_tiler.exit:                       ; preds = %switch.lookup, %if.then17.drm_rotation_to_tiler.exit_crit_edge
  %orient.0.i = phi i32 [ 0, %if.then17.drm_rotation_to_tiler.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %and4.i = and i32 %40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %xor.i = xor i32 %orient.0.i, 536870912
  %spec.select.i = select i1 %tobool.not.i, i32 %orient.0.i, i32 %xor.i
  %and5.i = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %xor8.i = xor i32 %spec.select.i, 1073741824
  %orient.2.i = select i1 %tobool6.not.i, i32 %spec.select.i, i32 %xor8.i
  %43 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %format2, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1498831189, i32 %46)
  %cmp = icmp eq i32 %46, 1498831189
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %46)
  %cmp29 = icmp eq i32 %46, 1448695129
  %or.cond = or i1 %cmp, %cmp29
  %div280 = lshr i32 %30, 17
  %x.0 = select i1 %or.cond, i32 %div280, i32 %shr14
  %w.0.v = select i1 %or.cond, i32 17, i32 16
  %w.0 = lshr i32 %36, %w.0.v
  %and34 = and i32 %orient.2.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %sub = add nsw i32 %shr21, -1
  %add = select i1 %tobool35.not, i32 0, i32 %sub
  %y.0 = add nsw i32 %add, %shr15
  %and38 = and i32 %orient.2.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %sub41 = add nsw i32 %w.0, -1
  %add42 = select i1 %tobool39.not, i32 0, i32 %sub41
  %x.1 = add nsw i32 %add42, %x.0
  %47 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %obj, align 4
  %call46 = tail call i32 @omap_gem_rotated_dma_addr(ptr noundef %48, i32 noundef %orient.2.i, i32 noundef %x.1, i32 noundef %y.0, ptr noundef %info) #6
  %rotation_type = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 7
  %49 = ptrtoint ptr %rotation_type to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %rotation_type, align 4
  %50 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rotation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool48.not = icmp eq i32 %51, 0
  %52 = trunc i32 %51 to i8
  %conv49 = select i1 %tobool48.not, i8 1, i8 %52
  %rotation50 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 6
  %53 = ptrtoint ptr %rotation50 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv49, ptr %rotation50, align 4
  %54 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %obj, align 4
  %call53 = tail call i32 @omap_gem_tiled_stride(ptr noundef %55, i32 noundef %orient.2.i) #6
  br label %if.end69

if.else:                                          ; preds = %if.end
  %56 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rotation, align 4
  %and56 = and i32 %57, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %switch = icmp eq i32 %and56, 0
  br i1 %switch, label %if.else.sw.epilog_crit_edge, label %do.end59

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end59:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fb, align 8
  %dev60 = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str, i32 noundef %57) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end59, %if.else.sw.epilog_crit_edge
  %arrayidx1.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 0
  %62 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx1.i, align 4
  %64 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %.in.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 0
  %67 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %.in.i, align 4
  %mul6.i = mul i32 %68, %shr15
  %conv.i = zext i8 %66 to i32
  %mul.i = mul nuw nsw i32 %shr14, %conv.i
  %add.i = add i32 %mul.i, %63
  %arrayidx.i = getelementptr %struct.omap_framebuffer, ptr %fb, i32 0, i32 3, i32 0
  %add15.i = add i32 %add.i, %mul6.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %add16.i = add i32 %add15.i, %70
  %71 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add16.i, ptr %info, align 4
  %rotation_type64 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 7
  %72 = ptrtoint ptr %rotation_type64 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %rotation_type64, align 4
  %rotation65 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 6
  %73 = ptrtoint ptr %rotation65 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %rotation65, align 4
  %74 = load i32, ptr %.in.i, align 8
  br label %if.end69

if.end69:                                         ; preds = %sw.epilog, %drm_rotation_to_tiler.exit
  %.sink = phi i32 [ %74, %sw.epilog ], [ %call53, %drm_rotation_to_tiler.exit ]
  %y.1 = phi i32 [ %shr15, %sw.epilog ], [ %y.0, %drm_rotation_to_tiler.exit ]
  %orient.0 = phi i32 [ 0, %sw.epilog ], [ %orient.2.i, %drm_rotation_to_tiler.exit ]
  %x.2 = phi i32 [ %shr14, %sw.epilog ], [ %x.1, %drm_rotation_to_tiler.exit ]
  %conv67 = trunc i32 %.sink to i16
  %screen_width68 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 2
  %75 = ptrtoint ptr %screen_width68 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv67, ptr %screen_width68, align 4
  %76 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 3
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 2
  %conv71 = zext i8 %78 to i16
  %screen_width72 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 2
  %div74 = udiv i16 %conv67, %conv71
  %79 = ptrtoint ptr %screen_width72 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %div74, ptr %screen_width72, align 4
  %80 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %format2, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %83)
  %cmp78 = icmp eq i32 %83, 842094158
  br i1 %cmp78, label %if.then80, label %if.else125

if.then80:                                        ; preds = %if.end69
  %rotation_type81 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 7
  %84 = ptrtoint ptr %rotation_type81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rotation_type81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp82 = icmp eq i32 %85, 1
  br i1 %cmp82, label %if.then84, label %if.else121

if.then84:                                        ; preds = %if.then80
  %arrayidx86 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 1
  %86 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx86, align 4
  %call87 = tail call i32 @omap_gem_flags(ptr noundef %87) #6
  %and88 = and i32 %call87, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.end102, label %if.then84.if.end108_crit_edge, !prof !51

if.then84.if.end108_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

do.end102:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef null) #6
  br label %if.end108

if.end108:                                        ; preds = %do.end102, %if.then84.if.end108_crit_edge
  %88 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx86, align 4
  %div118278 = lshr i32 %x.2, 1
  %div119279 = lshr i32 %y.1, 1
  %p_uv_addr = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 1
  %call120 = tail call i32 @omap_gem_rotated_dma_addr(ptr noundef %89, i32 noundef %orient.0, i32 noundef %div118278, i32 noundef %div119279, ptr noundef %p_uv_addr) #6
  br label %if.end127

if.else121:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1.i283 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 1
  %90 = ptrtoint ptr %arrayidx1.i283 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx1.i283, align 4
  %arrayidx2.i = getelementptr %struct.drm_format_info, ptr %1, i32 0, i32 3, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx2.i, align 1
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 6
  %94 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %hsub.i, align 2
  %conv4.i = zext i8 %95 to i32
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 7
  %96 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %vsub.i, align 1
  %conv11.i = zext i8 %97 to i32
  %.in.i284 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 1
  %98 = ptrtoint ptr %.in.i284 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %.in.i284, align 4
  %mul6.i285 = mul i32 %99, %y.1
  %conv.i286 = zext i8 %93 to i32
  %mul.i287 = mul nsw i32 %x.2, %conv.i286
  %div.i = sdiv i32 %mul.i287, %conv4.i
  %add.i288 = add i32 %div.i, %91
  %arrayidx.i289 = getelementptr %struct.omap_framebuffer, ptr %fb, i32 0, i32 3, i32 1
  %div14.i = udiv i32 %mul6.i285, %conv11.i
  %add15.i290 = add i32 %add.i288, %div14.i
  %100 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i289, align 4
  %add16.i291 = add i32 %add15.i290, %101
  %p_uv_addr123 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 1
  %102 = ptrtoint ptr %p_uv_addr123 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add16.i291, ptr %p_uv_addr123, align 4
  br label %if.end127

if.else125:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %p_uv_addr126 = getelementptr inbounds %struct.omap_overlay_info, ptr %info, i32 0, i32 1
  %103 = ptrtoint ptr %p_uv_addr126 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %p_uv_addr126, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.else121, %if.end108
  %tobool128.not = icmp eq ptr %r_info, null
  br i1 %tobool128.not, label %if.end127.if.end183_crit_edge, label %if.then129

if.end127.if.end183_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then129:                                       ; preds = %if.end127
  %104 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %width, align 2
  %106 = lshr i16 %105, 1
  store i16 %106, ptr %width, align 2
  %107 = ptrtoint ptr %out_width to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %out_width, align 4
  %109 = lshr i16 %108, 1
  store i16 %109, ptr %out_width, align 4
  %110 = call ptr @memcpy(ptr %r_info, ptr %info, i32 48)
  %111 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %format2, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %is_yuv, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool139.not = icmp eq i8 %114, 0
  br i1 %tobool139.not, label %if.then129.if.end159_crit_edge, label %if.then140

if.then129.if.end159_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then140:                                       ; preds = %if.then129
  %115 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %width, align 2
  %117 = and i16 %116, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool144.not = icmp eq i16 %117, 0
  br i1 %tobool144.not, label %if.then140.if.end148_crit_edge, label %if.then145

if.then140.if.end148_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.then145:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i16 %116, 1
  %118 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %inc, ptr %width, align 2
  %width147 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 3
  %119 = ptrtoint ptr %width147 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %width147, align 2
  %dec = add i16 %120, -1
  store i16 %dec, ptr %width147, align 2
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.then140.if.end148_crit_edge
  %121 = ptrtoint ptr %out_width to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %out_width, align 4
  %123 = and i16 %122, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool152.not = icmp eq i16 %123, 0
  br i1 %tobool152.not, label %if.end148.if.end159_crit_edge, label %if.then153

if.end148.if.end159_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  %inc155 = add i16 %122, 1
  %124 = ptrtoint ptr %out_width to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %inc155, ptr %out_width, align 4
  %out_width156 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 10
  %125 = ptrtoint ptr %out_width156 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %out_width156, align 4
  %dec157 = add i16 %126, -1
  store i16 %dec157, ptr %out_width156, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then153, %if.end148.if.end159_crit_edge, %if.then129.if.end159_crit_edge
  %127 = ptrtoint ptr %pos_x to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %pos_x, align 4
  %129 = ptrtoint ptr %out_width to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %out_width, align 4
  %add164 = add i16 %130, %128
  %pos_x166 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 8
  %131 = ptrtoint ptr %pos_x166 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %add164, ptr %pos_x166, align 4
  %132 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %width, align 2
  %conv168 = zext i16 %133 to i32
  %add169 = add nsw i32 %x.2, %conv168
  %arrayidx1.i292 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 0
  %134 = ptrtoint ptr %arrayidx1.i292 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx1.i292, align 4
  %136 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %76, align 1
  %.in.i293 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 0
  %138 = ptrtoint ptr %.in.i293 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %.in.i293, align 4
  %mul6.i294 = mul i32 %139, %y.1
  %conv.i295 = zext i8 %137 to i32
  %mul.i296 = mul nsw i32 %add169, %conv.i295
  %add.i298 = add i32 %mul.i296, %135
  %arrayidx.i299 = getelementptr %struct.omap_framebuffer, ptr %fb, i32 0, i32 3, i32 0
  %add15.i301 = add i32 %add.i298, %mul6.i294
  %140 = ptrtoint ptr %arrayidx.i299 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i299, align 4
  %add16.i302 = add i32 %add15.i301, %141
  %142 = ptrtoint ptr %r_info to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add16.i302, ptr %r_info, align 4
  %143 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %format2, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %146)
  %cmp174 = icmp eq i32 %146, 842094158
  br i1 %cmp174, label %if.then176, label %if.end159.if.end183_crit_edge

if.end159.if.end183_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then176:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %width, align 2
  %conv178 = zext i16 %148 to i32
  %add179 = add nsw i32 %x.2, %conv178
  %arrayidx1.i303 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 1
  %149 = ptrtoint ptr %arrayidx1.i303 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx1.i303, align 4
  %arrayidx2.i304 = getelementptr %struct.drm_format_info, ptr %1, i32 0, i32 3, i32 0, i32 1
  %151 = ptrtoint ptr %arrayidx2.i304 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx2.i304, align 1
  %hsub.i305 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 6
  %153 = ptrtoint ptr %hsub.i305 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %hsub.i305, align 2
  %conv4.i306 = zext i8 %154 to i32
  %vsub.i307 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 7
  %155 = ptrtoint ptr %vsub.i307 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %vsub.i307, align 1
  %conv11.i308 = zext i8 %156 to i32
  %.in.i309 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 1
  %157 = ptrtoint ptr %.in.i309 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %.in.i309, align 4
  %mul6.i310 = mul i32 %158, %y.1
  %conv.i311 = zext i8 %152 to i32
  %mul.i312 = mul nsw i32 %add179, %conv.i311
  %div.i313 = sdiv i32 %mul.i312, %conv4.i306
  %add.i314 = add i32 %div.i313, %150
  %arrayidx.i315 = getelementptr %struct.omap_framebuffer, ptr %fb, i32 0, i32 3, i32 1
  %div14.i316 = udiv i32 %mul6.i310, %conv11.i308
  %add15.i317 = add i32 %add.i314, %div14.i316
  %159 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i315, align 4
  %add16.i318 = add i32 %add15.i317, %160
  %p_uv_addr181 = getelementptr inbounds %struct.omap_overlay_info, ptr %r_info, i32 0, i32 1
  %161 = ptrtoint ptr %p_uv_addr181 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add16.i318, ptr %p_uv_addr181, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then176, %if.end159.if.end183_crit_edge, %if.end127.if.end183_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_rotated_dma_addr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_tiled_stride(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_framebuffer_pin(ptr noundef %fb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %3 to i32
  %lock = getelementptr inbounds %struct.omap_framebuffer, ptr %fb, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %pin_count = getelementptr inbounds %struct.omap_framebuffer, ptr %fb, i32 0, i32 1
  %4 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %entry.cleanup29.sink.split_crit_edge, label %for.cond.preheader

entry.cleanup29.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29.sink.split

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp457.not = icmp eq i8 %3, 0
  br i1 %cmp457.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.058 = phi i32 [ %inc11, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.omap_framebuffer, ptr %fb, i32 0, i32 3, i32 %i.058
  %arrayidx6 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.058
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  %call = tail call i32 @omap_gem_pin(ptr noundef %7, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058)
  %cmp1660.not = icmp eq i32 %i.058, 0
  br i1 %cmp1660.not, label %for.cond15.preheader.cleanup29_crit_edge, label %for.cond15.preheader.for.body18_crit_edge

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.cond15.preheader.cleanup29_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

for.inc:                                          ; preds = %for.body
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  tail call void @omap_gem_dma_sync_buffer(ptr noundef %9, i32 noundef 1) #6
  %inc11 = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc11, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin_count, align 8
  br label %cleanup29.sink.split

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %i.161.in = phi i32 [ %i.161, %for.body18.for.body18_crit_edge ], [ %i.058, %for.cond15.preheader.for.body18_crit_edge ]
  %i.161 = add nsw i32 %i.161.in, -1
  %arrayidx21 = getelementptr %struct.omap_framebuffer, ptr %fb, i32 0, i32 3, i32 %i.161
  %arrayidx23 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.161
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx23, align 4
  tail call void @omap_gem_unpin(ptr noundef %13) #6
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx21, align 4
  %cmp16 = icmp sgt i32 %i.161.in, 1
  br i1 %cmp16, label %for.body18.for.body18_crit_edge, label %for.body18.cleanup29_crit_edge

for.body18.cleanup29_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup29

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

cleanup29.sink.split:                             ; preds = %for.end, %entry.cleanup29.sink.split_crit_edge
  %.sink = phi i32 [ %11, %for.end ], [ %5, %entry.cleanup29.sink.split_crit_edge ]
  %inc13 = add i32 %.sink, 1
  %15 = ptrtoint ptr %pin_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc13, ptr %pin_count, align 8
  br label %cleanup29

cleanup29:                                        ; preds = %cleanup29.sink.split, %for.body18.cleanup29_crit_edge, %for.cond15.preheader.cleanup29_crit_edge
  %retval.0 = phi i32 [ %call, %for.cond15.preheader.cleanup29_crit_edge ], [ 0, %cleanup29.sink.split ], [ %call, %for.body18.cleanup29_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_dma_sync_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_framebuffer_unpin(ptr noundef %fb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %3 to i32
  %lock = getelementptr inbounds %struct.omap_framebuffer, ptr %fb, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %pin_count = getelementptr inbounds %struct.omap_framebuffer, ptr %fb, i32 0, i32 1
  %4 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_count, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp sgt i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp420.not = icmp eq i8 %3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp420.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.omap_framebuffer, ptr %fb, i32 0, i32 3, i32 %i.021
  %arrayidx6 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.021
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  tail call void @omap_gem_unpin(ptr noundef %7) #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_framebuffer_describe(ptr nocapture noundef readonly %fb, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %3 to i32
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %7, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp19.not = icmp eq i8 %3, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 %conv
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 %i.020
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %i.020, i32 noundef %9, i32 noundef %11) #6
  %arrayidx5 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.020
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  tail call void @omap_gem_describe(ptr noundef %13, ptr noundef %m) #6
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_describe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_framebuffer_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) local_unnamed_addr #0 align 64 {
entry:
  %bos = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #6
  %num_planes1 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %num_planes1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_planes1, align 1
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bos) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp31.not = icmp eq i8 %1, 0
  %2 = call ptr @memset(ptr %bos, i32 255, i32 16)
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5, i32 %i.032
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call3 = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %4) #6
  %arrayidx4 = getelementptr [4 x ptr], ptr %bos, i32 0, i32 %i.032
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.body.error_crit_edge, label %for.inc

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call7 = call ptr @omap_framebuffer_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef nonnull %bos)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.error_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

error:                                            ; preds = %for.end.error_crit_edge, %for.body.error_crit_edge
  %i.030 = phi i32 [ %conv, %for.end.error_crit_edge ], [ %i.032, %for.body.error_crit_edge ]
  %fb.0 = phi ptr [ %call7, %for.end.error_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.body.error_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.030)
  %cmp1134.not = icmp eq i32 %i.030, 0
  br i1 %cmp1134.not, label %error.cleanup_crit_edge, label %error.while.body_crit_edge

error.while.body_crit_edge:                       ; preds = %error
  br label %while.body

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %drm_gem_object_put.exit.while.body_crit_edge, %error.while.body_crit_edge
  %dec35.in = phi i32 [ %dec35, %drm_gem_object_put.exit.while.body_crit_edge ], [ %i.030, %error.while.body_crit_edge ]
  %dec35 = add nsw i32 %dec35.in, -1
  %arrayidx13 = getelementptr [4 x ptr], ptr %bos, i32 0, i32 %dec35
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx13, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %while.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

while.body.drm_gem_object_put.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %while.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #6, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !55

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #6
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #6
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %while.body.drm_gem_object_put.exit_crit_edge
  %cmp11 = icmp sgt i32 %dec35.in, 1
  br i1 %cmp11, label %drm_gem_object_put.exit.while.body_crit_edge, label %drm_gem_object_put.exit.cleanup_crit_edge

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

drm_gem_object_put.exit.while.body_crit_edge:     ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %drm_gem_object_put.exit.cleanup_crit_edge, %error.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %for.end.cleanup_crit_edge ], [ %fb.0, %error.cleanup_crit_edge ], [ %fb.0, %drm_gem_object_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bos) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_framebuffer_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr nocapture noundef readonly %bos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %0 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pitches, align 4
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 8
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef %dev, ptr noundef %mode_cmd, i32 noundef %3, i32 noundef %5, ptr noundef %pixel_format) #6
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #6
  %6 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.do.body_crit_edge [
    i32 909199186, label %entry.for.end_crit_edge
    i32 842094674, label %entry.for.end_crit_edge237
    i32 842093144, label %entry.for.end_crit_edge238
    i32 842088786, label %entry.for.end_crit_edge239
    i32 842093121, label %entry.for.end_crit_edge240
    i32 892424792, label %entry.for.end_crit_edge241
    i32 892424769, label %entry.for.end_crit_edge242
    i32 875710290, label %entry.for.end_crit_edge243
    i32 875714642, label %entry.for.end_crit_edge244
    i32 875713112, label %entry.for.end_crit_edge245
    i32 875708754, label %entry.for.end_crit_edge246
    i32 875713089, label %entry.for.end_crit_edge247
    i32 842094158, label %entry.for.end_crit_edge248
    i32 1448695129, label %entry.for.end_crit_edge249
    i32 1498831189, label %entry.for.end_crit_edge250
  ]

entry.for.end_crit_edge250:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge249:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge248:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge247:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge246:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge245:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge244:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge243:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge242:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge241:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge240:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge239:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge238:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge237:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.end:                                          ; preds = %entry.for.end_crit_edge, %entry.for.end_crit_edge237, %entry.for.end_crit_edge238, %entry.for.end_crit_edge239, %entry.for.end_crit_edge240, %entry.for.end_crit_edge241, %entry.for.end_crit_edge242, %entry.for.end_crit_edge243, %entry.for.end_crit_edge244, %entry.for.end_crit_edge245, %entry.for.end_crit_edge246, %entry.for.end_crit_edge247, %entry.for.end_crit_edge248, %entry.for.end_crit_edge249, %entry.for.end_crit_edge250
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end.do.body_crit_edge, label %if.end15

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_framebuffer_init, %fail)) #6
          to label %if.then11 [label %fail], !srcloc !57

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_framebuffer_init.__UNIQUE_ID_ddebug318, ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %pixel_format) #6
  br label %fail

if.end15:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 256) #10
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.fail_crit_edge, label %if.end19

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end19:                                         ; preds = %if.end15
  %format20 = getelementptr inbounds %struct.omap_framebuffer, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %format20, align 4
  %lock = getelementptr inbounds %struct.omap_framebuffer, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @omap_framebuffer_init.__key) #6
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp24 = icmp eq i8 %14, 2
  br i1 %cmp24, label %land.lhs.true, label %if.end19.if.end50_crit_edge

if.end19.if.end50_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end19
  %arrayidx27 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %16)
  %cmp28.not = icmp eq i32 %1, %16
  br i1 %cmp28.not, label %land.lhs.true.if.end50_crit_edge, label %do.body31

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_framebuffer_init, %fail)) #6
          to label %if.then45 [label %fail], !srcloc !57

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %dev46 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_framebuffer_init.__UNIQUE_ID_ddebug319, ptr noundef %18, ptr noundef nonnull @.str.12) #6
  br label %fail

if.end50:                                         ; preds = %land.lhs.true.if.end50_crit_edge, %if.end19.if.end50_crit_edge
  %19 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 2
  %conv52 = zext i8 %21 to i32
  %rem = urem i32 %1, %conv52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool53.not = icmp eq i32 %rem, 0
  br i1 %tobool53.not, label %for.cond77.preheader, label %do.body55

for.cond77.preheader:                             ; preds = %if.end50
  %22 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp80217.not = icmp eq i8 %23, 0
  br i1 %cmp80217.not, label %for.cond77.preheader.for.end126_crit_edge, label %for.body82.lr.ph

for.cond77.preheader.for.end126_crit_edge:        ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end126

for.body82.lr.ph:                                 ; preds = %for.cond77.preheader
  %vsub86 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 7
  br label %for.body82

do.body55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_framebuffer_init, %fail)) #6
          to label %if.then69 [label %fail], !srcloc !57

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %dev70 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %24 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev70, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %19, align 2
  %conv72 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_framebuffer_init.__UNIQUE_ID_ddebug320, ptr noundef %25, ptr noundef nonnull @.str.13, i32 noundef %1, i32 noundef %conv72) #6
  br label %fail

for.body82:                                       ; preds = %for.inc124.for.body82_crit_edge, %for.body82.lr.ph
  %i.1218 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc125, %for.inc124.for.body82_crit_edge ]
  %arrayidx83 = getelementptr %struct.omap_framebuffer, ptr %call7.i.i, i32 0, i32 3, i32 %i.1218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1218)
  %cmp84 = icmp eq i32 %i.1218, 0
  br i1 %cmp84, label %for.body82.cond.end_crit_edge, label %cond.false

for.body82.cond.end_crit_edge:                    ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %vsub86 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vsub86, align 1
  %conv87 = zext i8 %29 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body82.cond.end_crit_edge
  %cond = phi i32 [ %conv87, %cond.false ], [ 1, %for.body82.cond.end_crit_edge ]
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 8
  %mul = mul i32 %31, %1
  %div = udiv i32 %mul, %cond
  %arrayidx89 = getelementptr ptr, ptr %bos, i32 %i.1218
  %32 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx89, align 4
  %call90 = tail call i32 @omap_gem_mmap_size(ptr noundef %33) #6
  %arrayidx91 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 %i.1218
  %34 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx91, align 4
  %sub = sub i32 %call90, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %sub)
  %cmp92 = icmp ugt i32 %div, %sub
  br i1 %cmp92, label %do.body95, label %for.inc124

do.body95:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_framebuffer_init, %fail)) #6
          to label %if.then109 [label %fail], !srcloc !57

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  %dev110 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %36 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev110, align 4
  %38 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx89, align 4
  %size112 = getelementptr inbounds %struct.drm_gem_object, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %size112 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size112, align 8
  %42 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx91, align 4
  %sub115 = sub i32 %41, %43
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_framebuffer_init.__UNIQUE_ID_ddebug321, ptr noundef %37, ptr noundef nonnull @.str.14, i32 noundef %sub115, i32 noundef %div) #6
  br label %fail

for.inc124:                                       ; preds = %cond.end
  %44 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx89, align 4
  %arrayidx121 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 %i.1218
  %46 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx121, align 4
  %47 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx83, align 4
  %inc125 = add nuw nsw i32 %i.1218, 1
  %48 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %num_planes, align 1
  %conv79 = zext i8 %49 to i32
  %cmp80 = icmp ult i32 %inc125, %conv79
  br i1 %cmp80, label %for.inc124.for.body82_crit_edge, label %for.inc124.for.end126_crit_edge

for.inc124.for.end126_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end126

for.inc124.for.body82_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body82

for.end126:                                       ; preds = %for.inc124.for.end126_crit_edge, %for.cond77.preheader.for.end126_crit_edge
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #6
  %call127 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @omap_framebuffer_funcs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end134, label %do.end132

do.end132:                                        ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #8
  %dev133 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %50 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev133, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.15, i32 noundef %call127) #9
  %phi.cast = inttoptr i32 %call127 to ptr
  br label %fail

if.end134:                                        ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #8
  %base135 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %base135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %base135, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %53, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup137

fail:                                             ; preds = %do.end132, %if.then109, %do.body95, %if.then69, %do.body55, %if.then45, %do.body31, %if.end15.fail_crit_edge, %if.then11, %do.body
  %ret.2 = phi ptr [ %phi.cast, %do.end132 ], [ inttoptr (i32 -22 to ptr), %if.then11 ], [ inttoptr (i32 -12 to ptr), %if.end15.fail_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then45 ], [ inttoptr (i32 -22 to ptr), %if.then69 ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %do.body31 ], [ inttoptr (i32 -22 to ptr), %do.body55 ], [ inttoptr (i32 -22 to ptr), %if.then109 ], [ inttoptr (i32 -22 to ptr), %do.body95 ]
  %omap_fb.0 = phi ptr [ %call7.i.i, %do.end132 ], [ null, %if.then11 ], [ null, %if.end15.fail_crit_edge ], [ %call7.i.i, %if.then45 ], [ %call7.i.i, %if.then69 ], [ null, %do.body ], [ %call7.i.i, %do.body31 ], [ %call7.i.i, %do.body55 ], [ %call7.i.i, %if.then109 ], [ %call7.i.i, %do.body95 ]
  tail call void @kfree(ptr noundef %omap_fb.0) #6
  br label %cleanup137

cleanup137:                                       ; preds = %fail, %if.end134
  %retval.0 = phi ptr [ %ret.2, %fail ], [ %call7.i.i, %if.end134 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_mmap_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_framebuffer_dirty(ptr nocapture noundef readonly %fb, ptr nocapture noundef readnone %file_priv, i32 noundef %flags, i32 noundef %color, ptr nocapture noundef readnone %clips, i32 noundef %num_clips) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 8
  tail call void @drm_modeset_lock_all(ptr noundef %1) #6
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %4 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn16 = load ptr, ptr %crtc_list, align 4
  %cmp.not18 = icmp eq ptr %.pn16, %crtc_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn19 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn16, %entry.for.body_crit_edge ]
  %crtc.0 = getelementptr i8, ptr %.pn19, i32 -8
  tail call void @omap_crtc_flush(ptr noundef %crtc.0) #6
  %5 = ptrtoint ptr %.pn19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn19, align 4
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 8
  %crtc_list4 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 20
  %cmp.not = icmp eq ptr %.pn, %crtc_list4
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %7, %for.body.for.end_crit_edge ]
  tail call void @drm_modeset_unlock_all(ptr noundef %.lcssa) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crtc_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 197, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap_framebuffer_update_scanout._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap_framebuffer_update_scanout._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 323, i32 16}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 327, i32 17}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 374, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 386, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug318, !15, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!19 = !{ptr @omap_framebuffer_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 400, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 408, i32 3}
!24 = !{ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug319, !23, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 414, i32 3}
!27 = !{ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug320, !26, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 429, i32 4}
!30 = !{ptr @omap_framebuffer_init.__UNIQUE_ID_ddebug321, !29, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 444, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @omap_framebuffer_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @omap_framebuffer_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 448, i32 2}
!38 = distinct !{null, !39, !"formats", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 20, i32 18}
!40 = !{ptr @omap_framebuffer_funcs, !41, !"omap_framebuffer_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/omapdrm/omap_fb.c", i32 76, i32 43}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i8 0, i8 2}
!53 = !{i64 2148606850}
!54 = !{i64 2148521314, i64 2148521346, i64 2148521375, i64 2148521409, i64 2148521440, i64 2148521463}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2149628903}
!57 = !{i64 2148330712, i64 2148330717, i64 2148330730, i64 2148330774, i64 2148330808, i64 2148330829}
