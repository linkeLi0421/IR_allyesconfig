; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rga/rga-hw.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rga/rga-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rga_corners_addr_offset = type { %struct.rga_addr_offset, %struct.rga_addr_offset, %struct.rga_addr_offset, %struct.rga_addr_offset }
%struct.rga_addr_offset = type { i32, i32, i32 }
%struct.rockchip_rga = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rockchip_rga_version, %struct.mutex, %struct.spinlock, ptr, i32, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rockchip_rga_version = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rga_ctx = type { %struct.v4l2_fh, ptr, %struct.rga_frame, %struct.rga_frame, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rga_frame = type { i32, i32, i32, %struct.v4l2_rect, ptr, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.rga_fmt = type { i32, i32, i8, i8, i8, i8, i8 }

@rga_lookup_draw_pos.rot_mir_point_matrix = internal constant { [4 x [4 x i32]], [32 x i8] } { [4 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 1, i32 3], [4 x i32] [i32 2, i32 0, i32 3, i32 1], [4 x i32] [i32 3, i32 1, i32 2, i32 0], [4 x i32] [i32 1, i32 3, i32 0, i32 2]], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 90, i64 180, i64 270]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"rot_mir_point_matrix\00", align 1
@___asan_gen_.4 = private constant [48 x i8] c"../drivers/media/platform/rockchip/rga/rga-hw.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 90, i32 30 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @rga_lookup_draw_pos.rot_mir_point_matrix], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rga_lookup_draw_pos.rot_mir_point_matrix to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rga_hw_start(ptr nocapture noundef readonly %rga) local_unnamed_addr #0 align 64 {
entry:
  %offsets.i.i = alloca %struct.rga_corners_addr_offset, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr inbounds %struct.rockchip_rga, ptr %rga, i32 0, i32 12
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 4
  %rga1.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rga1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rga1.i, align 4
  %cmdbuf_virt.i = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %cmdbuf_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdbuf_virt.i, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 128)
  %src_mmu_pages.i = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %src_mmu_pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %src_mmu_pages.i, align 4
  %9 = load ptr, ptr %rga1.i, align 4
  %cmdbuf_virt.i.i = getelementptr inbounds %struct.rockchip_rga, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %cmdbuf_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmdbuf_virt.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %12) #4
  %shr.i.i = lshr i32 %call.i.i.i, 4
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 28
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %11, i32 27
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  %or.i.i = or i32 %15, 7
  store i32 %or.i.i, ptr %arrayidx4.i.i, align 4
  %dst_mmu_pages.i = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 16
  %16 = ptrtoint ptr %dst_mmu_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dst_mmu_pages.i, align 4
  %18 = ptrtoint ptr %rga1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rga1.i, align 4
  %cmdbuf_virt.i17.i = getelementptr inbounds %struct.rockchip_rga, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %cmdbuf_virt.i17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmdbuf_virt.i17.i, align 4
  %22 = ptrtoint ptr %17 to i32
  %call.i.i18.i = tail call i32 @__virt_to_phys(i32 noundef %22) #4
  %shr.i19.i = lshr i32 %call.i.i18.i, 4
  %arrayidx.i20.i = getelementptr i32, ptr %21, i32 29
  %23 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i19.i, ptr %arrayidx.i20.i, align 4
  %arrayidx4.i21.i = getelementptr i32, ptr %21, i32 27
  %24 = ptrtoint ptr %arrayidx4.i21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i21.i, align 4
  %or.i22.i = or i32 %25, 112
  store i32 %or.i22.i, ptr %arrayidx4.i21.i, align 4
  %26 = ptrtoint ptr %dst_mmu_pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dst_mmu_pages.i, align 4
  %28 = ptrtoint ptr %rga1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rga1.i, align 4
  %cmdbuf_virt.i24.i = getelementptr inbounds %struct.rockchip_rga, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %cmdbuf_virt.i24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmdbuf_virt.i24.i, align 4
  %32 = ptrtoint ptr %27 to i32
  %call.i.i25.i = tail call i32 @__virt_to_phys(i32 noundef %32) #4
  %shr.i26.i = lshr i32 %call.i.i25.i, 4
  %arrayidx.i27.i = getelementptr i32, ptr %31, i32 30
  %33 = ptrtoint ptr %arrayidx.i27.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr.i26.i, ptr %arrayidx.i27.i, align 4
  %arrayidx4.i28.i = getelementptr i32, ptr %31, i32 27
  %34 = ptrtoint ptr %arrayidx4.i28.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4.i28.i, align 4
  %or.i29.i = or i32 %35, 1792
  store i32 %or.i29.i, ptr %arrayidx4.i28.i, align 4
  %36 = ptrtoint ptr %rga1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rga1.i, align 4
  %cmdbuf_virt.i31.i = getelementptr inbounds %struct.rockchip_rga, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %cmdbuf_virt.i31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmdbuf_virt.i31.i, align 4
  %arrayidx.i32.i = getelementptr i32, ptr %39, i32 20
  %40 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx.i32.i, align 4
  %arrayidx8.i.i = getelementptr i32, ptr %39, i32 21
  %41 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx8.i.i, align 4
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 33554432, ptr %39, align 4
  %43 = load ptr, ptr %rga1.i, align 4
  %cmdbuf_virt.i34.i = getelementptr inbounds %struct.rockchip_rga, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %cmdbuf_virt.i34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmdbuf_virt.i34.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %offsets.i.i) #4
  %crop.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 3
  %height.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 3, i32 3
  %46 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height.i.i, align 4
  %width.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 3, i32 2
  %48 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %width.i.i, align 4
  %50 = ptrtoint ptr %crop.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crop.i.i, align 4
  %top.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 3, i32 1
  %52 = ptrtoint ptr %top.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %top.i.i, align 4
  %crop8.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 3
  %height9.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 3, i32 3
  %54 = ptrtoint ptr %height9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height9.i.i, align 4
  %width12.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 3, i32 2
  %56 = ptrtoint ptr %width12.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width12.i.i, align 4
  %58 = ptrtoint ptr %crop8.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crop8.i.i, align 4
  %top18.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 3, i32 1
  %60 = ptrtoint ptr %top18.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %top18.i.i, align 4
  %arrayidx.i35.i = getelementptr i32, ptr %45, i32 1
  %62 = ptrtoint ptr %arrayidx.i35.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i35.i, align 4
  %arrayidx19.i.i = getelementptr i32, ptr %45, i32 14
  %64 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx19.i.i, align 4
  %arrayidx20.i.i = getelementptr i32, ptr %45, i32 8
  %66 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx20.i.i, align 4
  %arrayidx21.i.i = getelementptr i32, ptr %45, i32 9
  %68 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx21.i.i, align 4
  %arrayidx22.i.i = getelementptr i32, ptr %45, i32 6
  %70 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx22.i.i, align 4
  %arrayidx23.i.i = getelementptr i32, ptr %45, i32 7
  %72 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx23.i.i, align 4
  %arrayidx24.i.i = getelementptr i32, ptr %45, i32 18
  %74 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx24.i.i, align 4
  %arrayidx25.i.i = getelementptr i32, ptr %45, i32 19
  %76 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx25.i.i, align 4
  %fmt.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 4
  %78 = ptrtoint ptr %fmt.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fmt.i.i, align 4
  %hw_format.i.i = getelementptr inbounds %struct.rga_fmt, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %hw_format.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hw_format.i.i, align 4
  %conv.i.i = zext i8 %81 to i32
  %bf.shl.i.i = shl i32 %conv.i.i, 28
  %bf.clear.i.i = and i32 %63, 33554431
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear.i.i
  %color_swap.i.i = getelementptr inbounds %struct.rga_fmt, ptr %79, i32 0, i32 5
  %82 = ptrtoint ptr %color_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %color_swap.i.i, align 1
  %84 = and i8 %83, 7
  %bf.value31.i.i = zext i8 %84 to i32
  %bf.shl32.i.i = shl nuw nsw i32 %bf.value31.i.i, 25
  %bf.set34.i.i = or i32 %bf.shl32.i.i, %bf.set.i.i
  %fmt36.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 4
  %85 = ptrtoint ptr %fmt36.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fmt36.i.i, align 4
  %hw_format37.i.i = getelementptr inbounds %struct.rga_fmt, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %hw_format37.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %hw_format37.i.i, align 4
  %conv38.i.i = zext i8 %88 to i32
  %bf.shl41.i.i = shl i32 %conv38.i.i, 28
  %bf.clear42.i.i = and i32 %65, 33554431
  %bf.set43.i.i = or i32 %bf.shl41.i.i, %bf.clear42.i.i
  %color_swap46.i.i = getelementptr inbounds %struct.rga_fmt, ptr %86, i32 0, i32 5
  %89 = ptrtoint ptr %color_swap46.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %color_swap46.i.i, align 1
  %91 = and i8 %90, 7
  %bf.value49.i.i = zext i8 %91 to i32
  %bf.shl50.i.i = shl nuw nsw i32 %bf.value49.i.i, 25
  %bf.set52.i.i = or i32 %bf.shl50.i.i, %bf.set43.i.i
  %92 = and i8 %81, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %92)
  %93 = icmp eq i8 %92, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %88)
  %cmp69.i.i = icmp ult i8 %88, 8
  %or.cond444.i.i = select i1 %93, i1 %cmp69.i.i, i1 false
  br i1 %or.cond444.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  %colorspace.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 2
  %94 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %colorspace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cond323.i.i = icmp eq i32 %95, 3
  br i1 %cond323.i.i, label %sw.bb.i.i, label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set74.i.i = or i32 %bf.set34.i.i, 12582912
  br label %if.end110.i.i

sw.default.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear76.i.i = and i32 %bf.set34.i.i, -12582913
  %bf.set77.i.i = or i32 %bf.clear76.i.i, 4194304
  br label %if.end110.i.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %81)
  %cmp82.i.i = icmp ult i8 %81, 8
  %96 = and i8 %88, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %96)
  %97 = icmp eq i8 %96, 8
  %or.cond.i.i = select i1 %cmp82.i.i, i1 %97, i1 false
  br i1 %or.cond.i.i, label %if.then98.i.i, label %if.end.i.i.if.end110.i.i_crit_edge

if.end.i.i.if.end110.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end110.i.i

if.then98.i.i:                                    ; preds = %if.end.i.i
  %colorspace100.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 2
  %98 = ptrtoint ptr %colorspace100.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %colorspace100.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %99)
  %cond322.i.i = icmp eq i32 %99, 3
  br i1 %cond322.i.i, label %sw.bb101.i.i, label %sw.default105.i.i

sw.bb101.i.i:                                     ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set104.i.i = or i32 %bf.set52.i.i, 49152
  br label %if.end110.i.i

sw.default105.i.i:                                ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear107.i.i = and i32 %bf.set52.i.i, -49153
  %bf.set108.i.i = or i32 %bf.clear107.i.i, 16384
  br label %if.end110.i.i

if.end110.i.i:                                    ; preds = %sw.default105.i.i, %sw.bb101.i.i, %if.end.i.i.if.end110.i.i_crit_edge, %sw.default.i.i, %sw.bb.i.i
  %src_info.sroa.0.0509.i.i = phi i32 [ %bf.set34.i.i, %sw.bb101.i.i ], [ %bf.set34.i.i, %sw.default105.i.i ], [ %bf.set34.i.i, %if.end.i.i.if.end110.i.i_crit_edge ], [ %bf.set77.i.i, %sw.default.i.i ], [ %bf.set74.i.i, %sw.bb.i.i ]
  %dst_info.sroa.0.0.i.i = phi i32 [ %bf.set104.i.i, %sw.bb101.i.i ], [ %bf.set108.i.i, %sw.default105.i.i ], [ %bf.set52.i.i, %if.end.i.i.if.end110.i.i_crit_edge ], [ %bf.set52.i.i, %sw.default.i.i ], [ %bf.set52.i.i, %sw.bb.i.i ]
  %vflip.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 7
  %100 = ptrtoint ptr %vflip.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %vflip.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i.i = icmp eq i32 %101, 0
  %bf.set118.i.i = or i32 %src_info.sroa.0.0509.i.i, 262144
  %src_info.sroa.0.1.i.i = select i1 %tobool.not.i.i, i32 %src_info.sroa.0.0509.i.i, i32 %bf.set118.i.i
  %hflip.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 6
  %102 = ptrtoint ptr %hflip.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %hflip.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool120.not.i.i = icmp eq i32 %103, 0
  %bf.set130.i.i = or i32 %src_info.sroa.0.1.i.i, 524288
  %src_info.sroa.0.2.i.i = select i1 %tobool120.not.i.i, i32 %src_info.sroa.0.1.i.i, i32 %bf.set130.i.i
  %rotate.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 8
  %104 = ptrtoint ptr %rotate.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rotate.i.i, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values)
  switch i32 %105, label %sw.default144.i.i [
    i32 90, label %sw.bb132.i.i
    i32 180, label %sw.bb136.i.i
    i32 270, label %sw.bb140.i.i
  ]

sw.bb132.i.i:                                     ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear134.i.i = and i32 %src_info.sroa.0.2.i.i, -3145729
  %bf.set135.i.i = or i32 %bf.clear134.i.i, 1048576
  br label %sw.epilog148.i.i

sw.bb136.i.i:                                     ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear138.i.i = and i32 %src_info.sroa.0.2.i.i, -3145729
  %bf.set139.i.i = or i32 %bf.clear138.i.i, 2097152
  br label %sw.epilog148.i.i

sw.bb140.i.i:                                     ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set143.i.i = or i32 %src_info.sroa.0.2.i.i, 3145728
  br label %sw.epilog148.i.i

sw.default144.i.i:                                ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear146.i.i = and i32 %src_info.sroa.0.2.i.i, -3145729
  br label %sw.epilog148.i.i

sw.epilog148.i.i:                                 ; preds = %sw.default144.i.i, %sw.bb140.i.i, %sw.bb136.i.i, %sw.bb132.i.i
  %src_info.sroa.0.3.i.i = phi i32 [ %bf.clear146.i.i, %sw.default144.i.i ], [ %bf.set143.i.i, %sw.bb140.i.i ], [ %bf.set139.i.i, %sw.bb136.i.i ], [ %bf.set135.i.i, %sw.bb132.i.i ]
  %bf.lshr150.i.i = lshr i32 %src_info.sroa.0.3.i.i, 20
  %bf.clear151.i.i = and i32 %bf.lshr150.i.i, 3
  %107 = zext i32 %bf.clear151.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %bf.clear151.i.i, label %sw.epilog148.i.i.if.end181.i.i_crit_edge [
    i32 1, label %sw.epilog148.i.i.if.then159.i.i_crit_edge
    i32 3, label %sw.epilog148.i.i.if.then159.i.i_crit_edge9
  ]

sw.epilog148.i.i.if.then159.i.i_crit_edge9:       ; preds = %sw.epilog148.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then159.i.i

sw.epilog148.i.i.if.then159.i.i_crit_edge:        ; preds = %sw.epilog148.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then159.i.i

sw.epilog148.i.i.if.end181.i.i_crit_edge:         ; preds = %sw.epilog148.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.i.i

if.then159.i.i:                                   ; preds = %sw.epilog148.i.i.if.then159.i.i_crit_edge, %sw.epilog148.i.i.if.then159.i.i_crit_edge9
  %version.i.i = getelementptr inbounds %struct.rockchip_rga, ptr %43, i32 0, i32 9
  %108 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp160.i.i = icmp eq i32 %109, 0
  br i1 %cmp160.i.i, label %if.then159.i.i.if.then166.i.i_crit_edge, label %lor.lhs.false162.i.i

if.then159.i.i.if.then166.i.i_crit_edge:          ; preds = %if.then159.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then166.i.i

lor.lhs.false162.i.i:                             ; preds = %if.then159.i.i
  %minor.i.i = getelementptr inbounds %struct.rockchip_rga, ptr %43, i32 0, i32 9, i32 1
  %110 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %minor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp164.i.i = icmp eq i32 %111, 0
  br i1 %cmp164.i.i, label %lor.lhs.false162.i.i.if.then166.i.i_crit_edge, label %lor.lhs.false162.i.i.if.end181.i.i_crit_edge

lor.lhs.false162.i.i.if.end181.i.i_crit_edge:     ; preds = %lor.lhs.false162.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end181.i.i

lor.lhs.false162.i.i.if.then166.i.i_crit_edge:    ; preds = %lor.lhs.false162.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then166.i.i

if.then166.i.i:                                   ; preds = %lor.lhs.false162.i.i.if.then166.i.i_crit_edge, %if.then159.i.i.if.then166.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %47)
  %cmp167.i.i = icmp eq i32 %57, %47
  %sub.i.i = add i32 %47, -8
  %spec.select.i.i = select i1 %cmp167.i.i, i32 %sub.i.i, i32 %47
  %sub171.i.i = sub i32 %49, %55
  %112 = tail call i32 @llvm.abs.i32(i32 %sub171.i.i, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %112)
  %cmp175.i.i = icmp slt i32 %112, 16
  %sub178.i.i = add i32 %49, -16
  %spec.select446.i.i = select i1 %cmp175.i.i, i32 %sub178.i.i, i32 %49
  br label %if.end181.i.i

if.end181.i.i:                                    ; preds = %if.then166.i.i, %lor.lhs.false162.i.i.if.end181.i.i_crit_edge, %sw.epilog148.i.i.if.end181.i.i_crit_edge
  %scale_dst_w.0.i.i = phi i32 [ %55, %lor.lhs.false162.i.i.if.end181.i.i_crit_edge ], [ %57, %sw.epilog148.i.i.if.end181.i.i_crit_edge ], [ %55, %if.then166.i.i ]
  %scale_dst_h.0.i.i = phi i32 [ %57, %lor.lhs.false162.i.i.if.end181.i.i_crit_edge ], [ %55, %sw.epilog148.i.i.if.end181.i.i_crit_edge ], [ %57, %if.then166.i.i ]
  %src_h.2.i.i = phi i32 [ %47, %lor.lhs.false162.i.i.if.end181.i.i_crit_edge ], [ %47, %sw.epilog148.i.i.if.end181.i.i_crit_edge ], [ %spec.select.i.i, %if.then166.i.i ]
  %src_w.1.i.i = phi i32 [ %49, %lor.lhs.false162.i.i.if.end181.i.i_crit_edge ], [ %49, %sw.epilog148.i.i.if.end181.i.i_crit_edge ], [ %spec.select446.i.i, %if.then166.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w.1.i.i, i32 %scale_dst_w.0.i.i)
  %cmp182.i.i = icmp eq i32 %src_w.1.i.i, %scale_dst_w.0.i.i
  br i1 %cmp182.i.i, label %if.then184.i.i, label %if.else188.i.i

if.then184.i.i:                                   ; preds = %if.end181.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear186.i.i = and i32 %src_info.sroa.0.3.i.i, -196609
  br label %if.end212.i.i

if.else188.i.i:                                   ; preds = %if.end181.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %src_w.1.i.i, i32 %scale_dst_w.0.i.i)
  %cmp189.i.i = icmp ugt i32 %src_w.1.i.i, %scale_dst_w.0.i.i
  %bf.clear193.i.i = and i32 %src_info.sroa.0.3.i.i, -196609
  br i1 %cmp189.i.i, label %if.then191.i.i, label %if.else200.i.i

if.then191.i.i:                                   ; preds = %if.else188.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set194.i.i = or i32 %bf.clear193.i.i, 65536
  %shl1.i.i.i = shl i32 %scale_dst_w.0.i.i, 16
  %div2.i.i.i = udiv i32 %shl1.i.i.i, %src_w.1.i.i
  %add.i.i = shl i32 %div2.i.i.i, 16
  %bf.shl197.i.i = add i32 %add.i.i, 65536
  %bf.clear198.i.i = and i32 %67, 65535
  %bf.set199.i.i = or i32 %bf.shl197.i.i, %bf.clear198.i.i
  br label %if.end212.i.i

if.else200.i.i:                                   ; preds = %if.else188.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set203.i.i = or i32 %bf.clear193.i.i, 131072
  %sub204.i.i = add i32 %src_w.1.i.i, -1
  %sub205.i.i = add i32 %scale_dst_w.0.i.i, -1
  %113 = tail call i32 @llvm.umin.i32(i32 %sub204.i.i, i32 %sub205.i.i) #4
  %114 = tail call i32 @llvm.umax.i32(i32 %sub204.i.i, i32 %sub205.i.i) #4
  %shl1.i447.i.i = shl i32 %113, 16
  %div2.i448.i.i = udiv i32 %shl1.i447.i.i, %114
  %bf.value208.i.i = and i32 %div2.i448.i.i, 65535
  %bf.clear209.i.i = and i32 %67, -65536
  %bf.set210.i.i = or i32 %bf.value208.i.i, %bf.clear209.i.i
  br label %if.end212.i.i

if.end212.i.i:                                    ; preds = %if.else200.i.i, %if.then191.i.i, %if.then184.i.i
  %src_info.sroa.0.4.i.i = phi i32 [ %bf.clear186.i.i, %if.then184.i.i ], [ %bf.set194.i.i, %if.then191.i.i ], [ %bf.set203.i.i, %if.else200.i.i ]
  %x_factor.sroa.0.0.i.i = phi i32 [ 0, %if.then184.i.i ], [ %bf.set199.i.i, %if.then191.i.i ], [ %bf.set210.i.i, %if.else200.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %src_h.2.i.i, i32 %scale_dst_h.0.i.i)
  %cmp213.i.i = icmp eq i32 %src_h.2.i.i, %scale_dst_h.0.i.i
  br i1 %cmp213.i.i, label %if.then215.i.i, label %if.else219.i.i

if.then215.i.i:                                   ; preds = %if.end212.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear217.i.i = and i32 %src_info.sroa.0.4.i.i, -49153
  br label %if.end245.i.i

if.else219.i.i:                                   ; preds = %if.end212.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %src_h.2.i.i, i32 %scale_dst_h.0.i.i)
  %cmp220.i.i = icmp ugt i32 %src_h.2.i.i, %scale_dst_h.0.i.i
  %bf.clear224.i.i = and i32 %src_info.sroa.0.4.i.i, -49153
  br i1 %cmp220.i.i, label %if.then222.i.i, label %if.else233.i.i

if.then222.i.i:                                   ; preds = %if.else219.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set225.i.i = or i32 %bf.clear224.i.i, 16384
  %shl1.i449.i.i = shl i32 %scale_dst_h.0.i.i, 16
  %div2.i450.i.i = udiv i32 %shl1.i449.i.i, %src_h.2.i.i
  %add227.i.i = shl i32 %div2.i450.i.i, 16
  %bf.shl230.i.i = add i32 %add227.i.i, 65536
  %bf.clear231.i.i = and i32 %69, 65535
  %bf.set232.i.i = or i32 %bf.shl230.i.i, %bf.clear231.i.i
  br label %if.end245.i.i

if.else233.i.i:                                   ; preds = %if.else219.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set236.i.i = or i32 %bf.clear224.i.i, 32768
  %sub237.i.i = add i32 %src_h.2.i.i, -1
  %sub238.i.i = add i32 %scale_dst_h.0.i.i, -1
  %115 = tail call i32 @llvm.umin.i32(i32 %sub237.i.i, i32 %sub238.i.i) #4
  %116 = tail call i32 @llvm.umax.i32(i32 %sub237.i.i, i32 %sub238.i.i) #4
  %shl1.i451.i.i = shl i32 %115, 16
  %div2.i452.i.i = udiv i32 %shl1.i451.i.i, %116
  %bf.value241.i.i = and i32 %div2.i452.i.i, 65535
  %bf.clear242.i.i = and i32 %69, -65536
  %bf.set243.i.i = or i32 %bf.value241.i.i, %bf.clear242.i.i
  br label %if.end245.i.i

if.end245.i.i:                                    ; preds = %if.else233.i.i, %if.then222.i.i, %if.then215.i.i
  %src_info.sroa.0.5.i.i = phi i32 [ %bf.clear217.i.i, %if.then215.i.i ], [ %bf.set225.i.i, %if.then222.i.i ], [ %bf.set236.i.i, %if.else233.i.i ]
  %y_factor.sroa.0.0.i.i = phi i32 [ 0, %if.then215.i.i ], [ %bf.set232.i.i, %if.then222.i.i ], [ %bf.set243.i.i, %if.else233.i.i ]
  %in.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2
  %out.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3
  %stride.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 5
  %117 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %stride.i.i, align 4
  %stride273.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 5
  %119 = ptrtoint ptr %stride273.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %stride273.i.i, align 4
  %x_div1.i.i.i = getelementptr inbounds %struct.rga_fmt, ptr %79, i32 0, i32 4
  %121 = ptrtoint ptr %x_div1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %x_div1.i.i.i, align 2, !noalias !11
  %y_div3.i.i.i = getelementptr inbounds %struct.rga_fmt, ptr %79, i32 0, i32 3
  %123 = ptrtoint ptr %y_div3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %y_div3.i.i.i, align 1, !noalias !11
  %uv_factor6.i.i.i = getelementptr inbounds %struct.rga_fmt, ptr %79, i32 0, i32 2
  %125 = ptrtoint ptr %uv_factor6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %uv_factor6.i.i.i, align 4, !noalias !11
  %127 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %in.i.i, align 4, !noalias !11
  %height.i.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 2, i32 1
  %129 = ptrtoint ptr %height.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %height.i.i.i, align 4, !noalias !11
  %x_div1.i457.i.i = getelementptr inbounds %struct.rga_fmt, ptr %86, i32 0, i32 4
  %131 = ptrtoint ptr %x_div1.i457.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %x_div1.i457.i.i, align 2, !noalias !14
  %conv.i458.i.i = zext i8 %132 to i32
  %y_div3.i459.i.i = getelementptr inbounds %struct.rga_fmt, ptr %86, i32 0, i32 3
  %133 = ptrtoint ptr %y_div3.i459.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %y_div3.i459.i.i, align 1, !noalias !14
  %conv4.i460.i.i = zext i8 %134 to i32
  %uv_factor6.i461.i.i = getelementptr inbounds %struct.rga_fmt, ptr %86, i32 0, i32 2
  %135 = ptrtoint ptr %uv_factor6.i461.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %uv_factor6.i461.i.i, align 4, !noalias !14
  %conv7.i462.i.i = zext i8 %136 to i32
  %div.i464.i.i = udiv i32 %120, %conv.i458.i.i
  %137 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %out.i.i, align 4, !noalias !14
  %div9.i465.i.i = udiv i32 %120, %138
  %mul.i466.i.i = mul i32 %120, %61
  %mul11.i467.i.i = mul i32 %div9.i465.i.i, %59
  %add.i468.i.i = add i32 %mul11.i467.i.i, %mul.i466.i.i
  %height.i469.i.i = getelementptr inbounds %struct.rga_ctx, ptr %1, i32 0, i32 3, i32 1
  %139 = ptrtoint ptr %height.i469.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %height.i469.i.i, align 4, !noalias !14
  %mul13.i470.i.i = mul i32 %140, %138
  %div14.i471.i.i = udiv i32 %61, %conv4.i460.i.i
  %mul15.i472.i.i = mul i32 %div14.i471.i.i, %div.i464.i.i
  %add16.i473.i.i = add i32 %mul15.i472.i.i, %mul13.i470.i.i
  %div17.i474.i.i = udiv i32 %59, %conv.i458.i.i
  %add18.i475.i.i = add i32 %add16.i473.i.i, %div17.i474.i.i
  %div23.i477.i.i = udiv i32 %mul13.i470.i.i, %conv7.i462.i.i
  %add24.i478.i.i = add i32 %add18.i475.i.i, %div23.i477.i.i
  %sub.i480.i.i = add i32 %55, -1
  %mul27.i481.i.i = mul i32 %120, %sub.i480.i.i
  %add28.i482.i.i = add i32 %add.i468.i.i, %mul27.i481.i.i
  %div31.i483.i.i = udiv i32 %55, %conv4.i460.i.i
  %sub32.i484.i.i = add i32 %div31.i483.i.i, -1
  %mul33.i485.i.i = mul i32 %sub32.i484.i.i, %div.i464.i.i
  %add34.i486.i.i = add i32 %mul33.i485.i.i, %add18.i475.i.i
  %add40.i488.i.i = add i32 %mul33.i485.i.i, %add24.i478.i.i
  %sub43.i490.i.i = add i32 %57, -1
  %mul44.i491.i.i = mul i32 %div9.i465.i.i, %sub43.i490.i.i
  %add45.i492.i.i = add i32 %add.i468.i.i, %mul44.i491.i.i
  %div48.i493.i.i = udiv i32 %57, %conv.i458.i.i
  %add49.i494.i.i = add i32 %div48.i493.i.i, -1
  %sub50.i495.i.i = add i32 %add49.i494.i.i, %add18.i475.i.i
  %sub55.i497.i.i = add i32 %add49.i494.i.i, %add24.i478.i.i
  %add60.i499.i.i = add i32 %add28.i482.i.i, %mul44.i491.i.i
  %sub65.i500.i.i = add i32 %add34.i486.i.i, %add49.i494.i.i
  %sub70.i502.i.i = add i32 %add40.i488.i.i, %add49.i494.i.i
  %141 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add.i468.i.i, ptr %offsets.i.i, align 4
  %tmp294.sroa.4.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 4
  %142 = ptrtoint ptr %tmp294.sroa.4.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add18.i475.i.i, ptr %tmp294.sroa.4.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.5.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 8
  %143 = ptrtoint ptr %tmp294.sroa.5.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %add24.i478.i.i, ptr %tmp294.sroa.5.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.6.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 12
  %144 = ptrtoint ptr %tmp294.sroa.6.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add45.i492.i.i, ptr %tmp294.sroa.6.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.7.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 16
  %145 = ptrtoint ptr %tmp294.sroa.7.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub50.i495.i.i, ptr %tmp294.sroa.7.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.8.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 20
  %146 = ptrtoint ptr %tmp294.sroa.8.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %sub55.i497.i.i, ptr %tmp294.sroa.8.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.9.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 24
  %147 = ptrtoint ptr %tmp294.sroa.9.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add28.i482.i.i, ptr %tmp294.sroa.9.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.10.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 28
  %148 = ptrtoint ptr %tmp294.sroa.10.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add34.i486.i.i, ptr %tmp294.sroa.10.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.11.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 32
  %149 = ptrtoint ptr %tmp294.sroa.11.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add40.i488.i.i, ptr %tmp294.sroa.11.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.12.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 36
  %150 = ptrtoint ptr %tmp294.sroa.12.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add60.i499.i.i, ptr %tmp294.sroa.12.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.13.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 40
  %151 = ptrtoint ptr %tmp294.sroa.13.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %sub65.i500.i.i, ptr %tmp294.sroa.13.0.offsets.sroa_idx.i.i, align 4
  %tmp294.sroa.14.0.offsets.sroa_idx.i.i = getelementptr inbounds i8, ptr %offsets.i.i, i32 44
  %152 = ptrtoint ptr %tmp294.sroa.14.0.offsets.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %sub70.i502.i.i, ptr %tmp294.sroa.14.0.offsets.sroa_idx.i.i, align 4
  %bf.lshr297.i.i = lshr i32 %src_info.sroa.0.5.i.i, 20
  %bf.clear298.i.i = and i32 %bf.lshr297.i.i, 3
  %bf.lshr300.i.i = lshr i32 %src_info.sroa.0.5.i.i, 18
  %bf.clear301.i.i = and i32 %bf.lshr300.i.i, 3
  %arrayidx1.i.i.i = getelementptr [4 x [4 x i32]], ptr @rga_lookup_draw_pos.rot_mir_point_matrix, i32 0, i32 %bf.clear298.i.i, i32 %bf.clear301.i.i
  %153 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx1.i.i.i, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %154, label %sw.epilog.i.i.i [
    i32 0, label %if.end245.i.i.rga_cmd_set.exit_crit_edge
    i32 1, label %sw.bb2.i.i.i
    i32 2, label %sw.bb3.i.i.i
    i32 3, label %sw.bb4.i.i.i
  ]

if.end245.i.i.rga_cmd_set.exit_crit_edge:         ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rga_cmd_set.exit

sw.bb2.i.i.i:                                     ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rga_cmd_set.exit

sw.bb3.i.i.i:                                     ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rga_cmd_set.exit

sw.bb4.i.i.i:                                     ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rga_cmd_set.exit

sw.epilog.i.i.i:                                  ; preds = %if.end245.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rga_cmd_set.exit

rga_cmd_set.exit:                                 ; preds = %sw.epilog.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %if.end245.i.i.rga_cmd_set.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %sw.epilog.i.i.i ], [ %tmp294.sroa.12.0.offsets.sroa_idx.i.i, %sw.bb4.i.i.i ], [ %tmp294.sroa.6.0.offsets.sroa_idx.i.i, %sw.bb3.i.i.i ], [ %tmp294.sroa.9.0.offsets.sroa_idx.i.i, %sw.bb2.i.i.i ], [ %offsets.i.i, %if.end245.i.i.rga_cmd_set.exit_crit_edge ]
  %conv4.i.i.i = zext i8 %124 to i32
  %div14.i.i.i = udiv i32 %53, %conv4.i.i.i
  %conv.i.i.i = zext i8 %122 to i32
  %div.i.i.i = udiv i32 %118, %conv.i.i.i
  %mul15.i.i.i = mul i32 %div.i.i.i, %div14.i.i.i
  %mul13.i.i.i = mul i32 %130, %128
  %add16.i.i.i = add i32 %mul15.i.i.i, %mul13.i.i.i
  %div17.i.i.i = udiv i32 %51, %conv.i.i.i
  %add18.i.i.i = add i32 %add16.i.i.i, %div17.i.i.i
  %conv7.i.i.i = zext i8 %126 to i32
  %div23.i.i.i = udiv i32 %mul13.i.i.i, %conv7.i.i.i
  %add24.i.i.i = add i32 %add18.i.i.i, %div23.i.i.i
  %div9.i.i.i = udiv i32 %118, %128
  %mul11.i.i.i = mul i32 %div9.i.i.i, %51
  %mul.i.i.i = mul i32 %118, %53
  %add.i.i.i = add i32 %mul11.i.i.i, %mul.i.i.i
  %bf.clear284.i.i = and i32 %77, 983055
  %sub280.i.i = shl i32 %55, 4
  %bf.value282.i.i = add i32 %sub280.i.i, 65520
  %bf.shl283.i.i = and i32 %bf.value282.i.i, 65520
  %bf.set285.i.i = or i32 %bf.shl283.i.i, %bf.clear284.i.i
  %sub286.i.i = shl i32 %57, 20
  %bf.shl289.i.i = add i32 %sub286.i.i, -1048576
  %bf.set291.i.i = or i32 %bf.set285.i.i, %bf.shl289.i.i
  %bf.clear278.i.i = and i32 %75, 131071
  %156 = shl i32 %120, 15
  %bf.shl277.i.i = and i32 %156, -131072
  %bf.set279.i.i = or i32 %bf.shl277.i.i, %bf.clear278.i.i
  %bf.clear264.i.i = and i32 %73, 458759
  %sub260.i.i = shl i32 %src_h.2.i.i, 3
  %bf.value262.i.i = add i32 %sub260.i.i, 65528
  %bf.shl263.i.i = and i32 %bf.value262.i.i, 65528
  %bf.set265.i.i = or i32 %bf.clear264.i.i, %bf.shl263.i.i
  %sub266.i.i = shl i32 %src_w.1.i.i, 19
  %bf.shl269.i.i = add i32 %sub266.i.i, -524288
  %bf.set271.i.i = or i32 %bf.set265.i.i, %bf.shl269.i.i
  %bf.clear250.i.i = and i32 %71, 65599
  %shr.i36.i = lshr i32 %118, 2
  %bf.value248.i.i = shl i32 %shr.i36.i, 6
  %bf.shl249.i.i = and i32 %bf.value248.i.i, 65472
  %bf.set251.i.i = or i32 %bf.clear250.i.i, %bf.shl249.i.i
  %bf.shl257.i.i = shl i32 %shr.i36.i, 17
  %bf.set259.i.i = or i32 %bf.set251.i.i, %bf.shl257.i.i
  %arrayidx303.i.i = getelementptr i32, ptr %45, i32 2
  %157 = ptrtoint ptr %arrayidx303.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %add.i.i.i, ptr %arrayidx303.i.i, align 4
  %arrayidx305.i.i = getelementptr i32, ptr %45, i32 3
  %158 = ptrtoint ptr %arrayidx305.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add18.i.i.i, ptr %arrayidx305.i.i, align 4
  %arrayidx307.i.i = getelementptr i32, ptr %45, i32 4
  %159 = ptrtoint ptr %arrayidx307.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add24.i.i.i, ptr %arrayidx307.i.i, align 4
  %160 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %x_factor.sroa.0.0.i.i, ptr %arrayidx20.i.i, align 4
  %161 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %y_factor.sroa.0.0.i.i, ptr %arrayidx21.i.i, align 4
  %162 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %bf.set259.i.i, ptr %arrayidx22.i.i, align 4
  %163 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %bf.set271.i.i, ptr %arrayidx23.i.i, align 4
  %164 = ptrtoint ptr %arrayidx.i35.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %src_info.sroa.0.5.i.i, ptr %arrayidx.i35.i, align 4
  %165 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %retval.0.i.i.i, align 4
  %arrayidx314.i.i = getelementptr i32, ptr %45, i32 15
  %167 = ptrtoint ptr %arrayidx314.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx314.i.i, align 4
  %u_off315.i.i = getelementptr inbounds %struct.rga_addr_offset, ptr %retval.0.i.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %u_off315.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %u_off315.i.i, align 4
  %arrayidx316.i.i = getelementptr i32, ptr %45, i32 16
  %170 = ptrtoint ptr %arrayidx316.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx316.i.i, align 4
  %v_off317.i.i = getelementptr inbounds %struct.rga_addr_offset, ptr %retval.0.i.i.i, i32 0, i32 2
  %171 = ptrtoint ptr %v_off317.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %v_off317.i.i, align 4
  %arrayidx318.i.i = getelementptr i32, ptr %45, i32 17
  %173 = ptrtoint ptr %arrayidx318.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %arrayidx318.i.i, align 4
  %174 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %bf.set279.i.i, ptr %arrayidx24.i.i, align 4
  %175 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %bf.set291.i.i, ptr %arrayidx25.i.i, align 4
  %176 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %dst_info.sroa.0.0.i.i, ptr %arrayidx19.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %offsets.i.i) #4
  %cmdbuf_phy.i = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 13
  %177 = ptrtoint ptr %cmdbuf_phy.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %cmdbuf_phy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #4
  %regs.i.i = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 5
  %180 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %181, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %179) #4, !srcloc !18
  %dev.i = getelementptr inbounds %struct.rockchip_rga, ptr %3, i32 0, i32 3
  %182 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev.i, align 4
  %184 = ptrtoint ptr %cmdbuf_phy.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cmdbuf_phy.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %183, i32 noundef %185, i32 noundef 4096, i32 noundef 0) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %regs.i = getelementptr inbounds %struct.rockchip_rga, ptr %rga, i32 0, i32 5
  %186 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 0) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %188 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 570425344) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %190 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %191, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 393216) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %192 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %193, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 16777216) #4, !srcloc !18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @rga_lookup_draw_pos.rot_mir_point_matrix, !1, !"rot_mir_point_matrix", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rga/rga-hw.c", i32 90, i32 30}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"rga_get_addr_offset: %agg.result"}
!13 = distinct !{!13, !"rga_get_addr_offset"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"rga_get_addr_offset: %agg.result"}
!16 = distinct !{!16, !"rga_get_addr_offset"}
!17 = !{i64 2156405799}
!18 = !{i64 5883699}
