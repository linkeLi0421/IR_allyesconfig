; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_fbdev.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_fbdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_fb_helper_funcs = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.90 = type { i32, ptr }
%struct.omap_drm_private = type { ptr, ptr, i32, ptr, ptr, i8, i32, [8 x %struct.omap_drm_pipeline], [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], %struct.drm_private_obj, ptr, ptr, %struct.mutex, %struct.list_head, ptr, i8, ptr, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.omap_drm_pipeline = type { ptr, ptr, ptr, ptr, i32 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.omap_fbdev = type { %struct.drm_fb_helper, ptr, ptr, i8, %struct.work_struct }
%struct.drm_fb_helper = type { %struct.drm_client_dev, ptr, ptr, ptr, ptr, ptr, [17 x i32], %struct.drm_clip_rect, %struct.spinlock, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.list_head, i8, i8, i32 }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.89, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.89 = type { ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
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
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_ywrap316 = internal constant [76 x i8] c"omapdrm.parm=ywrap:Enable ywrap scrolling (omap44xx and later, default 'y')\00", section ".modinfo", align 1
@__param_str_ywrap = internal constant [14 x i8] c"omapdrm.ywrap\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ywrap_enabled = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_ywrap = internal constant %struct.kernel_param { ptr @__param_str_ywrap, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ywrap_enabled } }, section "__param", align 4
@__UNIQUE_ID_ywraptype317 = internal constant [28 x i8] c"omapdrm.parmtype=ywrap:bool\00", section ".modinfo", align 1
@omap_fbdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&fbdev->work)\00", [32 x i8] zeroinitializer }, align 32
@omap_fb_helper_funcs = internal constant { %struct.drm_fb_helper_funcs, [28 x i8] } { %struct.drm_fb_helper_funcs { ptr @omap_fbdev_create }, [28 x i8] zeroinitializer }, align 32
@omap_fbdev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap_fbdev_init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_fbdev_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/omapdrm/omap_fbdev.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_fbdev_init._entry_ptr = internal global ptr @omap_fbdev_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"create fbdev: %dx%d@%d (%dx%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"allocating %d bytes for fb %d\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_fbdev_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 132, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate buffer object\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_fbdev_create\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@omap_fbdev_create._entry_ptr = internal global ptr @omap_fbdev_create._entry, section ".printk_index", align 4
@omap_fbdev_create._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 139, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to allocate fb\0A\00", [41 x i8] zeroinitializer }, align 32
@omap_fbdev_create._entry_ptr.14 = internal global ptr @omap_fbdev_create._entry.12, section ".printk_index", align 4
@omap_fbdev_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.3, i32 158, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not pin framebuffer\0A\00", [37 x i8] zeroinitializer }, align 32
@omap_fbdev_create._entry_ptr.17 = internal global ptr @omap_fbdev_create._entry.15, section ".printk_index", align 4
@omap_fbdev_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.3, i32 165, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate fb info\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_fbdev_create._entry_ptr.20 = internal global ptr @omap_fbdev_create._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fbi=%p, dev=%p\0A\00", [16 x i8] zeroinitializer }, align 32
@omap_fb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @drm_fb_helper_sys_read, ptr @drm_fb_helper_sys_write, ptr @drm_fb_helper_check_var, ptr @drm_fb_helper_set_par, ptr null, ptr @drm_fb_helper_setcmap, ptr @drm_fb_helper_blank, ptr @omap_fbdev_pan_display, ptr @drm_fb_helper_sys_fillrect, ptr @drm_fb_helper_sys_copyarea, ptr @drm_fb_helper_sys_imageblit, ptr null, ptr null, ptr @drm_fb_helper_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_fbdev_create._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016[drm] Enabling DMM ywrap scrolling\0A\00", [58 x i8] zeroinitializer }, align 32
@omap_fbdev_create._entry_ptr.24 = internal global ptr @omap_fbdev_create._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"par=%p, %dx%d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allocated %dx%d fb\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"ywrap_enabled\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 16, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 239, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"omap_fb_helper_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 211, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 262, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 271, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 106, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 129, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 132, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 139, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 158, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 165, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 170, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"omap_fb_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 73, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 190, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 196, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 197, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [40 x i8] c"../drivers/gpu/drm/omapdrm/omap_fbdev.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 217, i32 34 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_ywrap316, ptr @__UNIQUE_ID_ywraptype317, ptr @__param_ywrap, ptr @omap_fbdev_create._entry, ptr @omap_fbdev_create._entry.12, ptr @omap_fbdev_create._entry.15, ptr @omap_fbdev_create._entry.18, ptr @omap_fbdev_create._entry.22, ptr @omap_fbdev_create._entry_ptr, ptr @omap_fbdev_create._entry_ptr.14, ptr @omap_fbdev_create._entry_ptr.17, ptr @omap_fbdev_create._entry_ptr.20, ptr @omap_fbdev_create._entry_ptr.24, ptr @omap_fbdev_init._entry, ptr @omap_fbdev_init._entry_ptr, ptr @ywrap_enabled, ptr @omap_fbdev_init.__key, ptr @.str, ptr @omap_fb_helper_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @omap_fb_ops, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ywrap_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fbdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fb_helper_funcs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fbdev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fbdev_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fbdev_create._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fbdev_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fbdev_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_fbdev_create._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_fbdev_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %num_pipes = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_pipes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pipes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 512) #11
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.fail_crit_edge, label %do.body

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.body:                                          ; preds = %if.end
  %work = getelementptr inbounds %struct.omap_fbdev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.omap_fbdev, ptr %call7.i.i, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @omap_fbdev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry7 = getelementptr inbounds %struct.omap_fbdev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry7, ptr %entry7, align 8
  %prev.i = getelementptr inbounds %struct.omap_fbdev, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.omap_fbdev, ptr %call7.i.i, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pan_worker, ptr %func, align 8
  tail call void @drm_fb_helper_prepare(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @omap_fb_helper_funcs) #8
  %call9 = tail call i32 @drm_fb_helper_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.body.fail_crit_edge

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end12:                                         ; preds = %do.body
  %call13 = tail call i32 @drm_fb_helper_initial_config(ptr noundef nonnull %call7.i.i, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %fini

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %fbdev17 = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %fbdev17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %fbdev17, align 4
  br label %cleanup

fini:                                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %call7.i.i) #8
  br label %fail

fail:                                             ; preds = %fini, %do.body.fail_crit_edge, %if.end.fail_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #8
  %dev21 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end16, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pan_worker(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdev1 = getelementptr i8, ptr %work, i32 -332
  %0 = ptrtoint ptr %fbdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdev1, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 9
  %2 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %line_length, align 4
  %shr = lshr i32 %3, 12
  %bo = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  %6 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yoffset, align 4
  %mul = mul i32 %7, %shr
  %call = tail call i32 @omap_gem_roll(ptr noundef %5, i32 noundef %mul) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_initial_config(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_fbdev_fini(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %fbdev = getelementptr inbounds %struct.omap_drm_private, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fbdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fbdev, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @drm_fb_helper_unregister_fbi(ptr noundef nonnull %3) #8
  tail call void @drm_fb_helper_fini(ptr noundef nonnull %3) #8
  %bo = getelementptr inbounds %struct.omap_fbdev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bo, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @omap_gem_unpin(ptr noundef nonnull %5) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %fb = getelementptr inbounds %struct.omap_fbdev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_framebuffer_remove(ptr noundef nonnull %7) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #8
  %8 = ptrtoint ptr %fbdev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fbdev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_unregister_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_roll(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_fbdev_create(ptr noundef %helper, ptr noundef %sizes) #0 align 64 {
entry:
  %mode_cmd = alloca %struct.drm_mode_fb_cmd2, align 8
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mode_cmd) #8
  %4 = call ptr @memset(ptr %mode_cmd, i32 0, i32 104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #8
  %5 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dma_addr, align 4, !annotation !69
  %surface_bpp = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 4
  %6 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %surface_bpp, align 4
  %surface_depth = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 5
  %7 = ptrtoint ptr %surface_depth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %surface_depth, align 4
  %surface_width = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 2
  %8 = ptrtoint ptr %surface_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %surface_width, align 4
  %surface_height = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 3
  %10 = ptrtoint ptr %surface_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %surface_height, align 4
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sizes, align 4
  %fb_height = getelementptr inbounds %struct.drm_fb_helper_surface_size, ptr %sizes, i32 0, i32 1
  %14 = ptrtoint ptr %fb_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fb_height, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %9, i32 noundef %11, i32 noundef 32, i32 noundef %13, i32 noundef %15) #8
  %16 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %surface_bpp, align 4
  %18 = ptrtoint ptr %surface_depth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %surface_depth, align 4
  %call = tail call i32 @drm_mode_legacy_fb_format(i32 noundef %17, i32 noundef %19) #8
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %20 = ptrtoint ptr %pixel_format to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call, ptr %pixel_format, align 4
  %21 = ptrtoint ptr %surface_width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %surface_width, align 4
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %width, align 4
  %24 = ptrtoint ptr %surface_height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %surface_height, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %height, align 8
  %27 = ptrtoint ptr %surface_bpp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %surface_bpp, align 4
  %mul = mul i32 %28, %22
  %sub = add i32 %mul, 7
  %div154 = lshr i32 %sub, 3
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %29 = ptrtoint ptr %pitches to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div154, ptr %pitches, align 4
  %has_dmm = getelementptr inbounds %struct.omap_drm_private, ptr %3, i32 0, i32 19
  %30 = ptrtoint ptr %has_dmm to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_dmm, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ywrap_enabled156 = getelementptr inbounds %struct.omap_fbdev, ptr %helper, i32 0, i32 3
  %32 = ptrtoint ptr %ywrap_enabled156 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ywrap_enabled156, align 4
  br label %if.end

land.end:                                         ; preds = %entry
  %33 = load i8, ptr @ywrap_enabled, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool9.not = icmp eq i8 %33, 0
  %ywrap_enabled = getelementptr inbounds %struct.omap_fbdev, ptr %helper, i32 0, i32 3
  %34 = ptrtoint ptr %ywrap_enabled to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ywrap_enabled, align 4
  br i1 %tobool9.not, label %land.end.if.end_crit_edge, label %if.then

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %add14 = add nuw nsw i32 %div154, 4095
  %and = and i32 %add14, 1073737728
  %35 = ptrtoint ptr %pitches to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and, ptr %pitches, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge, %land.end.thread
  %ywrap_enabled158 = phi ptr [ %ywrap_enabled156, %land.end.thread ], [ %ywrap_enabled, %if.then ], [ %ywrap_enabled, %land.end.if.end_crit_edge ]
  %36 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pitches, align 4
  %mul20 = mul i32 %37, %25
  %add21 = add i32 %mul20, 4095
  %and22 = and i32 %add21, -4096
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %primary, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %and22, i32 noundef %41) #8
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %and22, 0
  %call23 = tail call ptr @omap_gem_new(ptr noundef %1, [1 x i32] %.fca.0.insert, i32 noundef 3) #8
  %bo = getelementptr inbounds %struct.omap_fbdev, ptr %helper, i32 0, i32 2
  %42 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call23, ptr %bo, align 4
  %tobool25.not = icmp eq ptr %call23, null
  br i1 %tobool25.not, label %fail.thread, label %if.end28

fail.thread:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %call30 = call ptr @omap_framebuffer_init(ptr noundef %1, ptr noundef nonnull %mode_cmd, ptr noundef %bo) #8
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end28
  %dev36 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.13) #12
  %47 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bo, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %do.end35.drm_gem_object_put.exit_crit_edge, label %if.then.i

do.end35.drm_gem_object_put.exit_crit_edge:       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %do.end35
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %48, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  call void @llvm.prefetch.p0(ptr nonnull %48, i32 1, i32 3, i32 1) #8
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %48, ptr nonnull %48, i32 1, ptr nonnull elementtype(i32) %48) #8, !srcloc !72
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !73

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %48, i32 noundef 3) #8
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  call void @drm_gem_object_free(ptr noundef nonnull %48) #8
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %do.end35.drm_gem_object_put.exit_crit_edge
  %50 = ptrtoint ptr %call30 to i32
  br label %fail

if.end39:                                         ; preds = %if.end28
  %51 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bo, align 4
  %call41 = call i32 @omap_gem_pin(ptr noundef %52, ptr noundef nonnull %dma_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %dev47 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev47, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.16) #12
  br label %fail

if.end48:                                         ; preds = %if.end39
  %call49 = call ptr @drm_fb_helper_alloc_fbi(ptr noundef %helper) #8
  %cmp.i155 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.19) #12
  %57 = ptrtoint ptr %call49 to i32
  br label %fail

if.end57:                                         ; preds = %if.end48
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef %call49, ptr noundef %1) #8
  %fb58 = getelementptr inbounds %struct.omap_fbdev, ptr %helper, i32 0, i32 1
  %58 = ptrtoint ptr %fb58 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call30, ptr %fb58, align 4
  %fb59 = getelementptr inbounds %struct.drm_fb_helper, ptr %helper, i32 0, i32 2
  %59 = ptrtoint ptr %fb59 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call30, ptr %fb59, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 20
  %60 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @omap_fb_ops, ptr %fbops, align 4
  call void @drm_fb_helper_fill_info(ptr noundef %call49, ptr noundef %helper, ptr noundef %sizes) #8
  %61 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_addr, align 4
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 28
  %63 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %fb_base, align 4
  %64 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bo, align 4
  %call61 = call ptr @omap_gem_vaddr(ptr noundef %65) #8
  %66 = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 25
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call61, ptr %66, align 4
  %68 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bo, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size, align 8
  %screen_size = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 26
  %72 = ptrtoint ptr %screen_size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %screen_size, align 4
  %73 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_addr, align 4
  %smem_start = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %smem_start to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %smem_start, align 4
  %76 = load ptr, ptr %bo, align 4
  %size64 = getelementptr inbounds %struct.drm_gem_object, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %size64 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size64, align 8
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 2
  %79 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %smem_len, align 4
  %80 = ptrtoint ptr %ywrap_enabled158 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ywrap_enabled158, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool67.not = icmp eq i8 %81, 0
  br i1 %tobool67.not, label %if.end57.if.end75_crit_edge, label %do.end71

if.end57.if.end75_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.end71:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  %flags = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 2
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  %or = or i32 %83, 16512
  store i32 %or, ptr %flags, align 4
  %ywrapstep = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 7, i32 8
  %84 = ptrtoint ptr %ywrapstep to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %ywrapstep, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.end71, %if.end57.if.end75_crit_edge
  %par = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 30
  %85 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6
  %87 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %call49, i32 0, i32 6, i32 1
  %89 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %yres, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, ptr noundef %86, i32 noundef %88, i32 noundef %90) #8
  %91 = ptrtoint ptr %fb58 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fb58, align 4
  %width78 = getelementptr inbounds %struct.drm_framebuffer, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %width78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %width78, align 8
  %height80 = getelementptr inbounds %struct.drm_framebuffer, ptr %92, i32 0, i32 10
  %95 = ptrtoint ptr %height80 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %height80, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %94, i32 noundef %96) #8
  br label %cleanup

fail:                                             ; preds = %do.end54, %do.end46, %drm_gem_object_put.exit
  %ret.0 = phi i32 [ %50, %drm_gem_object_put.exit ], [ -12, %do.end46 ], [ %57, %do.end54 ]
  %tobool83.not = icmp eq ptr %call30, null
  br i1 %tobool83.not, label %fail.cleanup_crit_edge, label %if.then84

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then84:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_framebuffer_remove(ptr noundef nonnull %call30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %fail.cleanup_crit_edge, %if.end75, %fail.thread
  %retval.0 = phi i32 [ 0, %if.end75 ], [ %ret.0, %if.then84 ], [ %ret.0, %fail.cleanup_crit_edge ], [ -12, %fail.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #8
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode_cmd) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_legacy_fb_format(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_gem_new(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_helper_alloc_fbi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_fill_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_gem_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_check_var(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_set_par(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_setcmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_blank(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_fbdev_pan_display(ptr noundef %var, ptr noundef %fbi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fbi, null
  br i1 %tobool.not.i, label %entry.fallback_crit_edge, label %lor.lhs.false.i

entry.fallback_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback

lor.lhs.false.i:                                  ; preds = %entry
  %fix.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 7
  %call.i = tail call i32 @strcmp(ptr noundef %fix.i, ptr noundef nonnull dereferenceable(8) @.str.27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %get_fb.exit, label %lor.lhs.false.i.fallback_crit_edge

lor.lhs.false.i.fallback_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback

get_fb.exit:                                      ; preds = %lor.lhs.false.i
  %par.i = getelementptr inbounds %struct.fb_info, ptr %fbi, i32 0, i32 30
  %0 = ptrtoint ptr %par.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %get_fb.exit.fallback_crit_edge, label %if.end

get_fb.exit.fallback_crit_edge:                   ; preds = %get_fb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback

if.end:                                           ; preds = %get_fb.exit
  %ywrap_enabled = getelementptr inbounds %struct.omap_fbdev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ywrap_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ywrap_enabled, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.fallback_crit_edge, label %if.end3

if.end.fallback_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fallback

if.end3:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i17, label %if.end3.if.else_crit_edge

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

lor.lhs.false.i17:                                ; preds = %if.end3
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !75
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i16 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i16, label %lor.lhs.false.i17.drm_can_sleep.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i17.drm_can_sleep.exit_crit_edge:   ; preds = %lor.lhs.false.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_can_sleep.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i17
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #8
  %and.i35.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i35.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %13 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp13.i = icmp eq i32 %12, %13
  br i1 %cmp13.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true.i.drm_can_sleep.exit_crit_edge

land.lhs.true.i.drm_can_sleep.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_can_sleep.exit

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

drm_can_sleep.exit:                               ; preds = %land.lhs.true.i.drm_can_sleep.exit_crit_edge, %lor.lhs.false.i17.drm_can_sleep.exit_crit_edge
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !75
  %and.i36.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool34.not.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool34.not.i, label %if.then5, label %drm_can_sleep.exit.if.else_crit_edge

drm_can_sleep.exit.if.else_crit_edge:             ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then5:                                         ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fbdev1.i = getelementptr %struct.omap_fbdev, ptr %1, i32 0, i32 0, i32 5
  %15 = ptrtoint ptr %fbdev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fbdev1.i, align 4
  %line_length.i = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 7, i32 9
  %17 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %line_length.i, align 4
  %shr.i = lshr i32 %18, 12
  %bo.i = getelementptr %struct.omap_fbdev, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bo.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_info, ptr %16, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %yoffset.i, align 4
  %mul.i = mul i32 %22, %shr.i
  %call.i19 = tail call i32 @omap_gem_roll(ptr noundef %20, i32 noundef %mul.i) #8
  br label %cleanup

if.else:                                          ; preds = %drm_can_sleep.exit.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end3.if.else_crit_edge
  %dev = getelementptr inbounds %struct.drm_fb_helper, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_private, align 4
  %wq = getelementptr inbounds %struct.omap_drm_private, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wq, align 4
  %work6 = getelementptr inbounds %struct.omap_fbdev, ptr %1, i32 0, i32 4
  %call.i20 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work6) #8
  br label %cleanup

fallback:                                         ; preds = %if.end.fallback_crit_edge, %get_fb.exit.fallback_crit_edge, %lor.lhs.false.i.fallback_crit_edge, %entry.fallback_crit_edge
  %call9 = tail call i32 @drm_fb_helper_pan_display(ptr noundef %var, ptr noundef %fbi) #8
  br label %cleanup

cleanup:                                          ; preds = %fallback, %if.else, %if.then5
  %retval.0 = phi i32 [ %call9, %fallback ], [ 0, %if.else ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_fillrect(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_copyarea(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_sys_imageblit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_helper_pan_display(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__UNIQUE_ID_ywrap316, !1, !"__UNIQUE_ID_ywrap316", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 15, i32 1}
!2 = !{ptr @__param_ywrap, !3, !"__param_ywrap", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_ywraptype317, !3, !"__UNIQUE_ID_ywraptype317", i1 false, i1 false}
!5 = !{ptr @omap_fbdev_init.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 239, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 262, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap_fbdev_init._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap_fbdev_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 271, i32 2}
!18 = !{ptr @__param_str_ywrap, !3, !"__param_str_ywrap", i1 false, i1 false}
!19 = !{ptr @ywrap_enabled, !20, !"ywrap_enabled", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 16, i32 13}
!21 = !{ptr @omap_fb_helper_funcs, !22, !"omap_fb_helper_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 211, i32 41}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 106, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 129, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 132, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @omap_fbdev_create._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @omap_fbdev_create._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 139, i32 3}
!35 = !{ptr @omap_fbdev_create._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @omap_fbdev_create._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 158, i32 3}
!39 = !{ptr @omap_fbdev_create._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap_fbdev_create._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 165, i32 3}
!43 = !{ptr @omap_fbdev_create._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @omap_fbdev_create._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 170, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 190, i32 3}
!49 = !{ptr @omap_fbdev_create._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @omap_fbdev_create._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 196, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 197, i32 2}
!55 = !{ptr @omap_fb_ops, !56, !"omap_fb_ops", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 73, i32 28}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/omapdrm/omap_fbdev.c", i32 217, i32 34}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i8 0, i8 2}
!71 = !{i64 2148483132}
!72 = !{i64 2148397584, i64 2148397616, i64 2148397645, i64 2148397679, i64 2148397710, i64 2148397733}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2150131283}
!75 = !{i64 788802}
