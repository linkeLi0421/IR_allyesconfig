; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_sriov_set_vf_mac(ptr noundef %net_dev, i32 noundef %vf_i, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %sriov_set_vf_mac = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %sriov_set_vf_mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov_set_vf_mac, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call3 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %vf_i, ptr noundef %mac) #1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_sriov_set_vf_vlan(ptr noundef %net_dev, i32 noundef %vf_i, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %sriov_set_vf_vlan = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 104
  %2 = ptrtoint ptr %sriov_set_vf_vlan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov_set_vf_vlan, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %vlan)
  %tobool1.not = icmp ult i16 %vlan, 4096
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %qos)
  %tobool4.not = icmp ult i8 %qos, 8
  %or.cond = and i1 %tobool1.not, %tobool4.not
  br i1 %or.cond, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  %call12 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %vf_i, i16 noundef zeroext %vlan, i8 noundef zeroext %qos) #1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -22, %if.then.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_sriov_set_vf_spoofchk(ptr noundef %net_dev, i32 noundef %vf_i, i1 noundef zeroext %spoofchk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %sriov_set_vf_spoofchk = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 105
  %2 = ptrtoint ptr %sriov_set_vf_spoofchk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov_set_vf_spoofchk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call4 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %vf_i, i1 noundef zeroext %spoofchk) #1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_sriov_get_vf_config(ptr noundef %net_dev, i32 noundef %vf_i, ptr noundef %ivi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %sriov_get_vf_config = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 106
  %2 = ptrtoint ptr %sriov_get_vf_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov_get_vf_config, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call3 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %vf_i, ptr noundef %ivi) #1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_sriov_set_vf_link_state(ptr noundef %net_dev, i32 noundef %vf_i, i32 noundef %link_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %net_dev, i32 2348
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %sriov_set_vf_link_state = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 107
  %2 = ptrtoint ptr %sriov_set_vf_link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sriov_set_vf_link_state, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call3 = tail call i32 %3(ptr noundef %add.ptr.i, i32 noundef %vf_i, i32 noundef %link_state) #1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
