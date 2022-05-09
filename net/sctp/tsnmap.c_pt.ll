; ModuleID = '/llk/IR_all_yes/net/sctp/tsnmap.c_pt.bc'
source_filename = "../net/sctp/tsnmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.175, %struct.anon.176, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.flowi = type { %union.anon }
%union.anon = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.175 = type { i32, i8, i8, i8 }
%struct.anon.176 = type { i16, i16, i16, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.160, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.160 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.12 }
%union.anon.12 = type { i32 }
%struct.sctp_stream = type { %struct.anon.161, %struct.anon.166, i16, i16, ptr, %union.anon.168, ptr }
%struct.anon.161 = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon.162, i32, ptr, i8 }
%union.anon.162 = type { i32 }
%struct.anon.166 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.167, i32, i32, i32, i8, i8 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { %struct.anon.170 }
%struct.anon.170 = type { %struct.list_head, ptr }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.98, i32, %struct.spinlock }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.171 }
%union.anon.171 = type { ptr, [124 x i8] }
%struct.sctp_gap_ack_block = type { i16, i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_tsnmap_init(ptr noundef %map, i16 noundef zeroext %len, i32 noundef %initial_tsn, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %entry
  %or.i = or i32 %gfp, 256
  %2 = lshr i16 %len, 3
  %3 = zext i16 %2 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef %or.i) #8
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %map, align 4
  %cmp = icmp eq ptr %call9.i.i, null
  br i1 %cmp, label %if.end8.i.i.return_crit_edge, label %if.end

if.end8.i.i.return_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %len5 = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %5 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %len, ptr %len5, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %len7 = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %6 = ptrtoint ptr %len7 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len7, align 4
  %conv8 = zext i16 %7 to i32
  %sub.i = add nuw nsw i32 %conv8, 31
  %8 = lshr i32 %sub.i, 3
  %mul.i = and i32 %8, 16380
  %9 = call ptr @memset(ptr %1, i32 0, i32 %mul.i)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %base_tsn = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 1
  %10 = ptrtoint ptr %base_tsn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %initial_tsn, ptr %base_tsn, align 4
  %sub = add i32 %initial_tsn, -1
  %cumulative_tsn_ack_point = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 2
  %11 = ptrtoint ptr %cumulative_tsn_ack_point to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %cumulative_tsn_ack_point, align 4
  %max_tsn_seen = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 3
  %12 = ptrtoint ptr %max_tsn_seen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %max_tsn_seen, align 4
  %num_dup_tsns = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 6
  %13 = ptrtoint ptr %num_dup_tsns to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %num_dup_tsns, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.end8.i.i.return_crit_edge
  %retval.0 = phi ptr [ %map, %if.end9 ], [ null, %if.end8.i.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_tsnmap_free(ptr nocapture noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %len, align 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  tail call void @kfree(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sctp_tsnmap_check(ptr nocapture noundef readonly %map, i32 noundef %tsn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cumulative_tsn_ack_point = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %cumulative_tsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cumulative_tsn_ack_point, align 4
  %sub = sub i32 %tsn, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %base_tsn = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %base_tsn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_tsn, align 4
  %add.neg = add i32 %tsn, -4096
  %sub1 = sub i32 %add.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp2 = icmp slt i32 %sub1, 0
  br i1 %cmp2, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub6 = sub i32 %tsn, %3
  %len = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %conv)
  %cmp7 = icmp ult i32 %sub6, %conv
  br i1 %cmp7, label %land.lhs.true, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %div3.i = lshr i32 %sub6, 5
  %arrayidx.i = getelementptr i32, ptr %7, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %sub6, 31
  %10 = shl nuw i32 1, %and.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_tsnmap_mark(ptr nocapture noundef %map, i32 noundef %tsn, ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_tsn = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %base_tsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_tsn, align 4
  %sub = sub i32 %tsn, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = and i32 %sub, 65535
  %len = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 4
  %conv4 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv4)
  %cmp5.not = icmp ult i32 %conv3, %conv4
  br i1 %cmp5.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %4 = trunc i32 %sub to i16
  %5 = add i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4097, i16 %5)
  %cmp.i = icmp ult i16 %5, -4097
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %if.end.i

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %sub.i = add nsw i16 %4, 64
  %6 = sub i16 %sub.i, %3
  %add5.i = and i16 %6, -32
  %add8.i = add i16 %add5.i, %3
  %7 = tail call i16 @llvm.umin.i16(i16 %add8.i, i16 4096) #5
  %8 = lshr i16 %7, 3
  %9 = zext i16 %8 to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 2848) #8
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %sctp_tsnmap_grow.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sctp_tsnmap_grow.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %max_tsn_seen.i = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 3
  %12 = ptrtoint ptr %max_tsn_seen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_tsn_seen.i, align 4
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 2
  %14 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %sub20.i = add i32 %13, 31
  %sub.i.i = sub i32 %sub20.i, %15
  %16 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %16, 536870908
  %17 = call ptr @memcpy(ptr %call9.i.i.i, ptr %11, i32 %mul.i.i)
  %18 = load ptr, ptr %map, align 4
  tail call void @kfree(ptr noundef %18) #5
  %19 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i.i, ptr %map, align 4
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %7, ptr %len, align 4
  br label %if.end10

if.end10:                                         ; preds = %sctp_tsnmap_grow.exit, %if.end.if.end10_crit_edge
  %cumulative_tsn_ack_point.i56 = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 2
  %21 = ptrtoint ptr %cumulative_tsn_ack_point.i56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cumulative_tsn_ack_point.i56, align 4
  %max_tsn_seen.i57 = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 3
  %23 = ptrtoint ptr %max_tsn_seen.i57 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_tsn_seen.i57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i58.not = icmp eq i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %cmp15 = icmp eq i32 %conv3, 0
  %or.cond = select i1 %cmp.i58.not, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end10
  %inc = add i32 %22, 1
  %25 = ptrtoint ptr %max_tsn_seen.i57 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc, ptr %max_tsn_seen.i57, align 4
  %26 = ptrtoint ptr %cumulative_tsn_ack_point.i56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc, ptr %cumulative_tsn_ack_point.i56, align 4
  %tobool19.not = icmp eq ptr %trans, null
  br i1 %tobool19.not, label %if.then17.if.end25_crit_edge, label %if.then20

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %asoc = getelementptr inbounds %struct.sctp_transport, ptr %trans, i32 0, i32 8
  %27 = ptrtoint ptr %asoc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %asoc, align 8
  %sack_generation = getelementptr inbounds %struct.sctp_association, ptr %28, i32 0, i32 5, i32 12
  %29 = ptrtoint ptr %sack_generation to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %sack_generation, align 2
  %sack_generation22 = getelementptr inbounds %struct.sctp_transport, ptr %trans, i32 0, i32 3
  %30 = trunc i16 %bf.load to i8
  %31 = ptrtoint ptr %sack_generation22 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load23 = load i8, ptr %sack_generation22, align 4
  %32 = lshr i8 %30, 2
  %bf.shl = and i8 %32, 8
  %bf.clear24 = and i8 %bf.load23, -9
  %bf.set = or i8 %bf.shl, %bf.clear24
  store i8 %bf.set, ptr %sack_generation22, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then17.if.end25_crit_edge
  %33 = ptrtoint ptr %base_tsn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_tsn, align 4
  %inc27 = add i32 %34, 1
  store i32 %inc27, ptr %base_tsn, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %sub29 = sub i32 %24, %tsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %if.then32, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %max_tsn_seen.i57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %tsn, ptr %max_tsn_seen.i57, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.else.if.end34_crit_edge
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  tail call void @_set_bit(i32 noundef %conv3, ptr noundef %37) #5
  %38 = ptrtoint ptr %max_tsn_seen.i57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_tsn_seen.i57, align 4
  %40 = ptrtoint ptr %cumulative_tsn_ack_point.i56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cumulative_tsn_ack_point.i56, align 4
  %sub.i61 = sub i32 %39, %41
  %42 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map, align 4
  %conv1.i = and i32 %sub.i61, 65535
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %43, i32 noundef %conv1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i62 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i62, label %if.end34.cleanup_crit_edge, label %if.end.i63

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i63:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %base_tsn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_tsn, align 4
  %add.i = add i32 %45, %call.i
  store i32 %add.i, ptr %base_tsn, align 4
  %46 = ptrtoint ptr %cumulative_tsn_ack_point.i56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cumulative_tsn_ack_point.i56, align 4
  %add3.i = add i32 %47, %call.i
  store i32 %add3.i, ptr %cumulative_tsn_ack_point.i56, align 4
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len, align 4
  %conv7.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 4
  tail call void @__bitmap_shift_right(ptr noundef %51, ptr noundef %51, i32 noundef %call.i, i32 noundef %conv7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i63, %if.end34.cleanup_crit_edge, %if.end25, %if.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end25 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end.i63 ], [ -12, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_tsnmap_skip(ptr nocapture noundef %map, i32 noundef %tsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_tsn = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %base_tsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_tsn, align 4
  %sub = sub i32 %tsn, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.neg = add i32 %tsn, -4096
  %sub2 = sub i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp3 = icmp slt i32 %sub2, 0
  br i1 %cmp3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %max_tsn_seen = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %max_tsn_seen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tsn_seen, align 4
  %sub6 = sub i32 %3, %tsn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp7 = icmp slt i32 %sub6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %max_tsn_seen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tsn, ptr %max_tsn_seen, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %add13 = add nuw i32 %sub, 1
  %add15 = add i32 %tsn, 1
  %5 = ptrtoint ptr %base_tsn to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add15, ptr %base_tsn, align 4
  %cumulative_tsn_ack_point = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 2
  %6 = ptrtoint ptr %cumulative_tsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cumulative_tsn_ack_point, align 4
  %add16 = add i32 %7, %add13
  store i32 %add16, ptr %cumulative_tsn_ack_point, align 4
  %len = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %conv)
  %cmp17.not = icmp ult i32 %add13, %conv
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  br i1 %cmp17.not, label %if.else.i, label %if.then19

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = add nuw nsw i32 %conv, 31
  %12 = lshr i32 %sub.i, 3
  %mul.i = and i32 %12, 16380
  %13 = call ptr @memset(ptr %11, i32 0, i32 %mul.i)
  br label %cleanup

if.else.i:                                        ; preds = %if.end10
  tail call void @__bitmap_shift_right(ptr noundef %11, ptr noundef %11, i32 noundef %add13, i32 noundef %conv) #5
  %14 = ptrtoint ptr %max_tsn_seen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_tsn_seen, align 4
  %16 = ptrtoint ptr %cumulative_tsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cumulative_tsn_ack_point, align 4
  %sub.i48 = sub i32 %15, %17
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %conv1.i = and i32 %sub.i48, 65535
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %19, i32 noundef %conv1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i.cleanup_crit_edge, label %if.end.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %base_tsn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base_tsn, align 4
  %add.i = add i32 %21, %call.i
  store i32 %add.i, ptr %base_tsn, align 4
  %22 = ptrtoint ptr %cumulative_tsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cumulative_tsn_ack_point, align 4
  %add3.i = add i32 %23, %call.i
  store i32 %add3.i, ptr %cumulative_tsn_ack_point, align 4
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len, align 4
  %conv7.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  tail call void @__bitmap_shift_right(ptr noundef %27, ptr noundef %27, i32 noundef %call.i, i32 noundef %conv7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.else.i.cleanup_crit_edge, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @sctp_tsnmap_pending(ptr nocapture noundef readonly %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cumulative_tsn_ack_point = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %cumulative_tsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cumulative_tsn_ack_point, align 4
  %max_tsn_seen = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %max_tsn_seen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tsn_seen, align 4
  %base_tsn1 = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %base_tsn1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_tsn1, align 4
  %sub = sub i32 %3, %1
  %sub2 = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv4 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2, i32 %conv4)
  %cmp5.not = icmp ult i32 %sub2, %conv4
  br i1 %cmp5.not, label %if.end.i, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw i32 %sub2, 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call4.i = tail call i32 @__bitmap_weight(ptr noundef %9, i32 noundef %add) #5
  %sub8 = sub i32 %sub, %call4.i
  br label %out

out:                                              ; preds = %if.end.i, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %pending_data.0.in = phi i32 [ %sub, %entry.out_crit_edge ], [ %sub, %lor.lhs.false.out_crit_edge ], [ %sub8, %if.end.i ]
  %pending_data.0 = trunc i32 %pending_data.0.in to i16
  ret i16 %pending_data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_tsnmap_renege(ptr nocapture noundef readonly %map, i32 noundef %tsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_tsn = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %base_tsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_tsn, align 4
  %sub = sub i32 %tsn, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 4
  %conv = zext i16 %3 to i32
  %4 = add i32 %1, %conv
  %sub2 = sub i32 %tsn, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp3 = icmp slt i32 %sub2, 0
  br i1 %cmp3, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  tail call void @_clear_bit(i32 noundef %sub, ptr noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @sctp_tsnmap_num_gabs(ptr nocapture noundef readonly %map, ptr nocapture noundef writeonly %gabs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 2
  %0 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %max_tsn_seen.i = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %max_tsn_seen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tsn_seen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i.not = icmp eq i32 %1, %3
  br i1 %cmp.i.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %add.i = add i32 %1, 1
  %base_tsn.i = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.sctp_tsnmap, ptr %map, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.then
  %iter.sroa.0.0 = phi i32 [ %add.i, %if.then ], [ %add21.i, %while.body.while.cond_crit_edge ]
  %ngaps.0 = phi i32 [ 0, %if.then ], [ %inc, %while.body.while.cond_crit_edge ]
  %4 = ptrtoint ptr %max_tsn_seen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_tsn_seen.i, align 4
  %sub.i = sub i32 %5, %iter.sroa.0.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i17 = icmp slt i32 %sub.i, 1
  br i1 %cmp.i17, label %while.cond.if.end7_crit_edge, label %if.end.i

while.cond.if.end7_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i:                                         ; preds = %while.cond
  %6 = ptrtoint ptr %base_tsn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_tsn.i, align 4
  %sub3.i = sub i32 %iter.sroa.0.0, %7
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len.i, align 4
  %conv1.i.i = zext i16 %11 to i32
  %conv2.i.i = and i32 %sub3.i, 65535
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %9, i32 noundef %conv1.i.i, i32 noundef %conv2.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %conv1.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, %conv1.i.i
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end.i.if.end7_crit_edge

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i.i:                                       ; preds = %if.end.i
  %conv5.i.i = trunc i32 %call.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv5.i.i)
  %tobool.not.i.i = icmp eq i16 %conv5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end7_crit_edge, label %if.then6.i.i

if.end.i.i.if.end7_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call8.i.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %9, i32 noundef %conv1.i.i, i32 noundef %call.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i.i, i32 %conv1.i.i)
  %cmp10.i.i = icmp sge i32 %call8.i.i, %conv1.i.i
  %12 = trunc i32 %call8.i.i to i16
  %conv13.i.i = add i16 %12, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv13.i.i)
  %tobool5.not.i = icmp eq i16 %conv13.i.i, 0
  %or.cond.i = select i1 %cmp10.i.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %if.end11.i, label %if.then6.i.i.while.body_crit_edge

if.then6.i.i.while.body_crit_edge:                ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end11.i:                                       ; preds = %if.then6.i.i
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len.i, align 4
  %sub9.i = add i16 %14, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub9.i)
  %tobool12.not.i = icmp eq i16 %sub9.i, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end7_crit_edge, label %if.end11.i.while.body_crit_edge

if.end11.i.while.body_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end11.i.if.end7_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

while.body:                                       ; preds = %if.end11.i.while.body_crit_edge, %if.then6.i.i.while.body_crit_edge
  %end_.158.i = phi i16 [ %sub9.i, %if.end11.i.while.body_crit_edge ], [ %conv13.i.i, %if.then6.i.i.while.body_crit_edge ]
  %add.i18 = add i16 %conv5.i.i, 1
  %add17.i = add i16 %end_.158.i, 1
  %15 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %conv19.i = zext i16 %add17.i to i32
  %add20.i = add i32 %16, 1
  %add21.i = add i32 %add20.i, %conv19.i
  %arrayidx = getelementptr %struct.sctp_gap_ack_block, ptr %gabs, i32 %ngaps.0
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i18, ptr %arrayidx, align 2
  %end5 = getelementptr %struct.sctp_gap_ack_block, ptr %gabs, i32 %ngaps.0, i32 1
  %18 = ptrtoint ptr %end5 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add17.i, ptr %end5, align 2
  %inc = add nuw nsw i32 %ngaps.0, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %while.body.if.end7_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %while.body.if.end7_crit_edge, %if.end11.i.if.end7_crit_edge, %if.end.i.i.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %while.cond.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ngaps.2 = phi i32 [ 0, %entry.if.end7_crit_edge ], [ %ngaps.0, %if.end.i.i.if.end7_crit_edge ], [ %ngaps.0, %if.end.i.if.end7_crit_edge ], [ %ngaps.0, %if.end11.i.if.end7_crit_edge ], [ %ngaps.0, %while.cond.if.end7_crit_edge ], [ 16, %while.body.if.end7_crit_edge ]
  %conv = trunc i32 %ngaps.2 to i16
  ret i16 %conv
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_shift_right(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

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
