; ModuleID = '/llk/IR_all_yes/net/ipv6/tcpv6_offload.c_pt.bc'
source_filename = "../net/ipv6/tcpv6_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.anon.175 = type { i16, i16 }

@tcpv6_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @tcp6_gso_segment, ptr @tcp6_gro_receive, ptr @tcp6_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"tcpv6_offload\00", align 1
@___asan_gen_.2 = private constant [28 x i8] c"../net/ipv6/tcpv6_offload.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 68, i32 33 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @tcpv6_offload], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcpv6_offload_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet6_add_offload(ptr noundef nonnull @tcpv6_offload, i8 noundef zeroext 6) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcp6_gso_segment(ptr noundef %skb, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gso_type, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 19
  br i1 %cmp.i, label %if.end.if.end5_crit_edge, label %if.end.i, !prof !11

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %5)
  %cmp3.i = icmp ult i32 %5, 20
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !12

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #4
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end5_crit_edge

pskb_may_pull.exit.if.end5_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %pskb_may_pull.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %8 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %ip_summed, align 8
  %9 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %9)
  %cmp.not = icmp eq i16 %9, 1536
  br i1 %cmp.not, label %if.end5.if.end16_crit_edge, label %if.then9, !prof !11

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i27 = zext i16 %15 to i32
  %add.ptr.i.i28 = getelementptr i8, ptr %11, i32 %conv.i.i27
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i28, i32 0, i32 6
  %16 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %check, align 4
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load14 = load i16, ptr %ip_summed, align 8
  %bf.set = or i16 %bf.load14, 1536
  store i16 %bf.set, ptr %ip_summed, align 8
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  tail call fastcc void @__tcp_v6_send_check(ptr noundef %skb, ptr noundef %saddr, ptr noundef %daddr)
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.end5.if.end16_crit_edge
  %call17 = tail call ptr @tcp_gso_segment(ptr noundef %skb, i64 noundef %features) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call17, %if.end16 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcp6_gro_receive(ptr noundef %head, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %0 = ptrtoint ptr %flush to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %3 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp.not.i = icmp eq i16 %3, 1536
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %land.lhs.true.land.lhs.true.i_crit_edge

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  %conv.i.i = zext i16 %6 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %data_offset.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %12)
  %cmp3.i = icmp ult i32 %sub.i.i, %12
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.then4_crit_edge

lor.lhs.false.i.if.then4_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %land.lhs.true.land.lhs.true.i_crit_edge
  %gro_remcsum_start.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %13 = ptrtoint ptr %gro_remcsum_start.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gro_remcsum_start.i.i, align 2
  %conv.i1.i = zext i16 %14 to i32
  %data_offset.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %data_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_offset.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i1.i)
  %cmp.i.i = icmp eq i32 %16, %conv.i1.i
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then4_crit_edge, label %__skb_gro_checksum_validate_needed.exit

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

__skb_gro_checksum_validate_needed.exit:          ; preds = %land.lhs.true.i
  %csum_cnt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %17 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load7.i = load i16, ptr %csum_cnt.i, align 2
  %18 = and i16 %bf.load7.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp12.i = icmp eq i16 %18, 0
  br i1 %cmp12.i, label %if.then, label %__skb_gro_checksum_validate_needed.exit.if.then4_crit_edge

__skb_gro_checksum_validate_needed.exit.if.then4_crit_edge: ; preds = %__skb_gro_checksum_validate_needed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then:                                          ; preds = %__skb_gro_checksum_validate_needed.exit
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then.ip6_gro_compute_pseudo.exit_crit_edge

if.then.ip6_gro_compute_pseudo.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ip6_gro_compute_pseudo.exit

cond.false.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  br label %ip6_gro_compute_pseudo.exit

ip6_gro_compute_pseudo.exit:                      ; preds = %cond.false.i.i, %if.then.ip6_gro_compute_pseudo.exit_crit_edge
  %cond.i.i = phi ptr [ %22, %cond.false.i.i ], [ %20, %if.then.ip6_gro_compute_pseudo.exit_crit_edge ]
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %26 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 %conv.i.i.i.i
  %data.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i20, align 4
  %sub.ptr.lhs.cast.i.i.i21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i22 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i21, %sub.ptr.rhs.cast.i.i.i22
  %add.ptr.i.i = getelementptr i8, ptr %cond.i.i, i32 %sub.ptr.sub.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %31 = ptrtoint ptr %data_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_offset.i.i.i, align 8
  %sub.i.i24 = sub i32 %30, %32
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %sub.i.i24, i32 noundef 6, i32 noundef 0) #4
  %33 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #7, !srcloc !13
  %shr.i.i.i = lshr i32 %33, 16
  %neg1.i = or i32 %shr.i.i.i, -65536
  %34 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i25 = load i16, ptr %csum_cnt.i, align 2
  %35 = and i16 %bf.load.i25, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i, label %ip6_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge, label %land.lhs.true.i28

ip6_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %ip6_gro_compute_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i28:                                ; preds = %ip6_gro_compute_pseudo.exit
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %36 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %csum.i, align 4
  %add.i.i = add i32 %37, %neg1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %37)
  %cmp.i.i26 = icmp ult i32 %add.i.i, %37
  %conv.i.i27 = zext i1 %cmp.i.i26 to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i27
  %38 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #7, !srcloc !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %38)
  %tobool4.not.i = icmp ugt i32 %38, -65537
  br i1 %tobool4.not.i, label %land.lhs.true.i28.if.then4_crit_edge, label %land.lhs.true.i28.__skb_gro_checksum_validate_complete.exit_crit_edge

land.lhs.true.i28.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i28.if.then4_crit_edge:             ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

__skb_gro_checksum_validate_complete.exit:        ; preds = %land.lhs.true.i28.__skb_gro_checksum_validate_complete.exit_crit_edge, %ip6_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge
  %csum7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %39 = ptrtoint ptr %csum7.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %neg1.i, ptr %csum7.i, align 4
  %call8.i = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %skb) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %phi.cmp = icmp eq i16 %call8.i, 0
  br i1 %phi.cmp, label %__skb_gro_checksum_validate_complete.exit.if.then4_crit_edge, label %if.then7.critedge

__skb_gro_checksum_validate_complete.exit.if.then4_crit_edge: ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then4

if.then4:                                         ; preds = %__skb_gro_checksum_validate_complete.exit.if.then4_crit_edge, %land.lhs.true.i28.if.then4_crit_edge, %__skb_gro_checksum_validate_needed.exit.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge, %lor.lhs.false.i.if.then4_crit_edge
  %csum_cnt.i29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %40 = ptrtoint ptr %csum_cnt.i29 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i30 = load i16, ptr %csum_cnt.i29, align 2
  %bf.lshr.i = lshr i16 %bf.load.i30, 10
  %41 = trunc i16 %bf.lshr.i to i8
  %bf.cast.i = and i8 %41, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast.i)
  %cmp.not.i31 = icmp eq i8 %bf.cast.i, 0
  br i1 %cmp.not.i31, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %dec.i = add nuw nsw i8 %41, 7
  %42 = and i8 %dec.i, 7
  %bf.value.i = zext i8 %42 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 10
  %bf.clear10.i = and i16 %bf.load.i30, -7169
  %bf.set.i = or i16 %bf.shl.i, %bf.clear10.i
  %43 = ptrtoint ptr %csum_cnt.i29 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %bf.set.i, ptr %csum_cnt.i29, align 2
  br label %if.end11

if.else.i:                                        ; preds = %if.then4
  %44 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %45 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %if.else.i.if.end11_crit_edge [
    i2 1, label %if.then.i.i
    i2 0, label %if.then25.i.i
  ]

if.else.i.if.end11_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then.i.i:                                      ; preds = %if.else.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %46 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %47 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %47)
  %cmp7.not.i.i = icmp eq i32 %47, 805306368
  br i1 %cmp7.not.i.i, label %if.then.i.i.if.end11_crit_edge, label %if.then9.i.i

if.then.i.i.if.end11_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = add i32 %bf.load2.i.i, 268435456
  %bf.shl.i.i = and i32 %48, 805306368
  %bf.clear16.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear16.i.i
  %49 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %bf.set.i.i, ptr %csum_level.i.i, align 2
  br label %if.end11

if.then25.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear28.i.i = and i16 %bf.load.i.i, -1537
  %bf.set29.i.i = or i16 %bf.clear28.i.i, 512
  %50 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %bf.set29.i.i, ptr %ip_summed.i, align 8
  %csum_level30.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %csum_level30.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load31.i.i = load i32, ptr %csum_level30.i.i, align 2
  %bf.clear32.i.i = and i32 %bf.load31.i.i, -805306369
  store i32 %bf.clear32.i.i, ptr %csum_level30.i.i, align 2
  br label %if.end11

if.then7.critedge:                                ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %flush to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flush, align 4
  br label %return

if.end11:                                         ; preds = %if.then25.i.i, %if.then9.i.i, %if.then.i.i.if.end11_crit_edge, %if.else.i.if.end11_crit_edge, %if.then.i, %entry.if.end11_crit_edge
  %call12 = tail call ptr @tcp_gro_receive(ptr noundef %head, ptr noundef %skb) #4
  br label %return

return:                                           ; preds = %if.end11, %if.then7.critedge
  %retval.0 = phi ptr [ %call12, %if.end11 ], [ null, %if.then7.critedge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp6_gro_complete(ptr noundef %skb, i32 noundef %thoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i12 = zext i16 %5 to i32
  %add.ptr.i.i13 = getelementptr i8, ptr %1, i32 %conv.i.i12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = sub i32 %7, %thoff
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %sub, i32 noundef 6, i32 noundef 0) #4
  %8 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #7, !srcloc !13
  %neg.i.i.i = xor i32 %8, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %neg = xor i16 %conv.i.i.i, -1
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i13, i32 0, i32 6
  %9 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %neg, ptr %check, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gso_type, align 8
  %or = or i32 %13, 16
  store i32 %or, ptr %gso_type, align 8
  %call5 = tail call i32 @tcp_gro_complete(ptr noundef %skb) #4
  ret i32 %call5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tcp_v6_send_check(ptr nocapture noundef %skb, ptr noundef %saddr, ptr noundef %daddr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %call.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %5, i32 noundef 6, i32 noundef 0) #4
  %6 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #7, !srcloc !13
  %neg.i.i.i = xor i32 %6, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %neg = xor i16 %conv.i.i.i, -1
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %neg, ptr %check, align 4
  %8 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %transport_header.i.i, align 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %9, ptr %10, align 8
  %csum_offset = getelementptr inbounds %struct.anon.175, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %csum_offset, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcp_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_gro_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @tcpv6_offload, !1, !"tcpv6_offload", i1 false, i1 false}
!1 = !{!"../net/ipv6/tcpv6_offload.c", i32 68, i32 33}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 6452607}
