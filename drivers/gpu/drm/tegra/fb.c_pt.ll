; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_fb_helper_funcs = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_bo = type { %struct.drm_gem_object, %struct.host1x_bo, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.tegra_bo_tiling }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.91, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.91 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.tegra_fbdev = type { %struct.drm_fb_helper, ptr }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.87, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unknown format modifier: %llx\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@tegra_fb_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to initialize framebuffer: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_fb_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpu/drm/tegra/fb.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_fb_alloc._entry_ptr = internal global ptr @tegra_fb_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_fbdev_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate DRM fbdev\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_fbdev_create\00", [45 x i8] zeroinitializer }, align 32
@tegra_fbdev_create._entry_ptr = internal global ptr @tegra_fbdev_create._entry, section ".printk_index", align 4
@tegra_fb_helper_funcs = internal constant { %struct.drm_fb_helper_funcs, [28 x i8] } { %struct.drm_fb_helper_funcs { ptr @tegra_fbdev_probe }, [28 x i8] zeroinitializer }, align 32
@tegra_fbdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate framebuffer info\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_fbdev_probe\00", [46 x i8] zeroinitializer }, align 32
@tegra_fbdev_probe._entry_ptr = internal global ptr @tegra_fbdev_probe._entry, section ".printk_index", align 4
@tegra_fbdev_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to allocate DRM framebuffer: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_fbdev_probe._entry_ptr.12 = internal global ptr @tegra_fbdev_probe._entry.10, section ".printk_index", align 4
@tegra_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @drm_fb_helper_pan_display, ptr @drm_fb_helper_sys_fillrect, ptr @drm_fb_helper_sys_copyarea, ptr @drm_fb_helper_sys_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr @tegra_fb_mmap, ptr null, ptr null, ptr @drm_fb_helper_debug_enter, ptr @drm_fb_helper_debug_leave }, [36 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@tegra_fbdev_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to vmap() framebuffer\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_fbdev_probe._entry_ptr.15 = internal global ptr @tegra_fbdev_probe._entry.13, section ".printk_index", align 4
@tegra_fbdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to initialize DRM FB helper: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_fbdev_init\00", [47 x i8] zeroinitializer }, align 32
@tegra_fbdev_init._entry_ptr = internal global ptr @tegra_fbdev_init._entry, section ".printk_index", align 4
@tegra_fbdev_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to set initial configuration: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_fbdev_init._entry_ptr.20 = internal global ptr @tegra_fbdev_init._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 64, i64 0, i64 216172782113783809, i64 216172782113783824, i64 216172782113783825, i64 216172782113783826, i64 216172782113783827, i64 216172782113783828, i64 216172782113783829]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 98, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"tegra_fb_funcs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 105, i32 43 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 130, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 305, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"tegra_fb_helper_funcs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 295, i32 41 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 247, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 255, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"tegra_fb_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 205, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 276, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 329, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [30 x i8] c"../drivers/gpu/drm/tegra/fb.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 336, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @tegra_fb_alloc._entry, ptr @tegra_fb_alloc._entry_ptr, ptr @tegra_fbdev_create._entry, ptr @tegra_fbdev_create._entry_ptr, ptr @tegra_fbdev_init._entry, ptr @tegra_fbdev_init._entry.18, ptr @tegra_fbdev_init._entry_ptr, ptr @tegra_fbdev_init._entry_ptr.20, ptr @tegra_fbdev_probe._entry, ptr @tegra_fbdev_probe._entry.10, ptr @tegra_fbdev_probe._entry.13, ptr @tegra_fbdev_probe._entry_ptr, ptr @tegra_fbdev_probe._entry_ptr.12, ptr @tegra_fbdev_probe._entry_ptr.15, ptr @.str, ptr @tegra_fb_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tegra_fb_helper_funcs, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @tegra_fb_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fb_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fbdev_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fb_helper_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fbdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fbdev_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fbdev_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fbdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_fbdev_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_fb_get_plane(ptr noundef %framebuffer, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_fb_get_obj(ptr noundef %framebuffer, i32 noundef %index) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tegra_fb_is_bottom_up(ptr noundef %framebuffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @drm_gem_fb_get_obj(ptr noundef %framebuffer, i32 noundef 0) #6
  %flags = getelementptr inbounds %struct.tegra_bo, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_fb_get_tiling(ptr nocapture noundef readonly %framebuffer, ptr nocapture noundef writeonly %tiling) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %modifier1 = getelementptr inbounds %struct.drm_framebuffer, ptr %framebuffer, i32 0, i32 8
  %0 = ptrtoint ptr %modifier1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %modifier1, align 8
  %shr.mask = and i64 %1, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 216172782113783808, i64 %shr.mask)
  %cmp = icmp eq i64 %shr.mask, 216172782113783808
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 22
  %4 = and i32 %3, 1
  %5 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %5, align 4
  %and6 = and i64 %1, -4194305
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %modifier.0 = phi i64 [ %and6, %if.then ], [ %1, %entry.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_switch(i64 %modifier.0, ptr @__sancov_gen_cov_switch_values)
  switch i64 %modifier.0, label %sw.default [
    i64 0, label %sw.bb
    i64 216172782113783809, label %sw.bb8
    i64 216172782113783824, label %sw.bb11
    i64 216172782113783825, label %sw.bb14
    i64 216172782113783826, label %sw.bb17
    i64 216172782113783827, label %sw.bb20
    i64 216172782113783828, label %sw.bb23
    i64 216172782113783829, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tiling, align 4
  %value = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %value, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tiling, align 4
  %value10 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %10 = ptrtoint ptr %value10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %value10, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %tiling, align 4
  %value13 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %12 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %value13, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %tiling, align 4
  %value16 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %14 = ptrtoint ptr %value16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %value16, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %tiling, align 4
  %value19 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %16 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %value19, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %tiling, align 4
  %value22 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %18 = ptrtoint ptr %value22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %value22, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %tiling, align 4
  %value25 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %20 = ptrtoint ptr %value25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %value25, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tiling to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %tiling, align 4
  %value28 = getelementptr inbounds %struct.tegra_bo_tiling, ptr %tiling, i32 0, i32 1
  %22 = ptrtoint ptr %value28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %value28, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i64 noundef %modifier.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb26, %sw.bb23, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb26 ], [ 0, %sw.bb23 ], [ 0, %sw.bb20 ], [ 0, %sw.bb17 ], [ 0, %sw.bb14 ], [ 0, %sw.bb11 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_fb_create(ptr noundef %drm, ptr noundef %file, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %planes = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %drm, ptr noundef %cmd) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %planes) #6
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %0 = call ptr @memset(ptr %planes, i32 255, i32 16)
  %1 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp79.not = icmp eq i8 %2, 0
  br i1 %cmp79.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %width2 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 1
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 6
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 7
  %.in = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.080)
  %tobool.not = icmp eq i32 %i.080, 0
  br i1 %tobool.not, label %for.body.cond.end9_crit_edge, label %cond.true6

for.body.cond.end9_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end9

cond.true6:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hsub, align 2
  %conv3 = zext i8 %7 to i32
  %div = udiv i32 %5, %conv3
  %8 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vsub, align 1
  %conv7 = zext i8 %9 to i32
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true6, %for.body.cond.end9_crit_edge
  %div73 = phi i32 [ %div, %cond.true6 ], [ %5, %for.body.cond.end9_crit_edge ]
  %cond10 = phi i32 [ %conv7, %cond.true6 ], [ 1, %for.body.cond.end9_crit_edge ]
  %10 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %.in, align 8
  %arrayidx = getelementptr %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 5, i32 %i.080
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call12 = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %13) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %cond.end9.unreference_crit_edge, label %if.end

cond.end9.unreference_crit_edge:                  ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %unreference

if.end:                                           ; preds = %cond.end9
  %div11 = udiv i32 %11, %cond10
  %arrayidx14 = getelementptr [4 x i8], ptr %3, i32 0, i32 %i.080
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %15 to i32
  %sub = add i32 %div11, -1
  %arrayidx16 = getelementptr %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 6, i32 %i.080
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %mul = mul i32 %17, %sub
  %mul17 = mul i32 %div73, %conv15
  %add = add i32 %mul, %mul17
  %arrayidx18 = getelementptr %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 7, i32 %i.080
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %add, %19
  %size20 = getelementptr inbounds %struct.drm_gem_object, ptr %call12, i32 0, i32 5
  %20 = ptrtoint ptr %size20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add19)
  %cmp21 = icmp ult i32 %21, %add19
  br i1 %cmp21, label %if.end.unreference_crit_edge, label %for.inc

if.end.unreference_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unreference

for.inc:                                          ; preds = %if.end
  %arrayidx26 = getelementptr [4 x ptr], ptr %planes, i32 0, i32 %i.080
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12, ptr %arrayidx26, align 4
  %inc = add nuw nsw i32 %i.080, 1
  %23 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call30 = call fastcc ptr @tegra_fb_alloc(ptr noundef %drm, ptr noundef %cmd, ptr noundef nonnull %planes)
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.unreference_crit_edge, label %for.end.cleanup39_crit_edge

for.end.cleanup39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

for.end.unreference_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unreference

unreference:                                      ; preds = %for.end.unreference_crit_edge, %if.end.unreference_crit_edge, %cond.end9.unreference_crit_edge
  %i.077 = phi i32 [ %i.0.lcssa, %for.end.unreference_crit_edge ], [ %i.080, %cond.end9.unreference_crit_edge ], [ %i.080, %if.end.unreference_crit_edge ]
  %err.2 = phi ptr [ %call30, %for.end.unreference_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.unreference_crit_edge ], [ inttoptr (i32 -6 to ptr), %cond.end9.unreference_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.077)
  %tobool35.not81 = icmp eq i32 %i.077, 0
  br i1 %tobool35.not81, label %unreference.cleanup39_crit_edge, label %unreference.while.body_crit_edge

unreference.while.body_crit_edge:                 ; preds = %unreference
  br label %while.body

unreference.cleanup39_crit_edge:                  ; preds = %unreference
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

while.body:                                       ; preds = %drm_gem_object_put.exit.while.body_crit_edge, %unreference.while.body_crit_edge
  %i.182 = phi i32 [ %dec, %drm_gem_object_put.exit.while.body_crit_edge ], [ %i.077, %unreference.while.body_crit_edge ]
  %dec = add nsw i32 %i.182, -1
  %arrayidx36 = getelementptr [4 x ptr], ptr %planes, i32 0, i32 %dec
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx36, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %while.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

while.body.drm_gem_object_put.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %while.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %26, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr nonnull %26, i32 1, i32 3, i32 1) #6
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #6, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef 3) #6
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @drm_gem_object_free(ptr noundef nonnull %26) #6
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %while.body.drm_gem_object_put.exit_crit_edge
  %tobool35.not = icmp eq i32 %dec, 0
  br i1 %tobool35.not, label %drm_gem_object_put.exit.cleanup39_crit_edge, label %drm_gem_object_put.exit.while.body_crit_edge

drm_gem_object_put.exit.while.body_crit_edge:     ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

drm_gem_object_put.exit.cleanup39_crit_edge:      ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

cleanup39:                                        ; preds = %drm_gem_object_put.exit.cleanup39_crit_edge, %unreference.cleanup39_crit_edge, %for.end.cleanup39_crit_edge
  %retval.0 = phi ptr [ %call30, %for.end.cleanup39_crit_edge ], [ %err.2, %unreference.cleanup39_crit_edge ], [ %err.2, %drm_gem_object_put.exit.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %planes) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tegra_fb_alloc(ptr noundef %drm, ptr noundef %mode_cmd, ptr nocapture noundef readonly %planes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %drm, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #6
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %format, align 8
  %num_planes21 = getelementptr inbounds %struct.drm_format_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %num_planes21 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_planes21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3.not = icmp eq i8 %4, 0
  br i1 %cmp3.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %planes, i32 %i.04
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 %i.04
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.04, 1
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 8
  %num_planes2 = getelementptr inbounds %struct.drm_format_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %num_planes2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_planes2, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call5 = tail call i32 @drm_framebuffer_init(ptr noundef %drm, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @tegra_fb_funcs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %call5) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %14 = inttoptr i32 %call5 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %do.end ], [ %call7.i.i, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_fb_prepare(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 460) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %tegra_fbdev_create.exit.thread, label %tegra_fbdev_create.exit

tegra_fbdev_create.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #10
  %fbdev9 = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %fbdev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -12 to ptr), ptr %fbdev9, align 8
  br label %if.then

tegra_fbdev_create.exit:                          ; preds = %entry
  tail call void @drm_fb_helper_prepare(ptr noundef %drm, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @tegra_fb_helper_funcs) #6
  %fbdev = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %fbdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %fbdev, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %tegra_fbdev_create.exit.if.then_crit_edge, label %tegra_fbdev_create.exit.cleanup_crit_edge

tegra_fbdev_create.exit.cleanup_crit_edge:        ; preds = %tegra_fbdev_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tegra_fbdev_create.exit.if.then_crit_edge:        ; preds = %tegra_fbdev_create.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %tegra_fbdev_create.exit.if.then_crit_edge, %tegra_fbdev_create.exit.thread
  %retval.0.i11 = phi ptr [ inttoptr (i32 -12 to ptr), %tegra_fbdev_create.exit.thread ], [ %call7.i.i.i, %tegra_fbdev_create.exit.if.then_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i11 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %tegra_fbdev_create.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then ], [ 0, %tegra_fbdev_create.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_drm_fb_free(ptr nocapture noundef readonly %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %fbdev = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbdev, align 8
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_fb_init(ptr nocapture noundef readonly %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %fbdev = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbdev, align 8
  %dev.i = getelementptr inbounds %struct.drm_fb_helper, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @drm_fb_helper_init(ptr noundef %5, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16, i32 noundef %call.i) #10
  br label %tegra_fbdev_init.exit

if.end.i:                                         ; preds = %entry
  %call4.i = tail call i32 @drm_fb_helper_initial_config(ptr noundef %3, i32 noundef 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end.i.tegra_fbdev_init.exit_crit_edge

if.end.i.tegra_fbdev_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_fbdev_init.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev10.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %call4.i) #10
  tail call void @drm_fb_helper_fini(ptr noundef %3) #6
  br label %tegra_fbdev_init.exit

tegra_fbdev_init.exit:                            ; preds = %do.end9.i, %if.end.i.tegra_fbdev_init.exit_crit_edge, %do.end.i
  %10 = phi i32 [ 0, %if.end.i.tegra_fbdev_init.exit_crit_edge ], [ %call4.i, %do.end9.i ], [ %call.i, %do.end.i ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_drm_fb_exit(ptr nocapture noundef readonly %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %fbdev = getelementptr inbounds %struct.tegra_drm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbdev, align 8
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef %3) #6
  %fb.i = getelementptr inbounds %struct.tegra_fbdev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.tegra_fbdev_exit.exit_crit_edge, label %if.then.i

entry.tegra_fbdev_exit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_fbdev_exit.exit

if.then.i:                                        ; preds = %entry
  %call.i.i = tail call ptr @drm_gem_fb_get_obj(ptr noundef nonnull %5, i32 noundef 0) #6
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %pages.i = getelementptr inbounds %struct.tegra_bo, ptr %call.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages.i, align 8
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %vaddr.i = getelementptr inbounds %struct.tegra_bo, ptr %call.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr.i, align 4
  tail call void @vunmap(ptr noundef %9) #6
  %10 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vaddr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fb.i, align 4
  tail call void @drm_framebuffer_remove(ptr noundef %12) #6
  br label %tegra_fbdev_exit.exit

tegra_fbdev_exit.exit:                            ; preds = %if.end.i, %entry.tegra_fbdev_exit.exit_crit_edge
  tail call void @drm_fb_helper_fini(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fbdev_probe(ptr noundef %helper, ptr noundef %sizes) #0 align 64 {
entry:
  %cmd = alloca %struct.drm_mode_fb_cmd2, align 8
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %cmd) #6
  %4 = call ptr @memset(ptr %cmd, i32 0, i32 104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #6
  %surface_bpp = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 4
  %5 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %surface_bpp, align 4
  %sub = add i32 %6, 7
  %div111 = lshr i32 %sub, 3
  %surface_width = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 2
  %7 = ptrtoint ptr %surface_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %surface_width, align 4
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 1
  %9 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %width, align 4
  %surface_height = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 3
  %10 = ptrtoint ptr %surface_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %surface_height, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 2
  %12 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height, align 8
  %mul = mul i32 %div111, %8
  %sub3 = add i32 %mul, -1
  %pitch_align = getelementptr inbounds %struct.tegra_drm, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %pitch_align to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pitch_align, align 4
  %sub4 = add i32 %14, -1
  %or = or i32 %sub4, %sub3
  %add5 = add i32 %or, 1
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 6
  %15 = ptrtoint ptr %pitches to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add5, ptr %pitches, align 4
  %surface_depth = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 5
  %16 = ptrtoint ptr %surface_depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %surface_depth, align 4
  %call7 = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %6, i32 noundef %17) #6
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %cmd, i32 0, i32 3
  %18 = ptrtoint ptr %pixel_format to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call7, ptr %pixel_format, align 4
  %mul11 = mul i32 %11, %add5
  %call12 = tail call ptr @tegra_bo_create(ptr noundef %1, i32 noundef %mul11, i32 noundef 0) #6
  %19 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call12, ptr %bo, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call15 = tail call ptr @drm_fb_helper_alloc_fbi(ptr noundef %helper) #6
  %cmp.i112 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8) #10
  %tobool.not.i = icmp eq ptr %call12, null
  br i1 %tobool.not.i, label %do.end.drm_gem_object_put.exit_crit_edge, label %if.then.i

do.end.drm_gem_object_put.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %do.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call12, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr nonnull %call12, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call12, ptr nonnull %call12, i32 1, ptr nonnull elementtype(i32) %call12) #6, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !54

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call12, i32 noundef 3) #6
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @drm_gem_object_free(ptr noundef nonnull %call12) #6
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %do.end.drm_gem_object_put.exit_crit_edge
  %24 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %call21 = call fastcc ptr @tegra_fb_alloc(ptr noundef %1, ptr noundef nonnull %cmd, ptr noundef nonnull %bo)
  %fb22 = getelementptr inbounds %struct.tegra_fbdev, ptr %helper, i32 0, i32 1
  %25 = ptrtoint ptr %fb22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call21, ptr %fb22, align 4
  %cmp.i113 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %if.then25, label %if.end35

if.then25:                                        ; preds = %if.end20
  %26 = ptrtoint ptr %call21 to i32
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %26) #10
  %tobool.not.i114 = icmp eq ptr %call12, null
  br i1 %tobool.not.i114, label %if.then25.drm_gem_object_put.exit123_crit_edge, label %if.then.i118

if.then25.drm_gem_object_put.exit123_crit_edge:   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit123

if.then.i118:                                     ; preds = %if.then25
  %call.i.i.i.i.i.i.i.i115 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call12, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !52
  call void @llvm.prefetch.p0(ptr nonnull %call12, i32 1, i32 3, i32 1) #6
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call12, ptr nonnull %call12, i32 1, ptr nonnull elementtype(i32) %call12) #6, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i.i116 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i116)
  %cmp.i.i.i.i.i.i117 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i116, 1
  br i1 %cmp.i.i.i.i.i.i117, label %if.then.i.i.i122, label %if.end5.i.i.i.i.i.i120

if.end5.i.i.i.i.i.i120:                           ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i116)
  %.not.i.i.i.i.i.i119 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i116, 0
  br i1 %.not.i.i.i.i.i.i119, label %if.end5.i.i.i.i.i.i120.drm_gem_object_put.exit123_crit_edge, label %if.then10.i.i.i.i.i.i121, !prof !54

if.end5.i.i.i.i.i.i120.drm_gem_object_put.exit123_crit_edge: ; preds = %if.end5.i.i.i.i.i.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_gem_object_put.exit123

if.then10.i.i.i.i.i.i121:                         ; preds = %if.end5.i.i.i.i.i.i120
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %call12, i32 noundef 3) #6
  br label %drm_gem_object_put.exit123

if.then.i.i.i122:                                 ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !55
  call void @drm_gem_object_free(ptr noundef nonnull %call12) #6
  br label %drm_gem_object_put.exit123

drm_gem_object_put.exit123:                       ; preds = %if.then.i.i.i122, %if.then10.i.i.i.i.i.i121, %if.end5.i.i.i.i.i.i120.drm_gem_object_put.exit123_crit_edge, %if.then25.drm_gem_object_put.exit123_crit_edge
  %30 = ptrtoint ptr %fb22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fb22, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end20
  %fb37 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 2
  %33 = ptrtoint ptr %fb37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call21, ptr %fb37, align 4
  %fbdev38 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 5
  %34 = ptrtoint ptr %fbdev38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call15, ptr %fbdev38, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call15, i32 0, i32 20
  %35 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tegra_fb_ops, ptr %fbops, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %call15, ptr noundef %helper, ptr noundef %sizes) #6
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %call15, i32 0, i32 6, i32 4
  %36 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xoffset, align 4
  %mul39 = mul i32 %37, %div111
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %call15, i32 0, i32 6, i32 5
  %38 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yoffset, align 4
  %pitches41 = getelementptr inbounds %struct.drm_framebuffer, ptr %call21, i32 0, i32 6
  %40 = ptrtoint ptr %pitches41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pitches41, align 8
  %mul43 = mul i32 %41, %39
  %add44 = add i32 %mul43, %mul39
  %pages = getelementptr inbounds %struct.tegra_bo, ptr %call12, i32 0, i32 8
  %42 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pages, align 8
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %if.end35.if.end58_crit_edge, label %if.then45

if.end35.if.end58_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then45:                                        ; preds = %if.end35
  %num_pages = getelementptr inbounds %struct.tegra_bo, ptr %call12, i32 0, i32 7
  %44 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_pages, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or47 = and i32 %46, -573
  %or48 = or i32 %or47, 516
  %call49 = call ptr @vmap(ptr noundef nonnull %43, i32 noundef %45, i32 noundef 4, i32 noundef %or48) #6
  %vaddr = getelementptr inbounds %struct.tegra_bo, ptr %call12, i32 0, i32 5
  %47 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call49, ptr %vaddr, align 4
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.end55, label %if.then45.if.end58_crit_edge

if.then45.if.end58_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.end55:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %dev56 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.14) #10
  call void @drm_framebuffer_remove(ptr noundef %call21) #6
  br label %cleanup

if.end58:                                         ; preds = %if.then45.if.end58_crit_edge, %if.end35.if.end58_crit_edge
  %iova = getelementptr inbounds %struct.tegra_bo, ptr %call12, i32 0, i32 4
  %50 = ptrtoint ptr %iova to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iova, align 8
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 28
  %52 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %fb_base, align 4
  %vaddr59 = getelementptr inbounds %struct.tegra_bo, ptr %call12, i32 0, i32 5
  %53 = ptrtoint ptr %vaddr59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr59, align 4
  %add.ptr = getelementptr i8, ptr %54, i32 %add44
  %55 = getelementptr inbounds %struct.fb_info, ptr %call15, i32 0, i32 25
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr, ptr %55, align 4
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call15, i32 0, i32 26
  %57 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul11, ptr %screen_size, align 4
  %58 = load i32, ptr %iova, align 8
  %add61 = add i32 %58, %add44
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call15, i32 0, i32 7, i32 1
  %59 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add61, ptr %smem_start, align 4
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call15, i32 0, i32 7, i32 2
  %60 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul11, ptr %smem_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end55, %drm_gem_object_put.exit123, %drm_gem_object_put.exit, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %24, %drm_gem_object_put.exit ], [ %32, %drm_gem_object_put.exit123 ], [ 0, %if.end58 ], [ -12, %do.end55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #6
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_bo_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_fb_mmap(ptr nocapture noundef readonly %info, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %fb = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %call.i = tail call ptr @drm_gem_fb_get_obj(ptr noundef %3, i32 noundef 0) #6
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %call2 = tail call i32 @drm_gem_mmap_obj(ptr noundef %call.i, i32 noundef %5, ptr noundef %vma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @__tegra_gem_mmap(ptr noundef %call.i, ptr noundef %vma) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_enter(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_debug_leave(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap_obj(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tegra_gem_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 98, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 130, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_fb_alloc._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra_fb_alloc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @tegra_fb_funcs, !11, !"tegra_fb_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 105, i32 43}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 305, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tegra_fbdev_create._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @tegra_fbdev_create._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @tegra_fb_helper_funcs, !18, !"tegra_fb_helper_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 295, i32 41}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 247, i32 3}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_fbdev_probe._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_fbdev_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 255, i32 3}
!26 = !{ptr @tegra_fbdev_probe._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_fbdev_probe._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 276, i32 4}
!30 = !{ptr @tegra_fbdev_probe._entry.13, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_fbdev_probe._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tegra_fb_ops, !33, !"tegra_fb_ops", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 205, i32 28}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 329, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tegra_fbdev_init._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra_fbdev_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/tegra/fb.c", i32 336, i32 3}
!41 = !{ptr @tegra_fbdev_init._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tegra_fbdev_init._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148222735}
!53 = !{i64 2148137199, i64 2148137231, i64 2148137260, i64 2148137294, i64 2148137325, i64 2148137348}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i64 2150371073}
