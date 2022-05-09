; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/apm/xgene-v2/ring.c_pt.bc'
source_filename = "../drivers/net/ethernet/apm/xgene-v2/ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xge_desc_ring = type { ptr, i32, i8, i8, %union.anon.144, ptr }
%union.anon.144 = type { ptr }
%struct.xge_raw_desc = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xge_pdata = type { %struct.xge_resource, ptr, ptr, ptr, [16 x i8], ptr, ptr, %struct.napi_struct, %struct.xge_stats, i32, i8 }
%struct.xge_resource = type { ptr, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.xge_stats = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_setup_desc(ptr nocapture noundef readonly %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xge_desc_ring, ptr %ring, i32 0, i32 4
  %dma_addr = getelementptr inbounds %struct.xge_desc_ring, ptr %ring, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr %struct.xge_raw_desc, ptr %2, i32 %i.016
  %add = add nuw nsw i32 %i.016, 1
  %3 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_addr, align 4
  %conv = shl i32 %add, 6
  %mul = and i32 %conv, 16320
  %add2 = add i32 %4, %mul
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 4279173248, ptr %arrayidx, align 8
  %conv5 = zext i32 %add2 to i64
  %6 = tail call i64 @llvm.bswap.i64(i64 %conv5)
  %m1 = getelementptr %struct.xge_raw_desc, ptr %2, i32 %i.016, i32 1
  %7 = ptrtoint ptr %m1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %m1, align 8
  %exitcond.not = icmp eq i32 %add, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_update_tx_desc_addr(ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.xge_pdata, ptr %pdata, i32 0, i32 1
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 4
  %dma_addr1 = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr1, align 4
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41348, i32 noundef %3) #4
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41376, i32 noundef 0) #4
  %head = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tail, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xge_wr_csr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_update_rx_desc_addr(ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.xge_pdata, ptr %pdata, i32 0, i32 2
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 8
  %dma_addr1 = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dma_addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_addr1, align 4
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41360, i32 noundef %3) #4
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41380, i32 noundef 0) #4
  %head = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.xge_desc_ring, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tail, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_intr_enable(ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41368, i32 noundef 17) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xge_intr_disable(ptr noundef %pdata) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xge_wr_csr(ptr noundef %pdata, i32 noundef 41368, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
