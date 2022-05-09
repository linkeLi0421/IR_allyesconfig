; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_dup_netdev.c_pt.bc'
source_filename = "../net/netfilter/nf_dup_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_fwd_netdev_egress\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_fwd_netdev_egress\09\09\09\09"
module asm "\09.long\09__crc_nf_fwd_netdev_egress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_fwd_netdev_egress:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_fwd_netdev_egress\22\09\09\09\09\09"
module asm "__kstrtabns_nf_fwd_netdev_egress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_dup_netdev_egress\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_dup_netdev_egress\09\09\09\09"
module asm "\09.long\09__crc_nf_dup_netdev_egress\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_dup_netdev_egress:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_dup_netdev_egress\22\09\09\09\09\09"
module asm "__kstrtabns_nf_dup_netdev_egress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_fwd_dup_netdev_offload\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fwd_dup_netdev_offload\09\09\09\09"
module asm "\09.long\09__crc_nft_fwd_dup_netdev_offload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fwd_dup_netdev_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fwd_dup_netdev_offload\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fwd_dup_netdev_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.101, %union.anon.102, [48 x i8], %union.anon.103, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.105, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.101 = type { ptr }
%union.anon.102 = type { i64 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.107, i32, i32, i32, i16, i16, %union.anon.109, i32, %union.anon.110, %union.anon.111, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.107 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_offload_ctx = type { %struct.anon.122, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.122 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }
%struct.nft_data = type { %union.anon.123 }
%union.anon.123 = type { [4 x i32] }
%struct.nft_flow_rule = type { i16, %struct.nft_flow_match, ptr }
%struct.nft_flow_match = type { %struct.flow_dissector, %struct.nft_flow_key, %struct.nft_flow_key }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nft_flow_key = type { %struct.flow_dissector_key_basic, %struct.flow_dissector_key_control, %union.anon.124, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ip, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_eth_addrs, %struct.flow_dissector_key_meta }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%union.anon.124 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.22 }
%union.anon.22 = type { [4 x i32] }
%struct.flow_dissector_key_ports = type { %union.anon.125 }
%union.anon.125 = type { i32 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.127, i16 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i16 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_meta = type { i32, i16 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.129, ptr }
%union.anon.129 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i64, i64, i64, i32 }

@__kstrtab_nf_fwd_netdev_egress = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_fwd_netdev_egress = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_fwd_netdev_egress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_fwd_netdev_egress to i32), ptr @__kstrtab_nf_fwd_netdev_egress, ptr @__kstrtabns_nf_fwd_netdev_egress }, section "___ksymtab_gpl+nf_fwd_netdev_egress", align 4
@__kstrtab_nf_dup_netdev_egress = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_dup_netdev_egress = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_dup_netdev_egress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_dup_netdev_egress to i32), ptr @__kstrtab_nf_dup_netdev_egress, ptr @__kstrtabns_nf_dup_netdev_egress }, section "___ksymtab_gpl+nf_dup_netdev_egress", align 4
@__kstrtab_nft_fwd_dup_netdev_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fwd_dup_netdev_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fwd_dup_netdev_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fwd_dup_netdev_offload to i32), ptr @__kstrtab_nft_fwd_dup_netdev_offload, ptr @__kstrtabns_nft_fwd_dup_netdev_offload }, section "___ksymtab_gpl+nft_fwd_dup_netdev_offload", align 4
@__UNIQUE_ID_file420 = internal constant [47 x i8] c"nf_dup_netdev.file=net/netfilter/nf_dup_netdev\00", section ".modinfo", align 1
@__UNIQUE_ID_license421 = internal constant [26 x i8] c"nf_dup_netdev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author422 = internal constant [61 x i8] c"nf_dup_netdev.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description423 = internal constant [63 x i8] c"nf_dup_netdev.description=Netfilter packet duplication support\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author422, ptr @__UNIQUE_ID_description423, ptr @__UNIQUE_ID_file420, ptr @__UNIQUE_ID_license421, ptr @__ksymtab_nf_dup_netdev_egress, ptr @__ksymtab_nf_fwd_netdev_egress, ptr @__ksymtab_nft_fwd_dup_netdev_offload], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_fwd_netdev_egress(ptr nocapture noundef readonly %pkt, i32 noundef %oif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %call1 = tail call ptr @dev_get_by_index_rcu(ptr noundef %3, i32 noundef %oif) #2
  %tobool.not = icmp eq ptr %call1, null
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i.not.i = icmp eq i16 %7, -1
  br i1 %cmp.i.not.i, label %if.end.nf_do_netdev_egress.exit_crit_edge, label %if.then.i

if.end.nf_do_netdev_egress.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_do_netdev_egress.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %9 to i32
  %call1.i = tail call ptr @skb_push(ptr noundef %5, i32 noundef %conv.i) #2
  br label %nf_do_netdev_egress.exit

nf_do_netdev_egress.exit:                         ; preds = %if.then.i, %if.end.nf_do_netdev_egress.exit_crit_edge
  %10 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %12, align 8
  %call2.i = tail call i32 @dev_queue_xmit(ptr noundef %5) #2
  br label %cleanup

cleanup:                                          ; preds = %nf_do_netdev_egress.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_dup_netdev_egress(ptr nocapture noundef readonly %pkt, i32 noundef %oif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %call1 = tail call ptr @dev_get_by_index_rcu(ptr noundef %3, i32 noundef %oif) #2
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  %call3 = tail call ptr @skb_clone(ptr noundef %5, i32 noundef 2592) #2
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i.not.i = icmp eq i16 %7, -1
  br i1 %cmp.i.not.i, label %if.then4.nf_do_netdev_egress.exit_crit_edge, label %if.then.i

if.then4.nf_do_netdev_egress.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %nf_do_netdev_egress.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 8
  %8 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_len.i, align 4
  %conv.i = zext i16 %9 to i32
  %call1.i = tail call ptr @skb_push(ptr noundef nonnull %call3, i32 noundef %conv.i) #2
  br label %nf_do_netdev_egress.exit

nf_do_netdev_egress.exit:                         ; preds = %if.then.i, %if.then4.nf_do_netdev_egress.exit_crit_edge
  %10 = getelementptr inbounds %struct.anon, ptr %call3, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %12, align 8
  %call2.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call3) #2
  br label %cleanup

cleanup:                                          ; preds = %nf_do_netdev_egress.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_fwd_dup_netdev_offload(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %flow, i32 noundef %id, i32 noundef %oif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call ptr @dev_get_by_index(ptr noundef %1, i32 noundef %oif) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %rule = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 2
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 4
  %entries = getelementptr inbounds %struct.flow_rule, ptr %3, i32 1
  %num_actions = getelementptr inbounds %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %num_actions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_actions, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %num_actions, align 8
  %arrayidx = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %id, ptr %arrayidx, align 8
  %7 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_nf_fwd_netdev_egress, !1, !"__ksymtab_nf_fwd_netdev_egress", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_dup_netdev.c", i32 38, i32 1}
!2 = !{ptr @__ksymtab_nf_dup_netdev_egress, !3, !"__ksymtab_nf_dup_netdev_egress", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_dup_netdev.c", i32 53, i32 1}
!4 = !{ptr @__ksymtab_nft_fwd_dup_netdev_offload, !5, !"__ksymtab_nft_fwd_dup_netdev_offload", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_dup_netdev.c", i32 73, i32 1}
!6 = !{ptr @__UNIQUE_ID_file420, !7, !"__UNIQUE_ID_file420", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_dup_netdev.c", i32 75, i32 1}
!8 = !{ptr @__UNIQUE_ID_license421, !7, !"__UNIQUE_ID_license421", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author422, !10, !"__UNIQUE_ID_author422", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_dup_netdev.c", i32 76, i32 1}
!11 = !{ptr @__UNIQUE_ID_description423, !12, !"__UNIQUE_ID_description423", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_dup_netdev.c", i32 77, i32 1}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
