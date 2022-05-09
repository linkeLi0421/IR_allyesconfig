; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.anon.86 = type { i32, ptr }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.komeda_fb = type { %struct.drm_framebuffer, ptr, i8, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FMT %x is not supported.\0A\00", [38 x i8] zeroinitializer }, align 32
@komeda_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @komeda_fb_destroy, ptr @komeda_fb_create_handle, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to initialize fb\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid source coordinate.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Wrong subsampling dimension x:%d, y:%d, w:%d, h:%d for format: %x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"x:%d, y:%d, w:%d, h:%d should be multiple of block_w/h for format: %x.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Out of max plane num.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Layer TYPE: %d doesn't support fb FMT: %p4cc with modifier: 0x%llx.\0A\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to lookup GEM object\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"afbc offset alignment check failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Pitch[%d]: 0x%x doesn't align to 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"The fb->obj[%d] size: 0x%zx lower than the minimum requirement: 0x%llx.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"The pitch[1] and [2] are not same\0A\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 174, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"komeda_fb_funcs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 34, i32 43 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 191, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 217, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 223, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 230, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 246, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 279, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 51, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 65, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 83, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 97, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 134, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 142, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [59 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 150, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @komeda_fb_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt_tbl = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 3
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %3 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixel_format, align 4
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %5 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %modifier, align 8
  %call2 = tail call ptr @komeda_get_format_caps(ptr noundef %fmt_tbl, i32 noundef %4, i64 noundef %6) #5
  %format_caps = getelementptr inbounds %struct.komeda_fb, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %format_caps to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %format_caps, align 8
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_format, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %9) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #5
  %modifier10 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %modifier10 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %modifier10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool11.not = icmp eq i64 %11, 0
  %format.i62 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %format.i62 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format.i62, align 8
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  %handles.i = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %14 = ptrtoint ptr %handles.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handles.i, align 4
  %call.i = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %15) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7) #5
  br label %err_cleanup

if.end.i:                                         ; preds = %if.then12
  %16 = ptrtoint ptr %modifier10 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %modifier10, align 8
  %trunc.i = trunc i64 %17 to i4
  %18 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i, label %do.end.i [
    i4 2, label %if.end.i.sw.epilog.i_crit_edge
    i4 1, label %sw.bb1.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i64 %17, 15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 66, i32 noundef 9, ptr noundef nonnull @.str.9, i64 noundef %and.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %alignment_w.0.i = phi i32 [ 0, %do.end.i ], [ 16, %sw.bb1.i ], [ 32, %if.end.i.sw.epilog.i_crit_edge ]
  %alignment_h.0.i = phi i32 [ 0, %do.end.i ], [ 16, %sw.bb1.i ], [ 8, %if.end.i.sw.epilog.i_crit_edge ]
  %19 = ptrtoint ptr %modifier10 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %modifier10, align 8
  %and22.i = and i64 %20, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22.i)
  %tobool23.not.i = icmp eq i64 %and22.i, 0
  %mul.i = shl nuw nsw i32 %alignment_w.0.i, 3
  %mul25.i = shl nuw nsw i32 %alignment_h.0.i, 3
  %alignment_w.1.i = select i1 %tobool23.not.i, i32 %alignment_w.0.i, i32 %mul.i
  %alignment_h.1.i = select i1 %tobool23.not.i, i32 %alignment_h.0.i, i32 %mul25.i
  %width.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width.i, align 8
  %sub.i = add i32 %22, -1
  %add.i = add i32 %sub.i, %alignment_w.1.i
  %neg.i = sub nsw i32 0, %alignment_w.1.i
  %and28.i = and i32 %add.i, %neg.i
  %aligned_w.i = getelementptr inbounds %struct.komeda_fb, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %aligned_w.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and28.i, ptr %aligned_w.i, align 8
  %height.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height.i, align 4
  %sub29.i = add nsw i32 %alignment_h.1.i, -1
  %add30.i = add i32 %sub29.i, %25
  %neg32.i = sub nsw i32 0, %alignment_h.1.i
  %and33.i = and i32 %add30.i, %neg32.i
  %aligned_h.i = getelementptr inbounds %struct.komeda_fb, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %aligned_h.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and33.i, ptr %aligned_h.i, align 4
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offsets.i, align 8
  %29 = select i1 %tobool23.not.i, i32 1023, i32 4095
  %rem.i = and i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool35.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then36.i

if.then36.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10) #5
  br label %if.then.i.i

if.end37.i:                                       ; preds = %sw.epilog.i
  %alignment_header.0.neg.i = select i1 %tobool23.not.i, i32 -1024, i32 -4096
  %mul40.i = mul i32 %and33.i, %and28.i
  %div105.i = lshr i32 %mul40.i, 8
  %mul41.i = shl nuw nsw i32 %div105.i, 4
  %add43.i = add nuw nsw i32 %mul41.i, %29
  %and46.i = and i32 %add43.i, %alignment_header.0.neg.i
  %offset_payload.i = getelementptr inbounds %struct.komeda_fb, ptr %call7.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %offset_payload.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and46.i, ptr %offset_payload.i, align 4
  %call48.i = tail call i32 @komeda_get_afbc_format_bpp(ptr noundef %13, i64 noundef %20) #5
  %31 = ptrtoint ptr %offset_payload.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset_payload.i, align 4
  %33 = shl i32 %call48.i, 5
  %div51106.i = and i32 %33, 536870880
  %add52.i = add nuw nsw i32 %div51106.i, 127
  %and53.i = and i32 %add52.i, 1073741696
  %mul54.i = mul i32 %and53.i, %div105.i
  %add55.i = add i32 %mul54.i, %32
  %afbc_size.i = getelementptr inbounds %struct.komeda_fb, ptr %call7.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %afbc_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add55.i, ptr %afbc_size.i, align 8
  %35 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offsets.i, align 8
  %add59.i = add i32 %add55.i, %36
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add59.i, i32 %38)
  %cmp.i = icmp ugt i32 %add59.i, %38
  br i1 %cmp.i, label %if.then62.i, label %if.end64.i

if.then62.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i32 %add59.i to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %38, i64 noundef %conv.i) #5
  br label %if.then.i.i

if.end64.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %obj65.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15
  %39 = ptrtoint ptr %obj65.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %obj65.i, align 4
  br label %if.end17

if.then.i.i:                                      ; preds = %if.then62.i, %if.then36.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #5
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #5, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end5.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.err_cleanup_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.i.i.err_cleanup_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cleanup

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end5.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #5
  br label %err_cleanup

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @drm_gem_object_free(ptr noundef nonnull %call.i) #5
  br label %err_cleanup

if.else:                                          ; preds = %if.end8
  %width.i63 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 9
  %41 = ptrtoint ptr %width.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width.i63, align 8
  %height.i64 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %height.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height.i64, align 4
  %call.i65 = tail call i32 @komeda_fb_check_src_coords(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef %42, i32 noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %for.cond.preheader.i, label %if.else.err_cleanup_crit_edge

if.else.err_cleanup_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_cleanup

for.cond.preheader.i:                             ; preds = %if.else
  %num_planes.i = getelementptr inbounds %struct.drm_format_info, ptr %13, i32 0, i32 2
  %45 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_planes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp81.not.i = icmp eq i8 %46, 0
  br i1 %cmp81.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %bus_width.i = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 2, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5, i32 %i.082.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i, align 4
  %call2.i = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %48) #5
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7) #5
  br label %err_cleanup

if.end5.i:                                        ; preds = %for.body.i
  %arrayidx7.i = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 %i.082.i
  %49 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call2.i, ptr %arrayidx7.i, align 4
  %call8.i = tail call i32 @drm_format_info_block_height(ptr noundef %13, i32 noundef %i.082.i) #5
  %arrayidx9.i = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 6, i32 %i.082.i
  %50 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx9.i, align 4
  %mul.i67 = mul i32 %51, %call8.i
  %52 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bus_width.i, align 4
  %rem.i68 = urem i32 %mul.i67, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i68)
  %tobool10.not.i = icmp eq i32 %rem.i68, 0
  br i1 %tobool10.not.i, label %if.end16.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %i.082.i, i32 noundef %51, i32 noundef %53) #5
  br label %err_cleanup

if.end16.i:                                       ; preds = %if.end5.i
  %54 = ptrtoint ptr %height.i64 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height.i64, align 4
  %56 = ptrtoint ptr %format.i62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %format.i62, align 8
  %num_planes.i.i = getelementptr inbounds %struct.drm_format_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_planes.i.i, align 1
  %conv.i.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.082.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %i.082.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i69

if.then.i.i69:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %komeda_fb_get_pixel_addr.exit.i

if.end.i.i:                                       ; preds = %if.end16.i
  %call.i.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %call7.i.i, i32 noundef %i.082.i) #5
  %arrayidx.i.i = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 7, i32 %i.082.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i, align 4
  %62 = ptrtoint ptr %modifier10 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %modifier10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %tobool.not.i.i = icmp eq i64 %63, 0
  br i1 %tobool.not.i.i, label %if.then2.i.i, label %if.end.i.i.if.end23.i.i_crit_edge

if.end.i.i.if.end23.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %64 = ptrtoint ptr %format.i62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %format.i62, align 8
  %call4.i.i = tail call i32 @drm_format_info_block_width(ptr noundef %65, i32 noundef %i.082.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.082.i)
  %tobool8.not.i.i = icmp eq i32 %i.082.i, 0
  br i1 %tobool8.not.i.i, label %if.then2.i.i.cond.end16.i.i_crit_edge, label %cond.true12.i.i

if.then2.i.i.cond.end16.i.i_crit_edge:            ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end16.i.i

cond.true12.i.i:                                  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %format.i62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %format.i62, align 8
  %vsub.i.i = getelementptr inbounds %struct.drm_format_info, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %vsub.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vsub.i.i, align 1
  %conv14.i.i = zext i8 %69 to i32
  br label %cond.end16.i.i

cond.end16.i.i:                                   ; preds = %cond.true12.i.i, %if.then2.i.i.cond.end16.i.i_crit_edge
  %cond17.i.i = phi i32 [ %conv14.i.i, %cond.true12.i.i ], [ 1, %if.then2.i.i.cond.end16.i.i_crit_edge ]
  %div18.i.i = sdiv i32 %55, %cond17.i.i
  %70 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx9.i, align 4
  %mul21.i.i = mul i32 %71, %div18.i.i
  %add22.i.i = add i32 %mul21.i.i, %61
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %cond.end16.i.i, %if.end.i.i.if.end23.i.i_crit_edge
  %offset.0.i.i = phi i32 [ %61, %if.end.i.i.if.end23.i.i_crit_edge ], [ %add22.i.i, %cond.end16.i.i ]
  %paddr.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %paddr.i.i, align 8
  %add24.i.i = add i32 %73, %offset.0.i.i
  br label %komeda_fb_get_pixel_addr.exit.i

komeda_fb_get_pixel_addr.exit.i:                  ; preds = %if.end23.i.i, %if.then.i.i69
  %retval.0.i.i = phi i32 [ -22, %if.then.i.i69 ], [ %add24.i.i, %if.end23.i.i ]
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call2.i, i32 0, i32 1
  %74 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %paddr.i, align 8
  %sub.i70 = sub i32 %retval.0.i.i, %75
  %size.i71 = getelementptr inbounds %struct.drm_gem_object, ptr %call2.i, i32 0, i32 5
  %76 = ptrtoint ptr %size.i71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %size.i71, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %sub.i70)
  %cmp21.i = icmp ult i32 %77, %sub.i70
  br i1 %cmp21.i, label %if.then23.i, label %for.inc.i

if.then23.i:                                      ; preds = %komeda_fb_get_pixel_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i = zext i32 %sub.i70 to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %i.082.i, i32 noundef %77, i64 noundef %conv19.i) #5
  br label %err_cleanup

for.inc.i:                                        ; preds = %komeda_fb_get_pixel_addr.exit.i
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %78 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_planes.i, align 1
  %conv.i72 = zext i8 %79 to i32
  %cmp.i73 = icmp ult i32 %inc.i, %conv.i72
  br i1 %cmp.i73, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %80 = ptrtoint ptr %format.i62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %format.i62, align 8
  %num_planes27.i = getelementptr inbounds %struct.drm_format_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %num_planes27.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_planes27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %83)
  %cmp29.i = icmp eq i8 %83, 3
  br i1 %cmp29.i, label %if.then31.i, label %for.end.i.if.end17_crit_edge

for.end.i.if.end17_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then31.i:                                      ; preds = %for.end.i
  %arrayidx33.i = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 6, i32 1
  %84 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx33.i, align 4
  %arrayidx35.i = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 6, i32 2
  %86 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx35.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp36.not.i = icmp eq i32 %85, %87
  br i1 %cmp36.not.i, label %if.then31.i.if.end17_crit_edge, label %if.then38.i

if.then31.i.if.end17_crit_edge:                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then38.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14) #5
  br label %err_cleanup

if.end17:                                         ; preds = %if.then31.i.if.end17_crit_edge, %for.end.i.if.end17_crit_edge, %if.end64.i
  %call19 = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @komeda_fb_funcs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #5
  %phi.cast = inttoptr i32 %call19 to ptr
  br label %err_cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %iommu = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 12
  %88 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %iommu, align 4
  %tobool23 = icmp ne ptr %89, null
  %is_va = getelementptr inbounds %struct.komeda_fb, ptr %call7.i.i, i32 0, i32 2
  %frombool = zext i1 %tobool23 to i8
  %90 = ptrtoint ptr %is_va to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %frombool, ptr %is_va, align 4
  br label %cleanup

err_cleanup:                                      ; preds = %if.then21, %if.then38.i, %if.then23.i, %if.then11.i, %if.then4.i, %if.else.err_cleanup_crit_edge, %if.then.i.i.i.i, %if.then10.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.err_cleanup_crit_edge, %if.then.i
  %ret.1 = phi ptr [ %phi.cast, %if.then21 ], [ inttoptr (i32 -22 to ptr), %if.else.err_cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then38.i ], [ inttoptr (i32 -2 to ptr), %if.then4.i ], [ inttoptr (i32 -22 to ptr), %if.then23.i ], [ inttoptr (i32 -22 to ptr), %if.then11.i ], [ inttoptr (i32 -22 to ptr), %if.then.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.then10.i.i.i.i.i.i.i ], [ inttoptr (i32 -22 to ptr), %if.end5.i.i.i.i.i.i.i.err_cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then.i ]
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 4
  %91 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %format, align 8
  %num_planes91 = getelementptr inbounds %struct.drm_format_info, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %num_planes91 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num_planes91, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp2793.not = icmp eq i8 %94, 0
  br i1 %cmp2793.not, label %err_cleanup.for.end_crit_edge, label %err_cleanup.for.body_crit_edge

err_cleanup.for.body_crit_edge:                   ; preds = %err_cleanup
  br label %for.body

err_cleanup.for.end_crit_edge:                    ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %err_cleanup.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ], [ 0, %err_cleanup.for.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15, i32 %i.094
  %95 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx30, align 4
  %tobool.not.i75 = icmp eq ptr %96, null
  br i1 %tobool.not.i75, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i76

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then.i76:                                      ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %96, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr nonnull %96, i32 1, i32 3, i32 1) #5
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %96, ptr nonnull %96, i32 1, ptr nonnull elementtype(i32) %96) #5, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %96, i32 noundef 3) #5
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @drm_gem_object_free(ptr noundef nonnull %96) #5
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.094, 1
  %98 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %101 to i32
  %cmp27 = icmp ult i32 %inc, %conv
  br i1 %cmp27, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.for.end_crit_edge

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %err_cleanup.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end22, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.1, %for.end ], [ %call7.i.i, %if.end22 ], [ inttoptr (i32 -22 to ptr), %if.then5 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_get_format_caps(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_fb_check_src_coords(ptr nocapture noundef readonly %kfb, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %call = tail call i32 @drm_format_info_block_width(ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 8
  %call3 = tail call i32 @drm_format_info_block_height(ptr noundef %3, i32 noundef 0) #5
  %add = add i32 %src_w, %src_x
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 9
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %add4 = add i32 %src_h, %src_y
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 10
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %7)
  %cmp5 = icmp ugt i32 %add4, %7
  br i1 %cmp5, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hsub, align 2
  %conv = zext i8 %9 to i32
  %rem = urem i32 %src_x, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false6, label %if.end.if.then20_crit_edge

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

lor.lhs.false6:                                   ; preds = %if.end
  %rem9 = urem i32 %src_w, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9)
  %tobool10.not = icmp eq i32 %rem9, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false6.if.then20_crit_edge

lor.lhs.false6.if.then20_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vsub, align 1
  %conv12 = zext i8 %11 to i32
  %rem13 = urem i32 %src_y, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13)
  %tobool14.not = icmp eq i32 %rem13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false11.if.then20_crit_edge

lor.lhs.false11.if.then20_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %rem18 = urem i32 %src_h, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18)
  %tobool19.not = icmp eq i32 %rem18, 0
  br i1 %tobool19.not, label %if.end22, label %lor.lhs.false15.if.then20_crit_edge

lor.lhs.false15.if.then20_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false15.if.then20_crit_edge, %lor.lhs.false11.if.then20_crit_edge, %lor.lhs.false6.if.then20_crit_edge, %if.end.if.then20_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h, i32 noundef %13) #5
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false15
  %rem23 = urem i32 %src_x, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem23)
  %tobool24.not = icmp eq i32 %rem23, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.end22.if.then34_crit_edge

if.end22.if.then34_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

lor.lhs.false25:                                  ; preds = %if.end22
  %rem26 = urem i32 %src_w, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem26)
  %tobool27.not = icmp eq i32 %rem26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false25.if.then34_crit_edge

lor.lhs.false25.if.then34_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %rem29 = urem i32 %src_y, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem29)
  %tobool30.not = icmp eq i32 %rem29, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false28.if.then34_crit_edge

lor.lhs.false28.if.then34_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %rem32 = urem i32 %src_h, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem32)
  %tobool33.not = icmp eq i32 %rem32, 0
  br i1 %tobool33.not, label %lor.lhs.false31.cleanup_crit_edge, label %lor.lhs.false31.if.then34_crit_edge

lor.lhs.false31.if.then34_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

lor.lhs.false31.cleanup_crit_edge:                ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then34:                                        ; preds = %lor.lhs.false31.if.then34_crit_edge, %lor.lhs.false28.if.then34_crit_edge, %lor.lhs.false25.if.then34_crit_edge, %if.end22.if.then34_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h, i32 noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %lor.lhs.false31.cleanup_crit_edge, %if.then20, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then20 ], [ -22, %if.then34 ], [ 0, %lor.lhs.false31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_fb_get_pixel_addr(ptr noundef %kfb, i32 noundef %x, i32 noundef %y, i32 noundef %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %plane)
  %cmp.not = icmp sgt i32 %conv, %plane
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %kfb, i32 noundef %plane) #5
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %kfb, i32 0, i32 7, i32 %plane
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 8
  %6 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then2:                                         ; preds = %if.end
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 8
  %call4 = tail call i32 @drm_format_info_block_width(ptr noundef %9, i32 noundef %plane) #5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 8
  %12 = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 3
  %arrayidx6 = getelementptr [4 x i8], ptr %12, i32 0, i32 %plane
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plane)
  %tobool8.not = icmp eq i32 %plane, 0
  br i1 %tobool8.not, label %if.then2.cond.end16_crit_edge, label %cond.true12

if.then2.cond.end16_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end16

cond.true12:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hsub, align 2
  %conv10 = zext i8 %16 to i32
  %div = sdiv i32 %x, %conv10
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 7
  %17 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vsub, align 1
  %conv14 = zext i8 %18 to i32
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true12, %if.then2.cond.end16_crit_edge
  %div49 = phi i32 [ %div, %cond.true12 ], [ %x, %if.then2.cond.end16_crit_edge ]
  %cond17 = phi i32 [ %conv14, %cond.true12 ], [ 1, %if.then2.cond.end16_crit_edge ]
  %div18 = sdiv i32 %y, %cond17
  %div19 = udiv i32 %div49, %call4
  %mul = mul i32 %div19, %conv7
  %arrayidx20 = getelementptr %struct.drm_framebuffer, ptr %kfb, i32 0, i32 6, i32 %plane
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx20, align 4
  %mul21 = mul i32 %20, %div18
  %add = add i32 %mul, %5
  %add22 = add i32 %add, %mul21
  br label %if.end23

if.end23:                                         ; preds = %cond.end16, %if.end.if.end23_crit_edge
  %offset.0 = phi i32 [ %5, %if.end.if.end23_crit_edge ], [ %add22, %cond.end16 ]
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %paddr, align 8
  %add24 = add i32 %22, %offset.0
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %add24, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @komeda_fb_is_layer_supported(ptr nocapture noundef readonly %kfb, i32 noundef %layer_type, i32 noundef %rot) local_unnamed_addr #0 align 64 {
entry:
  %fourcc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kfb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kfb, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fourcc) #5
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 4
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %fourcc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fourcc, align 4
  %modifier2 = getelementptr inbounds %struct.drm_framebuffer, ptr %kfb, i32 0, i32 8
  %9 = ptrtoint ptr %modifier2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %modifier2, align 8
  %fmt_tbl = getelementptr inbounds %struct.komeda_dev, ptr %3, i32 0, i32 3
  %call = tail call zeroext i1 @komeda_format_mod_supported(ptr noundef %fmt_tbl, i32 noundef %layer_type, i32 noundef %7, i64 noundef %10, i32 noundef %rot) #5
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %layer_type, ptr noundef nonnull %fourcc, i64 noundef %10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fourcc) #5
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @komeda_format_mod_supported(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_get_afbc_format_bpp(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_fb_destroy(ptr noundef %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %num_planes7 = getelementptr inbounds %struct.drm_format_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %num_planes7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_planes7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp9.not = icmp eq i8 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 15, i32 %i.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #5, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #5
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #5
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %format, align 8
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %10 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.for.end_crit_edge

drm_gem_object_put.exit.for.end_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %drm_gem_object_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @drm_framebuffer_cleanup(ptr noundef %fb) #5
  tail call void @kfree(ptr noundef %fb) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_fb_create_handle(ptr nocapture noundef readonly %fb, ptr noundef %file, ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 15
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj, align 4
  %call = tail call i32 @drm_gem_handle_create(ptr noundef %file, ptr noundef %1, ptr noundef %handle) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 174, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 191, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 217, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 223, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 230, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 246, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 279, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 51, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 65, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 83, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 97, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 134, i32 4}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 142, i32 4}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 150, i32 4}
!29 = !{ptr @komeda_fb_funcs, !30, !"komeda_fb_funcs", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c", i32 34, i32 43}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148584575}
!41 = !{i64 2148499015, i64 2148499047, i64 2148499076, i64 2148499110, i64 2148499141, i64 2148499164}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2149219299}
