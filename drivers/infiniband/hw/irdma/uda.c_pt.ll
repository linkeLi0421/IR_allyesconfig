; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/uda.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/uda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.irdma_ah_info = type { ptr, i32, i32, [4 x i32], [4 x i32], i32, i32, i16, i8, i8, i8, [6 x i8], i8 }
%struct.irdma_sc_cqp = type { i32, i64, i64, ptr, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_ring, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_dcqcn_cc_params = type { i8, i8, i8, i8, i16, i16, i16, i32, i32 }
%struct.irdma_mcast_grp_info = type <{ [6 x i8], i16, i8, i8, i16, i32, [4 x i32], i16, %struct.irdma_dma_mem, [2 x i8], [8 x %struct.irdma_mcast_grp_ctx_entry_info] }>
%struct.irdma_mcast_grp_ctx_entry_info = type { i32, i8, i16, i32 }

@irdma_sc_access_ah.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_sc_access_ah\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/infiniband/hw/irdma/uda.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WQE: MANAGE_AH WQE\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@irdma_access_mcast_grp.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irdma_access_mcast_grp\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WQE: mg_id out of range\0A\00", [39 x i8] zeroinitializer }, align 32
@irdma_access_mcast_grp.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WQE: ring full\0A\00", [16 x i8] zeroinitializer }, align 32
@irdma_access_mcast_grp.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WQE: MANAGE_MCG WQE\00", [44 x i8] zeroinitializer }, align 32
@irdma_access_mcast_grp.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WQE: MCG_HOST CTX WQE\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 78, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 128, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 134, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 171, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [37 x i8] c"../drivers/infiniband/hw/irdma/uda.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 173, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_sc_access_ah(ptr noundef %cqp, ptr nocapture noundef readonly %info, i32 noundef %op, i64 noundef %scratch) local_unnamed_addr #0 align 64 {
entry:
  %wqe_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx.i) #5
  %0 = ptrtoint ptr %wqe_idx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %wqe_idx.i, align 4, !annotation !29
  %call.i = call ptr @irdma_sc_cqp_get_next_send_wqe_idx(ptr noundef %cqp, i64 noundef %scratch, ptr noundef nonnull %wqe_idx.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx.i) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_addr = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 11
  %1 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %mac_addr, align 1
  %conv.i = zext i8 %2 to i64
  %arrayidx.1.i = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %4 to i64
  %5 = shl nuw nsw i64 %conv.i, 16
  %6 = shl nuw nsw i64 %conv.1.i, 8
  %shl.2.i = or i64 %6, %5
  %arrayidx.2.i = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 11, i32 2
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %8 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i
  %arrayidx.3.i = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %10 to i64
  %arrayidx.4.i = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 11, i32 4
  %11 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %12 to i64
  %arrayidx.5.i = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 11, i32 5
  %13 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %14 to i64
  %15 = shl nuw i64 %or.2.i, 40
  %16 = shl nuw nsw i64 %conv.3.i, 32
  %17 = shl nuw nsw i64 %conv.4.i, 24
  %18 = or i64 %16, %17
  %19 = or i64 %15, %18
  %20 = shl nuw nsw i64 %conv.5.i, 16
  %shl = or i64 %19, %20
  %21 = call i64 @llvm.bswap.i64(i64 %shl) #5
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %call.i, align 8
  %pd_idx = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 1
  %23 = ptrtoint ptr %pd_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pd_idx, align 4
  %conv19 = zext i32 %24 to i64
  %shl20 = shl i64 %conv19, 48
  %tc_tos = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 9
  %25 = ptrtoint ptr %tc_tos to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tc_tos, align 1
  %conv47 = zext i8 %26 to i64
  %shl48 = shl nuw nsw i64 %conv47, 32
  %or = or i64 %shl48, %shl20
  %vlan_tag = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 7
  %27 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan_tag, align 4
  %conv75 = zext i16 %28 to i64
  %or78 = or i64 %or, %conv75
  %dst_arpindex = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 2
  %29 = ptrtoint ptr %dst_arpindex to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst_arpindex, align 4
  %flow_label = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 5
  %31 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flow_label, align 4
  %shr = lshr i32 %24, 16
  %conv104 = zext i32 %30 to i64
  %shl105 = shl i64 %conv104, 48
  %33 = and i32 %32, 1048575
  %and134 = zext i32 %33 to i64
  %or135 = or i64 %shl105, %and134
  %hop_ttl = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 10
  %34 = ptrtoint ptr %hop_ttl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hop_ttl, align 4
  %conv161 = zext i8 %35 to i64
  %shl162 = shl nuw nsw i64 %conv161, 32
  %or164 = or i64 %shl162, %or135
  %conv193 = zext i32 %shr to i64
  %shl194 = shl nuw nsw i64 %conv193, 20
  %and195 = and i64 %shl194, 3145728
  %or196 = or i64 %or164, %and195
  %ipv4_valid = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 12
  %36 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %ipv4_valid, align 1
  %37 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %bf.cast.not = icmp eq i8 %37, 0
  %dest_ip_addr = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 3
  %38 = ptrtoint ptr %dest_ip_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dest_ip_addr, align 4
  %conv225 = zext i32 %39 to i64
  br i1 %bf.cast.not, label %if.then197, label %if.else

if.then197:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl226 = shl nuw i64 %conv225, 32
  %arrayidx236 = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx236, align 4
  %conv257 = zext i32 %41 to i64
  %or260 = or i64 %shl226, %conv257
  %42 = call i64 @llvm.bswap.i64(i64 %or260) #5
  %arrayidx.i = getelementptr i64, ptr %call.i, i32 5
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx.i, align 8
  %arrayidx269 = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx269, align 4
  %conv290 = zext i32 %45 to i64
  %shl291 = shl nuw i64 %conv290, 32
  %arrayidx301 = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx301, align 4
  %conv322 = zext i32 %47 to i64
  %or325 = or i64 %shl291, %conv322
  %48 = call i64 @llvm.bswap.i64(i64 %or325) #5
  %arrayidx.i826 = getelementptr i64, ptr %call.i, i32 4
  %49 = ptrtoint ptr %arrayidx.i826 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx.i826, align 8
  %src_ip_addr = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 4
  %50 = ptrtoint ptr %src_ip_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src_ip_addr, align 4
  %conv354 = zext i32 %51 to i64
  %shl355 = shl nuw i64 %conv354, 32
  %arrayidx365 = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx365, align 4
  %conv386 = zext i32 %53 to i64
  %or389 = or i64 %shl355, %conv386
  %54 = call i64 @llvm.bswap.i64(i64 %or389) #5
  %arrayidx.i827 = getelementptr i64, ptr %call.i, i32 7
  %55 = ptrtoint ptr %arrayidx.i827 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx.i827, align 8
  %arrayidx398 = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 4, i32 2
  %56 = ptrtoint ptr %arrayidx398 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx398, align 4
  %conv419 = zext i32 %57 to i64
  %shl420 = shl nuw i64 %conv419, 32
  %arrayidx430 = getelementptr %struct.irdma_ah_info, ptr %info, i32 0, i32 4, i32 3
  %58 = ptrtoint ptr %arrayidx430 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx430, align 4
  %conv451 = zext i32 %59 to i64
  %or454 = or i64 %shl420, %conv451
  br label %if.end519

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %60 = call i64 @llvm.bswap.i64(i64 %conv225) #5
  %arrayidx.i829 = getelementptr i64, ptr %call.i, i32 4
  %61 = ptrtoint ptr %arrayidx.i829 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx.i829, align 8
  %src_ip_addr494 = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 4
  %62 = ptrtoint ptr %src_ip_addr494 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %src_ip_addr494, align 4
  %conv516 = zext i32 %63 to i64
  br label %if.end519

if.end519:                                        ; preds = %if.else, %if.then197
  %conv516.sink = phi i64 [ %conv516, %if.else ], [ %or454, %if.then197 ]
  %64 = call i64 @llvm.bswap.i64(i64 %conv516.sink) #5
  %65 = getelementptr i64, ptr %call.i, i32 6
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %64, ptr %65, align 8
  %67 = call i64 @llvm.bswap.i64(i64 %or78) #5
  %arrayidx.i831 = getelementptr i64, ptr %call.i, i32 1
  %68 = ptrtoint ptr %arrayidx.i831 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx.i831, align 8
  %69 = call i64 @llvm.bswap.i64(i64 %or196) #5
  %arrayidx.i832 = getelementptr i64, ptr %call.i, i32 2
  %70 = ptrtoint ptr %arrayidx.i832 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %arrayidx.i832, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  %polarity = getelementptr inbounds %struct.irdma_sc_cqp, ptr %cqp, i32 0, i32 18
  %71 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %polarity, align 1
  %ah_idx = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 6
  %73 = ptrtoint ptr %ah_idx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ah_idx, align 4
  %insert_vlan_tag = getelementptr inbounds %struct.irdma_ah_info, ptr %info, i32 0, i32 8
  %75 = ptrtoint ptr %insert_vlan_tag to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %insert_vlan_tag, align 2
  %conv545 = zext i8 %72 to i64
  %shl546 = shl i64 %conv545, 63
  %conv571 = zext i32 %op to i64
  %shl572 = shl nuw i64 %conv571, 32
  %and573 = and i64 %shl572, 270582939648
  %or574 = or i64 %shl546, %and573
  %77 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load582 = load i8, ptr %ipv4_valid, align 1
  %78 = lshr i8 %bf.load582, 5
  %.lobit = and i8 %78, 1
  %79 = zext i8 %.lobit to i64
  %shl613 = shl nuw nsw i64 %79, 62
  %or615 = or i64 %shl613, %or574
  %80 = lshr i8 %bf.load582, 6
  %81 = zext i8 %80 to i64
  %shl655 = shl nuw nsw i64 %81, 59
  %and656 = and i64 %shl655, 576460752303423488
  %or657 = or i64 %or615, %and656
  %82 = and i32 %74, 131071
  %and685 = zext i32 %82 to i64
  %or686 = or i64 %or657, %and685
  %conv712 = zext i8 %76 to i64
  %shl713 = shl i64 %conv712, 60
  %and714 = and i64 %shl713, 1152921504606846976
  %or715 = or i64 %or686, %and714
  %83 = call i64 @llvm.bswap.i64(i64 %or715) #5
  %arrayidx.i833 = getelementptr i64, ptr %call.i, i32 3
  %84 = ptrtoint ptr %arrayidx.i833 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %arrayidx.i833, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_sc_access_ah.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_sc_access_ah, %if.then722)) #5
          to label %do.end725 [label %if.then722], !srcloc !31

if.then722:                                       ; preds = %if.end519
  call void @__sanitizer_cov_trace_pc() #7
  call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %call.i, i32 noundef 64, i1 noundef zeroext false) #5
  br label %do.end725

do.end725:                                        ; preds = %if.then722, %if.end519
  call void @irdma_sc_cqp_post_sq(ptr noundef %cqp) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end725, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end725 ], [ -51, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_sc_cqp_post_sq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_access_mcast_grp(ptr noundef %cqp, ptr noundef readonly %info, i32 noundef %op, i64 noundef %scratch) local_unnamed_addr #0 align 64 {
entry:
  %wqe_idx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mg_id = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %mg_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mg_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %1)
  %cmp = icmp ugt i16 %1, 4095
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_access_mcast_grp, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !31

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.irdma_sc_cqp, ptr %cqp, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call5 = tail call ptr @to_ibdev(ptr noundef %3) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_access_mcast_grp.__UNIQUE_ID_ddebug629, ptr noundef %call5, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wqe_idx.i) #5
  %4 = ptrtoint ptr %wqe_idx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %wqe_idx.i, align 4, !annotation !29
  %call.i = call ptr @irdma_sc_cqp_get_next_send_wqe_idx(ptr noundef %cqp, i64 noundef %scratch, ptr noundef nonnull %wqe_idx.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wqe_idx.i) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %do.body10, label %if.end28

do.body10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_access_mcast_grp, %if.then22)) #5
          to label %cleanup [label %if.then22], !srcloc !31

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %dev23 = getelementptr inbounds %struct.irdma_sc_cqp, ptr %cqp, i32 0, i32 4
  %5 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev23, align 4
  %call24 = call ptr @to_ibdev(ptr noundef %6) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_access_mcast_grp.__UNIQUE_ID_ddebug630, ptr noundef %call24, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end6
  %dma_mem_mc.i = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 8
  %7 = ptrtoint ptr %dma_mem_mc.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %dma_mem_mc.i, align 2
  %9 = call ptr @memset(ptr %8, i32 0, i32 64)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end28
  %indvars.iv.i = phi i32 [ 0, %if.end28 ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %ctx_idx.01.i = phi i8 [ 0, %if.end28 ], [ %ctx_idx.1.i, %for.inc.i.for.body.i_crit_edge ]
  %valid_entry.i = getelementptr %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 10, i32 %indvars.iv.i, i32 1
  %10 = ptrtoint ptr %valid_entry.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid_entry.i, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end78.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end78.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 10, i32 %indvars.iv.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %dest_port.i = getelementptr %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 10, i32 %indvars.iv.i, i32 2
  %14 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest_port.i, align 2
  %conv22.i = zext i16 %15 to i64
  %shl.i = shl nuw nsw i64 %conv22.i, 32
  %16 = zext i8 %11 to i64
  %shl54.i = shl nuw nsw i64 %16, 31
  %conv4.i = zext i8 %ctx_idx.01.i to i32
  %17 = ptrtoint ptr %dma_mem_mc.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load ptr, ptr %dma_mem_mc.i, align 2
  %19 = and i32 %13, 262143
  %and83.i = zext i32 %19 to i64
  %or.i = or i64 %shl54.i, %and83.i
  %or84.i = or i64 %shl.i, %or.i
  %20 = call i64 @llvm.bswap.i64(i64 %or84.i) #5
  %arrayidx.i.i = getelementptr i64, ptr %18, i32 %conv4.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx.i.i, align 8
  %inc.i = add i8 %ctx_idx.01.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end78.i, %for.body.i.for.inc.i_crit_edge
  %ctx_idx.1.i = phi i8 [ %inc.i, %do.end78.i ], [ %ctx_idx.01.i, %for.body.i.for.inc.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %irdma_create_mg_ctx.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

irdma_create_mg_ctx.exit:                         ; preds = %for.inc.i
  %pa = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %pa to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %pa, align 2
  %conv33 = zext i32 %23 to i64
  %24 = call i64 @llvm.bswap.i64(i64 %conv33) #5
  %arrayidx.i550 = getelementptr i64, ptr %call.i, i32 4
  %25 = ptrtoint ptr %arrayidx.i550 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx.i550, align 8
  %vlan_id = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 1
  %26 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vlan_id, align 2
  %qs_handle = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 7
  %28 = ptrtoint ptr %qs_handle to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %qs_handle, align 4
  %conv56 = zext i16 %27 to i64
  %shl = shl nuw nsw i64 %conv56, 32
  %and57 = and i64 %shl, 17587891077120
  %30 = and i16 %29, 1023
  %and85 = zext i16 %30 to i64
  %or = or i64 %and57, %and85
  %31 = call i64 @llvm.bswap.i64(i64 %or) #5
  %arrayidx.i551 = getelementptr i64, ptr %call.i, i32 2
  %32 = ptrtoint ptr %arrayidx.i551 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx.i551, align 8
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %info, align 1
  %conv.i = zext i8 %34 to i64
  %arrayidx.1.i = getelementptr i8, ptr %info, i32 1
  %35 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %36 to i64
  %37 = shl nuw nsw i64 %conv.i, 16
  %38 = shl nuw nsw i64 %conv.1.i, 8
  %shl.2.i = or i64 %38, %37
  %arrayidx.2.i = getelementptr i8, ptr %info, i32 2
  %39 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %40 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i
  %arrayidx.3.i = getelementptr i8, ptr %info, i32 3
  %41 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %42 to i64
  %arrayidx.4.i = getelementptr i8, ptr %info, i32 4
  %43 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %44 to i64
  %45 = shl nuw nsw i64 %or.2.i, 24
  %46 = shl nuw nsw i64 %conv.3.i, 16
  %47 = shl nuw nsw i64 %conv.4.i, 8
  %48 = or i64 %46, %47
  %shl.5.i = or i64 %45, %48
  %arrayidx.5.i = getelementptr i8, ptr %info, i32 5
  %49 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %50 to i64
  %or.5.i = or i64 %shl.5.i, %conv.5.i
  %51 = call i64 @llvm.bswap.i64(i64 %or.5.i) #5
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %call.i, align 8
  %hmc_fcn_id = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 2
  %53 = ptrtoint ptr %hmc_fcn_id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hmc_fcn_id, align 4
  %55 = and i8 %54, 63
  %and114 = zext i8 %55 to i64
  %56 = shl nuw nsw i64 %and114, 56
  %arrayidx.i552 = getelementptr i64, ptr %call.i, i32 1
  %57 = ptrtoint ptr %arrayidx.i552 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx.i552, align 8
  %ipv4_valid = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 3
  %58 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %ipv4_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %dest_ip_addr = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 6
  %59 = ptrtoint ptr %dest_ip_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dest_ip_addr, align 4
  %conv143 = zext i32 %60 to i64
  br i1 %bf.cast.not, label %if.then115, label %irdma_create_mg_ctx.exit.if.end276_crit_edge

irdma_create_mg_ctx.exit.if.end276_crit_edge:     ; preds = %irdma_create_mg_ctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end276

if.then115:                                       ; preds = %irdma_create_mg_ctx.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shl144 = shl nuw i64 %conv143, 32
  %arrayidx154 = getelementptr %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx154, align 4
  %conv175 = zext i32 %62 to i64
  %or178 = or i64 %shl144, %conv175
  %63 = call i64 @llvm.bswap.i64(i64 %or178) #5
  %arrayidx.i553 = getelementptr i64, ptr %call.i, i32 7
  %64 = ptrtoint ptr %arrayidx.i553 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %arrayidx.i553, align 8
  %arrayidx187 = getelementptr %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 6, i32 2
  %65 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx187, align 4
  %conv208 = zext i32 %66 to i64
  %shl209 = shl nuw i64 %conv208, 32
  %arrayidx219 = getelementptr %struct.irdma_mcast_grp_info, ptr %info, i32 0, i32 6, i32 3
  %67 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx219, align 4
  %conv240 = zext i32 %68 to i64
  %or243 = or i64 %shl209, %conv240
  br label %if.end276

if.end276:                                        ; preds = %if.then115, %irdma_create_mg_ctx.exit.if.end276_crit_edge
  %conv143.sink = phi i64 [ %or243, %if.then115 ], [ %conv143, %irdma_create_mg_ctx.exit.if.end276_crit_edge ]
  %69 = call i64 @llvm.bswap.i64(i64 %conv143.sink) #5
  %70 = getelementptr i64, ptr %call.i, i32 6
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %69, ptr %70, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !33
  %polarity = getelementptr inbounds %struct.irdma_sc_cqp, ptr %cqp, i32 0, i32 18
  %72 = ptrtoint ptr %polarity to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %polarity, align 1
  %74 = ptrtoint ptr %mg_id to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mg_id, align 2
  %conv302 = zext i8 %73 to i64
  %shl303 = shl i64 %conv302, 63
  %conv328 = zext i32 %op to i64
  %shl329 = shl nuw i64 %conv328, 32
  %and330 = and i64 %shl329, 270582939648
  %or331 = or i64 %shl303, %and330
  %76 = and i16 %75, 8191
  %and360 = zext i16 %76 to i64
  %or361 = or i64 %or331, %and360
  %77 = ptrtoint ptr %ipv4_valid to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load369 = load i8, ptr %ipv4_valid, align 1
  %78 = lshr i8 %bf.load369, 6
  %79 = zext i8 %78 to i64
  %shl399 = shl nuw nsw i64 %79, 59
  %and400 = and i64 %shl399, 576460752303423488
  %or401 = or i64 %and400, %or361
  %bf.load434.lobit = lshr i8 %bf.load369, 7
  %80 = zext i8 %bf.load434.lobit to i64
  %shl438 = shl nuw nsw i64 %80, 60
  %or440 = or i64 %or401, %shl438
  %81 = call i64 @llvm.bswap.i64(i64 %or440) #5
  %arrayidx.i556 = getelementptr i64, ptr %call.i, i32 3
  %82 = ptrtoint ptr %arrayidx.i556 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %arrayidx.i556, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_access_mcast_grp, %if.then453)) #5
          to label %do.body457 [label %if.then453], !srcloc !31

if.then453:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #7
  call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef nonnull %call.i, i32 noundef 64, i1 noundef zeroext false) #5
  br label %do.body457

do.body457:                                       ; preds = %if.then453, %if.end276
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_access_mcast_grp, %if.then469)) #5
          to label %do.end473 [label %if.then469], !srcloc !31

if.then469:                                       ; preds = %do.body457
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %dma_mem_mc.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load ptr, ptr %dma_mem_mc.i, align 2
  call void @print_hex_dump(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef 2, i32 noundef 16, i32 noundef 8, ptr noundef %84, i32 noundef 64, i1 noundef zeroext false) #5
  br label %do.end473

do.end473:                                        ; preds = %if.then469, %do.body457
  call void @irdma_sc_cqp_post_sq(ptr noundef %cqp) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end473, %if.then22, %do.body10, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %do.end473 ], [ -5, %if.then4 ], [ -51, %if.then22 ], [ -5, %do.body ], [ -51, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_ibdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_sc_add_mcast_grp(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %mg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dest_port1.i = getelementptr inbounds %struct.irdma_mcast_grp_ctx_entry_info, ptr %mg, i32 0, i32 2
  %valid_entry = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 0, i32 1
  %0 = ptrtoint ptr %valid_entry to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_entry, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %dest_port.i = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 0, i32 2
  %2 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dest_port.i, align 2
  %4 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.i = icmp eq i16 %3, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.then
  %arrayidx = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.i = icmp eq i32 %7, %9
  br i1 %cmp5.i, label %land.lhs.true.i.if.then3_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %land.lhs.true.i.7.if.then3_crit_edge, %land.lhs.true.i.6.if.then3_crit_edge, %land.lhs.true.i.5.if.then3_crit_edge, %land.lhs.true.i.4.if.then3_crit_edge, %land.lhs.true.i.3.if.then3_crit_edge, %land.lhs.true.i.2.if.then3_crit_edge, %land.lhs.true.i.1.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge
  %idx.047.lcssa = phi i32 [ 0, %land.lhs.true.i.if.then3_crit_edge ], [ 1, %land.lhs.true.i.1.if.then3_crit_edge ], [ 2, %land.lhs.true.i.2.if.then3_crit_edge ], [ 3, %land.lhs.true.i.3.if.then3_crit_edge ], [ 4, %land.lhs.true.i.4.if.then3_crit_edge ], [ 5, %land.lhs.true.i.5.if.then3_crit_edge ], [ 6, %land.lhs.true.i.6.if.then3_crit_edge ], [ 7, %land.lhs.true.i.7.if.then3_crit_edge ]
  %use_cnt = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 %idx.047.lcssa, i32 3
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true.i.for.inc_crit_edge, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %valid_entry.1 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 1, i32 1
  %10 = ptrtoint ptr %valid_entry.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %valid_entry.1, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.1 = icmp eq i8 %11, 0
  br i1 %tobool.not.1, label %if.end6.1, label %if.then.1

if.then.1:                                        ; preds = %for.inc
  %dest_port.i.1 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 1, i32 2
  %12 = ptrtoint ptr %dest_port.i.1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dest_port.i.1, align 2
  %14 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.i.1 = icmp eq i16 %13, %15
  br i1 %cmp.i.1, label %land.lhs.true.i.1, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.i.1:                                ; preds = %if.then.1
  %arrayidx.1 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %18 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp5.i.1 = icmp eq i32 %17, %19
  br i1 %cmp5.i.1, label %land.lhs.true.i.1.if.then3_crit_edge, label %land.lhs.true.i.1.for.inc.1_crit_edge

land.lhs.true.i.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.i.1.if.then3_crit_edge:             ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %not.tobool.not = xor i1 %tobool.not, true
  %spec.select42.1 = zext i1 %not.tobool.not to i32
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end6.1, %land.lhs.true.i.1.for.inc.1_crit_edge, %if.then.1.for.inc.1_crit_edge
  %free_entry_found.1.off0.1 = phi i1 [ true, %if.end6.1 ], [ %tobool.not, %if.then.1.for.inc.1_crit_edge ], [ %tobool.not, %land.lhs.true.i.1.for.inc.1_crit_edge ]
  %free_entry_idx.1.1 = phi i32 [ %spec.select42.1, %if.end6.1 ], [ 0, %if.then.1.for.inc.1_crit_edge ], [ 0, %land.lhs.true.i.1.for.inc.1_crit_edge ]
  %valid_entry.2 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 2, i32 1
  %20 = ptrtoint ptr %valid_entry.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %valid_entry.2, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.2 = icmp eq i8 %21, 0
  br i1 %tobool.not.2, label %if.end6.2, label %if.then.2

if.then.2:                                        ; preds = %for.inc.1
  %dest_port.i.2 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 2, i32 2
  %22 = ptrtoint ptr %dest_port.i.2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dest_port.i.2, align 2
  %24 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp.i.2 = icmp eq i16 %23, %25
  br i1 %cmp.i.2, label %land.lhs.true.i.2, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.i.2:                                ; preds = %if.then.2
  %arrayidx.2 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 2
  %26 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.2, align 4
  %28 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp5.i.2 = icmp eq i32 %27, %29
  br i1 %cmp5.i.2, label %land.lhs.true.i.2.if.then3_crit_edge, label %land.lhs.true.i.2.for.inc.2_crit_edge

land.lhs.true.i.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.i.2.if.then3_crit_edge:             ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select42.2 = select i1 %free_entry_found.1.off0.1, i32 %free_entry_idx.1.1, i32 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end6.2, %land.lhs.true.i.2.for.inc.2_crit_edge, %if.then.2.for.inc.2_crit_edge
  %free_entry_found.1.off0.2 = phi i1 [ true, %if.end6.2 ], [ %free_entry_found.1.off0.1, %if.then.2.for.inc.2_crit_edge ], [ %free_entry_found.1.off0.1, %land.lhs.true.i.2.for.inc.2_crit_edge ]
  %free_entry_idx.1.2 = phi i32 [ %spec.select42.2, %if.end6.2 ], [ %free_entry_idx.1.1, %if.then.2.for.inc.2_crit_edge ], [ %free_entry_idx.1.1, %land.lhs.true.i.2.for.inc.2_crit_edge ]
  %valid_entry.3 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 3, i32 1
  %30 = ptrtoint ptr %valid_entry.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %valid_entry.3, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.3 = icmp eq i8 %31, 0
  br i1 %tobool.not.3, label %if.end6.3, label %if.then.3

if.then.3:                                        ; preds = %for.inc.2
  %dest_port.i.3 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 3, i32 2
  %32 = ptrtoint ptr %dest_port.i.3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dest_port.i.3, align 2
  %34 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp.i.3 = icmp eq i16 %33, %35
  br i1 %cmp.i.3, label %land.lhs.true.i.3, label %if.then.3.for.inc.3_crit_edge

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.i.3:                                ; preds = %if.then.3
  %arrayidx.3 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.3, align 4
  %38 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp5.i.3 = icmp eq i32 %37, %39
  br i1 %cmp5.i.3, label %land.lhs.true.i.3.if.then3_crit_edge, label %land.lhs.true.i.3.for.inc.3_crit_edge

land.lhs.true.i.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.i.3.if.then3_crit_edge:             ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select42.3 = select i1 %free_entry_found.1.off0.2, i32 %free_entry_idx.1.2, i32 3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end6.3, %land.lhs.true.i.3.for.inc.3_crit_edge, %if.then.3.for.inc.3_crit_edge
  %free_entry_found.1.off0.3 = phi i1 [ true, %if.end6.3 ], [ %free_entry_found.1.off0.2, %if.then.3.for.inc.3_crit_edge ], [ %free_entry_found.1.off0.2, %land.lhs.true.i.3.for.inc.3_crit_edge ]
  %free_entry_idx.1.3 = phi i32 [ %spec.select42.3, %if.end6.3 ], [ %free_entry_idx.1.2, %if.then.3.for.inc.3_crit_edge ], [ %free_entry_idx.1.2, %land.lhs.true.i.3.for.inc.3_crit_edge ]
  %valid_entry.4 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 4, i32 1
  %40 = ptrtoint ptr %valid_entry.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %valid_entry.4, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.4 = icmp eq i8 %41, 0
  br i1 %tobool.not.4, label %if.end6.4, label %if.then.4

if.then.4:                                        ; preds = %for.inc.3
  %dest_port.i.4 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 4, i32 2
  %42 = ptrtoint ptr %dest_port.i.4 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dest_port.i.4, align 2
  %44 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp.i.4 = icmp eq i16 %43, %45
  br i1 %cmp.i.4, label %land.lhs.true.i.4, label %if.then.4.for.inc.4_crit_edge

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.i.4:                                ; preds = %if.then.4
  %arrayidx.4 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.4, align 4
  %48 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp5.i.4 = icmp eq i32 %47, %49
  br i1 %cmp5.i.4, label %land.lhs.true.i.4.if.then3_crit_edge, label %land.lhs.true.i.4.for.inc.4_crit_edge

land.lhs.true.i.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.i.4.if.then3_crit_edge:             ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select42.4 = select i1 %free_entry_found.1.off0.3, i32 %free_entry_idx.1.3, i32 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end6.4, %land.lhs.true.i.4.for.inc.4_crit_edge, %if.then.4.for.inc.4_crit_edge
  %free_entry_found.1.off0.4 = phi i1 [ true, %if.end6.4 ], [ %free_entry_found.1.off0.3, %if.then.4.for.inc.4_crit_edge ], [ %free_entry_found.1.off0.3, %land.lhs.true.i.4.for.inc.4_crit_edge ]
  %free_entry_idx.1.4 = phi i32 [ %spec.select42.4, %if.end6.4 ], [ %free_entry_idx.1.3, %if.then.4.for.inc.4_crit_edge ], [ %free_entry_idx.1.3, %land.lhs.true.i.4.for.inc.4_crit_edge ]
  %valid_entry.5 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 5, i32 1
  %50 = ptrtoint ptr %valid_entry.5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %valid_entry.5, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.5 = icmp eq i8 %51, 0
  br i1 %tobool.not.5, label %if.end6.5, label %if.then.5

if.then.5:                                        ; preds = %for.inc.4
  %dest_port.i.5 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 5, i32 2
  %52 = ptrtoint ptr %dest_port.i.5 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %dest_port.i.5, align 2
  %54 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp.i.5 = icmp eq i16 %53, %55
  br i1 %cmp.i.5, label %land.lhs.true.i.5, label %if.then.5.for.inc.5_crit_edge

if.then.5.for.inc.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.i.5:                                ; preds = %if.then.5
  %arrayidx.5 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 5
  %56 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.5, align 4
  %58 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp5.i.5 = icmp eq i32 %57, %59
  br i1 %cmp5.i.5, label %land.lhs.true.i.5.if.then3_crit_edge, label %land.lhs.true.i.5.for.inc.5_crit_edge

land.lhs.true.i.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.i.5.if.then3_crit_edge:             ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select42.5 = select i1 %free_entry_found.1.off0.4, i32 %free_entry_idx.1.4, i32 5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end6.5, %land.lhs.true.i.5.for.inc.5_crit_edge, %if.then.5.for.inc.5_crit_edge
  %free_entry_found.1.off0.5 = phi i1 [ true, %if.end6.5 ], [ %free_entry_found.1.off0.4, %if.then.5.for.inc.5_crit_edge ], [ %free_entry_found.1.off0.4, %land.lhs.true.i.5.for.inc.5_crit_edge ]
  %free_entry_idx.1.5 = phi i32 [ %spec.select42.5, %if.end6.5 ], [ %free_entry_idx.1.4, %if.then.5.for.inc.5_crit_edge ], [ %free_entry_idx.1.4, %land.lhs.true.i.5.for.inc.5_crit_edge ]
  %valid_entry.6 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 6, i32 1
  %60 = ptrtoint ptr %valid_entry.6 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %valid_entry.6, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.6 = icmp eq i8 %61, 0
  br i1 %tobool.not.6, label %if.end6.6, label %if.then.6

if.then.6:                                        ; preds = %for.inc.5
  %dest_port.i.6 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 6, i32 2
  %62 = ptrtoint ptr %dest_port.i.6 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %dest_port.i.6, align 2
  %64 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp.i.6 = icmp eq i16 %63, %65
  br i1 %cmp.i.6, label %land.lhs.true.i.6, label %if.then.6.for.inc.6_crit_edge

if.then.6.for.inc.6_crit_edge:                    ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.i.6:                                ; preds = %if.then.6
  %arrayidx.6 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 6
  %66 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.6, align 4
  %68 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp5.i.6 = icmp eq i32 %67, %69
  br i1 %cmp5.i.6, label %land.lhs.true.i.6.if.then3_crit_edge, label %land.lhs.true.i.6.for.inc.6_crit_edge

land.lhs.true.i.6.for.inc.6_crit_edge:            ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.i.6.if.then3_crit_edge:             ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end6.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select42.6 = select i1 %free_entry_found.1.off0.5, i32 %free_entry_idx.1.5, i32 6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end6.6, %land.lhs.true.i.6.for.inc.6_crit_edge, %if.then.6.for.inc.6_crit_edge
  %free_entry_found.1.off0.6 = phi i1 [ true, %if.end6.6 ], [ %free_entry_found.1.off0.5, %if.then.6.for.inc.6_crit_edge ], [ %free_entry_found.1.off0.5, %land.lhs.true.i.6.for.inc.6_crit_edge ]
  %free_entry_idx.1.6 = phi i32 [ %spec.select42.6, %if.end6.6 ], [ %free_entry_idx.1.5, %if.then.6.for.inc.6_crit_edge ], [ %free_entry_idx.1.5, %land.lhs.true.i.6.for.inc.6_crit_edge ]
  %valid_entry.7 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 7, i32 1
  %70 = ptrtoint ptr %valid_entry.7 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %valid_entry.7, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.7 = icmp eq i8 %71, 0
  br i1 %tobool.not.7, label %for.inc.7.thread, label %if.then.7

if.then.7:                                        ; preds = %for.inc.6
  %dest_port.i.7 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 7, i32 2
  %72 = ptrtoint ptr %dest_port.i.7 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %dest_port.i.7, align 2
  %74 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %75)
  %cmp.i.7 = icmp eq i16 %73, %75
  br i1 %cmp.i.7, label %land.lhs.true.i.7, label %if.then.7.for.inc.7_crit_edge

if.then.7.for.inc.7_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true.i.7:                                ; preds = %if.then.7
  %arrayidx.7 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 7
  %76 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.7, align 4
  %78 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp5.i.7 = icmp eq i32 %77, %79
  br i1 %cmp5.i.7, label %land.lhs.true.i.7.if.then3_crit_edge, label %land.lhs.true.i.7.for.inc.7_crit_edge

land.lhs.true.i.7.for.inc.7_crit_edge:            ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7

land.lhs.true.i.7.if.then3_crit_edge:             ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.inc.7.thread:                                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select42.7 = select i1 %free_entry_found.1.off0.6, i32 %free_entry_idx.1.6, i32 7
  br label %if.then12

for.inc.7:                                        ; preds = %land.lhs.true.i.7.for.inc.7_crit_edge, %if.then.7.for.inc.7_crit_edge
  br i1 %free_entry_found.1.off0.6, label %for.inc.7.if.then12_crit_edge, label %for.inc.7.cleanup_crit_edge

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.7.if.then12_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %for.inc.7.if.then12_crit_edge, %for.inc.7.thread
  %free_entry_idx.1.754 = phi i32 [ %spec.select42.7, %for.inc.7.thread ], [ %free_entry_idx.1.6, %for.inc.7.if.then12_crit_edge ]
  %arrayidx14 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 %free_entry_idx.1.754
  %80 = call ptr @memcpy(ptr %arrayidx14, ptr %mg, i32 12)
  %valid_entry17 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 %free_entry_idx.1.754, i32 1
  %81 = ptrtoint ptr %valid_entry17 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %valid_entry17, align 4
  %use_cnt20 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 %free_entry_idx.1.754, i32 3
  %82 = ptrtoint ptr %use_cnt20 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %use_cnt20, align 4
  %no_of_mgs = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then12, %if.then3
  %no_of_mgs.sink55 = phi ptr [ %no_of_mgs, %if.then12 ], [ %use_cnt, %if.then3 ]
  %83 = ptrtoint ptr %no_of_mgs.sink55 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %no_of_mgs.sink55, align 4
  %inc21 = add i32 %84, 1
  store i32 %inc21, ptr %no_of_mgs.sink55, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.7.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %for.inc.7.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_sc_del_mcast_grp(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %mg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dest_port.i = getelementptr inbounds %struct.irdma_mcast_grp_ctx_entry_info, ptr %mg, i32 0, i32 2
  %arrayidx = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 0
  %valid_entry = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 0, i32 1
  %0 = ptrtoint ptr %valid_entry to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %valid_entry, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 0, i32 2
  %4 = ptrtoint ptr %dest_port1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dest_port1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.i = icmp eq i16 %3, %5
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end
  %6 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mg, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp5.i = icmp eq i32 %7, %9
  br i1 %cmp5.i, label %land.lhs.true.i.if.then3_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %land.lhs.true.i.7.if.then3_crit_edge, %land.lhs.true.i.6.if.then3_crit_edge, %land.lhs.true.i.5.if.then3_crit_edge, %land.lhs.true.i.4.if.then3_crit_edge, %land.lhs.true.i.3.if.then3_crit_edge, %land.lhs.true.i.2.if.then3_crit_edge, %land.lhs.true.i.1.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge
  %idx.055.lcssa = phi i32 [ 0, %land.lhs.true.i.if.then3_crit_edge ], [ 1, %land.lhs.true.i.1.if.then3_crit_edge ], [ 2, %land.lhs.true.i.2.if.then3_crit_edge ], [ 3, %land.lhs.true.i.3.if.then3_crit_edge ], [ 4, %land.lhs.true.i.4.if.then3_crit_edge ], [ 5, %land.lhs.true.i.5.if.then3_crit_edge ], [ 6, %land.lhs.true.i.6.if.then3_crit_edge ], [ 7, %land.lhs.true.i.7.if.then3_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %land.lhs.true.i.if.then3_crit_edge ], [ %arrayidx.1, %land.lhs.true.i.1.if.then3_crit_edge ], [ %arrayidx.2, %land.lhs.true.i.2.if.then3_crit_edge ], [ %arrayidx.3, %land.lhs.true.i.3.if.then3_crit_edge ], [ %arrayidx.4, %land.lhs.true.i.4.if.then3_crit_edge ], [ %arrayidx.5, %land.lhs.true.i.5.if.then3_crit_edge ], [ %arrayidx.6, %land.lhs.true.i.6.if.then3_crit_edge ], [ %arrayidx.7, %land.lhs.true.i.7.if.then3_crit_edge ]
  %valid_entry.lcssa = phi ptr [ %valid_entry, %land.lhs.true.i.if.then3_crit_edge ], [ %valid_entry.1, %land.lhs.true.i.1.if.then3_crit_edge ], [ %valid_entry.2, %land.lhs.true.i.2.if.then3_crit_edge ], [ %valid_entry.3, %land.lhs.true.i.3.if.then3_crit_edge ], [ %valid_entry.4, %land.lhs.true.i.4.if.then3_crit_edge ], [ %valid_entry.5, %land.lhs.true.i.5.if.then3_crit_edge ], [ %valid_entry.6, %land.lhs.true.i.6.if.then3_crit_edge ], [ %valid_entry.7, %land.lhs.true.i.7.if.then3_crit_edge ]
  %use_cnt = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 %idx.055.lcssa, i32 3
  %10 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %use_cnt, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %use_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %if.then10, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.then3
  %12 = ptrtoint ptr %valid_entry.lcssa to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %valid_entry.lcssa, align 4
  %no_of_mgs = getelementptr inbounds %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 5
  %13 = ptrtoint ptr %no_of_mgs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %no_of_mgs, align 4
  %dec14 = add i32 %14, -1
  store i32 %dec14, ptr %no_of_mgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.055.lcssa, i32 %dec14)
  %cmp16.not = icmp eq i32 %idx.055.lcssa, %dec14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec14)
  %cmp18.not = icmp eq i32 %dec14, 0
  %or.cond = or i1 %cmp16.not, %cmp18.not
  br i1 %or.cond, label %if.then10.cleanup_crit_edge, label %if.then19

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %14, -2
  %arrayidx24 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 %sub
  %15 = call ptr @memcpy(ptr %arrayidx.lcssa, ptr %arrayidx24, i32 12)
  %16 = ptrtoint ptr %no_of_mgs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %no_of_mgs, align 4
  %sub27 = add i32 %17, -1
  %valid_entry29 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 %sub27, i32 1
  %18 = ptrtoint ptr %valid_entry29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %valid_entry29, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.i.for.inc_crit_edge, %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 1
  %valid_entry.1 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 1, i32 1
  %19 = ptrtoint ptr %valid_entry.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %valid_entry.1, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.1 = icmp eq i8 %20, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %21 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i.1 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 1, i32 2
  %23 = ptrtoint ptr %dest_port1.i.1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dest_port1.i.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp.i.1 = icmp eq i16 %22, %24
  br i1 %cmp.i.1, label %land.lhs.true.i.1, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.i.1:                                ; preds = %if.end.1
  %25 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mg, align 4
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp5.i.1 = icmp eq i32 %26, %28
  br i1 %cmp5.i.1, label %land.lhs.true.i.1.if.then3_crit_edge, label %land.lhs.true.i.1.for.inc.1_crit_edge

land.lhs.true.i.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.i.1.if.then3_crit_edge:             ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.inc.1:                                        ; preds = %land.lhs.true.i.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 2
  %valid_entry.2 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 2, i32 1
  %29 = ptrtoint ptr %valid_entry.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %valid_entry.2, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.2 = icmp eq i8 %30, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %31 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i.2 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 2, i32 2
  %33 = ptrtoint ptr %dest_port1.i.2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dest_port1.i.2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp.i.2 = icmp eq i16 %32, %34
  br i1 %cmp.i.2, label %land.lhs.true.i.2, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.i.2:                                ; preds = %if.end.2
  %35 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mg, align 4
  %37 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp5.i.2 = icmp eq i32 %36, %38
  br i1 %cmp5.i.2, label %land.lhs.true.i.2.if.then3_crit_edge, label %land.lhs.true.i.2.for.inc.2_crit_edge

land.lhs.true.i.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.i.2.if.then3_crit_edge:             ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.inc.2:                                        ; preds = %land.lhs.true.i.2.for.inc.2_crit_edge, %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 3
  %valid_entry.3 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 3, i32 1
  %39 = ptrtoint ptr %valid_entry.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %valid_entry.3, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.3 = icmp eq i8 %40, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %41 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i.3 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 3, i32 2
  %43 = ptrtoint ptr %dest_port1.i.3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %dest_port1.i.3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp.i.3 = icmp eq i16 %42, %44
  br i1 %cmp.i.3, label %land.lhs.true.i.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.i.3:                                ; preds = %if.end.3
  %45 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mg, align 4
  %47 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp5.i.3 = icmp eq i32 %46, %48
  br i1 %cmp5.i.3, label %land.lhs.true.i.3.if.then3_crit_edge, label %land.lhs.true.i.3.for.inc.3_crit_edge

land.lhs.true.i.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

land.lhs.true.i.3.if.then3_crit_edge:             ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.inc.3:                                        ; preds = %land.lhs.true.i.3.for.inc.3_crit_edge, %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 4
  %valid_entry.4 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 4, i32 1
  %49 = ptrtoint ptr %valid_entry.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %valid_entry.4, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.4 = icmp eq i8 %50, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %51 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i.4 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 4, i32 2
  %53 = ptrtoint ptr %dest_port1.i.4 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %dest_port1.i.4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %52, i16 %54)
  %cmp.i.4 = icmp eq i16 %52, %54
  br i1 %cmp.i.4, label %land.lhs.true.i.4, label %if.end.4.for.inc.4_crit_edge

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.i.4:                                ; preds = %if.end.4
  %55 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mg, align 4
  %57 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp5.i.4 = icmp eq i32 %56, %58
  br i1 %cmp5.i.4, label %land.lhs.true.i.4.if.then3_crit_edge, label %land.lhs.true.i.4.for.inc.4_crit_edge

land.lhs.true.i.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

land.lhs.true.i.4.if.then3_crit_edge:             ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.inc.4:                                        ; preds = %land.lhs.true.i.4.for.inc.4_crit_edge, %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 5
  %valid_entry.5 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 5, i32 1
  %59 = ptrtoint ptr %valid_entry.5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %valid_entry.5, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.5 = icmp eq i8 %60, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %61 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i.5 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 5, i32 2
  %63 = ptrtoint ptr %dest_port1.i.5 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dest_port1.i.5, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %64)
  %cmp.i.5 = icmp eq i16 %62, %64
  br i1 %cmp.i.5, label %land.lhs.true.i.5, label %if.end.5.for.inc.5_crit_edge

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.i.5:                                ; preds = %if.end.5
  %65 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mg, align 4
  %67 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp5.i.5 = icmp eq i32 %66, %68
  br i1 %cmp5.i.5, label %land.lhs.true.i.5.if.then3_crit_edge, label %land.lhs.true.i.5.for.inc.5_crit_edge

land.lhs.true.i.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5

land.lhs.true.i.5.if.then3_crit_edge:             ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.inc.5:                                        ; preds = %land.lhs.true.i.5.for.inc.5_crit_edge, %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 6
  %valid_entry.6 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 6, i32 1
  %69 = ptrtoint ptr %valid_entry.6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %valid_entry.6, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.6 = icmp eq i8 %70, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %71 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i.6 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 6, i32 2
  %73 = ptrtoint ptr %dest_port1.i.6 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %dest_port1.i.6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %74)
  %cmp.i.6 = icmp eq i16 %72, %74
  br i1 %cmp.i.6, label %land.lhs.true.i.6, label %if.end.6.for.inc.6_crit_edge

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.i.6:                                ; preds = %if.end.6
  %75 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mg, align 4
  %77 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp5.i.6 = icmp eq i32 %76, %78
  br i1 %cmp5.i.6, label %land.lhs.true.i.6.if.then3_crit_edge, label %land.lhs.true.i.6.for.inc.6_crit_edge

land.lhs.true.i.6.for.inc.6_crit_edge:            ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6

land.lhs.true.i.6.if.then3_crit_edge:             ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

for.inc.6:                                        ; preds = %land.lhs.true.i.6.for.inc.6_crit_edge, %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 7
  %valid_entry.7 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 7, i32 1
  %79 = ptrtoint ptr %valid_entry.7 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %valid_entry.7, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.7 = icmp eq i8 %80, 0
  br i1 %tobool.not.7, label %for.inc.6.cleanup_crit_edge, label %if.end.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.7:                                         ; preds = %for.inc.6
  %81 = ptrtoint ptr %dest_port.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %dest_port.i, align 2
  %dest_port1.i.7 = getelementptr %struct.irdma_mcast_grp_info, ptr %ctx, i32 0, i32 10, i32 7, i32 2
  %83 = ptrtoint ptr %dest_port1.i.7 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %dest_port1.i.7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %82, i16 %84)
  %cmp.i.7 = icmp eq i16 %82, %84
  br i1 %cmp.i.7, label %land.lhs.true.i.7, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i.7:                                ; preds = %if.end.7
  %85 = ptrtoint ptr %mg to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mg, align 4
  %87 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp5.i.7 = icmp eq i32 %86, %88
  br i1 %cmp5.i.7, label %land.lhs.true.i.7.if.then3_crit_edge, label %land.lhs.true.i.7.cleanup_crit_edge

land.lhs.true.i.7.cleanup_crit_edge:              ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i.7.if.then3_crit_edge:             ; preds = %land.lhs.true.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

cleanup:                                          ; preds = %land.lhs.true.i.7.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %if.then19, %if.then10.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.then3.cleanup_crit_edge ], [ -5, %land.lhs.true.i.7.cleanup_crit_edge ], [ -5, %if.end.7.cleanup_crit_edge ], [ -5, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_sc_cqp_get_next_send_wqe_idx(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !16, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/uda.c", i32 78, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @irdma_sc_access_ah.__UNIQUE_ID_ddebug613, !1, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/irdma/uda.c", i32 128, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug629, !8, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/irdma/uda.c", i32 134, i32 3}
!13 = !{ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug630, !12, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/irdma/uda.c", i32 171, i32 2}
!16 = !{ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug696, !15, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/irdma/uda.c", i32 173, i32 2}
!19 = !{ptr @irdma_access_mcast_grp.__UNIQUE_ID_ddebug697, !18, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
!30 = !{i64 2159053366}
!31 = !{i64 2148856101, i64 2148856106, i64 2148856119, i64 2148856163, i64 2148856197, i64 2148856218}
!32 = !{i8 0, i8 2}
!33 = !{i64 2159645405}
