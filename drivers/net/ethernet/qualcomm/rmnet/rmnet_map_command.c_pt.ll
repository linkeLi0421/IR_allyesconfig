; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/rmnet/rmnet_map_command.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sk_buff = type { %union.anon, %union.anon.97, %union.anon.98, [48 x i8], %union.anon.99, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.101, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.97 = type { ptr }
%union.anon.98 = type { i64 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { i32, ptr }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.103, i32, i32, i32, i16, i16, %union.anon.105, i32, %union.anon.106, %union.anon.107, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.103 = type { i32 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rmnet_map_header = type { i8, i8, i16 }
%struct.rmnet_endpoint = type { i8, ptr, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rmnet_port = type { ptr, i32, i8, i8, [255 x %struct.hlist_head], ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmnet_map_command(ptr noundef %skb, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr %struct.rmnet_map_header, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default [
    i8 2, label %sw.bb
    i8 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %mux_id1.i = getelementptr inbounds %struct.rmnet_map_header, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mux_id1.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mux_id1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i = icmp eq i8 %6, -1
  br i1 %cmp.i, label %sw.bb.cleanup.sink.split.i_crit_edge, label %if.end.i

sw.bb.cleanup.sink.split.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %sw.bb
  %call.i = tail call ptr @rmnet_get_endpoint(ptr noundef %port, i8 noundef zeroext %6) #2
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end4.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  %egress_dev.i = getelementptr inbounds %struct.rmnet_endpoint, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %egress_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %egress_dev.i, align 4
  %call5.i = tail call i32 @rmnet_vnd_do_flow_control(ptr noundef %8, i32 noundef 1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.then_crit_edge, label %if.end4.i.cleanup.sink.split.i_crit_edge

if.end4.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split.i

if.end4.i.if.then_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

cleanup.sink.split.i:                             ; preds = %if.end4.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %sw.bb.cleanup.sink.split.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #2
  br label %if.end

sw.bb2:                                           ; preds = %entry
  %mux_id1.i14 = getelementptr inbounds %struct.rmnet_map_header, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mux_id1.i14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mux_id1.i14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.i15 = icmp eq i8 %10, -1
  br i1 %cmp.i15, label %sw.bb2.cleanup.sink.split.i24_crit_edge, label %if.end.i18

sw.bb2.cleanup.sink.split.i24_crit_edge:          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split.i24

if.end.i18:                                       ; preds = %sw.bb2
  %call.i16 = tail call ptr @rmnet_get_endpoint(ptr noundef %port, i8 noundef zeroext %10) #2
  %tobool.not.i17 = icmp eq ptr %call.i16, null
  br i1 %tobool.not.i17, label %if.end.i18.cleanup.sink.split.i24_crit_edge, label %if.end4.i22

if.end.i18.cleanup.sink.split.i24_crit_edge:      ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split.i24

if.end4.i22:                                      ; preds = %if.end.i18
  %egress_dev.i19 = getelementptr inbounds %struct.rmnet_endpoint, ptr %call.i16, i32 0, i32 1
  %11 = ptrtoint ptr %egress_dev.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %egress_dev.i19, align 4
  %call5.i20 = tail call i32 @rmnet_vnd_do_flow_control(ptr noundef %12, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i20)
  %tobool6.not.i21 = icmp eq i32 %call5.i20, 0
  br i1 %tobool6.not.i21, label %if.end4.i22.if.then_crit_edge, label %if.end4.i22.cleanup.sink.split.i24_crit_edge

if.end4.i22.cleanup.sink.split.i24_crit_edge:     ; preds = %if.end4.i22
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split.i24

if.end4.i22.if.then_crit_edge:                    ; preds = %if.end4.i22
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

cleanup.sink.split.i24:                           ; preds = %if.end4.i22.cleanup.sink.split.i24_crit_edge, %if.end.i18.cleanup.sink.split.i24_crit_edge, %sw.bb2.cleanup.sink.split.i24_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #2
  br label %if.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #2
  br label %if.end

if.then:                                          ; preds = %if.end4.i22.if.then_crit_edge, %if.end4.i.if.then_crit_edge
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %data_format.i = getelementptr inbounds %struct.rmnet_port, ptr %port, i32 0, i32 1
  %18 = ptrtoint ptr %data_format.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_format.i, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i28 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i28, label %if.then.rmnet_map_send_ack.exit_crit_edge, label %if.then.i

if.then.rmnet_map_send_ack.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %rmnet_map_send_ack.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %21, -8
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i) #2
  br label %rmnet_map_send_ack.exit

rmnet_map_send_ack.exit:                          ; preds = %if.then.i, %if.then.rmnet_map_send_ack.exit_crit_edge
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %22 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 249, ptr %protocol.i, align 8
  %cmd_type.i = getelementptr %struct.rmnet_map_header, ptr %14, i32 1, i32 1
  %23 = ptrtoint ptr %cmd_type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %cmd_type.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 63
  %bf.set.i = or i8 %bf.clear.i, 64
  store i8 %bf.set.i, ptr %cmd_type.i, align 1
  tail call void @netif_tx_lock(ptr noundef %17) #2
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 16
  %24 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_start_xmit.i = getelementptr inbounds %struct.net_device_ops, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %ndo_start_xmit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndo_start_xmit.i, align 4
  %call.i29 = tail call i32 %27(ptr noundef %skb, ptr noundef %17) #2
  tail call void @netif_tx_unlock(ptr noundef %17) #2
  br label %if.end

if.end:                                           ; preds = %rmnet_map_send_ack.exit, %sw.default, %cleanup.sink.split.i24, %cleanup.sink.split.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rmnet_get_endpoint(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmnet_vnd_do_flow_control(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
