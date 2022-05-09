; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nffw.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nffw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfp_nffw_info = type { ptr, ptr, %struct.nfp_nffw_info_data }
%struct.nfp_nffw_info_data = type { [2 x i32], %union.anon }
%union.anon = type { %struct.nfp_nffw_info_v2 }
%struct.nfp_nffw_info_v2 = type { [200 x %struct.nffw_meinfo], [200 x %struct.nffw_fwinfo] }
%struct.nffw_meinfo = type { i32 }
%struct.nffw_fwinfo = type { i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfp.nffw\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [57 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nffw.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 170, i32 41 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_nffw_info_open(ptr noundef %cpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3216) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @nfp_resource_acquire(ptr noundef %cpp, ptr noundef nonnull @.str) #4
  %res = getelementptr inbounds %struct.nfp_nffw_info, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %res, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.err_free_crit_edge, label %if.end6

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

if.end6:                                          ; preds = %if.end
  %fwinf7 = getelementptr inbounds %struct.nfp_nffw_info, ptr %call7.i.i, i32 0, i32 2
  %call9 = tail call i64 @nfp_resource_size(ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 3208, i64 %call9)
  %cmp = icmp ult i64 %call9, 3208
  br i1 %cmp, label %if.end6.err_release_crit_edge, label %if.end11

if.end6.err_release_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_release

if.end11:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res, align 4
  %call13 = tail call i32 @nfp_resource_cpp_id(ptr noundef %3) #4
  %call15 = tail call i64 @nfp_resource_address(ptr noundef %3) #4
  %call16 = tail call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef %call13, i64 noundef %call15, ptr noundef %fwinf7, i32 noundef 3208) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3208, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 3208
  br i1 %cmp17, label %if.end11.err_release_crit_edge, label %if.end19

if.end11.err_release_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_release

if.end19:                                         ; preds = %if.end11
  %4 = ptrtoint ptr %fwinf7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fwinf7, align 8
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool21.not = icmp eq i32 %6, 0
  br i1 %tobool21.not, label %if.end19.err_release_crit_edge, label %if.end23

if.end19.err_release_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_release

if.end23:                                         ; preds = %if.end19
  %7 = and i32 %5, 65295
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %8)
  %cmp25 = icmp ugt i32 %8, 131072
  br i1 %cmp25, label %if.end23.err_release_crit_edge, label %if.end27

if.end23.err_release_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_release

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cpp, ptr %call7.i.i, align 8
  br label %cleanup

err_release:                                      ; preds = %if.end23.err_release_crit_edge, %if.end19.err_release_crit_edge, %if.end11.err_release_crit_edge, %if.end6.err_release_crit_edge
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %res, align 4
  tail call void @nfp_resource_release(ptr noundef %11) #4
  br label %err_free

err_free:                                         ; preds = %err_release, %if.end.err_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %err_free ], [ %call7.i.i, %if.end27 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_resource_acquire(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_resource_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_resource_cpp_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_resource_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_resource_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_nffw_info_close(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.nfp_nffw_info, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @nfp_resource_release(ptr noundef %1) #4
  tail call void @kfree(ptr noundef %state) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nffw_info_mip_first(ptr noundef readonly %state, ptr nocapture noundef writeonly %cpp_id, ptr nocapture noundef %off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fwinf.i = getelementptr inbounds %struct.nfp_nffw_info, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fwinf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fwinf.i, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %shr.i.i.i = lshr i32 %2, 16
  %and.i.i.i = and i32 %shr.i.i.i, 4095
  %3 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb.i.i_crit_edge
    i32 1, label %entry.sw.bb.i.i_crit_edge31
    i32 2, label %sw.bb1.i.i
  ]

entry.sw.bb.i.i_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i.i:                                        ; preds = %entry.sw.bb.i.i_crit_edge, %entry.sw.bb.i.i_crit_edge31
  %fwinfo.i.i = getelementptr inbounds %struct.nfp_nffw_info, ptr %state, i32 0, i32 2, i32 1, i32 0, i32 0, i32 120
  br label %nffw_res_fwinfos.exit.i

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fwinfo3.i.i = getelementptr inbounds %struct.nfp_nffw_info, ptr %state, i32 0, i32 2, i32 1, i32 0, i32 1
  br label %nffw_res_fwinfos.exit.i

nffw_res_fwinfos.exit.i:                          ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %.sink.i.i = phi ptr [ %fwinfo3.i.i, %sw.bb1.i.i ], [ %fwinfo.i.i, %sw.bb.i.i ]
  %retval.0.i.i = phi i32 [ 200, %sw.bb1.i.i ], [ 120, %sw.bb.i.i ]
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %retval.0.i.i
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %nffw_res_fwinfos.exit.i
  %i.016.i = phi i32 [ 0, %nffw_res_fwinfos.exit.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nffw_fwinfo, ptr %.sink.i.i, i32 %i.016.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %for.cond.i, label %nfp_nffw_info_fwid_first.exit

nfp_nffw_info_fwid_first.exit:                    ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %nfp_nffw_info_fwid_first.exit.cleanup_crit_edge, label %if.end

nfp_nffw_info_fwid_first.exit.cleanup_crit_edge:  ; preds = %nfp_nffw_info_fwid_first.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %nfp_nffw_info_fwid_first.exit
  %mip_cppid.i = getelementptr %struct.nffw_fwinfo, ptr %.sink.i.i, i32 %i.016.i, i32 1
  %7 = ptrtoint ptr %mip_cppid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mip_cppid.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  %10 = ptrtoint ptr %cpp_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cpp_id, align 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = lshr i32 %12, 24
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %mip_offset_lo.i = getelementptr %struct.nffw_fwinfo, ptr %.sink.i.i, i32 %i.016.i, i32 2
  %14 = ptrtoint ptr %mip_offset_lo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mip_offset_lo.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  %conv1.i = zext i32 %16 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %17 = ptrtoint ptr %off to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i, ptr %off, align 8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not = icmp eq i32 %20, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %call6 = tail call i32 @nfp_cpp_mu_locality_lsb(ptr noundef %22) #4
  %sh_prom = zext i32 %call6 to i64
  %shl = shl i64 3, %sh_prom
  %neg = xor i64 %shl, -1
  %23 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %off, align 8
  %and = and i64 %24, %neg
  %shl8 = shl i64 2, %sh_prom
  %or = or i64 %and, %shl8
  store i64 %or, ptr %off, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %nfp_nffw_info_fwid_first.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %nfp_nffw_info_fwid_first.exit.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_mu_locality_lsb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nffw.c", i32 170, i32 41}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
