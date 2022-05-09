; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-av.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-av.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_av_work_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %handled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -11040
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %handled) #3
  %0 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %handled, align 1
  %sd_cx25840 = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd_cx25840, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.then22_crit_edge, label %if.else

entry.if.then22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then22

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.else.if.end19_crit_edge, label %land.lhs.true

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

land.lhs.true:                                    ; preds = %if.else
  %interrupt_service_routine = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %interrupt_service_routine to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interrupt_service_routine, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end19_crit_edge, label %if.else6

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %9 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.else6.if.else13_crit_edge, label %land.lhs.true8

if.else6.if.else13_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else13

land.lhs.true8:                                   ; preds = %if.else6
  %interrupt_service_routine9 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %interrupt_service_routine9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_service_routine9, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else13_crit_edge, label %land.lhs.true8.if.end19.sink.split_crit_edge

land.lhs.true8.if.end19.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19.sink.split

land.lhs.true8.if.else13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else13

if.else13:                                        ; preds = %land.lhs.true8.if.else13_crit_edge, %if.else6.if.else13_crit_edge
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.else13, %land.lhs.true8.if.end19.sink.split_crit_edge
  %.sink = phi ptr [ %8, %if.else13 ], [ %11, %land.lhs.true8.if.end19.sink.split_crit_edge ]
  %call17 = call i32 %.sink(ptr noundef nonnull %2, i32 noundef 134217728, ptr noundef nonnull %handled) #3
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true.if.end19_crit_edge, %if.else.if.end19_crit_edge
  %12 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %handled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool21.not = icmp eq i8 %.pr, 0
  br i1 %tobool21.not, label %if.end19.if.then22_crit_edge, label %if.end19.if.end31_crit_edge

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end31

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then22

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %entry.if.then22_crit_edge
  %call23 = call zeroext i8 @cx23885_flatiron_read(ptr noundef %add.ptr, i8 noundef zeroext 31) #3
  %13 = or i8 %call23, -128
  %call25 = call i32 @cx23885_flatiron_write(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext %13) #3
  %call26 = call zeroext i8 @cx23885_flatiron_read(ptr noundef %add.ptr, i8 noundef zeroext 35) #3
  %14 = or i8 %call26, -128
  %call30 = call i32 @cx23885_flatiron_write(ptr noundef %add.ptr, i8 noundef zeroext 35, i8 noundef zeroext %14) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then22, %if.end19.if.end31_crit_edge
  call void @cx23885_irq_enable(ptr noundef %add.ptr, i32 noundef 134217728) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_flatiron_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cx23885_flatiron_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_irq_enable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
