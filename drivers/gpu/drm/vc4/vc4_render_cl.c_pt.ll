; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_render_cl.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_render_cl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vc4_rcl_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface, [2 x i32], i32, i8, [3 x i8], i32, i64, i32, i32, i32, i32 }
%struct.drm_vc4_submit_rcl_surface = type { i32, i32, i16, i16 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
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
%struct.vc4_bo = type { %struct.drm_gem_cma_object, i64, i64, i8, %struct.list_head, i32, %struct.list_head, ptr, i32, %struct.refcount_struct, i32, %struct.mutex }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bad render tile set (%d,%d)-(%d,%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Render tiles (%d,%d) outside of bin config (%d,%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RCL requires color or Z/S write\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No flags supported on render config.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unknown bits in render config: 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad tiling format\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad tile buffer format\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Extra flags set\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"general zs write may not be a full-res.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"load/store general bits set with full res load/store.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown bits in load/store: 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No color format should be set for ZS\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad load/store buffer %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"load/store buffer must be 16b aligned.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"surface offset %d > BO size %zd\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"MSAA tile %d, %d out of bounds (bo size %zd, offset %d).\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MSAA surface had nonzero flags/bits\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MSAA write must be 16b aligned.\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 3, i64 1, i64 2]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 603, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 612, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 655, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 546, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 554, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 569, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 582, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 450, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 466, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 471, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 486, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 498, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 516, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 521, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 391, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 398, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 414, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [39 x i8] c"../drivers/gpu/drm/vc4/vc4_render_cl.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 428, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_get_rcl(ptr noundef %dev, ptr noundef %exec) local_unnamed_addr #0 align 64 {
entry:
  %setup = alloca %struct.vc4_rcl_setup, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %setup) #3
  %0 = call ptr @memset(ptr %setup, i32 0, i32 36)
  %args1 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %1 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args1, align 4
  %bin_cl_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bin_cl_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  %min_x_tile = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 11
  %5 = ptrtoint ptr %min_x_tile to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %min_x_tile, align 8
  %max_x_tile = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 13
  %7 = ptrtoint ptr %max_x_tile to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_x_tile, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp3 = icmp ugt i8 %6, %8
  br i1 %cmp3, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %min_y_tile = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 12
  %9 = ptrtoint ptr %min_y_tile to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %min_y_tile, align 1
  %max_y_tile = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 14
  %11 = ptrtoint ptr %max_y_tile to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_y_tile, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp7 = icmp ugt i8 %10, %12
  br i1 %cmp7, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %conv10 = zext i8 %6 to i32
  %min_y_tile11 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 12
  %13 = ptrtoint ptr %min_y_tile11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %min_y_tile11, align 1
  %conv12 = zext i8 %14 to i32
  %conv14 = zext i8 %8 to i32
  %max_y_tile15 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 14
  %15 = ptrtoint ptr %max_y_tile15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_y_tile15, align 1
  %conv16 = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16) #3
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %cmp.not, label %if.end.if.end38_crit_edge, label %land.lhs.true

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end
  %bin_tiles_x = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 21
  %17 = ptrtoint ptr %bin_tiles_x to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bin_tiles_x, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %18)
  %cmp21 = icmp ugt i8 %8, %18
  br i1 %cmp21, label %land.lhs.true.if.then29_crit_edge, label %lor.lhs.false23

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then29

lor.lhs.false23:                                  ; preds = %land.lhs.true
  %bin_tiles_y = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 22
  %19 = ptrtoint ptr %bin_tiles_y to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bin_tiles_y, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %20)
  %cmp27 = icmp ugt i8 %12, %20
  br i1 %cmp27, label %lor.lhs.false23.if.then29_crit_edge, label %lor.lhs.false23.if.end38_crit_edge

lor.lhs.false23.if.end38_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end38

lor.lhs.false23.if.then29_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false23.if.then29_crit_edge, %land.lhs.true.if.then29_crit_edge
  %conv31 = zext i8 %8 to i32
  %conv33 = zext i8 %12 to i32
  %conv35 = zext i8 %18 to i32
  %bin_tiles_y36 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 22
  %21 = ptrtoint ptr %bin_tiles_y36 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bin_tiles_y36, align 1
  %conv37 = zext i8 %22 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35, i32 noundef %conv37) #3
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false23.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %color_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 1
  %color_write39 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 16
  %bits.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 16, i32 2
  %23 = ptrtoint ptr %bits.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %bits.i, align 4
  %conv.i = zext i16 %24 to i32
  %25 = trunc i16 %24 to i8
  %26 = lshr i8 %25, 6
  %27 = lshr i16 %24, 2
  %28 = and i16 %27, 3
  %flags.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 16, i32 3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.not.i = icmp eq i16 %30, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3) #3
  br label %cleanup

if.end.i:                                         ; preds = %if.end38
  %and39.i = and i32 %conv.i, 65314
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool.not.i, label %if.end43.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %conv.i) #3
  br label %cleanup

if.end43.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %color_write39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %color_write39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp44.i = icmp eq i32 %32, -1
  br i1 %cmp44.i, label %if.end43.i.if.end42_crit_edge, label %if.end47.i

if.end43.i.if.end42_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.end47.i:                                       ; preds = %if.end43.i
  %call.i = tail call ptr @vc4_use_bo(ptr noundef %exec, i32 noundef %32) #3
  %33 = ptrtoint ptr %color_write to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %color_write, align 4
  %tobool49.not.i = icmp eq ptr %call.i, null
  br i1 %tobool49.not.i, label %if.end47.i.cleanup_crit_edge, label %if.end51.i

if.end47.i.cleanup_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end51.i:                                       ; preds = %if.end47.i
  %rcl_write_bo_count.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 9
  %34 = ptrtoint ptr %rcl_write_bo_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rcl_write_bo_count.i, align 8
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %rcl_write_bo_count.i, align 8
  %arrayidx.i = getelementptr %struct.vc4_exec_info, ptr %exec, i32 0, i32 8, i32 %35
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp53.i = icmp eq i8 %26, 3
  br i1 %cmp53.i, label %if.then55.i, label %if.end56.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #3
  br label %cleanup

if.end56.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %.not = icmp eq i16 %28, 3
  br i1 %.not, label %sw.default.i, label %switch.lookup

sw.default.i:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #3
  br label %cleanup

switch.lookup:                                    ; preds = %if.end56.i
  %37 = shl nuw nsw i16 %28, 3
  %switch.shiftamt = zext i16 %37 to i24
  %switch.downshift = lshr i24 132098, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %offset.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 16, i32 1
  %38 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset.i, align 4
  %40 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %args1, align 4
  %width.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %width.i, align 4
  %conv59.i = zext i16 %43 to i32
  %height.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %41, i32 0, i32 10
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %height.i, align 2
  %conv61.i = zext i16 %45 to i32
  %call63.i = tail call zeroext i1 @vc4_check_tex_size(ptr noundef %exec, ptr noundef nonnull %call.i, i32 noundef %39, i8 noundef zeroext %26, i32 noundef %conv59.i, i32 noundef %conv61.i, i8 noundef zeroext %switch.masked) #3
  br i1 %call63.i, label %switch.lookup.if.end42_crit_edge, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup.if.end42_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.end42:                                         ; preds = %switch.lookup.if.end42_crit_edge, %if.end43.i.if.end42_crit_edge
  %color_read43 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 15
  %call44 = call fastcc i32 @vc4_rcl_surface_setup(ptr noundef %exec, ptr noundef nonnull %setup, ptr noundef %color_read43, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %zs_read = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 2
  %zs_read48 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 17
  %call49 = call fastcc i32 @vc4_rcl_surface_setup(ptr noundef %exec, ptr noundef %zs_read, ptr noundef %zs_read48, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %zs_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 3
  %zs_write53 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 18
  %call54 = call fastcc i32 @vc4_rcl_surface_setup(ptr noundef %exec, ptr noundef %zs_write, ptr noundef %zs_write53, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %msaa_color_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 4
  %msaa_color_write58 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 19
  %call59 = call fastcc i32 @vc4_rcl_msaa_surface_setup(ptr noundef %exec, ptr noundef %msaa_color_write, ptr noundef %msaa_color_write58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %msaa_zs_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 5
  %msaa_zs_write63 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %2, i32 0, i32 20
  %call64 = call fastcc i32 @vc4_rcl_msaa_surface_setup(ptr noundef %exec, ptr noundef %msaa_zs_write, ptr noundef %msaa_zs_write63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %46 = ptrtoint ptr %color_write to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %color_write, align 4
  %tobool69.not = icmp eq ptr %47, null
  br i1 %tobool69.not, label %land.lhs.true70, label %if.end67.if.end80_crit_edge

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

land.lhs.true70:                                  ; preds = %if.end67
  %48 = ptrtoint ptr %zs_write to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %zs_write, align 4
  %tobool72.not = icmp eq ptr %49, null
  br i1 %tobool72.not, label %land.lhs.true73, label %land.lhs.true70.if.end80_crit_edge

land.lhs.true70.if.end80_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %50 = ptrtoint ptr %msaa_color_write to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %msaa_color_write, align 4
  %tobool75.not = icmp eq ptr %51, null
  br i1 %tobool75.not, label %land.lhs.true76, label %land.lhs.true73.if.end80_crit_edge

land.lhs.true73.if.end80_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %52 = ptrtoint ptr %msaa_zs_write to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %msaa_zs_write, align 4
  %tobool78.not = icmp eq ptr %53, null
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true76.if.end80_crit_edge

land.lhs.true76.if.end80_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

if.then79:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #3
  br label %cleanup

if.end80:                                         ; preds = %land.lhs.true76.if.end80_crit_edge, %land.lhs.true73.if.end80_crit_edge, %land.lhs.true70.if.end80_crit_edge, %if.end67.if.end80_crit_edge
  %call81 = call fastcc i32 @vc4_create_rcl_bo(ptr noundef %dev, ptr noundef %exec, ptr noundef nonnull %setup)
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then79, %if.end62.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %sw.default.i, %if.then55.i, %if.end47.i.cleanup_crit_edge, %if.then40.i, %if.then.i, %if.then29, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then29 ], [ %call81, %if.end80 ], [ -22, %if.then79 ], [ %call44, %if.end42.cleanup_crit_edge ], [ %call49, %if.end47.cleanup_crit_edge ], [ %call54, %if.end52.cleanup_crit_edge ], [ %call59, %if.end57.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then40.i ], [ -22, %if.then55.i ], [ -22, %sw.default.i ], [ -22, %if.end47.i.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %setup) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_rcl_surface_setup(ptr noundef %exec, ptr nocapture noundef %obj, ptr noundef readonly %surf, i1 noundef zeroext %is_write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bits = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %surf, i32 0, i32 2
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bits, align 4
  %2 = trunc i16 %1 to i8
  %3 = lshr i8 %2, 4
  %conv13 = and i8 %3, 3
  %4 = and i16 %1, 7
  %conv34 = zext i16 %4 to i32
  %5 = lshr i16 %1, 8
  %6 = trunc i16 %5 to i8
  %conv55 = and i8 %6, 3
  %flags = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %surf, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %tobool.not = icmp ult i16 %8, 2
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %surf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %surf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end60

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end60:                                         ; preds = %if.end
  %call = tail call ptr @vc4_use_bo(ptr noundef %exec, i32 noundef %10) #3
  %11 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %obj, align 4
  %tobool62.not = icmp eq ptr %call, null
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.end64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end64:                                         ; preds = %if.end60
  br i1 %is_write, label %if.then66, label %if.end64.if.end67_crit_edge

if.end64.if.end67_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end67

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  %rcl_write_bo_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 9
  %12 = ptrtoint ptr %rcl_write_bo_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rcl_write_bo_count, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %rcl_write_bo_count, align 8
  %arrayidx = getelementptr %struct.vc4_exec_info, ptr %exec, i32 0, i32 8, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %arrayidx, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end64.if.end67_crit_edge
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool71.not = icmp eq i16 %17, 0
  br i1 %tobool71.not, label %if.end87, label %if.then72

if.then72:                                        ; preds = %if.end67
  %args = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args, align 4
  %zs_write = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %19, i32 0, i32 18
  %cmp73 = icmp eq ptr %zs_write, %surf
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #3
  br label %cleanup

if.end76:                                         ; preds = %if.then72
  %20 = ptrtoint ptr %bits to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp79.not = icmp eq i16 %21, 0
  br i1 %cmp79.not, label %if.end82, label %if.then81

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.9) #3
  br label %cleanup

if.end82:                                         ; preds = %if.end76
  %22 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %obj, align 4
  %offset.i = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %surf, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.i = icmp ult i32 %27, %25
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %25, i32 noundef %27) #3
  br label %cleanup

if.end.i:                                         ; preds = %if.end82
  %width.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %19, i32 0, i32 9
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %29 to i32
  %sub.i = add nuw nsw i32 %conv.i, 31
  %div39.i = lshr i32 %sub.i, 5
  %sub10.i = sub i32 %27, %25
  %div1140.i = lshr i32 %sub10.i, 14
  %max_y_tile.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %19, i32 0, i32 14
  %30 = ptrtoint ptr %max_y_tile.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_y_tile.i, align 1
  %conv12.i = zext i8 %31 to i32
  %mul.i = mul nuw nsw i32 %div39.i, %conv12.i
  %max_x_tile.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %19, i32 0, i32 13
  %32 = ptrtoint ptr %max_x_tile.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %max_x_tile.i, align 2
  %conv13.i = zext i8 %33 to i32
  %add14.i = add nuw nsw i32 %mul.i, %conv13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1140.i, i32 %add14.i)
  %cmp15.i = icmp ult i32 %div1140.i, %add14.i
  br i1 %cmp15.i, label %if.then17.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %conv13.i, i32 noundef %conv12.i, i32 noundef %27, i32 noundef %25) #3
  br label %cleanup

if.end87:                                         ; preds = %if.end67
  %34 = ptrtoint ptr %bits to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bits, align 4
  %conv89 = zext i16 %35 to i32
  %and90 = and i32 %conv89, 64712
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end95, label %if.then92

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %conv89) #3
  br label %cleanup

if.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv13)
  %cmp97 = icmp eq i8 %conv13, 3
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #3
  br label %cleanup

if.end100:                                        ; preds = %if.end95
  %trunc = trunc i16 %1 to i3
  %36 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i3 %trunc, label %if.else116 [
    i3 2, label %if.then104
    i3 1, label %if.then113
  ]

if.then104:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv55)
  %cmp106.not = icmp eq i8 %conv55, 0
  br i1 %cmp106.not, label %if.then104.if.end119_crit_edge, label %if.then108

if.then104.if.end119_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end119

if.then108:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11) #3
  br label %cleanup

if.then113:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv55)
  %.not = icmp eq i8 %conv55, 3
  br i1 %.not, label %sw.default, label %switch.lookup

sw.default:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6) #3
  br label %cleanup

if.else116:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %conv34) #3
  br label %cleanup

switch.lookup:                                    ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #5
  %37 = shl nuw nsw i8 %conv55, 3
  %switch.shiftamt = zext i8 %37 to i24
  %switch.downshift = lshr i24 131588, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %if.end119

if.end119:                                        ; preds = %switch.lookup, %if.then104.if.end119_crit_edge
  %cpp.0 = phi i8 [ 4, %if.then104.if.end119_crit_edge ], [ %switch.masked, %switch.lookup ]
  %offset = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %surf, i32 0, i32 1
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %and120 = and i32 %39, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.end123, label %if.then122

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.13) #3
  br label %cleanup

if.end123:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %obj, align 4
  %args125 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %42 = ptrtoint ptr %args125 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %args125, align 4
  %width = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %width, align 4
  %conv126 = zext i16 %45 to i32
  %height = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %43, i32 0, i32 10
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %height, align 2
  %conv128 = zext i16 %47 to i32
  %call130 = tail call zeroext i1 @vc4_check_tex_size(ptr noundef %exec, ptr noundef %41, i32 noundef %39, i8 noundef zeroext %conv13, i32 noundef %conv126, i32 noundef %conv128, i8 noundef zeroext %cpp.0) #3
  %. = select i1 %call130, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then122, %if.else116, %sw.default, %if.then108, %if.then99, %if.then92, %if.then17.i, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then81, %if.then75, %if.end60.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then75 ], [ -22, %if.then81 ], [ -22, %if.then92 ], [ -22, %if.then99 ], [ -22, %if.then108 ], [ -22, %if.then122 ], [ -22, %sw.default ], [ -22, %if.else116 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end60.cleanup_crit_edge ], [ %., %if.end123 ], [ -22, %if.then.i ], [ -22, %if.then17.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_rcl_msaa_surface_setup(ptr noundef %exec, ptr nocapture noundef %obj, ptr nocapture noundef readonly %surf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %surf, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bits = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %surf, i32 0, i32 2
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bits, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3.not = icmp eq i16 %3, 0
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.16) #3
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %surf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %surf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp5 = icmp eq i32 %5, -1
  br i1 %cmp5, label %if.end.return_crit_edge, label %if.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end8:                                          ; preds = %if.end
  %call = tail call ptr @vc4_use_bo(ptr noundef %exec, i32 noundef %5) #3
  %6 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %obj, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8.return_crit_edge, label %if.end11

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end11:                                         ; preds = %if.end8
  %rcl_write_bo_count = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 9
  %7 = ptrtoint ptr %rcl_write_bo_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rcl_write_bo_count, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %rcl_write_bo_count, align 8
  %arrayidx = getelementptr %struct.vc4_exec_info, ptr %exec, i32 0, i32 8, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %arrayidx, align 4
  %offset = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, ptr %surf, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %and = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17) #3
  br label %return

if.end14:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %obj, align 4
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp.i = icmp ult i32 %15, %11
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef %11, i32 noundef %15) #3
  br label %return

if.end.i:                                         ; preds = %if.end14
  %args1.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %16 = ptrtoint ptr %args1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args1.i, align 4
  %width.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %19 to i32
  %sub.i = add nuw nsw i32 %conv.i, 31
  %div39.i = lshr i32 %sub.i, 5
  %sub10.i = sub i32 %15, %11
  %div1140.i = lshr i32 %sub10.i, 14
  %max_y_tile.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %17, i32 0, i32 14
  %20 = ptrtoint ptr %max_y_tile.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_y_tile.i, align 1
  %conv12.i = zext i8 %21 to i32
  %mul.i = mul nuw nsw i32 %div39.i, %conv12.i
  %max_x_tile.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %17, i32 0, i32 13
  %22 = ptrtoint ptr %max_x_tile.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_x_tile.i, align 2
  %conv13.i = zext i8 %23 to i32
  %add14.i = add nuw nsw i32 %mul.i, %conv13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1140.i, i32 %add14.i)
  %cmp15.i = icmp ult i32 %div1140.i, %add14.i
  br i1 %cmp15.i, label %if.then17.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %conv13.i, i32 noundef %conv12.i, i32 noundef %15, i32 noundef %11) #3
  br label %return

return:                                           ; preds = %if.then17.i, %if.end.i.return_crit_edge, %if.then.i, %if.then13, %if.end8.return_crit_edge, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then13 ], [ 0, %if.end.return_crit_edge ], [ -22, %if.end8.return_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then17.i ], [ 0, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vc4_create_rcl_bo(ptr noundef %dev, ptr noundef %exec, ptr noundef %setup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 5
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args1, align 4
  %bin_cl_size = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bin_cl_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_cl_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %min_x_tile2 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %min_x_tile2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %min_x_tile2, align 8
  %min_y_tile3 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %min_y_tile3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %min_y_tile3, align 1
  %max_x_tile4 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %max_x_tile4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_x_tile4, align 2
  %max_y_tile5 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %max_y_tile5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_y_tile5, align 1
  %sub = sub i8 %9, %5
  %add = add i8 %sub, 1
  %sub10 = sub i8 %11, %7
  %add11 = add i8 %sub10, 1
  %flags = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %14 = and i32 %13, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %.not = icmp eq i32 %14, 2
  %15 = and i32 %13, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %.not380 = icmp eq i32 %15, 2
  %and24 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %spec.select = select i1 %tobool25.not, i32 11, i32 35
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %entry.if.end40_crit_edge, label %if.then30

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %flags32 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 15, i32 3
  %18 = ptrtoint ptr %flags32 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags32, align 2
  %20 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool35.not = icmp eq i16 %20, 0
  %. = select i1 %tobool35.not, i32 10, i32 8
  br label %if.end40

if.end40:                                         ; preds = %if.then30, %entry.if.end40_crit_edge
  %loop_body_size.0 = phi i32 [ 3, %entry.if.end40_crit_edge ], [ %., %if.then30 ]
  %zs_read = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 2
  %21 = ptrtoint ptr %zs_read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %zs_read, align 4
  %tobool41.not = icmp eq ptr %22, null
  br i1 %tobool41.not, label %if.end40.if.end59_crit_edge, label %if.then42

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.then42:                                        ; preds = %if.end40
  %add47 = add nuw nsw i32 %loop_body_size.0, 10
  %spec.select310 = select i1 %tobool29.not, i32 %loop_body_size.0, i32 %add47
  %flags50 = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 17, i32 3
  %23 = ptrtoint ptr %flags50 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags50, align 2
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool53.not = icmp eq i16 %25, 0
  br i1 %tobool53.not, label %if.else56, label %if.then54

if.then54:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %add55 = add nuw nsw i32 %spec.select310, 5
  br label %if.end59

if.else56:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #5
  %add57 = add nuw nsw i32 %spec.select310, 7
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then54, %if.end40.if.end59_crit_edge
  %loop_body_size.2 = phi i32 [ %add55, %if.then54 ], [ %add57, %if.else56 ], [ %loop_body_size.0, %if.end40.if.end59_crit_edge ]
  %add63 = add nuw nsw i32 %loop_body_size.2, 5
  %not.cmp.not = xor i1 %cmp.not, true
  %add62 = zext i1 %not.cmp.not to i32
  %size.1 = add nuw nsw i32 %spec.select, %add62
  %loop_body_size.3 = select i1 %cmp.not, i32 %loop_body_size.2, i32 %add63
  %msaa_color_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 4
  %26 = ptrtoint ptr %msaa_color_write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msaa_color_write, align 4
  %tobool65.not = icmp eq ptr %27, null
  %add67 = add nuw nsw i32 %loop_body_size.3, 5
  %loop_body_size.4 = select i1 %tobool65.not, i32 %loop_body_size.3, i32 %add67
  %msaa_zs_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 5
  %28 = ptrtoint ptr %msaa_zs_write to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msaa_zs_write, align 4
  %tobool69.not = icmp eq ptr %29, null
  %add71 = add nuw nsw i32 %loop_body_size.4, 5
  %loop_body_size.5 = select i1 %tobool69.not, i32 %loop_body_size.4, i32 %add71
  %zs_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 3
  %30 = ptrtoint ptr %zs_write to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %zs_write, align 4
  %tobool73.not = icmp eq ptr %31, null
  %add75 = add nuw nsw i32 %loop_body_size.5, 7
  %loop_body_size.6 = select i1 %tobool73.not, i32 %loop_body_size.5, i32 %add75
  %color_write = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 1
  %32 = ptrtoint ptr %color_write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %color_write, align 4
  %tobool77.not.not = icmp eq ptr %33, null
  %cmp82 = icmp ne ptr %27, null
  %conv83 = zext i1 %cmp82 to i32
  %cmp85 = icmp ne ptr %29, null
  %conv86 = zext i1 %cmp85 to i32
  %add87 = add nuw nsw i32 %conv86, %conv83
  %cmp89 = icmp ne ptr %33, null
  %conv90 = zext i1 %cmp89 to i32
  %cmp93 = icmp ne ptr %31, null
  %conv94 = zext i1 %cmp93 to i32
  %add91 = add nuw nsw i32 %add87, %conv94
  %add95 = add nuw nsw i32 %add91, %conv90
  %34 = mul nuw nsw i32 %add95, 3
  %mul = select i1 %tobool77.not.not, i32 -3, i32 -2
  %loop_body_size.7 = add nsw i32 %mul, %loop_body_size.6
  %add97 = add nuw nsw i32 %loop_body_size.7, %34
  %conv98 = zext i8 %add to i32
  %conv99 = zext i8 %add11 to i32
  %mul100 = mul nuw nsw i32 %conv99, %conv98
  %mul101 = mul nuw nsw i32 %mul100, %add97
  %add102 = add nuw nsw i32 %size.1, %mul101
  %call = tail call ptr @vc4_bo_create(ptr noundef %dev, i32 noundef %add102, i1 noundef zeroext true, i32 noundef 5) #3
  %rcl = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 6
  %35 = ptrtoint ptr %rcl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call, ptr %rcl, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then105, label %if.end108

if.then105:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %call to i32
  br label %cleanup

if.end108:                                        ; preds = %if.end59
  %unref_head = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 4
  %unref_list = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %unref_head, ptr noundef %38, ptr noundef %unref_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end108.list_add_tail.exit_crit_edge

if.end108.list_add_tail.exit_crit_edge:           ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %unref_head, ptr %prev.i, align 4
  %40 = ptrtoint ptr %unref_head to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %unref_list, ptr %unref_head, align 4
  %prev3.i.i = getelementptr inbounds %struct.vc4_bo, ptr %call, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %unref_head, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end108.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and113 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %list_add_tail.exit.if.end118_crit_edge, label %if.then115

list_add_tail.exit.if.end118_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end118

if.then115:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rcl, align 4
  %vaddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vaddr.i, align 8
  %next_offset.i = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 7
  %49 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %next_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 %50
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 114, ptr %add.ptr.i, align 1
  %52 = load i32, ptr %next_offset.i, align 4
  %add.i = add i32 %52, 1
  store i32 %add.i, ptr %next_offset.i, align 4
  %clear_color = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 21
  %53 = ptrtoint ptr %clear_color to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clear_color, align 4
  %55 = load ptr, ptr %rcl, align 4
  %vaddr.i313 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %vaddr.i313 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vaddr.i313, align 8
  %add.ptr.i315 = getelementptr i8, ptr %57, i32 %add.i
  %58 = ptrtoint ptr %add.ptr.i315 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %54, ptr %add.ptr.i315, align 4
  %59 = load i32, ptr %next_offset.i, align 4
  %add.i316 = add i32 %59, 4
  store i32 %add.i316, ptr %next_offset.i, align 4
  %arrayidx117 = getelementptr %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 21, i32 1
  %60 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx117, align 4
  %62 = load ptr, ptr %rcl, align 4
  %vaddr.i318 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %vaddr.i318 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vaddr.i318, align 8
  %add.ptr.i320 = getelementptr i8, ptr %64, i32 %add.i316
  %65 = ptrtoint ptr %add.ptr.i320 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %61, ptr %add.ptr.i320, align 4
  %66 = load i32, ptr %next_offset.i, align 4
  %add.i321 = add i32 %66, 4
  store i32 %add.i321, ptr %next_offset.i, align 4
  %clear_z = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 22
  %67 = ptrtoint ptr %clear_z to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %clear_z, align 4
  %69 = load ptr, ptr %rcl, align 4
  %vaddr.i323 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %vaddr.i323 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %vaddr.i323, align 8
  %add.ptr.i325 = getelementptr i8, ptr %71, i32 %add.i321
  %72 = ptrtoint ptr %add.ptr.i325 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %68, ptr %add.ptr.i325, align 4
  %73 = load i32, ptr %next_offset.i, align 4
  %add.i326 = add i32 %73, 4
  store i32 %add.i326, ptr %next_offset.i, align 4
  %clear_s = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 23
  %74 = ptrtoint ptr %clear_s to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %clear_s, align 8
  %76 = load ptr, ptr %rcl, align 4
  %vaddr.i328 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %vaddr.i328 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vaddr.i328, align 8
  %add.ptr.i330 = getelementptr i8, ptr %78, i32 %add.i326
  %79 = ptrtoint ptr %add.ptr.i330 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %75, ptr %add.ptr.i330, align 1
  %80 = load i32, ptr %next_offset.i, align 4
  %add.i331 = add i32 %80, 1
  store i32 %add.i331, ptr %next_offset.i, align 4
  %81 = load ptr, ptr %rcl, align 4
  %vaddr.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vaddr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %83, i32 %add.i331
  %84 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 115, ptr %add.ptr.i.i, align 1
  %85 = load i32, ptr %next_offset.i, align 4
  %add.i.i = add i32 %85, 1
  store i32 %add.i.i, ptr %next_offset.i, align 4
  %86 = load ptr, ptr %rcl, align 4
  %vaddr.i5.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %vaddr.i5.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vaddr.i5.i, align 8
  %add.ptr.i7.i = getelementptr i8, ptr %88, i32 %add.i.i
  %89 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %add.ptr.i7.i, align 1
  %90 = load i32, ptr %next_offset.i, align 4
  %add.i8.i = add i32 %90, 1
  store i32 %add.i8.i, ptr %next_offset.i, align 4
  %91 = load ptr, ptr %rcl, align 4
  %vaddr.i10.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %vaddr.i10.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vaddr.i10.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %93, i32 %add.i8.i
  %94 = ptrtoint ptr %add.ptr.i12.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %add.ptr.i12.i, align 1
  %95 = load i32, ptr %next_offset.i, align 4
  %add.i13.i = add i32 %95, 1
  store i32 %add.i13.i, ptr %next_offset.i, align 4
  %96 = load ptr, ptr %rcl, align 4
  %vaddr.i333 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %vaddr.i333 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vaddr.i333, align 8
  %add.ptr.i335 = getelementptr i8, ptr %98, i32 %add.i13.i
  %99 = ptrtoint ptr %add.ptr.i335 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 28, ptr %add.ptr.i335, align 1
  %100 = load i32, ptr %next_offset.i, align 4
  %add.i336 = add i32 %100, 1
  store i32 %add.i336, ptr %next_offset.i, align 4
  %101 = load ptr, ptr %rcl, align 4
  %vaddr.i338 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %vaddr.i338 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vaddr.i338, align 8
  %add.ptr.i340 = getelementptr i8, ptr %103, i32 %add.i336
  %104 = ptrtoint ptr %add.ptr.i340 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %add.ptr.i340, align 2
  %105 = load i32, ptr %next_offset.i, align 4
  %add.i341 = add i32 %105, 2
  store i32 %add.i341, ptr %next_offset.i, align 4
  %106 = load ptr, ptr %rcl, align 4
  %vaddr.i343 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %vaddr.i343 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vaddr.i343, align 8
  %add.ptr.i345 = getelementptr i8, ptr %108, i32 %add.i341
  %109 = ptrtoint ptr %add.ptr.i345 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %add.ptr.i345, align 4
  %110 = load i32, ptr %next_offset.i, align 4
  %add.i346 = add i32 %110, 4
  store i32 %add.i346, ptr %next_offset.i, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %list_add_tail.exit.if.end118_crit_edge
  %111 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rcl, align 4
  %vaddr.i348 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %vaddr.i348 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vaddr.i348, align 8
  %next_offset.i349 = getelementptr inbounds %struct.vc4_rcl_setup, ptr %setup, i32 0, i32 7
  %115 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i350 = getelementptr i8, ptr %114, i32 %116
  %117 = ptrtoint ptr %add.ptr.i350 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 113, ptr %add.ptr.i350, align 1
  %118 = load i32, ptr %next_offset.i349, align 4
  %add.i351 = add i32 %118, 1
  store i32 %add.i351, ptr %next_offset.i349, align 4
  %119 = ptrtoint ptr %color_write to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %color_write, align 4
  %tobool120.not = icmp eq ptr %120, null
  br i1 %tobool120.not, label %if.end118.cond.end_crit_edge, label %cond.true

if.end118.cond.end_crit_edge:                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #5
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %paddr, align 8
  %offset = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 16, i32 1
  %123 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %offset, align 4
  %add123 = add i32 %124, %122
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end118.cond.end_crit_edge
  %cond = phi i32 [ %add123, %cond.true ], [ 0, %if.end118.cond.end_crit_edge ]
  %125 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rcl, align 4
  %vaddr.i353 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %vaddr.i353 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %vaddr.i353, align 8
  %add.ptr.i355 = getelementptr i8, ptr %128, i32 %add.i351
  %129 = ptrtoint ptr %add.ptr.i355 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %cond, ptr %add.ptr.i355, align 4
  %130 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %next_offset.i349, align 4
  %add.i356 = add i32 %131, 4
  store i32 %add.i356, ptr %next_offset.i349, align 4
  %width = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 9
  %132 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %width, align 4
  %134 = load ptr, ptr %rcl, align 4
  %vaddr.i358 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %vaddr.i358 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %vaddr.i358, align 8
  %add.ptr.i360 = getelementptr i8, ptr %136, i32 %add.i356
  %137 = ptrtoint ptr %add.ptr.i360 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %133, ptr %add.ptr.i360, align 2
  %138 = load i32, ptr %next_offset.i349, align 4
  %add.i361 = add i32 %138, 2
  store i32 %add.i361, ptr %next_offset.i349, align 4
  %height = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 10
  %139 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %height, align 2
  %141 = load ptr, ptr %rcl, align 4
  %vaddr.i363 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %vaddr.i363 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %vaddr.i363, align 8
  %add.ptr.i365 = getelementptr i8, ptr %143, i32 %add.i361
  %144 = ptrtoint ptr %add.ptr.i365 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %140, ptr %add.ptr.i365, align 2
  %145 = load i32, ptr %next_offset.i349, align 4
  %add.i366 = add i32 %145, 2
  store i32 %add.i366, ptr %next_offset.i349, align 4
  %bits = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %1, i32 0, i32 16, i32 2
  %146 = ptrtoint ptr %bits to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %bits, align 8
  %148 = load ptr, ptr %rcl, align 4
  %vaddr.i368 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %vaddr.i368 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %vaddr.i368, align 8
  %add.ptr.i370 = getelementptr i8, ptr %150, i32 %add.i366
  %151 = ptrtoint ptr %add.ptr.i370 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %147, ptr %add.ptr.i370, align 2
  %152 = load i32, ptr %next_offset.i349, align 4
  %add.i371 = add i32 %152, 2
  store i32 %add.i371, ptr %next_offset.i349, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add11)
  %cmp127376.not = icmp eq i8 %add11, 0
  br i1 %cmp127376.not, label %cond.end.do.body_crit_edge, label %for.body.lr.ph

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body.lr.ph:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add)
  %cmp144374.not = icmp eq i8 %add, 0
  %sub168 = add nsw i32 %conv98, -1
  %sub174 = add nsw i32 %conv99, -1
  %tile_alloc_offset.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 23
  %bin_tiles_x.i = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv381 = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next382, %for.end.for.body_crit_edge ]
  %153 = trunc i32 %indvars.iv381 to i8
  %add134 = add i8 %7, %153
  %sub138 = sub i8 %11, %153
  %cond140 = select i1 %.not380, i8 %sub138, i8 %add134
  br i1 %cmp144374.not, label %for.body.for.end_crit_edge, label %for.body146.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body146.lr.ph:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv381)
  %cmp163 = icmp ne i32 %indvars.iv381, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub174, i32 %indvars.iv381)
  %cmp175 = icmp eq i32 %sub174, %indvars.iv381
  %conv2.i.i = zext i8 %cond140 to i32
  br label %for.body146

for.body146:                                      ; preds = %emit_tile.exit.for.body146_crit_edge, %for.body146.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body146.lr.ph ], [ %indvars.iv.next, %emit_tile.exit.for.body146_crit_edge ]
  %154 = trunc i32 %indvars.iv to i8
  %add152 = add i8 %5, %154
  %sub156 = sub i8 %9, %154
  %cond158 = select i1 %.not, i8 %sub156, i8 %add152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp160 = icmp ne i32 %indvars.iv, 0
  %155 = select i1 %cmp160, i1 true, i1 %cmp163
  call void @__sanitizer_cov_trace_cmp4(i32 %sub168, i32 %indvars.iv)
  %cmp169 = icmp eq i32 %sub168, %indvars.iv
  %156 = select i1 %cmp169, i1 %cmp175, i1 false
  %157 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %args1, align 4
  %bin_cl_size.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %bin_cl_size.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bin_cl_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp.not.i = icmp eq i32 %160, 0
  %161 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %setup, align 4
  %tobool.not.i = icmp eq ptr %162, null
  br i1 %tobool.not.i, label %for.body146.if.end12.i_crit_edge, label %if.then.i

for.body146.if.end12.i_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12.i

if.then.i:                                        ; preds = %for.body146
  %flags.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 15, i32 3
  %163 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %flags.i, align 2
  %165 = and i16 %164, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool5.not.i = icmp eq i16 %165, 0
  %166 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rcl, align 4
  %vaddr.i279.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %vaddr.i279.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %vaddr.i279.i, align 8
  %170 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i281.i = getelementptr i8, ptr %169, i32 %171
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %172 = ptrtoint ptr %add.ptr.i281.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 27, ptr %add.ptr.i281.i, align 1
  %173 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %next_offset.i349, align 4
  %add.i.i372 = add i32 %174, 1
  store i32 %add.i.i372, ptr %next_offset.i349, align 4
  %175 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %setup, align 4
  %paddr.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %paddr.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 15, i32 1
  %179 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %offset.i.i, align 4
  %add.i272.i = add i32 %180, %178
  %181 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %args1, align 4
  %width.i.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %182, i32 0, i32 9
  %183 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %width.i.i, align 4
  %conv.i.i = zext i16 %184 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 31
  %div7.i.i = lshr i32 %sub.i.i, 5
  %mul.i.i = mul nuw nsw i32 %div7.i.i, %conv2.i.i
  %conv3.i.i = zext i8 %cond158 to i32
  %add4.i.i = add nuw nsw i32 %mul.i.i, %conv3.i.i
  %mul5.i.i = shl i32 %add4.i.i, 14
  %add6.i.i = add i32 %add.i272.i, %mul5.i.i
  %or.i = or i32 %add6.i.i, 2
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %185 = ptrtoint ptr %add.ptr.i281.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 29, ptr %add.ptr.i281.i, align 1
  %186 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %next_offset.i349, align 4
  %add.i282.i = add i32 %187, 1
  store i32 %add.i282.i, ptr %next_offset.i349, align 4
  %bits.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 15, i32 2
  %188 = ptrtoint ptr %bits.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %bits.i, align 4
  %190 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rcl, align 4
  %vaddr.i284.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %191, i32 0, i32 3
  %192 = ptrtoint ptr %vaddr.i284.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %vaddr.i284.i, align 8
  %add.ptr.i286.i = getelementptr i8, ptr %193, i32 %add.i282.i
  %194 = ptrtoint ptr %add.ptr.i286.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %189, ptr %add.ptr.i286.i, align 2
  %195 = load i32, ptr %next_offset.i349, align 4
  %add.i287.i = add i32 %195, 2
  store i32 %add.i287.i, ptr %next_offset.i349, align 4
  %196 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %setup, align 4
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %paddr.i, align 8
  %offset.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 15, i32 1
  %200 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %offset.i, align 4
  %add.i373 = add i32 %201, %199
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.else.i, %if.then6.i
  %add.i.sink.i = phi i32 [ %add.i.i372, %if.then6.i ], [ %add.i287.i, %if.else.i ]
  %or.sink.i = phi i32 [ %or.i, %if.then6.i ], [ %add.i373, %if.else.i ]
  %202 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rcl, align 4
  %vaddr.i274.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %203, i32 0, i32 3
  %204 = ptrtoint ptr %vaddr.i274.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %vaddr.i274.i, align 8
  %add.ptr.i276.i = getelementptr i8, ptr %205, i32 %add.i.sink.i
  %206 = ptrtoint ptr %add.ptr.i276.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or.sink.i, ptr %add.ptr.i276.i, align 4
  %207 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %next_offset.i349, align 4
  %add.i277.i = add i32 %208, 4
  store i32 %add.i277.i, ptr %next_offset.i349, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end12.sink.split.i, %for.body146.if.end12.i_crit_edge
  %209 = ptrtoint ptr %zs_read to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %zs_read, align 4
  %tobool13.not.i = icmp eq ptr %210, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end40.i_crit_edge, label %if.then14.i

if.end12.i.if.end40.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.i

if.then14.i:                                      ; preds = %if.end12.i
  %211 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %setup, align 4
  %tobool16.not.i = icmp eq ptr %212, null
  br i1 %tobool16.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then17.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #5
  %213 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rcl, align 4
  %vaddr.i.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %vaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %vaddr.i.i.i, align 8
  %217 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %216, i32 %218
  %219 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 115, ptr %add.ptr.i.i.i, align 1
  %220 = load i32, ptr %next_offset.i349, align 4
  %add.i.i.i = add i32 %220, 1
  store i32 %add.i.i.i, ptr %next_offset.i349, align 4
  %221 = load ptr, ptr %rcl, align 4
  %vaddr.i5.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %221, i32 0, i32 3
  %222 = ptrtoint ptr %vaddr.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %vaddr.i5.i.i, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %223, i32 %add.i.i.i
  %224 = ptrtoint ptr %add.ptr.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %cond158, ptr %add.ptr.i7.i.i, align 1
  %225 = load i32, ptr %next_offset.i349, align 4
  %add.i8.i.i = add i32 %225, 1
  store i32 %add.i8.i.i, ptr %next_offset.i349, align 4
  %226 = load ptr, ptr %rcl, align 4
  %vaddr.i10.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %226, i32 0, i32 3
  %227 = ptrtoint ptr %vaddr.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vaddr.i10.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %228, i32 %add.i8.i.i
  %229 = ptrtoint ptr %add.ptr.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %cond140, ptr %add.ptr.i12.i.i, align 1
  %230 = load i32, ptr %next_offset.i349, align 4
  %add.i13.i.i = add i32 %230, 1
  store i32 %add.i13.i.i, ptr %next_offset.i349, align 4
  %231 = load ptr, ptr %rcl, align 4
  %vaddr.i.i294.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %vaddr.i.i294.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %vaddr.i.i294.i, align 8
  %add.ptr.i.i296.i = getelementptr i8, ptr %233, i32 %add.i13.i.i
  %234 = ptrtoint ptr %add.ptr.i.i296.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 28, ptr %add.ptr.i.i296.i, align 1
  %235 = load i32, ptr %next_offset.i349, align 4
  %add.i.i297.i = add i32 %235, 1
  store i32 %add.i.i297.i, ptr %next_offset.i349, align 4
  %236 = load ptr, ptr %rcl, align 4
  %vaddr.i60.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %236, i32 0, i32 3
  %237 = ptrtoint ptr %vaddr.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %vaddr.i60.i.i, align 8
  %add.ptr.i62.i.i = getelementptr i8, ptr %238, i32 %add.i.i297.i
  %239 = ptrtoint ptr %add.ptr.i62.i.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 -8192, ptr %add.ptr.i62.i.i, align 2
  %240 = load i32, ptr %next_offset.i349, align 4
  %add.i63.i.i = add i32 %240, 2
  store i32 %add.i63.i.i, ptr %next_offset.i349, align 4
  %241 = load ptr, ptr %rcl, align 4
  %vaddr.i65.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %241, i32 0, i32 3
  %242 = ptrtoint ptr %vaddr.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %vaddr.i65.i.i, align 8
  %add.ptr.i67.i.i = getelementptr i8, ptr %243, i32 %add.i63.i.i
  %244 = ptrtoint ptr %add.ptr.i67.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %add.ptr.i67.i.i, align 4
  %245 = load i32, ptr %next_offset.i349, align 4
  %add.i68.i.i = add i32 %245, 4
  store i32 %add.i68.i.i, ptr %next_offset.i349, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.then14.i.if.end20.i_crit_edge
  %flags22.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 17, i32 3
  %246 = ptrtoint ptr %flags22.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %flags22.i, align 2
  %248 = and i16 %247, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %248)
  %tobool25.not.i = icmp eq i16 %248, 0
  %249 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rcl, align 4
  %vaddr.i323.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %250, i32 0, i32 3
  %251 = ptrtoint ptr %vaddr.i323.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %vaddr.i323.i, align 8
  %253 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i325.i = getelementptr i8, ptr %252, i32 %254
  br i1 %tobool25.not.i, label %if.else31.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  %255 = ptrtoint ptr %add.ptr.i325.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 27, ptr %add.ptr.i325.i, align 1
  %256 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %next_offset.i349, align 4
  %add.i302.i = add i32 %257, 1
  store i32 %add.i302.i, ptr %next_offset.i349, align 4
  %258 = ptrtoint ptr %zs_read to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %zs_read, align 4
  %paddr.i303.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %paddr.i303.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %paddr.i303.i, align 8
  %offset.i304.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 17, i32 1
  %262 = ptrtoint ptr %offset.i304.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %offset.i304.i, align 4
  %add.i305.i = add i32 %263, %261
  %264 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %args1, align 4
  %width.i307.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %265, i32 0, i32 9
  %266 = ptrtoint ptr %width.i307.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %width.i307.i, align 4
  %conv.i308.i = zext i16 %267 to i32
  %sub.i309.i = add nuw nsw i32 %conv.i308.i, 31
  %div7.i310.i = lshr i32 %sub.i309.i, 5
  %mul.i312.i = mul nuw nsw i32 %div7.i310.i, %conv2.i.i
  %conv3.i313.i = zext i8 %cond158 to i32
  %add4.i314.i = add nuw nsw i32 %mul.i312.i, %conv3.i313.i
  %mul5.i315.i = shl i32 %add4.i314.i, 14
  %add6.i316.i = add i32 %add.i305.i, %mul5.i315.i
  %or30.i = or i32 %add6.i316.i, 1
  br label %if.end40.sink.split.i

if.else31.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  %268 = ptrtoint ptr %add.ptr.i325.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 29, ptr %add.ptr.i325.i, align 1
  %269 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %next_offset.i349, align 4
  %add.i326.i = add i32 %270, 1
  store i32 %add.i326.i, ptr %next_offset.i349, align 4
  %bits33.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 17, i32 2
  %271 = ptrtoint ptr %bits33.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %bits33.i, align 4
  %273 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %rcl, align 4
  %vaddr.i328.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %274, i32 0, i32 3
  %275 = ptrtoint ptr %vaddr.i328.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %vaddr.i328.i, align 8
  %add.ptr.i330.i = getelementptr i8, ptr %276, i32 %add.i326.i
  %277 = ptrtoint ptr %add.ptr.i330.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %272, ptr %add.ptr.i330.i, align 2
  %278 = load i32, ptr %next_offset.i349, align 4
  %add.i331.i = add i32 %278, 2
  store i32 %add.i331.i, ptr %next_offset.i349, align 4
  %279 = ptrtoint ptr %zs_read to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %zs_read, align 4
  %paddr35.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %280, i32 0, i32 1
  %281 = ptrtoint ptr %paddr35.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %paddr35.i, align 8
  %offset37.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 17, i32 1
  %283 = ptrtoint ptr %offset37.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %offset37.i, align 4
  %add38.i = add i32 %284, %282
  br label %if.end40.sink.split.i

if.end40.sink.split.i:                            ; preds = %if.else31.i, %if.then26.i
  %add.i302.sink.i = phi i32 [ %add.i302.i, %if.then26.i ], [ %add.i331.i, %if.else31.i ]
  %or30.sink.i = phi i32 [ %or30.i, %if.then26.i ], [ %add38.i, %if.else31.i ]
  %285 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rcl, align 4
  %vaddr.i318.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %286, i32 0, i32 3
  %287 = ptrtoint ptr %vaddr.i318.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %vaddr.i318.i, align 8
  %add.ptr.i320.i = getelementptr i8, ptr %288, i32 %add.i302.sink.i
  %289 = ptrtoint ptr %add.ptr.i320.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %or30.sink.i, ptr %add.ptr.i320.i, align 4
  %290 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %next_offset.i349, align 4
  %add.i321.i = add i32 %291, 4
  store i32 %add.i321.i, ptr %next_offset.i349, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end40.sink.split.i, %if.end12.i.if.end40.i_crit_edge
  %conv41.i = zext i8 %cond158 to i32
  %292 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rcl, align 4
  %vaddr.i.i338.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %293, i32 0, i32 3
  %294 = ptrtoint ptr %vaddr.i.i338.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %vaddr.i.i338.i, align 8
  %296 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i.i340.i = getelementptr i8, ptr %295, i32 %297
  %298 = ptrtoint ptr %add.ptr.i.i340.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 115, ptr %add.ptr.i.i340.i, align 1
  %299 = load i32, ptr %next_offset.i349, align 4
  %add.i.i341.i = add i32 %299, 1
  store i32 %add.i.i341.i, ptr %next_offset.i349, align 4
  %300 = load ptr, ptr %rcl, align 4
  %vaddr.i5.i342.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %300, i32 0, i32 3
  %301 = ptrtoint ptr %vaddr.i5.i342.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %vaddr.i5.i342.i, align 8
  %add.ptr.i7.i343.i = getelementptr i8, ptr %302, i32 %add.i.i341.i
  %303 = ptrtoint ptr %add.ptr.i7.i343.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %cond158, ptr %add.ptr.i7.i343.i, align 1
  %304 = load i32, ptr %next_offset.i349, align 4
  %add.i8.i344.i = add i32 %304, 1
  store i32 %add.i8.i344.i, ptr %next_offset.i349, align 4
  %305 = load ptr, ptr %rcl, align 4
  %vaddr.i10.i345.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %305, i32 0, i32 3
  %306 = ptrtoint ptr %vaddr.i10.i345.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %vaddr.i10.i345.i, align 8
  %add.ptr.i12.i346.i = getelementptr i8, ptr %307, i32 %add.i8.i344.i
  %308 = ptrtoint ptr %add.ptr.i12.i346.i to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %cond140, ptr %add.ptr.i12.i346.i, align 1
  %309 = load i32, ptr %next_offset.i349, align 4
  %add.i13.i347.i = add i32 %309, 1
  store i32 %add.i13.i347.i, ptr %next_offset.i349, align 4
  %brmerge.i = select i1 %155, i1 true, i1 %cmp.not.i
  br i1 %brmerge.i, label %if.end40.i.if.end48.i_crit_edge, label %if.then47.i

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #5
  %310 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %rcl, align 4
  %vaddr.i349.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %311, i32 0, i32 3
  %312 = ptrtoint ptr %vaddr.i349.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %vaddr.i349.i, align 8
  %add.ptr.i351.i = getelementptr i8, ptr %313, i32 %add.i13.i347.i
  %314 = ptrtoint ptr %add.ptr.i351.i to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 8, ptr %add.ptr.i351.i, align 1
  %315 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %next_offset.i349, align 4
  %add.i352.i = add i32 %316, 1
  store i32 %add.i352.i, ptr %next_offset.i349, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end40.i.if.end48.i_crit_edge
  br i1 %cmp.not.i, label %if.end48.i.if.end57.i_crit_edge, label %if.then50.i

if.end48.i.if.end57.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  %317 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %rcl, align 4
  %vaddr.i354.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %318, i32 0, i32 3
  %319 = ptrtoint ptr %vaddr.i354.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %vaddr.i354.i, align 8
  %321 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i356.i = getelementptr i8, ptr %320, i32 %322
  %323 = ptrtoint ptr %add.ptr.i356.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 17, ptr %add.ptr.i356.i, align 1
  %324 = load i32, ptr %next_offset.i349, align 4
  %add.i357.i = add i32 %324, 1
  store i32 %add.i357.i, ptr %next_offset.i349, align 4
  %325 = ptrtoint ptr %tile_alloc_offset.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %tile_alloc_offset.i, align 4
  %327 = ptrtoint ptr %bin_tiles_x.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %bin_tiles_x.i, align 8
  %conv52.i = zext i8 %328 to i32
  %mul.i = mul nuw nsw i32 %conv52.i, %conv2.i.i
  %add54.i = add nuw nsw i32 %mul.i, %conv41.i
  %mul55.i = shl nuw nsw i32 %add54.i, 5
  %add56.i = add i32 %mul55.i, %326
  %329 = load ptr, ptr %rcl, align 4
  %vaddr.i359.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %329, i32 0, i32 3
  %330 = ptrtoint ptr %vaddr.i359.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %vaddr.i359.i, align 8
  %add.ptr.i361.i = getelementptr i8, ptr %331, i32 %add.i357.i
  %332 = ptrtoint ptr %add.ptr.i361.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %add56.i, ptr %add.ptr.i361.i, align 4
  %333 = load i32, ptr %next_offset.i349, align 4
  %add.i362.i = add i32 %333, 4
  store i32 %add.i362.i, ptr %next_offset.i349, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end57.i_crit_edge
  %334 = ptrtoint ptr %msaa_color_write to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %msaa_color_write, align 4
  %tobool58.not.i = icmp eq ptr %335, null
  br i1 %tobool58.not.i, label %if.end57.i.if.end79.i_crit_edge, label %if.then59.i

if.end57.i.if.end79.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79.i

if.then59.i:                                      ; preds = %if.end57.i
  %336 = ptrtoint ptr %msaa_zs_write to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %msaa_zs_write, align 4
  %tobool60.not.i = icmp eq ptr %337, null
  br i1 %tobool60.not.i, label %land.lhs.true61.i, label %if.then59.i.if.end74.i_crit_edge

if.then59.i.if.end74.i_crit_edge:                 ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74.i

land.lhs.true61.i:                                ; preds = %if.then59.i
  %338 = ptrtoint ptr %zs_write to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %zs_write, align 4
  %tobool62.not.i = icmp eq ptr %339, null
  br i1 %tobool62.not.i, label %land.rhs.i, label %land.lhs.true61.i.if.end74.i_crit_edge

land.lhs.true61.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end74.i

land.rhs.i:                                       ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #5
  %340 = ptrtoint ptr %color_write to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %color_write, align 4
  %tobool63.not.i = icmp eq ptr %341, null
  %spec.select.i = select i1 %156, i32 10, i32 2
  %spec.select271.i = select i1 %tobool63.not.i, i32 %spec.select.i, i32 6
  br label %if.end74.i

if.end74.i:                                       ; preds = %land.rhs.i, %land.lhs.true61.i.if.end74.i_crit_edge, %if.then59.i.if.end74.i_crit_edge
  %bits65.0.i = phi i32 [ 6, %land.lhs.true61.i.if.end74.i_crit_edge ], [ 6, %if.then59.i.if.end74.i_crit_edge ], [ %spec.select271.i, %land.rhs.i ]
  %342 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %rcl, align 4
  %vaddr.i364.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %343, i32 0, i32 3
  %344 = ptrtoint ptr %vaddr.i364.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %vaddr.i364.i, align 8
  %346 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i366.i = getelementptr i8, ptr %345, i32 %347
  %348 = ptrtoint ptr %add.ptr.i366.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 26, ptr %add.ptr.i366.i, align 1
  %349 = load i32, ptr %next_offset.i349, align 4
  %add.i367.i = add i32 %349, 1
  store i32 %add.i367.i, ptr %next_offset.i349, align 4
  %350 = ptrtoint ptr %msaa_color_write to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %msaa_color_write, align 4
  %paddr.i368.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %351, i32 0, i32 1
  %352 = ptrtoint ptr %paddr.i368.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %paddr.i368.i, align 8
  %offset.i369.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 19, i32 1
  %354 = ptrtoint ptr %offset.i369.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %offset.i369.i, align 4
  %add.i370.i = add i32 %355, %353
  %356 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %args1, align 4
  %width.i372.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %357, i32 0, i32 9
  %358 = ptrtoint ptr %width.i372.i to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %width.i372.i, align 4
  %conv.i373.i = zext i16 %359 to i32
  %sub.i374.i = add nuw nsw i32 %conv.i373.i, 31
  %div7.i375.i = lshr i32 %sub.i374.i, 5
  %mul.i377.i = mul nuw nsw i32 %div7.i375.i, %conv2.i.i
  %add4.i379.i = add nuw nsw i32 %mul.i377.i, %conv41.i
  %mul5.i380.i = shl i32 %add4.i379.i, 14
  %add6.i381.i = add i32 %add.i370.i, %mul5.i380.i
  %or78.i = or i32 %add6.i381.i, %bits65.0.i
  %360 = load ptr, ptr %rcl, align 4
  %vaddr.i383.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %360, i32 0, i32 3
  %361 = ptrtoint ptr %vaddr.i383.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %vaddr.i383.i, align 8
  %add.ptr.i385.i = getelementptr i8, ptr %362, i32 %add.i367.i
  %363 = ptrtoint ptr %add.ptr.i385.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %or78.i, ptr %add.ptr.i385.i, align 4
  %364 = load i32, ptr %next_offset.i349, align 4
  %add.i386.i = add i32 %364, 4
  store i32 %add.i386.i, ptr %next_offset.i349, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end74.i, %if.end57.i.if.end79.i_crit_edge
  %365 = ptrtoint ptr %msaa_zs_write to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %msaa_zs_write, align 4
  %tobool81.not.i = icmp eq ptr %366, null
  br i1 %tobool81.not.i, label %if.end79.i.if.end112.i_crit_edge, label %if.then82.i

if.end79.i.if.end112.i_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end112.i

if.then82.i:                                      ; preds = %if.end79.i
  %367 = ptrtoint ptr %zs_write to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %zs_write, align 4
  %tobool85.not.i = icmp eq ptr %368, null
  br i1 %tobool85.not.i, label %land.rhs86.i, label %if.then82.i.land.end90.i_crit_edge

if.then82.i.land.end90.i_crit_edge:               ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end90.i

land.rhs86.i:                                     ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #5
  %369 = ptrtoint ptr %color_write to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %color_write, align 4
  %tobool88.not.i = icmp eq ptr %370, null
  br label %land.end90.i

land.end90.i:                                     ; preds = %land.rhs86.i, %if.then82.i.land.end90.i_crit_edge
  %371 = phi i1 [ false, %if.then82.i.land.end90.i_crit_edge ], [ %tobool88.not.i, %land.rhs86.i ]
  %372 = ptrtoint ptr %msaa_color_write to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %msaa_color_write, align 4
  %tobool94.not.i = icmp eq ptr %373, null
  br i1 %tobool94.not.i, label %land.end90.i.if.end98.i_crit_edge, label %if.then95.i

land.end90.i.if.end98.i_crit_edge:                ; preds = %land.end90.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end98.i

if.then95.i:                                      ; preds = %land.end90.i
  call void @__sanitizer_cov_trace_pc() #5
  %374 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %rcl, align 4
  %vaddr.i.i388.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %375, i32 0, i32 3
  %376 = ptrtoint ptr %vaddr.i.i388.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %vaddr.i.i388.i, align 8
  %378 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i.i390.i = getelementptr i8, ptr %377, i32 %379
  %380 = ptrtoint ptr %add.ptr.i.i390.i to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 115, ptr %add.ptr.i.i390.i, align 1
  %381 = load i32, ptr %next_offset.i349, align 4
  %add.i.i391.i = add i32 %381, 1
  store i32 %add.i.i391.i, ptr %next_offset.i349, align 4
  %382 = load ptr, ptr %rcl, align 4
  %vaddr.i5.i392.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %382, i32 0, i32 3
  %383 = ptrtoint ptr %vaddr.i5.i392.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %vaddr.i5.i392.i, align 8
  %add.ptr.i7.i393.i = getelementptr i8, ptr %384, i32 %add.i.i391.i
  %385 = ptrtoint ptr %add.ptr.i7.i393.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %cond158, ptr %add.ptr.i7.i393.i, align 1
  %386 = load i32, ptr %next_offset.i349, align 4
  %add.i8.i394.i = add i32 %386, 1
  store i32 %add.i8.i394.i, ptr %next_offset.i349, align 4
  %387 = load ptr, ptr %rcl, align 4
  %vaddr.i10.i395.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %387, i32 0, i32 3
  %388 = ptrtoint ptr %vaddr.i10.i395.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %vaddr.i10.i395.i, align 8
  %add.ptr.i12.i396.i = getelementptr i8, ptr %389, i32 %add.i8.i394.i
  %390 = ptrtoint ptr %add.ptr.i12.i396.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 %cond140, ptr %add.ptr.i12.i396.i, align 1
  %391 = load i32, ptr %next_offset.i349, align 4
  %add.i13.i397.i = add i32 %391, 1
  store i32 %add.i13.i397.i, ptr %next_offset.i349, align 4
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then95.i, %land.end90.i.if.end98.i_crit_edge
  %spec.select269.i = select i1 %156, i32 9, i32 1
  %bits92.0.i = select i1 %371, i32 %spec.select269.i, i32 5
  %392 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rcl, align 4
  %vaddr.i399.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %393, i32 0, i32 3
  %394 = ptrtoint ptr %vaddr.i399.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %vaddr.i399.i, align 8
  %396 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i401.i = getelementptr i8, ptr %395, i32 %397
  %398 = ptrtoint ptr %add.ptr.i401.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 26, ptr %add.ptr.i401.i, align 1
  %399 = load i32, ptr %next_offset.i349, align 4
  %add.i402.i = add i32 %399, 1
  store i32 %add.i402.i, ptr %next_offset.i349, align 4
  %400 = ptrtoint ptr %msaa_zs_write to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %msaa_zs_write, align 4
  %paddr.i403.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %401, i32 0, i32 1
  %402 = ptrtoint ptr %paddr.i403.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %paddr.i403.i, align 8
  %offset.i404.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 20, i32 1
  %404 = ptrtoint ptr %offset.i404.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %offset.i404.i, align 4
  %add.i405.i = add i32 %405, %403
  %406 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %args1, align 4
  %width.i407.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %407, i32 0, i32 9
  %408 = ptrtoint ptr %width.i407.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %width.i407.i, align 4
  %conv.i408.i = zext i16 %409 to i32
  %sub.i409.i = add nuw nsw i32 %conv.i408.i, 31
  %div7.i410.i = lshr i32 %sub.i409.i, 5
  %mul.i412.i = mul nuw nsw i32 %div7.i410.i, %conv2.i.i
  %add4.i414.i = add nuw nsw i32 %mul.i412.i, %conv41.i
  %mul5.i415.i = shl i32 %add4.i414.i, 14
  %add6.i416.i = add i32 %add.i405.i, %mul5.i415.i
  %or111.i = or i32 %add6.i416.i, %bits92.0.i
  %410 = load ptr, ptr %rcl, align 4
  %vaddr.i418.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %410, i32 0, i32 3
  %411 = ptrtoint ptr %vaddr.i418.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %vaddr.i418.i, align 8
  %add.ptr.i420.i = getelementptr i8, ptr %412, i32 %add.i402.i
  %413 = ptrtoint ptr %add.ptr.i420.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %or111.i, ptr %add.ptr.i420.i, align 4
  %414 = load i32, ptr %next_offset.i349, align 4
  %add.i421.i = add i32 %414, 4
  store i32 %add.i421.i, ptr %next_offset.i349, align 4
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.end98.i, %if.end79.i.if.end112.i_crit_edge
  %415 = ptrtoint ptr %zs_write to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %zs_write, align 4
  %tobool114.not.i = icmp eq ptr %416, null
  br i1 %tobool114.not.i, label %if.end112.i.if.end149.i_crit_edge, label %if.then115.i

if.end112.i.if.end149.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end149.i

if.then115.i:                                     ; preds = %if.end112.i
  %417 = ptrtoint ptr %color_write to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %color_write, align 4
  %tobool118.not.i = icmp eq ptr %418, null
  %419 = ptrtoint ptr %msaa_color_write to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %msaa_color_write, align 4
  %tobool122.not.i = icmp eq ptr %420, null
  br i1 %tobool122.not.i, label %lor.lhs.false.i, label %if.then115.i.if.then125.i_crit_edge

if.then115.i.if.then125.i_crit_edge:              ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then125.i

lor.lhs.false.i:                                  ; preds = %if.then115.i
  %421 = ptrtoint ptr %msaa_zs_write to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %msaa_zs_write, align 4
  %tobool124.not.i = icmp eq ptr %422, null
  br i1 %tobool124.not.i, label %lor.lhs.false.i.if.end128.i_crit_edge, label %lor.lhs.false.i.if.then125.i_crit_edge

lor.lhs.false.i.if.then125.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then125.i

lor.lhs.false.i.if.end128.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end128.i

if.then125.i:                                     ; preds = %lor.lhs.false.i.if.then125.i_crit_edge, %if.then115.i.if.then125.i_crit_edge
  %423 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %rcl, align 4
  %vaddr.i.i423.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %424, i32 0, i32 3
  %425 = ptrtoint ptr %vaddr.i.i423.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %vaddr.i.i423.i, align 8
  %427 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i.i425.i = getelementptr i8, ptr %426, i32 %428
  %429 = ptrtoint ptr %add.ptr.i.i425.i to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 115, ptr %add.ptr.i.i425.i, align 1
  %430 = load i32, ptr %next_offset.i349, align 4
  %add.i.i426.i = add i32 %430, 1
  store i32 %add.i.i426.i, ptr %next_offset.i349, align 4
  %431 = load ptr, ptr %rcl, align 4
  %vaddr.i5.i427.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %431, i32 0, i32 3
  %432 = ptrtoint ptr %vaddr.i5.i427.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %vaddr.i5.i427.i, align 8
  %add.ptr.i7.i428.i = getelementptr i8, ptr %433, i32 %add.i.i426.i
  %434 = ptrtoint ptr %add.ptr.i7.i428.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %cond158, ptr %add.ptr.i7.i428.i, align 1
  %435 = load i32, ptr %next_offset.i349, align 4
  %add.i8.i429.i = add i32 %435, 1
  store i32 %add.i8.i429.i, ptr %next_offset.i349, align 4
  %436 = load ptr, ptr %rcl, align 4
  %vaddr.i10.i430.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %436, i32 0, i32 3
  %437 = ptrtoint ptr %vaddr.i10.i430.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %vaddr.i10.i430.i, align 8
  %add.ptr.i12.i431.i = getelementptr i8, ptr %438, i32 %add.i8.i429.i
  %439 = ptrtoint ptr %add.ptr.i12.i431.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %cond140, ptr %add.ptr.i12.i431.i, align 1
  %440 = load i32, ptr %next_offset.i349, align 4
  %add.i13.i432.i = add i32 %440, 1
  store i32 %add.i13.i432.i, ptr %next_offset.i349, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then125.i, %lor.lhs.false.i.if.end128.i_crit_edge
  %441 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %rcl, align 4
  %vaddr.i434.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %442, i32 0, i32 3
  %443 = ptrtoint ptr %vaddr.i434.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %vaddr.i434.i, align 8
  %445 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i436.i = getelementptr i8, ptr %444, i32 %446
  %447 = ptrtoint ptr %add.ptr.i436.i to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 28, ptr %add.ptr.i436.i, align 1
  %448 = load i32, ptr %next_offset.i349, align 4
  %add.i437.i = add i32 %448, 1
  store i32 %add.i437.i, ptr %next_offset.i349, align 4
  %bits130.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 18, i32 2
  %449 = ptrtoint ptr %bits130.i to i32
  call void @__asan_load2_noabort(i32 %449)
  %450 = load i16, ptr %bits130.i, align 8
  %cond.i = select i1 %tobool118.not.i, i16 0, i16 8192
  %or134.i = or i16 %450, %cond.i
  %451 = load ptr, ptr %rcl, align 4
  %vaddr.i439.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %451, i32 0, i32 3
  %452 = ptrtoint ptr %vaddr.i439.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %vaddr.i439.i, align 8
  %add.ptr.i441.i = getelementptr i8, ptr %453, i32 %add.i437.i
  %454 = ptrtoint ptr %add.ptr.i441.i to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 %or134.i, ptr %add.ptr.i441.i, align 2
  %455 = load i32, ptr %next_offset.i349, align 4
  %add.i442.i = add i32 %455, 2
  store i32 %add.i442.i, ptr %next_offset.i349, align 4
  %456 = ptrtoint ptr %zs_write to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %zs_write, align 4
  %paddr137.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %paddr137.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %paddr137.i, align 8
  %offset139.i = getelementptr inbounds %struct.drm_vc4_submit_cl, ptr %158, i32 0, i32 18, i32 1
  %460 = ptrtoint ptr %offset139.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %offset139.i, align 4
  %add140.i = add i32 %461, %459
  %462 = select i1 %156, i1 %tobool118.not.i, i1 false
  %spec.select270.i = select i1 %462, i32 8, i32 0
  %or148.i = or i32 %add140.i, %spec.select270.i
  %463 = load ptr, ptr %rcl, align 4
  %vaddr.i444.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %463, i32 0, i32 3
  %464 = ptrtoint ptr %vaddr.i444.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %vaddr.i444.i, align 8
  %add.ptr.i446.i = getelementptr i8, ptr %465, i32 %add.i442.i
  %466 = ptrtoint ptr %add.ptr.i446.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %or148.i, ptr %add.ptr.i446.i, align 4
  %467 = load i32, ptr %next_offset.i349, align 4
  %add.i447.i = add i32 %467, 4
  store i32 %add.i447.i, ptr %next_offset.i349, align 4
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.end128.i, %if.end112.i.if.end149.i_crit_edge
  %468 = ptrtoint ptr %color_write to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %color_write, align 4
  %tobool151.not.i = icmp eq ptr %469, null
  br i1 %tobool151.not.i, label %if.end149.i.emit_tile.exit_crit_edge, label %if.then152.i

if.end149.i.emit_tile.exit_crit_edge:             ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %emit_tile.exit

if.then152.i:                                     ; preds = %if.end149.i
  %470 = ptrtoint ptr %msaa_color_write to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %msaa_color_write, align 4
  %tobool154.not.i = icmp eq ptr %471, null
  br i1 %tobool154.not.i, label %lor.lhs.false155.i, label %if.then152.i.if.then161.i_crit_edge

if.then152.i.if.then161.i_crit_edge:              ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then161.i

lor.lhs.false155.i:                               ; preds = %if.then152.i
  %472 = ptrtoint ptr %msaa_zs_write to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %msaa_zs_write, align 4
  %tobool157.not.i = icmp eq ptr %473, null
  br i1 %tobool157.not.i, label %lor.lhs.false158.i, label %lor.lhs.false155.i.if.then161.i_crit_edge

lor.lhs.false155.i.if.then161.i_crit_edge:        ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then161.i

lor.lhs.false158.i:                               ; preds = %lor.lhs.false155.i
  %474 = ptrtoint ptr %zs_write to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %zs_write, align 4
  %tobool160.not.i = icmp eq ptr %475, null
  br i1 %tobool160.not.i, label %lor.lhs.false158.i.if.end164.i_crit_edge, label %lor.lhs.false158.i.if.then161.i_crit_edge

lor.lhs.false158.i.if.then161.i_crit_edge:        ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then161.i

lor.lhs.false158.i.if.end164.i_crit_edge:         ; preds = %lor.lhs.false158.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end164.i

if.then161.i:                                     ; preds = %lor.lhs.false158.i.if.then161.i_crit_edge, %lor.lhs.false155.i.if.then161.i_crit_edge, %if.then152.i.if.then161.i_crit_edge
  %476 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %rcl, align 4
  %vaddr.i.i449.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %477, i32 0, i32 3
  %478 = ptrtoint ptr %vaddr.i.i449.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %vaddr.i.i449.i, align 8
  %480 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i.i451.i = getelementptr i8, ptr %479, i32 %481
  %482 = ptrtoint ptr %add.ptr.i.i451.i to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 115, ptr %add.ptr.i.i451.i, align 1
  %483 = load i32, ptr %next_offset.i349, align 4
  %add.i.i452.i = add i32 %483, 1
  store i32 %add.i.i452.i, ptr %next_offset.i349, align 4
  %484 = load ptr, ptr %rcl, align 4
  %vaddr.i5.i453.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %484, i32 0, i32 3
  %485 = ptrtoint ptr %vaddr.i5.i453.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %vaddr.i5.i453.i, align 8
  %add.ptr.i7.i454.i = getelementptr i8, ptr %486, i32 %add.i.i452.i
  %487 = ptrtoint ptr %add.ptr.i7.i454.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %cond158, ptr %add.ptr.i7.i454.i, align 1
  %488 = load i32, ptr %next_offset.i349, align 4
  %add.i8.i455.i = add i32 %488, 1
  store i32 %add.i8.i455.i, ptr %next_offset.i349, align 4
  %489 = load ptr, ptr %rcl, align 4
  %vaddr.i10.i456.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %489, i32 0, i32 3
  %490 = ptrtoint ptr %vaddr.i10.i456.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %vaddr.i10.i456.i, align 8
  %add.ptr.i12.i457.i = getelementptr i8, ptr %491, i32 %add.i8.i455.i
  %492 = ptrtoint ptr %add.ptr.i12.i457.i to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 %cond140, ptr %add.ptr.i12.i457.i, align 1
  %493 = load i32, ptr %next_offset.i349, align 4
  %add.i13.i458.i = add i32 %493, 1
  store i32 %add.i13.i458.i, ptr %next_offset.i349, align 4
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.then161.i, %lor.lhs.false158.i.if.end164.i_crit_edge
  %494 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %rcl, align 4
  %vaddr.i460.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %495, i32 0, i32 3
  %496 = ptrtoint ptr %vaddr.i460.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %vaddr.i460.i, align 8
  %498 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %next_offset.i349, align 4
  %add.ptr.i462.i = getelementptr i8, ptr %497, i32 %499
  %..i = select i1 %156, i8 25, i8 24
  %500 = ptrtoint ptr %add.ptr.i462.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 %..i, ptr %add.ptr.i462.i, align 1
  %501 = load i32, ptr %next_offset.i349, align 4
  %add.i463.i = add i32 %501, 1
  store i32 %add.i463.i, ptr %next_offset.i349, align 4
  br label %emit_tile.exit

emit_tile.exit:                                   ; preds = %if.end164.i, %if.end149.i.emit_tile.exit_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv98
  br i1 %exitcond.not, label %emit_tile.exit.for.end_crit_edge, label %emit_tile.exit.for.body146_crit_edge

emit_tile.exit.for.body146_crit_edge:             ; preds = %emit_tile.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body146

emit_tile.exit.for.end_crit_edge:                 ; preds = %emit_tile.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %emit_tile.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %indvars.iv.next382 = add nuw nsw i32 %indvars.iv381, 1
  %exitcond384.not = icmp eq i32 %indvars.iv.next382, %conv99
  br i1 %exitcond384.not, label %for.end.do.body_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %cond.end.do.body_crit_edge
  %502 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %next_offset.i349, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %503, i32 %add102)
  %cmp186.not = icmp eq i32 %503, %add102
  br i1 %cmp186.not, label %do.end197, label %do.body191, !prof !47

do.body191:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/vc4/vc4_render_cl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #3, !srcloc !48
  unreachable

do.end197:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %504 = ptrtoint ptr %rcl to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %rcl, align 4
  %paddr199 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %paddr199 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %paddr199, align 8
  %ct1ca = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 27
  %508 = ptrtoint ptr %ct1ca to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %507, ptr %ct1ca, align 4
  %509 = load ptr, ptr %rcl, align 4
  %paddr201 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %509, i32 0, i32 1
  %510 = ptrtoint ptr %paddr201 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load i32, ptr %paddr201, align 8
  %512 = ptrtoint ptr %next_offset.i349 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %next_offset.i349, align 4
  %add203 = add i32 %513, %511
  %ct1ea = getelementptr inbounds %struct.vc4_exec_info, ptr %exec, i32 0, i32 28
  %514 = ptrtoint ptr %ct1ea to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %add203, ptr %ct1ea, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end197, %if.then105
  %retval.0 = phi i32 [ %36, %if.then105 ], [ 0, %do.end197 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_use_bo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vc4_check_tex_size(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vc4_bo_create(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 603, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 612, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 655, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 546, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 554, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 569, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 582, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 450, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 466, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 471, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 486, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 498, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 516, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 521, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 391, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 398, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 414, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 428, i32 3}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/vc4/vc4_render_cl.c", i32 84, i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2156909210, i64 2156909710, i64 2156909247, i64 2156909303, i64 2156909337, i64 2156909361, i64 2156909402, i64 2156909423, i64 2156909451, i64 2156909485}
