; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_std_subr.c_pt.bc'
source_filename = "../net/ax25/ax25_std_subr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.hlist_node = type { ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_std_nr_error_recovery(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %condition.i, align 2
  %n2count.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %1 = ptrtoint ptr %n2count.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %n2count.i, align 1
  %modulus.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %2 = ptrtoint ptr %modulus.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modulus.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp eq i8 %3, 8
  %..i = select i1 %cmp.i, i32 47, i32 111
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef %..i, i32 noundef 1, i32 noundef 1) #2
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #2
  tail call void @ax25_stop_idletimer(ptr noundef %ax25) #2
  tail call void @ax25_stop_t3timer(ptr noundef %ax25) #2
  tail call void @ax25_stop_t2timer(ptr noundef %ax25) #2
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_std_establish_data_link(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %condition, align 2
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %1 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %n2count, align 1
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %2 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp eq i8 %3, 8
  %. = select i1 %cmp, i32 47, i32 111
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef %., i32 noundef 1, i32 noundef 1) #2
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #2
  tail call void @ax25_stop_idletimer(ptr noundef %ax25) #2
  tail call void @ax25_stop_t3timer(ptr noundef %ax25) #2
  tail call void @ax25_stop_t2timer(ptr noundef %ax25) #2
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_calculate_t1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_idletimer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t3timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t2timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_std_transmit_enquiry(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 2
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i32 1, i32 5
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef %., i32 noundef 1, i32 noundef 1) #2
  %3 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %condition, align 2
  %5 = and i8 %4, -2
  store i8 %5, ptr %condition, align 2
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #2
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_std_enquiry_response(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 2
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i32 1, i32 5
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef %., i32 noundef 1, i32 noundef 2) #2
  %3 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %condition, align 2
  %5 = and i8 %4, -2
  store i8 %5, ptr %condition, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_std_timeout_response(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 2
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i32 1, i32 5
  tail call void @ax25_send_control(ptr noundef %ax25, i32 noundef %., i32 noundef 0, i32 noundef 2) #2
  %3 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %condition, align 2
  %5 = and i8 %4, -2
  store i8 %5, ptr %condition, align 2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
