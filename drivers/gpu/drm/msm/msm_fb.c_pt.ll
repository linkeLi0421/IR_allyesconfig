; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/msm_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.msm_gem_stats = type { %struct.anon.95, %struct.anon.95, %struct.anon.95, %struct.anon.95, %struct.anon.95 }
%struct.anon.95 = type { i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.87, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.87 = type { [4 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.92 = type { i32, ptr }
%struct.msm_framebuffer = type { %struct.drm_framebuffer, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fb: %dx%d@%4.4s (%2d, ID:%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"   %d: offset=%d pitch=%d, obj: \00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FB[%u]: iova[%d]: %08llx (%d)\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"allocating %d bytes for fb %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_alloc_stolen_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 225, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not allocate stolen bo\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msm_alloc_stolen_fb\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpu/drm/msm/msm_fb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_alloc_stolen_fb._entry_ptr = internal global ptr @msm_alloc_stolen_fb._entry, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to allocate buffer object\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stolenfb\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to allocate fb\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"create framebuffer: mode_cmd=%p (%dx%d@%4.4s)\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* unsupported pixel format: %4.4s\0A\00", [55 x i8] zeroinitializer }, align 32
@msm_framebuffer_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr @drm_atomic_helper_dirtyfb }, [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* framebuffer init failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"create: FB ID: %d (%p)\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 39, i32 16 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 44, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 64, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 222, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 225, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 230, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 234, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 238, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 143, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 151, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"msm_framebuffer_funcs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 43 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 193, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [32 x i8] c"../drivers/gpu/drm/msm/msm_fb.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 197, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @msm_alloc_stolen_fb._entry, ptr @msm_alloc_stolen_fb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @msm_framebuffer_funcs, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_alloc_stolen_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_framebuffer_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_framebuffer_describe(ptr noundef %fb, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  %stats = alloca %struct.msm_gem_stats, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stats) #7
  %0 = call ptr @memset(ptr %stats, i32 0, i32 40)
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %1 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %4 to i32
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 9
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 10
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %refcount.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #7
  %9 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount.i, align 4
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, i32 noundef %6, i32 noundef %8, ptr noundef %2, i32 noundef %10, i32 noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp21.not = icmp eq i8 %4, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 %i.022
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 %i.022
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %i.022, i32 noundef %14, i32 noundef %16) #7
  %arrayidx5 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.022
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx5, align 4
  call void @msm_gem_describe(ptr noundef %18, ptr noundef %m, ptr noundef nonnull %stats) #7
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stats) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_describe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_framebuffer_prepare(ptr nocapture noundef readonly %fb, ptr noundef %aspace) local_unnamed_addr #0 align 64 {
entry:
  %iova = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iova) #7
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %iova, align 8, !annotation !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp17.not = icmp eq i8 %3, 0
  br i1 %cmp17.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %cond.end
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.018
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @msm_gem_get_and_pin_iova(ptr noundef %6, ptr noundef %aspace, ptr noundef nonnull %iova) #7
  %7 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fb, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.cond.end_crit_edge, label %cond.true

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %10, %cond.true ], [ null, %for.body.cond.end_crit_edge ]
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 4
  %13 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %iova, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %12, i32 noundef %i.018, i64 noundef %14, i32 noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.cond, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iova) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_framebuffer_cleanup(ptr nocapture noundef readonly %fb, ptr noundef %aspace) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5.not = icmp eq i8 %3, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @msm_gem_unpin_iova(ptr noundef %5, ptr noundef %aspace) #7
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_unpin_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_framebuffer_iova(ptr nocapture noundef readonly %fb, ptr noundef %aspace, i32 noundef %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %plane
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i64 @msm_gem_iova(ptr noundef nonnull %1, ptr noundef %aspace) #7
  %arrayidx3 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 %plane
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %4 = trunc i64 %call to i32
  %conv4 = add i32 %3, %4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv4, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @msm_gem_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_framebuffer_bo(ptr noundef %fb, i32 noundef %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_fb_get_obj(ptr noundef %fb, i32 noundef %plane) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @msm_framebuffer_format(ptr nocapture noundef readonly %fb) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.msm_framebuffer, ptr %fb, i32 0, i32 1
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_framebuffer_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) local_unnamed_addr #0 align 64 {
entry:
  %bos = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bos) #7
  %0 = call ptr @memset(ptr %bos, i32 0, i32 16)
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp37.not = icmp eq i8 %2, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5, i32 %i.038
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call2 = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %4) #7
  %arrayidx3 = getelementptr [4 x ptr], ptr %bos, i32 0, i32 %i.038
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.out_unref_crit_edge, label %for.cond

for.body.out_unref_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unref

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %call5 = call fastcc ptr @msm_framebuffer_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef nonnull %bos)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.end.out_unref_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.out_unref_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unref

out_unref:                                        ; preds = %for.end.out_unref_crit_edge, %for.body.out_unref_crit_edge
  %ret.0 = phi ptr [ %call5, %for.end.out_unref_crit_edge ], [ inttoptr (i32 -6 to ptr), %for.body.out_unref_crit_edge ]
  br i1 %cmp37.not, label %out_unref.cleanup_crit_edge, label %out_unref.for.body13_crit_edge

out_unref.for.body13_crit_edge:                   ; preds = %out_unref
  br label %for.body13

out_unref.cleanup_crit_edge:                      ; preds = %out_unref
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body13:                                       ; preds = %drm_gem_object_put.exit.for.body13_crit_edge, %out_unref.for.body13_crit_edge
  %i.140 = phi i32 [ %inc16, %drm_gem_object_put.exit.for.body13_crit_edge ], [ 0, %out_unref.for.body13_crit_edge ]
  %arrayidx14 = getelementptr [4 x ptr], ptr %bos, i32 0, i32 %i.140
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx14, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body13.drm_gem_object_put.exit_crit_edge, label %if.then.i

for.body13.drm_gem_object_put.exit_crit_edge:     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %for.body13
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #7, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #7
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #7
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body13.drm_gem_object_put.exit_crit_edge
  %inc16 = add nuw nsw i32 %i.140, 1
  %exitcond41.not = icmp eq i32 %inc16, %conv
  br i1 %exitcond41.not, label %drm_gem_object_put.exit.cleanup_crit_edge, label %drm_gem_object_put.exit.for.body13_crit_edge

drm_gem_object_put.exit.for.body13_crit_edge:     ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %drm_gem_object_put.exit.cleanup_crit_edge, %out_unref.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %for.end.cleanup_crit_edge ], [ %ret.0, %out_unref.cleanup_crit_edge ], [ %ret.0, %drm_gem_object_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bos) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @msm_framebuffer_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr nocapture noundef readonly %bos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #7
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 8
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 64, ptr noundef nonnull @.str.13, ptr noundef %mode_cmd, i32 noundef %7, i32 noundef %9, ptr noundef %pixel_format) #7
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_planes, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %get_format = getelementptr inbounds %struct.msm_kms_funcs, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %get_format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_format, align 4
  %16 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixel_format, align 4
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %18 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %modifier, align 8
  %call4 = tail call ptr %15(ptr noundef %3, i32 noundef %17, i64 noundef %19) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.14, ptr noundef %pixel_format) #7
  br label %fail

if.end:                                           ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 152) #10
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end.fail_crit_edge, label %if.end11

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end11:                                         ; preds = %if.end
  %format12 = getelementptr inbounds %struct.msm_framebuffer, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %format12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call4, ptr %format12, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp = icmp ugt i8 %11, 4
  br i1 %cmp, label %if.end11.fail_crit_edge, label %for.cond.preheader

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

for.cond.preheader:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp16128.not = icmp eq i8 %11, 0
  br i1 %cmp16128.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width, align 4
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 6
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 7
  %26 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height, align 8
  %28 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 3
  %sub = add i32 %27, -1
  %arrayidx35 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 0
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx35, align 4
  %mul = mul i32 %sub, %30
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %28, align 1
  %conv37 = zext i8 %32 to i32
  %mul38 = mul i32 %25, %conv37
  %arrayidx39 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 0
  %33 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx39, align 4
  %add = add i32 %34, %mul
  %add40 = add i32 %add, %mul38
  %35 = ptrtoint ptr %bos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bos, align 4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add40)
  %cmp42 = icmp ult i32 %38, %add40
  br i1 %cmp42, label %for.body.lr.ph.fail_crit_edge, label %for.inc

for.body.lr.ph.fail_crit_edge:                    ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

for.inc:                                          ; preds = %for.body.lr.ph
  %arrayidx48 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 0
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %exitcond.not = icmp eq i8 %11, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %cond.true29.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.true29.1:                                    ; preds = %for.inc
  %40 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hsub, align 2
  %conv22.1 = zext i8 %41 to i32
  %div.1 = udiv i32 %25, %conv22.1
  %42 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vsub, align 1
  %conv30.1 = zext i8 %43 to i32
  %div34.1 = udiv i32 %27, %conv30.1
  %sub.1 = add i32 %div34.1, -1
  %arrayidx35.1 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx35.1, align 4
  %mul.1 = mul i32 %sub.1, %45
  %arrayidx36.1 = getelementptr %struct.drm_format_info, ptr %call, i32 0, i32 3, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx36.1, align 1
  %conv37.1 = zext i8 %47 to i32
  %mul38.1 = mul i32 %div.1, %conv37.1
  %arrayidx39.1 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx39.1, align 4
  %add.1 = add i32 %49, %mul.1
  %add40.1 = add i32 %add.1, %mul38.1
  %arrayidx41.1 = getelementptr ptr, ptr %bos, i32 1
  %50 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx41.1, align 4
  %size.1 = getelementptr inbounds %struct.drm_gem_object, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %add40.1)
  %cmp42.1 = icmp ult i32 %53, %add40.1
  br i1 %cmp42.1, label %cond.true29.1.fail_crit_edge, label %for.inc.1

cond.true29.1.fail_crit_edge:                     ; preds = %cond.true29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

for.inc.1:                                        ; preds = %cond.true29.1
  %arrayidx48.1 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 1
  %54 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %arrayidx48.1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %exitcond.not.1 = icmp eq i8 %11, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %cond.true29.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.true29.2:                                    ; preds = %for.inc.1
  %55 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hsub, align 2
  %conv22.2 = zext i8 %56 to i32
  %div.2 = udiv i32 %25, %conv22.2
  %57 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vsub, align 1
  %conv30.2 = zext i8 %58 to i32
  %div34.2 = udiv i32 %27, %conv30.2
  %sub.2 = add i32 %div34.2, -1
  %arrayidx35.2 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 2
  %59 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx35.2, align 4
  %mul.2 = mul i32 %sub.2, %60
  %arrayidx36.2 = getelementptr %struct.drm_format_info, ptr %call, i32 0, i32 3, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx36.2, align 1
  %conv37.2 = zext i8 %62 to i32
  %mul38.2 = mul i32 %div.2, %conv37.2
  %arrayidx39.2 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 2
  %63 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx39.2, align 4
  %add.2 = add i32 %64, %mul.2
  %add40.2 = add i32 %add.2, %mul38.2
  %arrayidx41.2 = getelementptr ptr, ptr %bos, i32 2
  %65 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx41.2, align 4
  %size.2 = getelementptr inbounds %struct.drm_gem_object, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %add40.2)
  %cmp42.2 = icmp ult i32 %68, %add40.2
  br i1 %cmp42.2, label %cond.true29.2.fail_crit_edge, label %for.inc.2

cond.true29.2.fail_crit_edge:                     ; preds = %cond.true29.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

for.inc.2:                                        ; preds = %cond.true29.2
  %arrayidx48.2 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 2
  %69 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %arrayidx48.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %exitcond.not.2 = icmp eq i8 %11, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %cond.true29.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.true29.3:                                    ; preds = %for.inc.2
  %70 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %hsub, align 2
  %conv22.3 = zext i8 %71 to i32
  %div.3 = udiv i32 %25, %conv22.3
  %72 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %vsub, align 1
  %conv30.3 = zext i8 %73 to i32
  %div34.3 = udiv i32 %27, %conv30.3
  %sub.3 = add i32 %div34.3, -1
  %arrayidx35.3 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 3
  %74 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx35.3, align 4
  %mul.3 = mul i32 %sub.3, %75
  %arrayidx36.3 = getelementptr %struct.drm_format_info, ptr %call, i32 0, i32 3, i32 0, i32 3
  %76 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx36.3, align 1
  %conv37.3 = zext i8 %77 to i32
  %mul38.3 = mul i32 %div.3, %conv37.3
  %arrayidx39.3 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 7, i32 3
  %78 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx39.3, align 4
  %add.3 = add i32 %79, %mul.3
  %add40.3 = add i32 %add.3, %mul38.3
  %arrayidx41.3 = getelementptr ptr, ptr %bos, i32 3
  %80 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx41.3, align 4
  %size.3 = getelementptr inbounds %struct.drm_gem_object, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add40.3)
  %cmp42.3 = icmp ult i32 %83, %add40.3
  br i1 %cmp42.3, label %cond.true29.3.fail_crit_edge, label %for.inc.3

cond.true29.3.fail_crit_edge:                     ; preds = %cond.true29.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

for.inc.3:                                        ; preds = %cond.true29.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx48.3 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 3
  %84 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %arrayidx48.3, align 8
  br label %for.end

for.end:                                          ; preds = %for.inc.3, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #7
  %call51 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @msm_framebuffer_funcs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %85 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %86, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15, i32 noundef %call51) #7
  %phi.cast = inttoptr i32 %call51 to ptr
  br label %fail

if.end55:                                         ; preds = %for.end
  br i1 %tobool.not, label %if.end55.cond.end60_crit_edge, label %cond.true57

if.end55.cond.end60_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end60

cond.true57:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %dev58 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %87 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev58, align 4
  br label %cond.end60

cond.end60:                                       ; preds = %cond.true57, %if.end55.cond.end60_crit_edge
  %cond61 = phi ptr [ %88, %cond.true57 ], [ null, %if.end55.cond.end60_crit_edge ]
  %base62 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %base62 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %base62, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond61, i32 noundef 64, ptr noundef nonnull @.str.16, i32 noundef %90, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup64

fail:                                             ; preds = %if.then53, %cond.true29.3.fail_crit_edge, %cond.true29.2.fail_crit_edge, %cond.true29.1.fail_crit_edge, %for.body.lr.ph.fail_crit_edge, %if.end11.fail_crit_edge, %if.end.fail_crit_edge, %if.then
  %msm_fb.0 = phi ptr [ %call7.i.i, %if.then53 ], [ null, %if.then ], [ null, %if.end.fail_crit_edge ], [ %call7.i.i, %if.end11.fail_crit_edge ], [ %call7.i.i, %cond.true29.3.fail_crit_edge ], [ %call7.i.i, %cond.true29.2.fail_crit_edge ], [ %call7.i.i, %cond.true29.1.fail_crit_edge ], [ %call7.i.i, %for.body.lr.ph.fail_crit_edge ]
  %ret.2 = phi ptr [ %phi.cast, %if.then53 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.fail_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end11.fail_crit_edge ], [ inttoptr (i32 -22 to ptr), %cond.true29.3.fail_crit_edge ], [ inttoptr (i32 -22 to ptr), %cond.true29.2.fail_crit_edge ], [ inttoptr (i32 -22 to ptr), %cond.true29.1.fail_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.lr.ph.fail_crit_edge ]
  tail call void @kfree(ptr noundef %msm_fb.0) #7
  br label %cleanup64

cleanup64:                                        ; preds = %fail, %cond.end60
  %retval.0 = phi ptr [ %ret.2, %fail ], [ %call7.i.i, %cond.end60 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_alloc_stolen_fb(ptr noundef %dev, i32 noundef %w, i32 noundef %h, i32 noundef %p, i32 noundef %format) local_unnamed_addr #0 align 64 {
entry:
  %mode_cmd = alloca %struct.drm_mode_fb_cmd2, align 8
  %bo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mode_cmd) #7
  %0 = call ptr @memset(ptr %mode_cmd, i32 0, i32 104)
  %width = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 1
  %1 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %w, ptr %width, align 4
  %height = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 2
  %2 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %h, ptr %height, align 8
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %3 = ptrtoint ptr %pixel_format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %format, ptr %pixel_format, align 4
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %4 = ptrtoint ptr %pitches to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %p, ptr %pitches, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #7
  %mul = mul i32 %p, %h
  %primary = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %primary, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %mul, i32 noundef %8) #7
  %call = tail call ptr @msm_gem_new(ptr noundef %dev, i32 noundef %mul, i32 noundef 268566529) #7
  %9 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %bo, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.4) #11
  %call5 = tail call ptr @msm_gem_new(ptr noundef %dev, i32 noundef %mul, i32 noundef 131073) #7
  %12 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %bo, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %13 = phi ptr [ %call5, %do.end ], [ %call, %entry.if.end_crit_edge ]
  %cmp.i30 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %13, ptr noundef nonnull @.str.11) #7
  %call11 = call fastcc ptr @msm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %mode_cmd, ptr noundef nonnull %bo)
  %cmp.i31 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12) #7
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then13.cleanup_crit_edge, label %if.then.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then13
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #7
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #7, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #7
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  call void @drm_gem_object_free(ptr noundef nonnull %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then7
  %retval.0 = phi ptr [ %13, %if.then7 ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call11, %if.then13.cleanup_crit_edge ], [ %call11, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call11, %if.then10.i.i.i.i.i.i ], [ %call11, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mode_cmd) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_dirtyfb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 39, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 44, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 64, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 222, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 225, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @msm_alloc_stolen_fb._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @msm_alloc_stolen_fb._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 230, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 234, i32 30}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 238, i32 3}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 143, i32 2}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 151, i32 3}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 193, i32 3}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 197, i32 2}
!31 = !{ptr @msm_framebuffer_funcs, !32, !"msm_framebuffer_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/msm_fb.c", i32 27, i32 43}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{i64 2148482274}
!44 = !{i64 2148396726, i64 2148396758, i64 2148396787, i64 2148396821, i64 2148396852, i64 2148396875}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2150130425}
