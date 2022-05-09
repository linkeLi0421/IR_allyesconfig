; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/mediatek/mt7601u/util.c_pt.bc'
source_filename = "../drivers/net/wireless/mediatek/mt7601u/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt76_remove_hdr_pad(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %2 = call ptr @memmove(ptr %add.ptr, ptr %1, i32 %call)
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt76_insert_hdr_pad(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #2
  %0 = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %1 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_cloned.exit.thread.i, label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %if.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #2
  %4 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dataref.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 2
  br i1 %cmp.i1.i, label %skb_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i.i

skb_cloned.exit.i.if.end.thread.i.i_crit_edge:    ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.thread.i.i

skb_cloned.exit.thread.i:                         ; preds = %if.end
  %data.i.i2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i2.i, align 4
  %head.i.i3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i3.i, align 8
  %sub.ptr.lhs.cast.i.i4.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i5.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i6.i = sub i32 %sub.ptr.lhs.cast.i.i4.i, %sub.ptr.rhs.cast.i.i5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i6.i)
  %cmp.i17.i = icmp ult i32 %sub.ptr.sub.i.i6.i, 2
  br i1 %cmp.i17.i, label %skb_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_cloned.exit.thread.i.if.end3_crit_edge

skb_cloned.exit.thread.i.if.end3_crit_edge:       ; preds = %skb_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

skb_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i8.i = phi i32 [ %sub.ptr.sub.i.i6.i, %skb_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 129, %sub.ptr.sub.i.i8.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow.exit

if.end.i.i:                                       ; preds = %skb_cloned.exit.i
  %and.i.i = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i.i.if.end3_crit_edge, label %if.end.i.i.skb_cow.exit_crit_edge

if.end.i.i.skb_cow.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %skb_cow.exit

if.end.i.i.if.end3_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

skb_cow.exit:                                     ; preds = %if.end.i.i.skb_cow.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i.i.skb_cow.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow.exit.if.end3_crit_edge, label %skb_cow.exit.cleanup_crit_edge

skb_cow.exit.cleanup_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

skb_cow.exit.if.end3_crit_edge:                   ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

if.end3:                                          ; preds = %skb_cow.exit.if.end3_crit_edge, %if.end.i.i.if.end3_crit_edge, %skb_cloned.exit.thread.i.if.end3_crit_edge
  %call4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 2
  %16 = call ptr @memmove(ptr %15, ptr %add.ptr, i32 %call)
  %17 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %17, i32 %call
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx, align 1
  %19 = load ptr, ptr %data, align 4
  %add = add i32 %call, 1
  %arrayidx8 = getelementptr i8, ptr %19, i32 %add
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx8, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %skb_cow.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call4.i.i, %skb_cow.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
