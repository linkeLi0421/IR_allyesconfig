; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dmub/src/dmub_srv_stat.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dmub/src/dmub_srv_stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dmub_srv = type { i32, ptr, i32, i8, %struct.dmub_fb, ptr, ptr, ptr, %struct.dmub_srv_base_funcs, %struct.dmub_srv_hw_funcs, %struct.dmub_rb, i32, %struct.dmub_rb, %struct.dmub_rb, i8, i8, i64, i64, i32, %struct.dmub_feature_caps }
%struct.dmub_fb = type { ptr, i64, i32 }
%struct.dmub_srv_base_funcs = type { ptr, ptr }
%struct.dmub_srv_hw_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmub_rb = type { ptr, i32, i32, i32, ptr, ptr }
%struct.dmub_feature_caps = type { i8, [7 x i8] }
%struct.dmub_notification = type { i32, i8, i8, i8, %union.anon }
%union.anon = type { i32, [16 x i8] }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dmub_srv_stat_get_notification(ptr noundef %dmub, ptr nocapture noundef writeonly %notify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_init = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 15
  %0 = ptrtoint ptr %hw_init to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hw_init, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %notify, align 4
  %pending_notification = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 3
  %3 = ptrtoint ptr %pending_notification to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pending_notification, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_outbox1_wptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 9
  %4 = ptrtoint ptr %get_outbox1_wptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_outbox1_wptr, align 4
  %call = tail call i32 %5(ptr noundef %dmub) #1
  %wrpt = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12, i32 2
  %6 = ptrtoint ptr %wrpt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %wrpt, align 8
  %rptr.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %8)
  %cmp.i.i = icmp eq i32 %call, %8
  br i1 %cmp.i.i, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %9 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %notify, align 4
  %pending_notification5 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 3
  %10 = ptrtoint ptr %pending_notification5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pending_notification5, align 2
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %outbox1_rb = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12
  %11 = ptrtoint ptr %outbox1_rb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %outbox1_rb, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %8
  %incdec.ptr.i = getelementptr i64, ptr %add.ptr.i, i32 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load volatile i64, ptr %add.ptr.i, align 8
  %cmd.sroa.0.sroa.5.0.extract.shift = lshr i64 %14, 24
  %cmd.sroa.0.sroa.5.0.extract.trunc = trunc i64 %cmd.sroa.0.sroa.5.0.extract.shift to i8
  %cmd.sroa.0.sroa.7.0.extract.shift = lshr i64 %14, 16
  %15 = trunc i64 %14 to i32
  %16 = lshr i32 %15, 8
  %incdec.ptr.1.i = getelementptr i64, ptr %incdec.ptr.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load volatile i64, ptr %incdec.ptr.i, align 8
  %incdec.ptr.2.i = getelementptr i64, ptr %incdec.ptr.1.i, i32 1
  %19 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load volatile i64, ptr %incdec.ptr.1.i, align 8
  %incdec.ptr.3.i = getelementptr i64, ptr %incdec.ptr.2.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load volatile i64, ptr %incdec.ptr.2.i, align 8
  %incdec.ptr.4.i = getelementptr i64, ptr %incdec.ptr.3.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load volatile i64, ptr %incdec.ptr.3.i, align 8
  %incdec.ptr.5.i = getelementptr i64, ptr %incdec.ptr.4.i, i32 1
  %25 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load volatile i64, ptr %incdec.ptr.4.i, align 8
  %incdec.ptr.6.i = getelementptr i64, ptr %incdec.ptr.5.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load volatile i64, ptr %incdec.ptr.5.i, align 8
  %29 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load volatile i64, ptr %incdec.ptr.6.i, align 8
  %sum.shift = lshr i64 %14, 56
  %trunc = trunc i64 %sum.shift to i8
  %31 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb10
    i8 3, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #3
  %cmd.sroa.10.sroa.5.0.extract.shift = lshr i64 %18, 48
  %cmd.sroa.10.sroa.5.0.extract.trunc = trunc i64 %cmd.sroa.10.sroa.5.0.extract.shift to i8
  %cmd.sroa.10.sroa.0.0.extract.shift = lshr i64 %18, 56
  %cmd.sroa.10.sroa.0.0.extract.trunc = trunc i64 %cmd.sroa.10.sroa.0.0.extract.shift to i8
  %32 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %notify, align 4
  %link_index = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 1
  %33 = ptrtoint ptr %link_index to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %cmd.sroa.10.sroa.0.0.extract.trunc, ptr %link_index, align 4
  %result9 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 2
  %34 = ptrtoint ptr %result9 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %cmd.sroa.10.sroa.5.0.extract.trunc, ptr %result9, align 1
  %35 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 4
  %cmd.sroa.10.sroa.6.sroa.0.2.extract.trunc = trunc i64 %18 to i32
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cmd.sroa.10.sroa.6.sroa.0.2.extract.trunc, ptr %35, align 4
  %cmd.sroa.14.12..sroa_idx = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %cmd.sroa.14.12..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %20, ptr %cmd.sroa.14.12..sroa_idx, align 4
  %cmd.sroa.15.12..sroa_idx = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 4, i32 1, i32 8
  %38 = ptrtoint ptr %cmd.sroa.15.12..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %22, ptr %cmd.sroa.15.12..sroa_idx, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  %cmd.sroa.0.sroa.7.0.extract.trunc = trunc i64 %cmd.sroa.0.sroa.7.0.extract.shift to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cmd.sroa.0.sroa.7.0.extract.trunc)
  %cmp = icmp eq i8 %cmd.sroa.0.sroa.7.0.extract.trunc, 0
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #3
  %39 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %notify, align 4
  %conv15 = and i32 %16, 255
  %40 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv15, ptr %40, align 4
  br label %if.end17

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #3
  %42 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %notify, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %link_index20 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 1
  %43 = ptrtoint ptr %link_index20 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %cmd.sroa.0.sroa.5.0.extract.trunc, ptr %link_index20, align 4
  %result21 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 2
  %44 = ptrtoint ptr %result21 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %result21, align 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #3
  %45 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %notify, align 4
  %link_index25 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 1
  %46 = ptrtoint ptr %link_index25 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %cmd.sroa.0.sroa.5.0.extract.trunc, ptr %link_index25, align 4
  %47 = trunc i64 %cmd.sroa.0.sroa.7.0.extract.shift to i32
  %conv27 = and i32 %47, 255
  %48 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv27, ptr %48, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #3
  %50 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %notify, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %if.end17, %sw.bb
  %51 = ptrtoint ptr %wrpt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wrpt, align 4
  %53 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp.i.i68 = icmp eq i32 %52, %54
  br i1 %cmp.i.i68, label %sw.epilog.dmub_rb_pop_front.exit_crit_edge, label %if.end.i69

sw.epilog.dmub_rb_pop_front.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #3
  br label %dmub_rb_pop_front.exit

if.end.i69:                                       ; preds = %sw.epilog
  %add.i = add i32 %54, 64
  %55 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i, ptr %rptr.i, align 4
  %capacity.i = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 12, i32 3
  %56 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %capacity.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %57)
  %cmp.not.i = icmp ult i32 %add.i, %57
  br i1 %cmp.not.i, label %if.end.i69.dmub_rb_pop_front.exit_crit_edge, label %if.then2.i

if.end.i69.dmub_rb_pop_front.exit_crit_edge:      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #3
  br label %dmub_rb_pop_front.exit

if.then2.i:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #3
  %rem.i = urem i32 %add.i, %57
  %58 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %rem.i, ptr %rptr.i, align 4
  br label %dmub_rb_pop_front.exit

dmub_rb_pop_front.exit:                           ; preds = %if.then2.i, %if.end.i69.dmub_rb_pop_front.exit_crit_edge, %sw.epilog.dmub_rb_pop_front.exit_crit_edge
  %set_outbox1_rptr = getelementptr inbounds %struct.dmub_srv, ptr %dmub, i32 0, i32 9, i32 10
  %59 = ptrtoint ptr %set_outbox1_rptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_outbox1_rptr, align 4
  %61 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rptr.i, align 4
  tail call void %60(ptr noundef %dmub, i32 noundef %62) #1
  %63 = ptrtoint ptr %wrpt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wrpt, align 4
  %65 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp.i = icmp eq i32 %64, %66
  %pending_notification36 = getelementptr inbounds %struct.dmub_notification, ptr %notify, i32 0, i32 3
  br i1 %cmp.i, label %if.then35, label %if.else37

if.then35:                                        ; preds = %dmub_rb_pop_front.exit
  call void @__sanitizer_cov_trace_pc() #3
  %67 = ptrtoint ptr %pending_notification36 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %pending_notification36, align 2
  br label %cleanup

if.else37:                                        ; preds = %dmub_rb_pop_front.exit
  call void @__sanitizer_cov_trace_pc() #3
  %68 = ptrtoint ptr %pending_notification36 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %pending_notification36, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else37, %if.then35, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 4, %if.then ], [ 0, %if.else37 ], [ 0, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

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
!9 = !{i8 0, i8 2}
