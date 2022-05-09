; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene/xgene_enet_ring2.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene/xgene_enet_ring2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xgene_ring_ops = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xgene_enet_desc_ring = type { ptr, i16, i16, i16, i16, i16, i16, i16, [16 x i8], i32, [6 x i32], ptr, ptr, i32, i32, ptr, i16, i16, i32, i8, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.napi_struct, %union.anon.144, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.144 = type { ptr }
%struct.xgene_enet_raw_desc = type { i64, i64, i64, i64 }

@xgene_ring2_ops = dso_local global { %struct.xgene_ring_ops, [40 x i8] } { %struct.xgene_ring_ops { i8 6, i8 13, ptr @xgene_enet_setup_ring, ptr @xgene_enet_clear_ring, ptr @xgene_enet_wr_cmd, ptr @xgene_enet_ring_len, ptr @xgene_enet_setup_coalescing }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"xgene_ring2_ops\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/net/ethernet/apm/xgene/xgene_enet_ring2.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 195, i32 23 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @xgene_ring2_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ring2_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xgene_enet_setup_ring(ptr noundef returned %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10
  %0 = call ptr @memset(ptr %state.i, i32 0, i32 24)
  %1 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ring, align 8
  %num.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 2
  %3 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %ring_csr_addr.i.i.i = getelementptr i8, ptr %2, i32 2536
  %5 = ptrtoint ptr %ring_csr_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring_csr_addr.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %6, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %7) #3, !srcloc !12
  %ring_ops.i.i = getelementptr i8, ptr %2, i32 2720
  %8 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring_ops.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14.not.i.i = icmp eq i8 %11, 0
  br i1 %cmp14.not.i.i, label %entry.xgene_enet_clr_ring_state.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.xgene_enet_clr_ring_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.015.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 112
  %arrayidx.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 %i.015.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %14 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i11.i.i = getelementptr i8, ptr %15, i32 2536
  %16 = ptrtoint ptr %ring_csr_addr.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring_csr_addr.i11.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %17, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %13) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %18) #3, !srcloc !12
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %19 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring_ops.i.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %conv1.i.i = zext i8 %22 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv1.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge

for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

xgene_enet_clr_ring_state.exit:                   ; preds = %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge, %entry.xgene_enet_clr_ring_state.exit_crit_edge
  %id.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 1
  %23 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %id.i.i, align 4
  %25 = and i16 %24, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp.i.not.i.i = icmp eq i16 %25, 0
  %arrayidx.i.i28 = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i28, align 4
  %28 = select i1 %cmp.i.not.i.i, i32 8388608, i32 16777216
  %conv3.i.i = or i32 %28, %27
  store i32 %conv3.i.i, ptr %arrayidx.i.i28, align 4
  br i1 %cmp.i.not.i.i, label %xgene_enet_clr_ring_state.exit.xgene_enet_ring_set_type.exit.i_crit_edge, label %if.then.i.i

xgene_enet_clr_ring_state.exit.xgene_enet_ring_set_type.exit.i_crit_edge: ; preds = %xgene_enet_clr_ring_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_ring_set_type.exit.i

if.then.i.i:                                      ; preds = %xgene_enet_clr_ring_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx6.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 3
  %29 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx6.i.i, align 4
  %conv9.i.i = or i32 %30, 3145728
  store i32 %conv9.i.i, ptr %arrayidx6.i.i, align 4
  br label %xgene_enet_ring_set_type.exit.i

xgene_enet_ring_set_type.exit.i:                  ; preds = %if.then.i.i, %xgene_enet_clr_ring_state.exit.xgene_enet_ring_set_type.exit.i_crit_edge
  %31 = and i16 %24, 896
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %switch.i = icmp eq i16 %31, 0
  br i1 %switch.i, label %if.then.i, label %xgene_enet_ring_set_type.exit.i.if.end.i_crit_edge

xgene_enet_ring_set_type.exit.i.if.end.i_crit_edge: ; preds = %xgene_enet_ring_set_type.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %xgene_enet_ring_set_type.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i7.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 3
  %32 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i7.i, align 4
  %or.i.i = or i32 %33, 134217728
  store i32 %or.i.i, ptr %arrayidx.i7.i, align 4
  %conv3.i8.i = or i32 %conv3.i.i, 7
  %34 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv3.i8.i, ptr %arrayidx.i.i28, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %xgene_enet_ring_set_type.exit.i.if.end.i_crit_edge
  %dma.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 13
  %35 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma.i.i, align 8
  %37 = and i16 %24, 960
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %37)
  %cmp.i.i29 = icmp eq i16 %37, 960
  br i1 %cmp.i.i29, label %if.then.i10.i, label %if.end.i.xgene_enet_ring_init.exit.i_crit_edge

if.end.i.xgene_enet_ring_init.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_ring_init.exit.i

if.then.i10.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %38 = and i16 %24, 31
  %and.i.i.i = zext i16 %38 to i32
  %shl2.i.i.i = shl nuw nsw i32 %and.i.i.i, 24
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state.i, align 4
  %conv7.i.i = or i32 %40, %shl2.i.i.i
  store i32 %conv7.i.i, ptr %state.i, align 4
  %arrayidx9.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 3
  %41 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx9.i.i, align 4
  %conv12.i.i = or i32 %42, 536870912
  store i32 %conv12.i.i, ptr %arrayidx9.i.i, align 4
  br label %xgene_enet_ring_init.exit.i

xgene_enet_ring_init.exit.i:                      ; preds = %if.then.i10.i, %if.end.i.xgene_enet_ring_init.exit.i_crit_edge
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 4
  %conv17.i.i = or i32 %44, 1073741824
  store i32 %conv17.i.i, ptr %state.i, align 4
  %45 = lshr i32 %36, 3
  %46 = and i32 %45, 536870880
  %arrayidx20.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 2
  %47 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx20.i.i, align 4
  %49 = or i32 %46, %48
  %conv23.i.i = or i32 %49, 16
  store i32 %conv23.i.i, ptr %arrayidx20.i.i, align 4
  %cfgsize.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 25
  %50 = ptrtoint ptr %cfgsize.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cfgsize.i.i, align 4
  %52 = shl i32 %51, 23
  %53 = and i32 %52, 58720256
  %arrayidx30.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 3
  %54 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx30.i.i, align 4
  %56 = or i32 %55, %53
  %conv33.i.i = or i32 %56, 524288
  store i32 %conv33.i.i, ptr %arrayidx30.i.i, align 4
  %57 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i28, align 4
  %conv38.i.i = or i32 %58, 128
  store i32 %conv38.i.i, ptr %arrayidx.i.i28, align 4
  %arrayidx42.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 5
  %59 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx42.i.i, align 4
  %conv45.i.i = or i32 %60, 3072
  store i32 %conv45.i.i, ptr %arrayidx42.i.i, align 4
  %61 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ring, align 8
  %63 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %num.i.i, align 2
  %conv.i.i31 = zext i16 %64 to i32
  %ring_csr_addr.i.i.i32 = getelementptr i8, ptr %62, i32 2536
  %65 = ptrtoint ptr %ring_csr_addr.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ring_csr_addr.i.i.i32, align 8
  %add.ptr.i10.i.i33 = getelementptr i8, ptr %66, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %67 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i31) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i33, i32 %67) #3, !srcloc !12
  %ring_ops.i.i34 = getelementptr i8, ptr %62, i32 2720
  %68 = ptrtoint ptr %ring_ops.i.i34 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring_ops.i.i34, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp14.not.i.i35 = icmp eq i8 %71, 0
  br i1 %cmp14.not.i.i35, label %xgene_enet_ring_init.exit.i.xgene_enet_set_ring_state.exit_crit_edge, label %xgene_enet_ring_init.exit.i.for.body.i.i43_crit_edge

xgene_enet_ring_init.exit.i.for.body.i.i43_crit_edge: ; preds = %xgene_enet_ring_init.exit.i
  br label %for.body.i.i43

xgene_enet_ring_init.exit.i.xgene_enet_set_ring_state.exit_crit_edge: ; preds = %xgene_enet_ring_init.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_set_ring_state.exit

for.body.i.i43:                                   ; preds = %for.body.i.i43.for.body.i.i43_crit_edge, %xgene_enet_ring_init.exit.i.for.body.i.i43_crit_edge
  %i.015.i.i36 = phi i32 [ %inc.i.i41, %for.body.i.i43.for.body.i.i43_crit_edge ], [ 0, %xgene_enet_ring_init.exit.i.for.body.i.i43_crit_edge ]
  %mul.i.i37 = shl i32 %i.015.i.i36, 2
  %add.i.i38 = add nuw nsw i32 %mul.i.i37, 112
  %arrayidx.i11.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 %i.015.i.i36
  %72 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i11.i, align 4
  %74 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i11.i.i39 = getelementptr i8, ptr %75, i32 2536
  %76 = ptrtoint ptr %ring_csr_addr.i11.i.i39 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ring_csr_addr.i11.i.i39, align 8
  %add.ptr.i12.i.i40 = getelementptr i8, ptr %77, i32 %add.i.i38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %78 = tail call i32 @llvm.bswap.i32(i32 %73) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i40, i32 %78) #3, !srcloc !12
  %inc.i.i41 = add nuw nsw i32 %i.015.i.i36, 1
  %79 = ptrtoint ptr %ring_ops.i.i34 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring_ops.i.i34, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 4
  %conv1.i.i42 = zext i8 %82 to i32
  %cmp.i12.i = icmp ult i32 %inc.i.i41, %conv1.i.i42
  br i1 %cmp.i12.i, label %for.body.i.i43.for.body.i.i43_crit_edge, label %for.body.i.i43.xgene_enet_set_ring_state.exit_crit_edge

for.body.i.i43.xgene_enet_set_ring_state.exit_crit_edge: ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_set_ring_state.exit

for.body.i.i43.for.body.i.i43_crit_edge:          ; preds = %for.body.i.i43
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i43

xgene_enet_set_ring_state.exit:                   ; preds = %for.body.i.i43.xgene_enet_set_ring_state.exit_crit_edge, %xgene_enet_ring_init.exit.i.xgene_enet_set_ring_state.exit_crit_edge
  %83 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %id.i.i, align 4
  %85 = and i16 %84, 960
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %85)
  %cmp.i = icmp eq i16 %85, 960
  br i1 %cmp.i, label %xgene_enet_set_ring_state.exit.xgene_enet_set_ring_id.exit_crit_edge, label %if.end.i44

xgene_enet_set_ring_state.exit.xgene_enet_set_ring_id.exit_crit_edge: ; preds = %xgene_enet_set_ring_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_set_ring_id.exit

if.end.i44:                                       ; preds = %xgene_enet_set_ring_state.exit
  call void @__sanitizer_cov_trace_pc() #5
  %86 = and i16 %84, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.i.not.i = icmp eq i16 %86, 0
  %87 = and i16 %84, 1023
  %and.i = zext i16 %87 to i32
  %or.i = or i32 %and.i, -2147483648
  %88 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %num.i.i, align 2
  %conv4.i = zext i16 %89 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 9
  %and5.i = and i32 %shl.i, 523776
  %spec.select.v.i = select i1 %cmp.i.not.i, i32 2097152, i32 3145728
  %spec.select.i = or i32 %and5.i, %spec.select.v.i
  %90 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i.i = getelementptr i8, ptr %91, i32 2536
  %92 = ptrtoint ptr %ring_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ring_csr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %93, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %94 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %94) #3, !srcloc !12
  %95 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i20.i = getelementptr i8, ptr %96, i32 2536
  %97 = ptrtoint ptr %ring_csr_addr.i20.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ring_csr_addr.i20.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %98, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %99 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %99) #3, !srcloc !12
  br label %xgene_enet_set_ring_id.exit

xgene_enet_set_ring_id.exit:                      ; preds = %if.end.i44, %xgene_enet_set_ring_state.exit.xgene_enet_set_ring_id.exit_crit_edge
  %100 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %id.i.i, align 4
  %size = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 9
  %102 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %size, align 4
  %104 = and i16 %101, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp.i.not.i45 = icmp eq i16 %104, 0
  %cond.v.i = select i1 %cmp.i.not.i45, i32 5, i32 4
  %cond.i = lshr i32 %103, %cond.v.i
  %conv.i = trunc i32 %cond.i to i16
  %slots = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 6
  %105 = ptrtoint ptr %slots to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i, ptr %slots, align 2
  %106 = and i16 %101, 992
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %106)
  %107 = icmp eq i16 %106, 960
  br i1 %107, label %if.end, label %xgene_enet_set_ring_id.exit.cleanup_crit_edge

xgene_enet_set_ring_id.exit.cleanup_crit_edge:    ; preds = %xgene_enet_set_ring_id.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %xgene_enet_set_ring_id.exit
  %108 = shl i16 %101, 2
  %109 = and i16 %108, 252
  %narrow = add nuw nsw i16 %109, 624
  %add = zext i16 %narrow to i32
  %irq_mbox_dma = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 14
  %110 = ptrtoint ptr %irq_mbox_dma to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq_mbox_dma, align 4
  %shr = lshr i32 %111, 10
  %112 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i = getelementptr i8, ptr %113, i32 2536
  %114 = ptrtoint ptr %ring_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ring_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %115, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %116 = tail call i32 @llvm.bswap.i32(i32 %shr) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %116) #3, !srcloc !12
  %117 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %slots, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %cmp848.not = icmp eq i16 %118, 0
  br i1 %cmp848.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %119 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %arrayidx.i = getelementptr %struct.xgene_enet_raw_desc, ptr %121, i32 %i.049, i32 1
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %arrayidx.i, align 8
  %inc = add nuw nsw i32 %i.049, 1
  %123 = ptrtoint ptr %slots to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %slots, align 2
  %conv7 = zext i16 %124 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %xgene_enet_set_ring_id.exit.cleanup_crit_edge
  ret ptr %ring
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_clear_ring(ptr nocapture noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id.i, align 4
  %conv.i = zext i16 %1 to i32
  %or.i = or i32 %conv.i, -2147483648
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i.i = getelementptr i8, ptr %3, i32 2536
  %4 = ptrtoint ptr %ring_csr_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring_csr_addr.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #3, !srcloc !12
  %7 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i3.i = getelementptr i8, ptr %8, i32 2536
  %9 = ptrtoint ptr %ring_csr_addr.i3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring_csr_addr.i3.i, align 8
  %add.ptr.i4.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #3, !srcloc !12
  %state.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10
  %11 = call ptr @memset(ptr %state.i, i32 0, i32 24)
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring, align 8
  %num.i.i = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 2
  %14 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %num.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %ring_csr_addr.i.i.i = getelementptr i8, ptr %13, i32 2536
  %16 = ptrtoint ptr %ring_csr_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring_csr_addr.i.i.i, align 8
  %add.ptr.i10.i.i = getelementptr i8, ptr %17, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %18) #3, !srcloc !12
  %ring_ops.i.i = getelementptr i8, ptr %13, i32 2720
  %19 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring_ops.i.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp14.not.i.i = icmp eq i8 %22, 0
  br i1 %cmp14.not.i.i, label %entry.xgene_enet_clr_ring_state.exit_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.xgene_enet_clr_ring_state.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.015.i.i, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 112
  %arrayidx.i.i = getelementptr %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 10, i32 %i.015.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %25 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i11.i.i = getelementptr i8, ptr %26, i32 2536
  %27 = ptrtoint ptr %ring_csr_addr.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring_csr_addr.i11.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %28, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %29 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %29) #3, !srcloc !12
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %30 = ptrtoint ptr %ring_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring_ops.i.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv1.i.i = zext i8 %33 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv1.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge

for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %xgene_enet_clr_ring_state.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

xgene_enet_clr_ring_state.exit:                   ; preds = %for.body.i.i.xgene_enet_clr_ring_state.exit_crit_edge, %entry.xgene_enet_clr_ring_state.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_wr_cmd(ptr nocapture noundef readonly %ring, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 4
  %2 = and i16 %1, 960
  call void @__sanitizer_cov_trace_const_cmp2(i16 960, i16 %2)
  %cmp = icmp eq i16 %2, 960
  %3 = and i16 %1, 31
  %and.i = zext i16 %3 to i32
  %shl2.i = shl nuw nsw i32 %and.i, 24
  %conv4 = or i32 %shl2.i, 8388608
  %data.0 = select i1 %cmp, i32 %conv4, i32 0
  %and5 = and i32 %count, 131071
  %or6 = or i32 %data.0, %and5
  %cmd = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 12
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %or6) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %6) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_enet_ring_len(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_base1 = getelementptr inbounds %struct.xgene_enet_desc_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %cmd_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_base1, align 8
  %arrayidx = getelementptr i32, ptr %1, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #3, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  %3 = and i32 %2, -65280
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_enet_setup_coalescing(ptr nocapture noundef readonly %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i = getelementptr i8, ptr %1, i32 2536
  %2 = ptrtoint ptr %ring_csr_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring_csr_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1912602624) #3, !srcloc !12
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i10 = getelementptr i8, ptr %5, i32 2536
  %6 = ptrtoint ptr %ring_csr_addr.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_csr_addr.i10, align 8
  %add.ptr.i11 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 2004318071) #3, !srcloc !12
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i12 = getelementptr i8, ptr %9, i32 2536
  %10 = ptrtoint ptr %ring_csr_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ring_csr_addr.i12, align 8
  %add.ptr.i13 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 2004318071) #3, !srcloc !12
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i14 = getelementptr i8, ptr %13, i32 2536
  %14 = ptrtoint ptr %ring_csr_addr.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_csr_addr.i14, align 8
  %add.ptr.i15 = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 2004318071) #3, !srcloc !12
  %16 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i16 = getelementptr i8, ptr %17, i32 2536
  %18 = ptrtoint ptr %ring_csr_addr.i16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring_csr_addr.i16, align 8
  %add.ptr.i17 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 2004318071) #3, !srcloc !12
  %20 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i18 = getelementptr i8, ptr %21, i32 2536
  %22 = ptrtoint ptr %ring_csr_addr.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring_csr_addr.i18, align 8
  %add.ptr.i19 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 134217728) #3, !srcloc !12
  %24 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring, align 8
  %ring_csr_addr.i20 = getelementptr i8, ptr %25, i32 2536
  %26 = ptrtoint ptr %ring_csr_addr.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring_csr_addr.i20, align 8
  %add.ptr.i21 = getelementptr i8, ptr %27, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 268435456) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @xgene_ring2_ops, !1, !"xgene_ring2_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/apm/xgene/xgene_enet_ring2.c", i32 195, i32 23}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2154241269}
!12 = !{i64 6706637}
!13 = !{i64 6707055}
!14 = !{i64 2154239914}
