; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/ioctl.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.viafb_ioctl_info = type { i32, i16, i16, i8, i8, [246 x i8] }
%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }

@viaparinfo = external dso_local local_unnamed_addr global ptr, align 4
@viafb_DeviceStatus = external dso_local local_unnamed_addr global i32, align 4
@viafb_DVI_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_CRT_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_LCD_ON = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.viafb_ioctl_get_viafb_info = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 12578, i16 29189, i16 12552, i16 12568, i16 13124, i16 12631, i16 12578, i16 12848, i16 13123, i16 13169], [44 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [35 x i8] c"../drivers/video/fbdev/via/ioctl.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 174, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [40 x i8] c"switch.table.viafb_ioctl_get_viafb_info\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str.2, ptr @switch.table.viafb_ioctl_get_viafb_info], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_ioctl_get_viafb_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_ioctl_get_viafb_info(i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %viainfo = alloca %struct.viafb_ioctl_info, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %viainfo) #3
  %0 = getelementptr inbounds i8, ptr %viainfo, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 252)
  %2 = ptrtoint ptr %viainfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1447641414, ptr %viainfo, align 4
  %vendor_id = getelementptr inbounds %struct.viafb_ioctl_info, ptr %viainfo, i32 0, i32 1
  %3 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4358, ptr %vendor_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %4 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 10
  br i1 %9, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 959, %switch.maskindex
  %10 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %switch.lobit.not = icmp eq i16 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [10 x i16], ptr @switch.table.viafb_ioctl_get_viafb_info, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %11)
  %switch.load = load i16, ptr %switch.gep, align 2
  %device_id16 = getelementptr inbounds %struct.viafb_ioctl_info, ptr %viainfo, i32 0, i32 2
  %12 = ptrtoint ptr %device_id16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %switch.load, ptr %device_id16, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %version = getelementptr inbounds %struct.viafb_ioctl_info, ptr %viainfo, i32 0, i32 3
  %13 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %version, align 4
  %revision = getelementptr inbounds %struct.viafb_ioctl_info, ptr %viainfo, i32 0, i32 4
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %revision, align 1
  %15 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #3
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #3
  br i1 %call.i.i, label %sw.epilog.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.epilog.copy_to_user.exit.thread_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.epilog
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 256, i32 -1226833920) #6, !srcloc !16
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %viainfo, i32 noundef 256) #3
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %viainfo, i32 noundef 256) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.epilog.copy_to_user.exit.thread_crit_edge
  %17 = phi i32 [ -14, %sw.epilog.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %viainfo) #3
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_ioctl_hotplug(i32 noundef %hres, i32 noundef %vres, i32 noundef %bpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %tmds_chip_info = getelementptr inbounds %struct.chip_information, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %tmds_chip_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmds_chip_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @viafb_dvi_sense() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then1

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then1:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DeviceStatus to i32))
  %5 = load i32, ptr @viafb_DeviceStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp3.not = icmp eq i32 %5, 8
  br i1 %cmp3.not, label %if.then1.cleanup_crit_edge, label %if.then1.cleanup.sink.split_crit_edge

if.then1.cleanup.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DeviceStatus to i32))
  %6 = load i32, ptr @viafb_DeviceStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp8.not = icmp eq i32 %6, 1
  br i1 %cmp8.not, label %if.end7.cleanup_crit_edge, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end7.cleanup.sink.split_crit_edge, %if.then1.cleanup.sink.split_crit_edge
  %viafb_CRT_ON.sink = phi ptr [ @viafb_DVI_ON, %if.then1.cleanup.sink.split_crit_edge ], [ @viafb_CRT_ON, %if.end7.cleanup.sink.split_crit_edge ]
  %viafb_DVI_ON.sink = phi ptr [ @viafb_CRT_ON, %if.then1.cleanup.sink.split_crit_edge ], [ @viafb_DVI_ON, %if.end7.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 8, %if.then1.cleanup.sink.split_crit_edge ], [ 1, %if.end7.cleanup.sink.split_crit_edge ]
  %7 = ptrtoint ptr %viafb_CRT_ON.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %viafb_CRT_ON.sink, align 4
  %8 = ptrtoint ptr %viafb_DVI_ON.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %viafb_DVI_ON.sink, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  store i32 0, ptr @viafb_LCD_ON, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DeviceStatus to i32))
  store i32 %.sink, ptr @viafb_DeviceStatus, align 4
  tail call void @viafb_set_iga_path() #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DeviceStatus to i32))
  %9 = load i32, ptr @viafb_DeviceStatus, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge, %if.then1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ %9, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @viafb_dvi_sense() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_set_iga_path() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i64 2153275127, i64 2153275152}
