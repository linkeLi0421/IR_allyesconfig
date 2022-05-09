; ModuleID = '/llk/IR_all_yes/net/sctp/ulpevent.c_pt.bc'
source_filename = "../net/sctp/ulpevent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_ulpevent = type <{ ptr, ptr, i32, %union.anon.174, %union.anon.175, i32, i32, i16, i16, i16 }>
%union.anon.174 = type { i32 }
%union.anon.175 = type { i32 }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.152, %struct.list_head, ptr, %union.anon.153, %union.sctp_params, %union.anon.154, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.152 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.153 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.154 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_assoc_change = type { i16, i16, i32, i16, i16, i16, i16, i32, [0 x i8] }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.163, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.163 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.sctp_stream = type { %struct.anon.164, %struct.anon.169, i16, i16, ptr, %union.anon.171, ptr }
%struct.anon.164 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.165, i32, ptr, i8 }
%union.anon.165 = type { i32 }
%struct.anon.169 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.170, i32, i32, i32, i8, i8 }
%union.anon.170 = type { i32 }
%union.anon.171 = type { %struct.anon.173 }
%struct.anon.173 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.159 }
%union.anon.159 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.126, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.126 = type { ptr }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.161, %struct.anon.162, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.161 = type { i32, i8, i8, i8 }
%struct.anon.162 = type { i16, i16, i16, i8, i8 }
%struct.sctp_af = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i32, ptr, i16, %struct.list_head }
%struct.sctp_paddr_change = type { i16, i16, i32, %struct.__kernel_sockaddr_storage, i32, i32, i32 }
%struct.sctp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_errhdr = type { i16, i16, [0 x i8] }
%struct.sctp_remote_error = type { i16, i16, i32, i16, i32, [0 x i8] }
%struct.sctp_send_failed = type { i16, i16, i32, i32, %struct.sctp_sndrcvinfo, i32, [0 x i8] }
%struct.sctp_send_failed_event = type { i16, i16, i32, i32, %struct.sctp_sndinfo, i32, [0 x i8] }
%struct.sctp_sndinfo = type { i16, i16, i32, i32, i32 }
%struct.sctp_shutdown_event = type { i16, i16, i32, i32 }
%struct.sctp_adaptation_event = type { i16, i16, i32, i32, i32 }
%struct.sctp_endpoint = type { %struct.sctp_ep_common, %struct.hlist_node, i32, %struct.list_head, [32 x i8], ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, i16, i8, i8, %struct.callback_head }
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sctp_pdapi_event = type { i16, i16, i32, i32, i32, i32, i32 }
%struct.sctp_authkey_event = type { i16, i16, i32, i16, i16, i32, i32 }
%struct.sctp_sender_dry_event = type { i16, i16, i32, i32 }
%struct.sctp_stream_reset_event = type { i16, i16, i32, i32, [0 x i16] }
%struct.sctp_assoc_reset_event = type { i16, i16, i32, i32, i32, i32 }
%struct.sctp_stream_change_event = type { i16, i16, i32, i32, i16, i16 }
%struct.sctp_rcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.sctp_nxtinfo = type { i16, i16, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sctp_ulpevent_is_notification(ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_flags = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 9
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_flags, align 1
  %.lobit = lshr i16 %1, 15
  %2 = zext i16 %.lobit to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_assoc_change(ptr noundef %asoc, i16 noundef zeroext %flags, i16 noundef zeroext %state, i16 noundef zeroext %error, i16 noundef zeroext %outbound, i16 noundef zeroext %inbound, ptr noundef readonly %chunk, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chunk, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %skb1 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %call = tail call ptr @skb_copy_expand(ptr noundef %1, i32 noundef 20, i32 noundef 0, i32 noundef %gfp) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %4 = call ptr @memset(ptr %cb.i, i32 0, i32 32)
  %msg_flags1.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %5 = ptrtoint ptr %msg_flags1.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 -32768, ptr %msg_flags1.i, align 1
  %rmem_len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %rmem_len.i, align 1
  %call5 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 20) #6
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %7 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length, align 2
  %conv = zext i16 %10 to i32
  %sub = add nuw nsw i32 %conv, 16
  tail call void @skb_trim(ptr noundef nonnull %call, i32 noundef %sub) #6
  br label %if.end12

if.else:                                          ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %sctp_ulpevent_new.exit

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %if.else
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %11 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %truesize.i, align 8
  %13 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %14 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %12, ptr %rmem_len.i.i, align 1
  %tobool7.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool7.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end9

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.end
  %event.0 = phi ptr [ %cb.i, %if.end ], [ %cb.i.i, %if.end9 ]
  %sac.0 = phi ptr [ %call5, %if.end ], [ %call11, %if.end9 ]
  %skb.0 = phi ptr [ %call, %if.end ], [ %call.i.i, %if.end9 ]
  %16 = ptrtoint ptr %sac.0 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -32767, ptr %sac.0, align 4
  %sac_state = getelementptr inbounds %struct.sctp_assoc_change, ptr %sac.0, i32 0, i32 3
  %17 = ptrtoint ptr %sac_state to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %state, ptr %sac_state, align 4
  %sac_flags = getelementptr inbounds %struct.sctp_assoc_change, ptr %sac.0, i32 0, i32 1
  %18 = ptrtoint ptr %sac_flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %sac_flags, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %sac_length = getelementptr inbounds %struct.sctp_assoc_change, ptr %sac.0, i32 0, i32 2
  %21 = ptrtoint ptr %sac_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sac_length, align 4
  %sac_error = getelementptr inbounds %struct.sctp_assoc_change, ptr %sac.0, i32 0, i32 4
  %22 = ptrtoint ptr %sac_error to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %error, ptr %sac_error, align 2
  %sac_outbound_streams = getelementptr inbounds %struct.sctp_assoc_change, ptr %sac.0, i32 0, i32 5
  %23 = ptrtoint ptr %sac_outbound_streams to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %outbound, ptr %sac_outbound_streams, align 4
  %sac_inbound_streams = getelementptr inbounds %struct.sctp_assoc_change, ptr %sac.0, i32 0, i32 6
  %24 = ptrtoint ptr %sac_inbound_streams to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %inbound, ptr %sac_inbound_streams, align 2
  %chunk1.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event.0, i32 0, i32 1
  %25 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %27 = ptrtoint ptr %event.0 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store ptr %asoc, ptr %event.0, align 1
  %rmem_len.i37 = getelementptr %struct.sctp_ulpevent, ptr %event.0, i32 0, i32 2
  %28 = ptrtoint ptr %rmem_len.i37 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %rmem_len.i37, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %29, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %31 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr i8, ptr %event.0, i32 52
  %33 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %event.0, i32 -24
  tail call void %34(ptr noundef %add.ptr.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end12
  %35 = getelementptr i8, ptr %event.0, i32 -12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool3.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %38 = getelementptr i8, ptr %event.0, i32 -12
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %38, align 4
  %40 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %41 = ptrtoint ptr %rmem_len.i37 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %rmem_len.i37, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %42, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %32, i32 0, i32 8
  %44 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %45, i32 0, i32 32
  %46 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %rmem_len.i37 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %rmem_len.i37, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 11
  %50 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %51, %49
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i38 = icmp eq ptr %26, null
  br i1 %tobool.not.i38, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %52 = getelementptr inbounds %struct.sctp_chunk, ptr %26, i32 0, i32 6
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool4.not.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool6.not.i = icmp eq ptr %57, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk.i, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %55, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i40 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i40, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %61 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %62, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %sac_assoc_id = getelementptr inbounds %struct.sctp_assoc_change, ptr %sac.0, i32 0, i32 7
  %63 = ptrtoint ptr %sac_assoc_id to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond.i, ptr %sac_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %event.0, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpevent_notify_peer_addr_change(ptr nocapture noundef readonly %transport, i32 noundef %state, i32 noundef %error) local_unnamed_addr #1 align 64 {
entry:
  %addr.sroa.0 = alloca %union.anon.159, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asoc1 = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 8
  %0 = ptrtoint ptr %asoc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asoc1, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr.sroa.0)
  %2 = call ptr @memset(ptr %addr.sroa.0, i32 255, i32 128)
  %state2 = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ult i32 %4, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ipaddr = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 6
  %af_specific = getelementptr inbounds %struct.sctp_transport, ptr %transport, i32 0, i32 7
  %5 = ptrtoint ptr %af_specific to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %af_specific, align 4
  %sockaddr_len = getelementptr inbounds %struct.sctp_af, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %sockaddr_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sockaddr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %8)
  %9 = icmp ugt i32 %8, 127
  %10 = sub i32 128, %8
  %11 = select i1 %9, i32 0, i32 %10
  %12 = getelementptr i8, ptr %addr.sroa.0, i32 %8
  %13 = call ptr @memset(ptr %12, i32 0, i32 %11)
  %14 = call ptr @memcpy(ptr %addr.sroa.0, ptr %ipaddr, i32 %8)
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 148, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %sctp_ulpevent_new.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit.i:                         ; preds = %if.end
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %truesize.i.i, align 8
  %17 = call ptr @memset(ptr %cb.i.i.i, i32 0, i32 32)
  %msg_flags1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 32
  %18 = ptrtoint ptr %msg_flags1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i.i, align 1
  %rmem_len.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %rmem_len.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %16, ptr %rmem_len.i.i.i, align 1
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 148) #6
  %20 = ptrtoint ptr %call2.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -32766, ptr %call2.i, align 4
  %spc_length.i = getelementptr inbounds %struct.sctp_paddr_change, ptr %call2.i, i32 0, i32 2
  %21 = ptrtoint ptr %spc_length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 148, ptr %spc_length.i, align 4
  %spc_flags.i = getelementptr inbounds %struct.sctp_paddr_change, ptr %call2.i, i32 0, i32 1
  %22 = ptrtoint ptr %spc_flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %spc_flags.i, align 2
  %spc_state.i = getelementptr inbounds %struct.sctp_paddr_change, ptr %call2.i, i32 0, i32 4
  %23 = ptrtoint ptr %spc_state.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %state, ptr %spc_state.i, align 4
  %spc_error.i = getelementptr inbounds %struct.sctp_paddr_change, ptr %call2.i, i32 0, i32 5
  %24 = ptrtoint ptr %spc_error.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %error, ptr %spc_error.i, align 4
  %chunk1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %chunk1.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load ptr, ptr %chunk1.i.i, align 1
  tail call void @sctp_association_hold(ptr noundef %1) #6
  %27 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store ptr %1, ptr %cb.i.i.i, align 1
  %28 = ptrtoint ptr %rmem_len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %rmem_len.i.i.i, align 1
  %rmem_alloc.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i.i, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i.i, ptr %rmem_alloc.i.i, i32 %29, ptr elementtype(i32) %rmem_alloc.i.i) #6, !srcloc !9
  %sk.i.i = getelementptr inbounds %struct.sctp_ep_common, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk.i.i, align 4
  %destructor.i.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %destructor.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %destructor.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sctp_ulpevent_new.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %34(ptr noundef nonnull %call.i.i.i) #6
  br label %skb_orphan.exit.i.i.i

do.body.i.i.i.i:                                  ; preds = %sctp_ulpevent_new.exit.i
  %35 = getelementptr %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i.i.i.i, label %do.body.i.i.i.i.skb_orphan.exit.i.i.i_crit_edge, label %do.body7.i.i.i.i, !prof !10

do.body.i.i.i.i.skb_orphan.exit.i.i.i_crit_edge:  ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i.i

do.body7.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i.i:                            ; preds = %do.body.i.i.i.i.skb_orphan.exit.i.i.i_crit_edge, %if.then.i.i.i.i
  %38 = getelementptr %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %38, align 4
  %40 = ptrtoint ptr %destructor.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i.i, align 4
  %41 = ptrtoint ptr %rmem_len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %rmem_len.i.i.i, align 1
  %sk_backlog.i.i.i = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i.i, i32 1, i32 3, i32 1) #6
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i.i, ptr %sk_backlog.i.i.i, i32 %42, ptr elementtype(i32) %sk_backlog.i.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %32, i32 0, i32 8
  %44 = ptrtoint ptr %skc_prot.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_prot.i.i.i.i.i, align 8
  %memory_allocated.i.i.i.i.i = getelementptr inbounds %struct.proto, ptr %45, i32 0, i32 32
  %46 = ptrtoint ptr %memory_allocated.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory_allocated.i.i.i.i.i, align 4
  %tobool.i.not.i.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.i.not.i.i.i.i, label %skb_orphan.exit.i.i.i.sctp_skb_set_owner_r.exit.i.i_crit_edge, label %if.end.i.i.i.i

skb_orphan.exit.i.i.i.sctp_skb_set_owner_r.exit.i.i_crit_edge: ; preds = %skb_orphan.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i.i

if.end.i.i.i.i:                                   ; preds = %skb_orphan.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %rmem_len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %rmem_len.i.i.i, align 1
  %sk_forward_alloc.i.i.i.i = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 11
  %50 = ptrtoint ptr %sk_forward_alloc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_forward_alloc.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %51, %49
  store i32 %sub.i.i.i.i, ptr %sk_forward_alloc.i.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i.i

sctp_skb_set_owner_r.exit.i.i:                    ; preds = %if.end.i.i.i.i, %skb_orphan.exit.i.i.i.sctp_skb_set_owner_r.exit.i.i_crit_edge
  %tobool.not.i1.i = icmp eq ptr %26, null
  br i1 %tobool.not.i1.i, label %sctp_skb_set_owner_r.exit.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge, label %land.lhs.true.i.i

sctp_skb_set_owner_r.exit.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit.i

land.lhs.true.i.i:                                ; preds = %sctp_skb_set_owner_r.exit.i.i
  %52 = getelementptr inbounds %struct.sctp_chunk, ptr %26, i32 0, i32 6
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool4.not.i.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool6.not.i.i = icmp eq ptr %57, null
  br i1 %tobool6.not.i.i, label %if.then.i.i, label %land.lhs.true5.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge

land.lhs.true5.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk.i.i, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %55, align 4
  br label %sctp_ulpevent_set_owner.exit.i

sctp_ulpevent_set_owner.exit.i:                   ; preds = %if.then.i.i, %land.lhs.true5.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge, %land.lhs.true.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge, %sctp_skb_set_owner_r.exit.i.i.sctp_ulpevent_set_owner.exit.i_crit_edge
  %tobool.not.i3.i = icmp eq ptr %1, null
  br i1 %tobool.not.i3.i, label %sctp_ulpevent_set_owner.exit.i.sctp_ulpevent_make_peer_addr_change.exit_crit_edge, label %cond.true.i.i

sctp_ulpevent_set_owner.exit.i.sctp_ulpevent_make_peer_addr_change.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_make_peer_addr_change.exit

cond.true.i.i:                                    ; preds = %sctp_ulpevent_set_owner.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i.i = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %assoc_id.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %assoc_id.i.i, align 8
  br label %sctp_ulpevent_make_peer_addr_change.exit

sctp_ulpevent_make_peer_addr_change.exit:         ; preds = %cond.true.i.i, %sctp_ulpevent_set_owner.exit.i.sctp_ulpevent_make_peer_addr_change.exit_crit_edge
  %cond.i.i = phi i32 [ %62, %cond.true.i.i ], [ 0, %sctp_ulpevent_set_owner.exit.i.sctp_ulpevent_make_peer_addr_change.exit_crit_edge ]
  %spc_assoc_id.i = getelementptr inbounds %struct.sctp_paddr_change, ptr %call2.i, i32 0, i32 6
  %63 = ptrtoint ptr %spc_assoc_id.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond.i.i, ptr %spc_assoc_id.i, align 4
  %spc_aaddr.i = getelementptr inbounds %struct.sctp_paddr_change, ptr %call2.i, i32 0, i32 3
  %64 = call ptr @memcpy(ptr %spc_aaddr.i, ptr %addr.sroa.0, i32 128)
  %65 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sk.i.i, align 4
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %skc_family.i, align 8
  %call4.i = tail call ptr @sctp_get_pf_specific(i16 noundef zeroext %68) #6
  %addr_to_user.i = getelementptr inbounds %struct.sctp_pf, ptr %call4.i, i32 0, i32 8
  %69 = ptrtoint ptr %addr_to_user.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %addr_to_user.i, align 4
  %71 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sk.i.i, align 4
  %call9.i = tail call i32 %70(ptr noundef %72, ptr noundef %spc_aaddr.i) #6
  %tobool.not = icmp eq ptr %cb.i.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_make_peer_addr_change.exit.cleanup_crit_edge, label %if.then3

sctp_ulpevent_make_peer_addr_change.exit.cleanup_crit_edge: ; preds = %sctp_ulpevent_make_peer_addr_change.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %sctp_ulpevent_make_peer_addr_change.exit
  call void @__sanitizer_cov_trace_pc() #8
  %si = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 60, i32 6
  %73 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %si, align 4
  %enqueue_event = getelementptr inbounds %struct.sctp_stream_interleave, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %enqueue_event to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %enqueue_event, align 4
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %1, i32 0, i32 62
  %call4 = tail call i32 %76(ptr noundef %ulpq, ptr noundef nonnull %cb.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %sctp_ulpevent_make_peer_addr_change.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr.sroa.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_remote_error(ptr noundef %asoc, ptr nocapture noundef readonly %chunk, i16 noundef zeroext %flags, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %length = getelementptr inbounds %struct.sctp_errhdr, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length, align 2
  %conv = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv, 3
  %and = and i32 %add, 131068
  %sub = add nsw i32 %and, -4
  %call = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 4) #6
  %8 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb1, align 4
  %call5 = tail call ptr @skb_copy_expand(ptr noundef %9, i32 noundef 16, i32 noundef 0, i32 noundef %gfp) #6
  %10 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb1, align 4
  %call7 = tail call ptr @skb_pull(ptr noundef %11, i32 noundef %sub) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 3
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 20
  %12 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %truesize, align 8
  %14 = call ptr @memset(ptr %cb.i, i32 0, i32 32)
  %msg_flags1.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 3, i32 32
  %15 = ptrtoint ptr %msg_flags1.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 -32768, ptr %msg_flags1.i, align 1
  %rmem_len.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %13, ptr %rmem_len.i, align 1
  %call9 = tail call ptr @skb_push(ptr noundef nonnull %call5, i32 noundef 16) #6
  %add10 = add nuw nsw i32 %and, 12
  tail call void @skb_trim(ptr noundef nonnull %call5, i32 noundef %add10) #6
  %17 = getelementptr inbounds i8, ptr %call9, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 12)
  %19 = ptrtoint ptr %call9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -32764, ptr %call9, align 4
  %sre_flags = getelementptr inbounds %struct.sctp_remote_error, ptr %call9, i32 0, i32 1
  %20 = ptrtoint ptr %sre_flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %sre_flags, align 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %sre_length = getelementptr inbounds %struct.sctp_remote_error, ptr %call9, i32 0, i32 2
  %23 = ptrtoint ptr %sre_length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sre_length, align 4
  %sre_error = getelementptr inbounds %struct.sctp_remote_error, ptr %call9, i32 0, i32 3
  %24 = ptrtoint ptr %sre_error to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %5, ptr %sre_error, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call5, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %27 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store ptr %asoc, ptr %cb.i, align 1
  %28 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %rmem_len.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %29, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %31 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call5, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %34(ptr noundef nonnull %call5) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %35 = getelementptr %struct.sk_buff, ptr %call5, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool3.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %38 = getelementptr %struct.sk_buff, ptr %call5, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %32, ptr %38, align 4
  %40 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %41 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %rmem_len.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %42, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %32, i32 0, i32 8
  %44 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %45, i32 0, i32 32
  %46 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %rmem_len.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 11
  %50 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %51, %49
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %52 = getelementptr inbounds %struct.sctp_chunk, ptr %26, i32 0, i32 6
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool4.not.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %tobool6.not.i = icmp eq ptr %57, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sk.i, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %55, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i36 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i36, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %61 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %62, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %sre_assoc_id = getelementptr inbounds %struct.sctp_remote_error, ptr %call9, i32 0, i32 4
  %63 = ptrtoint ptr %sre_assoc_id to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond.i, ptr %sre_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i, %sctp_assoc2id.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_send_failed(ptr noundef %asoc, ptr nocapture noundef readonly %chunk, i16 noundef zeroext %flags, i32 noundef %error, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %0 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %length, align 2
  %skb1 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %4 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb1, align 4
  %call = tail call ptr @skb_copy_expand(ptr noundef %5, i32 noundef 48, i32 noundef 0, i32 noundef %gfp) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %si.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %6 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %si.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %conv3 = zext i16 %9 to i32
  %call4 = tail call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef %conv3) #6
  %10 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %si.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %conv7 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv, %conv7
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 20
  %14 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %truesize, align 8
  %16 = call ptr @memset(ptr %cb.i, i32 0, i32 32)
  %msg_flags1.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %17 = ptrtoint ptr %msg_flags1.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 -32768, ptr %msg_flags1.i, align 1
  %rmem_len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %15, ptr %rmem_len.i, align 1
  %call9 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 48) #6
  %19 = ptrtoint ptr %call9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -32765, ptr %call9, align 4
  %ssf_flags = getelementptr inbounds %struct.sctp_send_failed, ptr %call9, i32 0, i32 1
  %20 = ptrtoint ptr %ssf_flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %flags, ptr %ssf_flags, align 2
  %add = add nsw i32 %sub, 48
  %ssf_length = getelementptr inbounds %struct.sctp_send_failed, ptr %call9, i32 0, i32 2
  %21 = ptrtoint ptr %ssf_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %ssf_length, align 4
  tail call void @skb_trim(ptr noundef nonnull %call, i32 noundef %add) #6
  %ssf_error = getelementptr inbounds %struct.sctp_send_failed, ptr %call9, i32 0, i32 3
  %22 = ptrtoint ptr %ssf_error to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %error, ptr %ssf_error, align 4
  %ssf_info = getelementptr inbounds %struct.sctp_send_failed, ptr %call9, i32 0, i32 4
  %sinfo = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12
  %23 = call ptr @memcpy(ptr %ssf_info, ptr %sinfo, i32 32)
  %24 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chunk_hdr, align 4
  %flags12 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags12, align 1
  %conv13 = zext i8 %27 to i16
  %sinfo_flags = getelementptr inbounds %struct.sctp_send_failed, ptr %call9, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv13, ptr %sinfo_flags, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %31 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store ptr %asoc, ptr %cb.i, align 1
  %32 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %rmem_len.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %33, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %35 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %38(ptr noundef nonnull %call) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %39 = getelementptr %struct.sk_buff, ptr %call, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool3.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %42 = getelementptr %struct.sk_buff, ptr %call, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %36, ptr %42, align 4
  %44 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %45 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %rmem_len.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %46, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %36, i32 0, i32 8
  %48 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %rmem_len.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 11
  %54 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %55, %53
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %56 = getelementptr inbounds %struct.sctp_chunk, ptr %30, i32 0, i32 6
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %tobool4.not.i = icmp eq ptr %58, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %59 = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %tobool6.not.i = icmp eq ptr %61, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sk.i, align 4
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %59, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i42 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i42, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %65 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %66, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %ssf_assoc_id = getelementptr inbounds %struct.sctp_send_failed, ptr %call9, i32 0, i32 5
  %67 = ptrtoint ptr %ssf_assoc_id to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %cond.i, ptr %ssf_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i, %sctp_assoc2id.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_send_failed_event(ptr noundef %asoc, ptr nocapture noundef readonly %chunk, i16 noundef zeroext %flags, i32 noundef %error, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %call = tail call ptr @skb_copy_expand(ptr noundef %1, i32 noundef 32, i32 noundef 0, i32 noundef %gfp) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %2 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 2
  %conv = zext i16 %5 to i32
  %si.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %6 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %si.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 4
  %conv3 = zext i16 %9 to i32
  %sub = sub nsw i32 %conv, %conv3
  %call7 = tail call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef %conv3) #6
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 20
  %10 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %truesize, align 8
  %12 = call ptr @memset(ptr %cb.i, i32 0, i32 32)
  %msg_flags1.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %13 = ptrtoint ptr %msg_flags1.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 -32768, ptr %msg_flags1.i, align 1
  %rmem_len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %11, ptr %rmem_len.i, align 1
  %call9 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 32) #6
  %15 = ptrtoint ptr %call9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -32755, ptr %call9, align 4
  %ssf_flags = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 1
  %16 = ptrtoint ptr %ssf_flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %flags, ptr %ssf_flags, align 2
  %add = add nsw i32 %sub, 32
  %ssf_length = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 2
  %17 = ptrtoint ptr %ssf_length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %ssf_length, align 4
  tail call void @skb_trim(ptr noundef nonnull %call, i32 noundef %add) #6
  %ssf_error = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 3
  %18 = ptrtoint ptr %ssf_error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %error, ptr %ssf_error, align 4
  %sinfo = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12
  %19 = ptrtoint ptr %sinfo to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sinfo, align 4
  %ssfe_info = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 4
  %21 = ptrtoint ptr %ssfe_info to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %ssfe_info, align 4
  %sinfo_ppid = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12, i32 3
  %22 = ptrtoint ptr %sinfo_ppid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sinfo_ppid, align 4
  %snd_ppid = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %snd_ppid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %snd_ppid, align 4
  %sinfo_context = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12, i32 4
  %25 = ptrtoint ptr %sinfo_context to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sinfo_context, align 4
  %snd_context = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %snd_context to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %snd_context, align 4
  %sinfo_assoc_id = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 12, i32 8
  %28 = ptrtoint ptr %sinfo_assoc_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sinfo_assoc_id, align 4
  %snd_assoc_id = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %snd_assoc_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %snd_assoc_id, align 4
  %31 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chunk_hdr, align 4
  %flags18 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %flags18 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags18, align 1
  %conv19 = zext i8 %34 to i16
  %snd_flags = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %snd_flags to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv19, ptr %snd_flags, align 2
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store ptr %asoc, ptr %cb.i, align 1
  %39 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %rmem_len.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %40, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %42 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call, i32 0, i32 4, i32 0, i32 1
  %44 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %45(ptr noundef nonnull %call) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %46 = getelementptr %struct.sk_buff, ptr %call, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool3.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %49 = getelementptr %struct.sk_buff, ptr %call, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %43, ptr %49, align 4
  %51 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %52 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %rmem_len.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %43, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %53, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %43, i32 0, i32 8
  %55 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %56, i32 0, i32 32
  %57 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %rmem_len.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %43, i32 0, i32 11
  %61 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %62, %60
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %63 = getelementptr inbounds %struct.sctp_chunk, ptr %37, i32 0, i32 6
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool4.not.i = icmp eq ptr %65, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %66 = getelementptr inbounds %struct.sk_buff, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %tobool6.not.i = icmp eq ptr %68, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sk.i, align 4
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %66, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i54 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i54, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %72 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %73, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %ssf_assoc_id = getelementptr inbounds %struct.sctp_send_failed_event, ptr %call9, i32 0, i32 5
  %74 = ptrtoint ptr %ssf_assoc_id to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %cond.i, ptr %ssf_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i, %sctp_assoc2id.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_shutdown_event(ptr noundef %asoc, i16 noundef zeroext %flags, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32763, ptr %call2, align 4
  %sse_flags = getelementptr inbounds %struct.sctp_shutdown_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %sse_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %sse_flags, align 2
  %sse_length = getelementptr inbounds %struct.sctp_shutdown_event, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %sse_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %sse_length, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %11 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %12, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %18 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool3.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %21, align 4
  %23 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %24 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %25, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 8
  %27 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 11
  %33 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %34, %32
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i13 = icmp eq ptr %9, null
  br i1 %tobool.not.i13, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %35 = getelementptr inbounds %struct.sctp_chunk, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk.i, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %38, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i15 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i15, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %44 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %45, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %sse_assoc_id = getelementptr inbounds %struct.sctp_shutdown_event, ptr %call2, i32 0, i32 3
  %46 = ptrtoint ptr %sse_assoc_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %sse_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i.i, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_adaptation_indication(ptr noundef %asoc, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32761, ptr %call2, align 4
  %sai_flags = getelementptr inbounds %struct.sctp_adaptation_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %sai_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %sai_flags, align 2
  %sai_length = getelementptr inbounds %struct.sctp_adaptation_event, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %sai_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %sai_length, align 4
  %adaptation_ind = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 14
  %8 = ptrtoint ptr %adaptation_ind to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adaptation_ind, align 8
  %sai_adaptation_ind = getelementptr inbounds %struct.sctp_adaptation_event, ptr %call2, i32 0, i32 3
  %10 = ptrtoint ptr %sai_adaptation_ind to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %sai_adaptation_ind, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %14 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %15, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %17 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %20(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool3.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %24 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %18, ptr %24, align 4
  %26 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %27 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %28, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 8
  %30 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 11
  %36 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %37, %35
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i15 = icmp eq ptr %12, null
  br i1 %tobool.not.i15, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %38 = getelementptr inbounds %struct.sctp_chunk, ptr %12, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool4.not.i = icmp eq ptr %40, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %41 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk.i, align 4
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %41, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i17 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i17, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %47 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %48, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %sai_assoc_id = getelementptr inbounds %struct.sctp_adaptation_event, ptr %call2, i32 0, i32 4
  %49 = ptrtoint ptr %sai_assoc_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i, ptr %sai_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i.i, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_rcvmsg(ptr noundef %asoc, ptr noundef %chunk, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 5
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %sk2 = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 4
  %ep = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 3
  %4 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep, align 4
  %rcvbuf_policy = getelementptr inbounds %struct.sctp_endpoint, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %rcvbuf_policy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rcvbuf_policy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 9
  %rmem_alloc = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %sk_backlog.sink = select i1 %tobool.not, ptr %sk_backlog, ptr %rmem_alloc
  %rx_count.0.in = select i1 %tobool.not, ptr %sk_backlog, ptr %rmem_alloc
  %call.i.i83 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.sink, i32 noundef 4) #6
  %8 = ptrtoint ptr %rx_count.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %rx_count.0 = load volatile i32, ptr %rx_count.0.in, align 4
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 10
  %9 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %length, align 2
  %conv = zext i16 %12 to i32
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_count.0, i32 %14)
  %cmp.not = icmp slt i32 %rx_count.0, %14
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %18, null
  br i1 %tobool.i.not.i, label %lor.lhs.false.if.end8_crit_edge, label %if.end.i

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.i:                                         ; preds = %lor.lhs.false
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sk_forward_alloc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp.not.i = icmp slt i32 %20, %conv
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.if.end8_crit_edge

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call1.i = tail call i32 @__sk_mem_schedule(ptr noundef %3, i32 noundef %conv, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %sk_rmem_schedule.exit, label %lor.lhs.false.i.if.end8_crit_edge

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

sk_rmem_schedule.exit:                            ; preds = %lor.lhs.false.i
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %22 = and i8 %bf.load.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i6.i.not = icmp eq i8 %22, 0
  br i1 %tobool.i6.i.not, label %sk_rmem_schedule.exit.cleanup_crit_edge, label %sk_rmem_schedule.exit.if.end8_crit_edge

sk_rmem_schedule.exit.if.end8_crit_edge:          ; preds = %sk_rmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

sk_rmem_schedule.exit.cleanup_crit_edge:          ; preds = %sk_rmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %sk_rmem_schedule.exit.if.end8_crit_edge, %lor.lhs.false.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %lor.lhs.false.if.end8_crit_edge
  %23 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb1, align 4
  %call10 = tail call ptr @skb_clone(ptr noundef %24, i32 noundef %gfp) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10
  %subh = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 8
  %25 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %subh, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 19
  %29 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %transport, align 4
  %call14 = tail call i32 @sctp_tsnmap_mark(ptr noundef %tsn_map, i32 noundef %28, ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %fail_mark

if.end17:                                         ; preds = %if.end13
  %add = add nuw nsw i32 %conv, 3
  %and = and i32 %add, 131068
  %sub.neg = sub nsw i32 %conv, %and
  %chunk_end = getelementptr inbounds %struct.sctp_chunk, ptr %chunk, i32 0, i32 9
  %31 = ptrtoint ptr %chunk_end to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chunk_end, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %sub.neg
  %data = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 19
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @skb_trim(ptr noundef nonnull %call10, i32 noundef %sub.ptr.sub) #6
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3
  %len = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %add19 = add i32 %36, 200
  %msg_flags1.i = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3, i32 32
  %rmem_len.i = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3, i32 8
  %37 = call ptr @memset(ptr %cb.i, i32 0, i32 34)
  %38 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %add19, ptr %rmem_len.i, align 1
  tail call void @sctp_chunk_hold(ptr noundef %chunk) #6
  %chunk20 = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %chunk20 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store ptr %chunk, ptr %chunk20, align 1
  tail call fastcc void @sctp_ulpevent_receive_data(ptr noundef %cb.i, ptr noundef %asoc)
  %40 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subh, align 4
  %stream = getelementptr inbounds %struct.sctp_datahdr, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %stream to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %stream, align 4
  %stream22 = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3, i32 28
  %44 = ptrtoint ptr %stream22 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %stream22, align 1
  %45 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chunk_hdr, align 4
  %flags = getelementptr inbounds %struct.sctp_chunkhdr, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags, align 1
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool26.not = icmp eq i8 %49, 0
  br i1 %tobool26.not, label %if.end17.if.end34_crit_edge, label %if.then27

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %flags28 = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3, i32 30
  %50 = ptrtoint ptr %flags28 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %flags28, align 1
  %52 = or i16 %51, 1
  store i16 %52, ptr %flags28, align 1
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 2
  %53 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %cumtsn = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3, i32 24
  %55 = ptrtoint ptr %cumtsn to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %cumtsn, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end17.if.end34_crit_edge
  %56 = ptrtoint ptr %subh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %subh, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %tsn37 = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 3, i32 20
  %60 = ptrtoint ptr %tsn37 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %tsn37, align 1
  %61 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chunk_hdr, align 4
  %flags39 = getelementptr inbounds %struct.sctp_chunkhdr, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %flags39 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags39, align 1
  %conv40 = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg_flags1.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %msg_flags1.i, align 1
  %or42 = or i16 %66, %conv40
  store i16 %or42, ptr %msg_flags1.i, align 1
  br label %cleanup

fail_mark:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call10, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %fail_mark, %if.end34, %if.end8.cleanup_crit_edge, %sk_rmem_schedule.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i, %if.end34 ], [ null, %if.end8.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %sk_rmem_schedule.exit.cleanup_crit_edge ], [ null, %fail_mark ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_tsnmap_mark(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_ulpevent_receive_data(ptr noundef %event, ptr noundef %asoc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk1.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 1
  %0 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %2 = ptrtoint ptr %event to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store ptr %asoc, ptr %event, align 1
  %rmem_len.i = getelementptr %struct.sctp_ulpevent, ptr %event, i32 0, i32 2
  %3 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %rmem_len.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %4, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %6 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr i8, ptr %event, i32 52
  %8 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %event, i32 -24
  tail call void %9(ptr noundef %add.ptr.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %entry
  %10 = getelementptr i8, ptr %event, i32 -12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool3.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %13 = getelementptr i8, ptr %event, i32 -12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %13, align 4
  %15 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %16 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %rmem_len.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %17, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 8
  %19 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %20, i32 0, i32 32
  %21 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %rmem_len.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 11
  %25 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %26, %24
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %27 = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool4.not.i = icmp eq ptr %29, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %30 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool6.not.i = icmp eq ptr %32, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sk.i, align 4
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %30, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %len.i = getelementptr i8, ptr %event, i32 60
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr i8, ptr %event, i32 64
  %38 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %37, %39
  tail call void @sctp_assoc_rwnd_decrease(ptr noundef %asoc, i32 noundef %sub.i) #6
  %40 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %sctp_ulpevent_set_owner.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_set_owner.exit.cleanup_crit_edge:   ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_set_owner.exit
  %end.i = getelementptr i8, ptr %event, i32 148
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %frag.013 = load ptr, ptr %frag_list, align 8
  %tobool3.not14 = icmp eq ptr %frag.013, null
  br i1 %tobool3.not14, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %frag.015 = phi ptr [ %frag.0, %for.body.for.body_crit_edge ], [ %frag.013, %if.end.for.body_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %frag.015, i32 0, i32 3
  tail call fastcc void @sctp_ulpevent_receive_data(ptr noundef %cb.i, ptr noundef %asoc)
  %45 = ptrtoint ptr %frag.015 to i32
  call void @__asan_load4_noabort(i32 %45)
  %frag.0 = load ptr, ptr %frag.015, align 8
  %tobool3.not = icmp eq ptr %frag.0, null
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sctp_ulpevent_set_owner.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_pdapi(ptr noundef %asoc, i32 noundef %indication, i32 noundef %sid, i32 noundef %seq, i32 noundef %flags, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 24) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32762, ptr %call2, align 4
  %conv = trunc i32 %flags to i16
  %pdapi_flags = getelementptr inbounds %struct.sctp_pdapi_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %pdapi_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %pdapi_flags, align 2
  %pdapi_stream = getelementptr inbounds %struct.sctp_pdapi_event, ptr %call2, i32 0, i32 5
  %7 = ptrtoint ptr %pdapi_stream to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sid, ptr %pdapi_stream, align 4
  %pdapi_seq = getelementptr inbounds %struct.sctp_pdapi_event, ptr %call2, i32 0, i32 6
  %8 = ptrtoint ptr %pdapi_seq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %seq, ptr %pdapi_seq, align 4
  %pdapi_length = getelementptr inbounds %struct.sctp_pdapi_event, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %pdapi_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 24, ptr %pdapi_length, align 4
  %pdapi_indication = getelementptr inbounds %struct.sctp_pdapi_event, ptr %call2, i32 0, i32 3
  %10 = ptrtoint ptr %pdapi_indication to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %indication, ptr %pdapi_indication, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %14 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %15, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %17 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %20(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool3.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %24 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %18, ptr %24, align 4
  %26 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %27 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %28, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 8
  %30 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 11
  %36 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %37, %35
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i16 = icmp eq ptr %12, null
  br i1 %tobool.not.i16, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %38 = getelementptr inbounds %struct.sctp_chunk, ptr %12, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool4.not.i = icmp eq ptr %40, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %41 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk.i, align 4
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %41, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i18 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i18, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %47 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %48, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %pdapi_assoc_id = getelementptr inbounds %struct.sctp_pdapi_event, ptr %call2, i32 0, i32 4
  %49 = ptrtoint ptr %pdapi_assoc_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i, ptr %pdapi_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i.i, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_authkey(ptr noundef %asoc, i16 noundef zeroext %key_id, i32 noundef %indication, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32760, ptr %call2, align 4
  %auth_flags = getelementptr inbounds %struct.sctp_authkey_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %auth_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %auth_flags, align 2
  %auth_length = getelementptr inbounds %struct.sctp_authkey_event, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %auth_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %auth_length, align 4
  %auth_keynumber = getelementptr inbounds %struct.sctp_authkey_event, ptr %call2, i32 0, i32 3
  %8 = ptrtoint ptr %auth_keynumber to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %key_id, ptr %auth_keynumber, align 4
  %auth_altkeynumber = getelementptr inbounds %struct.sctp_authkey_event, ptr %call2, i32 0, i32 4
  %9 = ptrtoint ptr %auth_altkeynumber to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %auth_altkeynumber, align 2
  %auth_indication = getelementptr inbounds %struct.sctp_authkey_event, ptr %call2, i32 0, i32 5
  %10 = ptrtoint ptr %auth_indication to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %indication, ptr %auth_indication, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %14 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %15, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %17 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %20(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool3.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %24 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %18, ptr %24, align 4
  %26 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %27 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %28, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %18, i32 0, i32 8
  %30 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 11
  %36 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %37, %35
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i16 = icmp eq ptr %12, null
  br i1 %tobool.not.i16, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %38 = getelementptr inbounds %struct.sctp_chunk, ptr %12, i32 0, i32 6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool4.not.i = icmp eq ptr %40, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %41 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool6.not.i = icmp eq ptr %43, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk.i, align 4
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %41, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i18 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i18, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %47 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %48, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %auth_assoc_id = getelementptr inbounds %struct.sctp_authkey_event, ptr %call2, i32 0, i32 6
  %49 = ptrtoint ptr %auth_assoc_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.i, ptr %auth_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i.i, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_sender_dry_event(ptr noundef %asoc, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 12) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32759, ptr %call2, align 4
  %sender_dry_flags = getelementptr inbounds %struct.sctp_sender_dry_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %sender_dry_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %sender_dry_flags, align 2
  %sender_dry_length = getelementptr inbounds %struct.sctp_sender_dry_event, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %sender_dry_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %sender_dry_length, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %11 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %12, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %18 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool3.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %21, align 4
  %23 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %24 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %25, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 8
  %27 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 11
  %33 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %34, %32
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i13 = icmp eq ptr %9, null
  br i1 %tobool.not.i13, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %35 = getelementptr inbounds %struct.sctp_chunk, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk.i, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %38, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i15 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i15, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %44 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %45, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %sender_dry_assoc_id = getelementptr inbounds %struct.sctp_sender_dry_event, ptr %call2, i32 0, i32 3
  %46 = ptrtoint ptr %sender_dry_assoc_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %sender_dry_assoc_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i.i, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_stream_reset_event(ptr noundef %asoc, i16 noundef zeroext %flags, i16 noundef zeroext %stream_num, ptr nocapture noundef readonly %stream_list, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %stream_num to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 12
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32758, ptr %call2, align 4
  %strreset_flags = getelementptr inbounds %struct.sctp_stream_reset_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %strreset_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %flags, ptr %strreset_flags, align 2
  %strreset_length = getelementptr inbounds %struct.sctp_stream_reset_event, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %strreset_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %strreset_length, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %11 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %12, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %18 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool3.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %21, align 4
  %23 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %24 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %25, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 8
  %27 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 11
  %33 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %34, %32
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i25 = icmp eq ptr %9, null
  br i1 %tobool.not.i25, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %35 = getelementptr inbounds %struct.sctp_chunk, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk.i, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %38, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i27 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i27, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %44 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %45, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %strreset_assoc_id = getelementptr inbounds %struct.sctp_stream_reset_event, ptr %call2, i32 0, i32 3
  %46 = ptrtoint ptr %strreset_assoc_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %strreset_assoc_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %stream_num)
  %cmp30.not = icmp eq i16 %stream_num, 0
  br i1 %cmp30.not, label %sctp_assoc2id.exit.cleanup_crit_edge, label %sctp_assoc2id.exit.for.body_crit_edge

sctp_assoc2id.exit.for.body_crit_edge:            ; preds = %sctp_assoc2id.exit
  br label %for.body

sctp_assoc2id.exit.cleanup_crit_edge:             ; preds = %sctp_assoc2id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sctp_assoc2id.exit.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sctp_assoc2id.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %stream_list, i32 %i.031
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx, align 2
  %arrayidx6 = getelementptr %struct.sctp_stream_reset_event, ptr %call2, i32 0, i32 4, i32 %i.031
  %49 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %arrayidx6, align 2
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %sctp_assoc2id.exit.cleanup_crit_edge, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %cb.i.i, %sctp_assoc2id.exit.cleanup_crit_edge ], [ %cb.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_assoc_reset_event(ptr noundef %asoc, i16 noundef zeroext %flags, i32 noundef %local_tsn, i32 noundef %remote_tsn, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 20, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32757, ptr %call2, align 4
  %assocreset_flags = getelementptr inbounds %struct.sctp_assoc_reset_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %assocreset_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %flags, ptr %assocreset_flags, align 2
  %assocreset_length = getelementptr inbounds %struct.sctp_assoc_reset_event, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %assocreset_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %assocreset_length, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %11 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %12, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %18 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool3.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %21, align 4
  %23 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %24 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %25, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 8
  %27 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 11
  %33 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %34, %32
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i15 = icmp eq ptr %9, null
  br i1 %tobool.not.i15, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %35 = getelementptr inbounds %struct.sctp_chunk, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk.i, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %38, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i17 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i17, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %44 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %45, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %assocreset_assoc_id = getelementptr inbounds %struct.sctp_assoc_reset_event, ptr %call2, i32 0, i32 3
  %46 = ptrtoint ptr %assocreset_assoc_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %assocreset_assoc_id, align 4
  %assocreset_local_tsn = getelementptr inbounds %struct.sctp_assoc_reset_event, ptr %call2, i32 0, i32 4
  %47 = ptrtoint ptr %assocreset_local_tsn to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %local_tsn, ptr %assocreset_local_tsn, align 4
  %assocreset_remote_tsn = getelementptr inbounds %struct.sctp_assoc_reset_event, ptr %call2, i32 0, i32 5
  %48 = ptrtoint ptr %assocreset_remote_tsn to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %remote_tsn, ptr %assocreset_remote_tsn, align 4
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i.i, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_ulpevent_make_stream_change_event(ptr noundef %asoc, i16 noundef zeroext %flags, i32 noundef %strchange_instrms, i32 noundef %strchange_outstrms, i32 noundef %gfp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef %gfp, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sctp_ulpevent_new.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sctp_ulpevent_new.exit:                           ; preds = %entry
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %0 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %truesize.i, align 8
  %2 = call ptr @memset(ptr %cb.i.i, i32 0, i32 32)
  %msg_flags1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 32
  %3 = ptrtoint ptr %msg_flags1.i.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %msg_flags1.i.i, align 1
  %rmem_len.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %1, ptr %rmem_len.i.i, align 1
  %tobool.not = icmp eq ptr %cb.i.i, null
  br i1 %tobool.not, label %sctp_ulpevent_new.exit.cleanup_crit_edge, label %if.end

sctp_ulpevent_new.exit.cleanup_crit_edge:         ; preds = %sctp_ulpevent_new.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sctp_ulpevent_new.exit
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #6
  %5 = ptrtoint ptr %call2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -32756, ptr %call2, align 4
  %strchange_flags = getelementptr inbounds %struct.sctp_stream_change_event, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %strchange_flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %flags, ptr %strchange_flags, align 2
  %strchange_length = getelementptr inbounds %struct.sctp_stream_change_event, ptr %call2, i32 0, i32 2
  %7 = ptrtoint ptr %strchange_length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %strchange_length, align 4
  %chunk1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %chunk1.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %chunk1.i, align 1
  tail call void @sctp_association_hold(ptr noundef %asoc) #6
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store ptr %asoc, ptr %cb.i.i, align 1
  %11 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %12, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !9
  %sk.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 3
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 4
  %destructor.i.i.i = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %destructor.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %17(ptr noundef nonnull %call.i.i) #6
  br label %skb_orphan.exit.i.i

do.body.i.i.i:                                    ; preds = %if.end
  %18 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool3.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i.i.i, label %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, label %do.body7.i.i.i, !prof !10

do.body.i.i.i.skb_orphan.exit.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i.i

do.body7.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

skb_orphan.exit.i.i:                              ; preds = %do.body.i.i.i.skb_orphan.exit.i.i_crit_edge, %if.then.i.i.i
  %21 = getelementptr %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %21, align 4
  %23 = ptrtoint ptr %destructor.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sctp_sock_rfree, ptr %destructor.i.i.i, align 4
  %24 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rmem_len.i.i, align 1
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %25, ptr elementtype(i32) %sk_backlog.i.i) #6, !srcloc !9
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 8
  %27 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.i.not.i.i.i, label %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge: ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %skb_orphan.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %rmem_len.i.i, align 1
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 11
  %33 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %34, %32
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %sctp_skb_set_owner_r.exit.i

sctp_skb_set_owner_r.exit.i:                      ; preds = %if.end.i.i.i, %skb_orphan.exit.i.i.sctp_skb_set_owner_r.exit.i_crit_edge
  %tobool.not.i18 = icmp eq ptr %9, null
  br i1 %tobool.not.i18, label %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true.i

sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %sctp_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true.i:                                  ; preds = %sctp_skb_set_owner_r.exit.i
  %35 = getelementptr inbounds %struct.sctp_chunk, ptr %9, i32 0, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %tobool6.not.i = icmp eq ptr %40, null
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge

land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_set_owner.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk.i, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %38, align 4
  br label %sctp_ulpevent_set_owner.exit

sctp_ulpevent_set_owner.exit:                     ; preds = %if.then.i, %land.lhs.true5.i.sctp_ulpevent_set_owner.exit_crit_edge, %land.lhs.true.i.sctp_ulpevent_set_owner.exit_crit_edge, %sctp_skb_set_owner_r.exit.i.sctp_ulpevent_set_owner.exit_crit_edge
  %tobool.not.i20 = icmp eq ptr %asoc, null
  br i1 %tobool.not.i20, label %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge, label %cond.true.i

sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge: ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %sctp_ulpevent_set_owner.exit
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 2
  %44 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %45, %cond.true.i ], [ 0, %sctp_ulpevent_set_owner.exit.sctp_assoc2id.exit_crit_edge ]
  %strchange_assoc_id = getelementptr inbounds %struct.sctp_stream_change_event, ptr %call2, i32 0, i32 3
  %46 = ptrtoint ptr %strchange_assoc_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %strchange_assoc_id, align 4
  %conv = trunc i32 %strchange_instrms to i16
  %strchange_instrms4 = getelementptr inbounds %struct.sctp_stream_change_event, ptr %call2, i32 0, i32 4
  %47 = ptrtoint ptr %strchange_instrms4 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv, ptr %strchange_instrms4, align 4
  %conv5 = trunc i32 %strchange_outstrms to i16
  %strchange_outstrms6 = getelementptr inbounds %struct.sctp_stream_change_event, ptr %call2, i32 0, i32 5
  %48 = ptrtoint ptr %strchange_outstrms6 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv5, ptr %strchange_outstrms6, align 2
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %sctp_ulpevent_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %cb.i.i, %sctp_assoc2id.exit ], [ null, %sctp_ulpevent_new.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @sctp_ulpevent_get_notification_type(ptr nocapture noundef readonly %event) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %event, i32 156
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpevent_read_sndrcvinfo(ptr nocapture noundef readonly %event, ptr noundef %msghdr) local_unnamed_addr #1 align 64 {
entry:
  %sinfo = alloca %struct.sctp_sndrcvinfo, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sinfo) #6
  %msg_flags.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 9
  %0 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %sinfo, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %stream = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 7
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %stream, align 1
  %6 = ptrtoint ptr %sinfo to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %sinfo, align 4
  %7 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %7, align 1
  %sinfo_ssn = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 1
  %10 = ptrtoint ptr %sinfo_ssn to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %sinfo_ssn, align 2
  %11 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %11, align 1
  %sinfo_ppid = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 3
  %14 = ptrtoint ptr %sinfo_ppid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sinfo_ppid, align 4
  %flags = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %flags, align 1
  %sinfo_flags = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 2
  %17 = ptrtoint ptr %sinfo_flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %sinfo_flags, align 4
  %tsn = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 5
  %18 = ptrtoint ptr %tsn to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %tsn, align 1
  %sinfo_tsn = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 6
  %20 = ptrtoint ptr %sinfo_tsn to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sinfo_tsn, align 4
  %cumtsn = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 6
  %21 = ptrtoint ptr %cumtsn to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %cumtsn, align 1
  %sinfo_cumtsn = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 7
  %23 = ptrtoint ptr %sinfo_cumtsn to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sinfo_cumtsn, align 4
  %24 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %event, align 1
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.sctp_assoc2id.exit_crit_edge, label %cond.true.i

if.end.sctp_assoc2id.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %if.end.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %27, %cond.true.i ], [ 0, %if.end.sctp_assoc2id.exit_crit_edge ]
  %sinfo_assoc_id = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 8
  %28 = ptrtoint ptr %sinfo_assoc_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i, ptr %sinfo_assoc_id, align 4
  %default_rcv_context = getelementptr inbounds %struct.sctp_association, ptr %25, i32 0, i32 59
  %29 = ptrtoint ptr %default_rcv_context to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %default_rcv_context, align 8
  %sinfo_context = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 4
  %31 = ptrtoint ptr %sinfo_context to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sinfo_context, align 4
  %sinfo_timetolive = getelementptr inbounds %struct.sctp_sndrcvinfo, ptr %sinfo, i32 0, i32 5
  %32 = ptrtoint ptr %sinfo_timetolive to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sinfo_timetolive, align 4
  %call3 = call i32 @put_cmsg(ptr noundef %msghdr, i32 noundef 132, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %sinfo) #6
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sinfo) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpevent_read_rcvinfo(ptr nocapture noundef readonly %event, ptr noundef %msghdr) local_unnamed_addr #1 align 64 {
entry:
  %rinfo = alloca %struct.sctp_rcvinfo, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rinfo) #6
  %msg_flags.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 9
  %0 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %rinfo, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %stream = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 7
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %stream, align 1
  %6 = ptrtoint ptr %rinfo to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %rinfo, align 4
  %7 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %7, align 1
  %rcv_ssn = getelementptr inbounds %struct.sctp_rcvinfo, ptr %rinfo, i32 0, i32 1
  %10 = ptrtoint ptr %rcv_ssn to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %rcv_ssn, align 2
  %11 = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %11, align 1
  %rcv_ppid = getelementptr inbounds %struct.sctp_rcvinfo, ptr %rinfo, i32 0, i32 3
  %14 = ptrtoint ptr %rcv_ppid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %rcv_ppid, align 4
  %flags = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %flags, align 1
  %rcv_flags = getelementptr inbounds %struct.sctp_rcvinfo, ptr %rinfo, i32 0, i32 2
  %17 = ptrtoint ptr %rcv_flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %rcv_flags, align 4
  %tsn = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 5
  %18 = ptrtoint ptr %tsn to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %tsn, align 1
  %rcv_tsn = getelementptr inbounds %struct.sctp_rcvinfo, ptr %rinfo, i32 0, i32 4
  %20 = ptrtoint ptr %rcv_tsn to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rcv_tsn, align 4
  %cumtsn = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 6
  %21 = ptrtoint ptr %cumtsn to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %cumtsn, align 1
  %rcv_cumtsn = getelementptr inbounds %struct.sctp_rcvinfo, ptr %rinfo, i32 0, i32 5
  %23 = ptrtoint ptr %rcv_cumtsn to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rcv_cumtsn, align 4
  %24 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %event, align 1
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.sctp_assoc2id.exit_crit_edge, label %cond.true.i

if.end.sctp_assoc2id.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_assoc2id.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i = getelementptr inbounds %struct.sctp_association, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoc_id.i, align 8
  br label %sctp_assoc2id.exit

sctp_assoc2id.exit:                               ; preds = %cond.true.i, %if.end.sctp_assoc2id.exit_crit_edge
  %cond.i = phi i32 [ %27, %cond.true.i ], [ 0, %if.end.sctp_assoc2id.exit_crit_edge ]
  %rcv_assoc_id = getelementptr inbounds %struct.sctp_rcvinfo, ptr %rinfo, i32 0, i32 7
  %28 = ptrtoint ptr %rcv_assoc_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i, ptr %rcv_assoc_id, align 4
  %default_rcv_context = getelementptr inbounds %struct.sctp_association, ptr %25, i32 0, i32 59
  %29 = ptrtoint ptr %default_rcv_context to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %default_rcv_context, align 8
  %rcv_context = getelementptr inbounds %struct.sctp_rcvinfo, ptr %rinfo, i32 0, i32 6
  %31 = ptrtoint ptr %rcv_context to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rcv_context, align 4
  %call3 = call i32 @put_cmsg(ptr noundef %msghdr, i32 noundef 132, i32 noundef 3, i32 noundef 28, ptr noundef nonnull %rinfo) #6
  br label %cleanup

cleanup:                                          ; preds = %sctp_assoc2id.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rinfo) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpevent_read_nxtinfo(ptr nocapture noundef readnone %event, ptr noundef %msghdr, ptr noundef %sk) local_unnamed_addr #1 align 64 {
entry:
  %nxtinfo.i = alloca %struct.sctp_nxtinfo, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !12
  %call = call ptr @sctp_skb_recv_datagram(ptr noundef %sk, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %err) #6
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nxtinfo.i) #6
  %1 = getelementptr inbounds %struct.sctp_nxtinfo, ptr %nxtinfo.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.sctp_nxtinfo, ptr %nxtinfo.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.sctp_nxtinfo, ptr %nxtinfo.i, i32 0, i32 3
  %stream.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 28
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %stream.i, align 1
  %6 = ptrtoint ptr %nxtinfo.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %nxtinfo.i, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %7, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 30
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %flags.i, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %1, align 2
  %msg_flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %14 = ptrtoint ptr %msg_flags.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %msg_flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %15)
  %tobool.not.i = icmp sgt i16 %15, -1
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = or i16 %12, -32768
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %1, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %3, align 4
  %21 = ptrtoint ptr %cb.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load ptr, ptr %cb.i, align 1
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.__sctp_ulpevent_read_nxtinfo.exit_crit_edge, label %cond.true.i.i

if.end.i.__sctp_ulpevent_read_nxtinfo.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__sctp_ulpevent_read_nxtinfo.exit

cond.true.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %assoc_id.i.i = getelementptr inbounds %struct.sctp_association, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %assoc_id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %assoc_id.i.i, align 8
  br label %__sctp_ulpevent_read_nxtinfo.exit

__sctp_ulpevent_read_nxtinfo.exit:                ; preds = %cond.true.i.i, %if.end.i.__sctp_ulpevent_read_nxtinfo.exit_crit_edge
  %cond.i.i = phi i32 [ %24, %cond.true.i.i ], [ 0, %if.end.i.__sctp_ulpevent_read_nxtinfo.exit_crit_edge ]
  %25 = getelementptr inbounds %struct.sctp_nxtinfo, ptr %nxtinfo.i, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i.i, ptr %25, align 4
  %call4.i = call i32 @put_cmsg(ptr noundef %msghdr, i32 noundef 132, i32 noundef 4, i32 noundef 16, ptr noundef nonnull %nxtinfo.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nxtinfo.i) #6
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %__sctp_ulpevent_read_nxtinfo.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_ulpevent_free(ptr noundef %event) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_flags.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 9
  %0 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %event, align 1
  %rmem_len.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %rmem_len.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %3, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %5, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !13
  br label %if.end

if.else:                                          ; preds = %entry
  %len1.i = getelementptr i8, ptr %event, i32 60
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len1.i, align 4
  %data_len.i = getelementptr i8, ptr %event, i32 64
  %9 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.else.sctp_ulpevent_release_data.exit_crit_edge, label %if.end.i

if.else.sctp_ulpevent_release_data.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_release_data.exit

if.end.i:                                         ; preds = %if.else
  %end.i.i = getelementptr i8, ptr %event, i32 148
  %11 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %frag.012.i = load ptr, ptr %frag_list.i, align 8
  %tobool3.not13.i = icmp eq ptr %frag.012.i, null
  br i1 %tobool3.not13.i, label %if.end.i.sctp_ulpevent_release_data.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.sctp_ulpevent_release_data.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_release_data.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %frag.014.i = phi ptr [ %frag.0.i, %for.body.i.for.body.i_crit_edge ], [ %frag.012.i, %if.end.i.for.body.i_crit_edge ]
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.014.i, i32 0, i32 3
  tail call fastcc void @sctp_ulpevent_release_frag_data(ptr noundef %cb.i.i) #6
  %14 = ptrtoint ptr %frag.014.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %frag.0.i = load ptr, ptr %frag.014.i, align 8
  %tobool3.not.i = icmp eq ptr %frag.0.i, null
  br i1 %tobool3.not.i, label %for.body.i.sctp_ulpevent_release_data.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.sctp_ulpevent_release_data.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_ulpevent_release_data.exit

sctp_ulpevent_release_data.exit:                  ; preds = %for.body.i.sctp_ulpevent_release_data.exit_crit_edge, %if.end.i.sctp_ulpevent_release_data.exit_crit_edge, %if.else.sctp_ulpevent_release_data.exit_crit_edge
  %15 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load ptr, ptr %event, align 1
  tail call void @sctp_assoc_rwnd_increase(ptr noundef %16, i32 noundef %8) #6
  %chunk.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 1
  %17 = ptrtoint ptr %chunk.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load ptr, ptr %chunk.i, align 1
  tail call void @sctp_chunk_put(ptr noundef %18) #6
  %19 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load ptr, ptr %event, align 1
  %rmem_len.i.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 2
  %21 = ptrtoint ptr %rmem_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %rmem_len.i.i, align 1
  %rmem_alloc.i.i = getelementptr inbounds %struct.sctp_association, ptr %20, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i.i, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i.i, ptr %rmem_alloc.i.i, i32 %22, ptr elementtype(i32) %rmem_alloc.i.i) #6, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %sctp_ulpevent_release_data.exit, %if.then
  %.sink = phi ptr [ %20, %sctp_ulpevent_release_data.exit ], [ %3, %if.then ]
  tail call void @sctp_association_put(ptr noundef %.sink) #6
  %add.ptr.i = getelementptr i8, ptr %event, i32 -24
  tail call void @kfree_skb_reason(ptr noundef %add.ptr.i, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_queue_purge_ulpevents(ptr noundef %list) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call6 = tail call ptr @skb_dequeue(ptr noundef %list) #6
  %cmp.not7 = icmp eq ptr %call6, null
  br i1 %cmp.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %call9 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %call6, %entry.while.body_crit_edge ]
  %data_unread.08 = phi i32 [ %data_unread.1, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3
  %msg_flags.i = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %msg_flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %call9, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, %data_unread.08
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %data_unread.1 = phi i32 [ %data_unread.08, %while.body.if.end_crit_edge ], [ %add, %if.then ]
  tail call void @sctp_ulpevent_free(ptr noundef %cb.i)
  %call = tail call ptr @skb_dequeue(ptr noundef %list) #6
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %data_unread.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %data_unread.1, %if.end.while.end_crit_edge ]
  ret i32 %data_unread.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sock_rfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_get_pf_specific(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_rwnd_decrease(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_association_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_ulpevent_release_frag_data(ptr nocapture noundef readonly %event) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len = getelementptr i8, ptr %event, i32 64
  %0 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  %end.i = getelementptr i8, ptr %event, i32 148
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %frag.09 = load ptr, ptr %frag_list, align 8
  %tobool2.not10 = icmp eq ptr %frag.09, null
  br i1 %tobool2.not10, label %if.end.done_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %frag.011 = phi ptr [ %frag.0, %for.body.for.body_crit_edge ], [ %frag.09, %if.end.for.body_crit_edge ]
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %frag.011, i32 0, i32 3
  tail call fastcc void @sctp_ulpevent_release_frag_data(ptr noundef %cb.i)
  %5 = ptrtoint ptr %frag.011 to i32
  call void @__asan_load4_noabort(i32 %5)
  %frag.0 = load ptr, ptr %frag.011, align 8
  %tobool2.not = icmp eq ptr %frag.0, null
  br i1 %tobool2.not, label %for.body.done_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

done:                                             ; preds = %for.body.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %chunk = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 1
  %6 = ptrtoint ptr %chunk to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %chunk, align 1
  tail call void @sctp_chunk_put(ptr noundef %7) #6
  %8 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %event, align 1
  %rmem_len.i = getelementptr inbounds %struct.sctp_ulpevent, ptr %event, i32 0, i32 2
  %10 = ptrtoint ptr %rmem_len.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %rmem_len.i, align 1
  %rmem_alloc.i = getelementptr inbounds %struct.sctp_association, ptr %9, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmem_alloc.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %rmem_alloc.i, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmem_alloc.i, ptr %rmem_alloc.i, i32 %11, ptr elementtype(i32) %rmem_alloc.i) #6, !srcloc !13
  tail call void @sctp_association_put(ptr noundef %9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_assoc_rwnd_increase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

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
!9 = !{i64 2148611859, i64 2148611885, i64 2148611914, i64 2148611948, i64 2148611979, i64 2148612002}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2154610836, i64 2154611324, i64 2154610873, i64 2154610929, i64 2154610963, i64 2154610987, i64 2154611028, i64 2154611049, i64 2154611077, i64 2154611111}
!12 = !{!"auto-init"}
!13 = !{i64 2148614324, i64 2148614350, i64 2148614379, i64 2148614413, i64 2148614444, i64 2148614467}
