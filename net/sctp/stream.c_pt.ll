; ModuleID = '/llk/IR_all_yes/net/sctp/stream.c_pt.bc'
source_filename = "../net/sctp/stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sctp_stream = type { %struct.anon, %struct.anon.3, i16, i16, ptr, %union.anon.5, ptr }
%struct.anon = type { %struct.__genradix, [0 x %struct.sctp_stream_out] }
%struct.__genradix = type { ptr }
%struct.sctp_stream_out = type { %union.anon, i32, ptr, i8 }
%union.anon = type { i32 }
%struct.anon.3 = type { %struct.__genradix, [0 x %struct.sctp_stream_in] }
%struct.sctp_stream_in = type { %union.anon.4, i32, i32, i32, i8, i8 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.sctp_sched_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_chunk = type { %struct.list_head, %struct.refcount_struct, i32, %union.anon.8, %struct.list_head, ptr, %union.anon.164, %union.sctp_params, %union.anon.165, ptr, ptr, ptr, %struct.sctp_sndrcvinfo, ptr, ptr, i32, %union.sctp_addr, %union.sctp_addr, ptr, ptr, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.8 = type { %struct.list_head }
%union.anon.164 = type { ptr }
%union.sctp_params = type { ptr }
%union.anon.165 = type { ptr }
%struct.sctp_sndrcvinfo = type { i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%union.sctp_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.38 }
%union.anon.38 = type { [4 x i32] }
%struct.sctp_datahdr = type { i32, i16, i16, i32, [0 x i8] }
%struct.sctp_association = type { %struct.sctp_ep_common, %struct.list_head, i32, ptr, %struct.sctp_cookie, %struct.anon.176, i32, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i8, i8, i32, i32, i32, i32, [12 x i32], [12 x %struct.timer_list], ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i16, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.sctp_stream, %struct.sctp_outq, %struct.sctp_ulpq, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr, i16, i16, i8, i8, i8, i32, i32, [2 x i32], ptr, %struct.sctp_priv_assoc_stats, i32, i16, [3 x i64], [3 x i64], i32, i32, %struct.callback_head }
%struct.sctp_ep_common = type { i32, %struct.refcount_struct, i8, ptr, ptr, %struct.sctp_inq, %struct.sctp_bind_addr }
%struct.sctp_inq = type { %struct.list_head, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sctp_bind_addr = type { i16, %struct.list_head }
%struct.sctp_cookie = type { i32, i32, i32, i32, i64, i16, i16, i32, %union.sctp_addr, i16, i8, i8, i32, [36 x i8], [10 x i8], [20 x i8], i32, [0 x %struct.sctp_init_chunk] }
%struct.sctp_init_chunk = type { %struct.sctp_chunkhdr, %struct.sctp_inithdr }
%struct.sctp_chunkhdr = type { i8, i8, i16 }
%struct.sctp_inithdr = type { i32, i32, i16, i16, i32, [0 x i8] }
%struct.anon.176 = type { %struct.list_head, i32, i16, i16, ptr, %union.sctp_addr, ptr, ptr, ptr, ptr, %struct.sctp_tsnmap, i16, i16, i32, i32, %struct.sctp_inithdr_host, ptr, i32, i32, ptr, ptr, ptr }
%struct.sctp_tsnmap = type { ptr, i32, i32, i32, i16, i16, i16, [16 x i32] }
%struct.sctp_inithdr_host = type { i32, i32, i16, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.16 }
%union.anon.16 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.17 }
%union.anon.17 = type { i32 }
%struct.sctp_outq = type { ptr, %struct.list_head, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, i8 }
%struct.sctp_ulpq = type { i8, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.sctp_priv_assoc_stats = type { %struct.__kernel_sockaddr_storage, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.172 }
%union.anon.172 = type { ptr, [124 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sctp_reset_streams = type { i32, i16, i16, [0 x i16] }
%struct.sctp_stream_out_ext = type { [3 x i64], [3 x i64], %struct.list_head, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.list_head, ptr }
%struct.sctp_add_streams = type { i32, i16, i16 }
%struct.sctp_strreset_outreq = type { %struct.sctp_paramhdr, i32, i32, i32, [0 x i16] }
%struct.sctp_paramhdr = type { i16, i16 }
%struct.sctp_transport = type { %struct.list_head, %struct.rhlist_head, %struct.refcount_struct, i8, i32, %struct.flowi, %union.sctp_addr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %union.sctp_addr, i32, i32, i32, i32, %struct.atomic_t, i64, i32, i32, i16, i16, i32, i8, i16, i16, i32, i32, i32, i32, i16, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.list_head, %struct.sctp_packet, %struct.list_head, %struct.anon.174, %struct.anon.175, i64, %struct.callback_head }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.flowi = type { %union.anon.33 }
%union.anon.33 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sctp_packet = type { i16, i16, i32, %struct.list_head, i32, i32, i32, ptr, ptr, i8 }
%struct.anon.174 = type { i32, i8, i8, i8 }
%struct.anon.175 = type { i16, i16, i16, i8, i8 }
%struct.sctp_reconf_chunk = type { %struct.sctp_chunkhdr, [0 x i8] }
%struct.sctp_strreset_tsnreq = type { %struct.sctp_paramhdr, i32 }
%struct.sctp_strreset_inreq = type { %struct.sctp_paramhdr, i32, [0 x i16] }
%struct.sctp_stream_interleave = type { i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sctp_strreset_addstrm = type { %struct.sctp_paramhdr, i32, i16, i16 }
%struct.sctp_strreset_resp = type { %struct.sctp_paramhdr, i32, i32 }
%struct.sctp_strreset_resptsn = type { %struct.sctp_paramhdr, i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 16, i64 13, i64 14, i64 15, i64 17, i64 18]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_stream_init(ptr noundef %stream, i16 noundef zeroext %outcnt, i16 noundef zeroext %incnt, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sctp_sched_ops_from_stream(ptr noundef %stream) #6
  %or = or i32 %gfp, 8192
  %outcnt1 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outcnt1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %outcnt)
  %cmp = icmp eq i16 %1, %outcnt
  br i1 %cmp, label %entry.handle_in_crit_edge, label %if.end

entry.handle_in_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_in

if.end:                                           ; preds = %entry
  %unsched_all = getelementptr inbounds %struct.sctp_sched_ops, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %unsched_all to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unsched_all, align 4
  tail call void %3(ptr noundef %stream) #6
  tail call fastcc void @sctp_stream_outq_migrate(ptr noundef %stream, ptr noundef null, i16 noundef zeroext %outcnt)
  %sched_all = getelementptr inbounds %struct.sctp_sched_ops, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %sched_all to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sched_all, align 4
  tail call void %5(ptr noundef %stream) #6
  %6 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %outcnt1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %outcnt)
  %cmp.not.i = icmp ult i16 %7, %outcnt
  br i1 %cmp.not.i, label %if.end.i, label %sctp_stream_alloc_out.exit

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i16 %outcnt to i32
  %add.i = shl nuw nsw i32 %conv.i, 4
  %mul17.i.i = add nuw nsw i32 %add.i, 16
  %call5.i = tail call i32 @__genradix_prealloc(ptr noundef %stream, i32 noundef %mul17.i.i, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %sctp_stream_alloc_out.exit.thread, label %if.end.i.out_err_crit_edge

if.end.i.out_err_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

sctp_stream_alloc_out.exit.thread:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %outcnt, ptr %outcnt1, align 4
  br label %for.body.preheader

sctp_stream_alloc_out.exit:                       ; preds = %if.end
  %9 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %outcnt, ptr %outcnt1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %outcnt)
  %cmp961.not = icmp eq i16 %outcnt, 0
  br i1 %cmp961.not, label %sctp_stream_alloc_out.exit.handle_in_crit_edge, label %sctp_stream_alloc_out.exit.for.body.preheader_crit_edge

sctp_stream_alloc_out.exit.for.body.preheader_crit_edge: ; preds = %sctp_stream_alloc_out.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

sctp_stream_alloc_out.exit.handle_in_crit_edge:   ; preds = %sctp_stream_alloc_out.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_in

for.body.preheader:                               ; preds = %sctp_stream_alloc_out.exit.for.body.preheader_crit_edge, %sctp_stream_alloc_out.exit.thread
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv.i47 = shl i32 %i.062, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i47) #6
  %state = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 3
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %state, align 4
  %inc = add nuw nsw i32 %i.062, 1
  %11 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %outcnt1, align 4
  %conv8 = zext i16 %12 to i32
  %cmp9 = icmp ult i32 %inc, %conv8
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.handle_in_crit_edge

for.body.handle_in_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %handle_in

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

handle_in:                                        ; preds = %for.body.handle_in_crit_edge, %sctp_stream_alloc_out.exit.handle_in_crit_edge, %entry.handle_in_crit_edge
  tail call void @sctp_stream_interleave_init(ptr noundef %stream) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %incnt)
  %tobool13.not = icmp eq i16 %incnt, 0
  br i1 %tobool13.not, label %handle_in.out22_crit_edge, label %if.end15

handle_in.out22_crit_edge:                        ; preds = %handle_in
  call void @__sanitizer_cov_trace_pc() #8
  br label %out22

if.end15:                                         ; preds = %handle_in
  %incnt1.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 3
  %13 = ptrtoint ptr %incnt1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incnt1.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %incnt)
  %cmp.not.i49 = icmp ult i16 %14, %incnt
  br i1 %cmp.not.i49, label %if.end.i54, label %if.end15.sctp_stream_alloc_in.exit.thread_crit_edge

if.end15.sctp_stream_alloc_in.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_stream_alloc_in.exit.thread

if.end.i54:                                       ; preds = %if.end15
  %conv.i50 = zext i16 %incnt to i32
  %in.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 1
  %add.i51 = add nuw nsw i32 %conv.i50, 1
  %add.i51.frozen = freeze i32 %add.i51
  %div14.i.i = udiv i32 %add.i51.frozen, 204
  %mul.i.i = shl nuw nsw i32 %div14.i.i, 12
  %15 = mul i32 %div14.i.i, 204
  %rem.i.i.decomposed = sub i32 %add.i51.frozen, %15
  %mul15.i.i = mul nuw nsw i32 %rem.i.i.decomposed, 20
  %add.i.i = add nuw nsw i32 %mul15.i.i, %mul.i.i
  %call5.i52 = tail call i32 @__genradix_prealloc(ptr noundef %in.i, i32 noundef %add.i.i, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i52)
  %tobool.not.i53 = icmp eq i32 %call5.i52, 0
  br i1 %tobool.not.i53, label %if.end.i54.sctp_stream_alloc_in.exit.thread_crit_edge, label %in_err

if.end.i54.sctp_stream_alloc_in.exit.thread_crit_edge: ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_stream_alloc_in.exit.thread

sctp_stream_alloc_in.exit.thread:                 ; preds = %if.end.i54.sctp_stream_alloc_in.exit.thread_crit_edge, %if.end15.sctp_stream_alloc_in.exit.thread_crit_edge
  %16 = ptrtoint ptr %incnt1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %incnt, ptr %incnt1.i, align 2
  br label %out22

in_err:                                           ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  %free = getelementptr inbounds %struct.sctp_sched_ops, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free, align 4
  tail call void %18(ptr noundef %stream) #6
  tail call void @__genradix_free(ptr noundef %in.i) #6
  br label %out_err

out_err:                                          ; preds = %in_err, %if.end.i.out_err_crit_edge
  %ret.1 = phi i32 [ %call5.i52, %in_err ], [ %call5.i, %if.end.i.out_err_crit_edge ]
  tail call void @__genradix_free(ptr noundef %stream) #6
  %19 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %outcnt1, align 4
  br label %out22

out22:                                            ; preds = %out_err, %sctp_stream_alloc_in.exit.thread, %handle_in.out22_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_err ], [ 0, %handle_in.out22_crit_edge ], [ 0, %sctp_stream_alloc_in.exit.thread ]
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_sched_ops_from_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sctp_stream_outq_migrate(ptr noundef %stream, ptr noundef %new, i16 noundef zeroext %outcnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %outcnt1 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outcnt1, align 4
  %conv2 = zext i16 %outcnt to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %outcnt)
  %cmp = icmp ugt i16 %1, %outcnt
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %outqueue.i = getelementptr i8, ptr %stream, i32 32
  %out_chunk_list.i = getelementptr i8, ptr %stream, i32 36
  %2 = ptrtoint ptr %out_chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_chunk_list.i, align 4
  %cmp.not36.i = icmp eq ptr %3, %out_chunk_list.i
  br i1 %cmp.not36.i, label %if.then.if.end_crit_edge, label %for.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then
  %prsctp_capable.i = getelementptr i8, ptr %stream, i32 -914
  %sent_cnt_removable.i = getelementptr i8, ptr %stream, i32 612
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ch.037.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %temp.039.i, %cleanup.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ch.037.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %temp.039.i = load ptr, ptr %ch.037.i, align 4
  %subh.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.037.i, i32 0, i32 8
  %5 = ptrtoint ptr %subh.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subh.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.sctp_datahdr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %outcnt)
  %cmp11.i = icmp ult i16 %8, %outcnt
  br i1 %cmp11.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @sctp_sched_dequeue_common(ptr noundef %outqueue.i, ptr noundef %ch.037.i) #6
  tail call void @sctp_chunk_fail(ptr noundef %ch.037.i, i32 noundef 1) #6
  %9 = ptrtoint ptr %prsctp_capable.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %prsctp_capable.i, align 2
  %10 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %if.end.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %sinfo_flags.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.037.i, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %sinfo_flags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sinfo_flags.i, align 4
  %13 = and i16 %12, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %13)
  %cmp15.i = icmp eq i16 %13, 48
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then17.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %sent_cnt_removable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sent_cnt_removable.i, align 8
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %sent_cnt_removable.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %land.lhs.true.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  tail call void @sctp_chunk_free(ptr noundef %ch.037.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end18.i, %for.body.i.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %temp.039.i, %out_chunk_list.i
  br i1 %cmp.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not = icmp ne ptr %new, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %outcnt)
  %cmp670 = icmp ne i16 %outcnt, 0
  %or.cond = and i1 %tobool.not, %cmp670
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %conv.i = shl i32 %i.071, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef nonnull %new, i32 noundef %conv.i) #6
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %16 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext, align 4
  tail call void @kfree(ptr noundef %17) #6
  %call1.i57 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #6
  %ext11 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i57, i32 0, i32 2
  %18 = ptrtoint ptr %ext11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext11, align 4
  %call1.i60 = tail call ptr @__genradix_ptr(ptr noundef nonnull %new, i32 noundef %conv.i) #6
  %ext14 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i60, i32 0, i32 2
  %20 = ptrtoint ptr %ext14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %ext14, align 4
  %call1.i63 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #6
  %ext17 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i63, i32 0, i32 2
  %21 = ptrtoint ptr %ext17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ext17, align 4
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body.if.end18_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %for.body.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %22 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %outcnt1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %outcnt)
  %cmp2373 = icmp ugt i16 %23, %outcnt
  br i1 %cmp2373, label %if.end18.for.body25_crit_edge, label %if.end18.for.end34_crit_edge

if.end18.for.end34_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

if.end18.for.body25_crit_edge:                    ; preds = %if.end18
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %if.end18.for.body25_crit_edge
  %i.174 = phi i32 [ %inc33, %for.body25.for.body25_crit_edge ], [ %conv2, %if.end18.for.body25_crit_edge ]
  %conv.i64 = shl i32 %i.174, 4
  %mul17.i.i65 = and i32 %conv.i64, 1048560
  %call1.i66 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i65) #6
  %ext28 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i66, i32 0, i32 2
  %24 = ptrtoint ptr %ext28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext28, align 4
  tail call void @kfree(ptr noundef %25) #6
  %call1.i69 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i65) #6
  %ext31 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i69, i32 0, i32 2
  %26 = ptrtoint ptr %ext31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ext31, align 4
  %inc33 = add nuw nsw i32 %i.174, 1
  %27 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %outcnt1, align 4
  %conv22 = zext i16 %28 to i32
  %cmp23 = icmp ult i32 %inc33, %conv22
  br i1 %cmp23, label %for.body25.for.body25_crit_edge, label %for.body25.for.end34_crit_edge

for.body25.for.end34_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.end34:                                        ; preds = %for.body25.for.end34_crit_edge, %if.end18.for.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_stream_alloc_out(ptr noundef %stream, i16 noundef zeroext %outcnt, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %outcnt1 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outcnt1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %outcnt)
  %cmp.not = icmp ult i16 %1, %outcnt
  br i1 %cmp.not, label %if.end, label %entry.out8_crit_edge

entry.out8_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out8

if.end:                                           ; preds = %entry
  %conv = zext i16 %outcnt to i32
  %add = shl nuw nsw i32 %conv, 4
  %mul17.i = add nuw nsw i32 %add, 16
  %call5 = tail call i32 @__genradix_prealloc(ptr noundef %stream, i32 noundef %mul17.i, i32 noundef %gfp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.out8_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.out8_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out8

out8:                                             ; preds = %if.end.out8_crit_edge, %entry.out8_crit_edge
  %2 = ptrtoint ptr %outcnt1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %outcnt, ptr %outcnt1, align 4
  br label %cleanup

cleanup:                                          ; preds = %out8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out8 ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_stream_interleave_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__genradix_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_stream_init_ext(ptr noundef %stream, i16 noundef zeroext %sid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i16 %sid to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #6
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %1 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ext, align 4
  %call2 = tail call i32 @sctp_sched_init_sid(ptr noundef %stream, i16 noundef zeroext %sid, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i21 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #6
  %ext6 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i21, i32 0, i32 2
  %2 = ptrtoint ptr %ext6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext6, align 4
  tail call void @kfree(ptr noundef %3) #6
  %call1.i24 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #6
  %ext8 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i24, i32 0, i32 2
  %4 = ptrtoint ptr %ext8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ext8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sched_init_sid(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_stream_free(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sctp_sched_ops_from_stream(ptr noundef %stream) #6
  %free = getelementptr inbounds %struct.sctp_sched_ops, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free, align 4
  tail call void %1(ptr noundef %stream) #6
  %outcnt = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %2 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp13.not = icmp eq i16 %3, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv.i = shl i32 %i.014, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #6
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %4 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext, align 4
  tail call void @kfree(ptr noundef %5) #6
  %inc = add nuw nsw i32 %i.014, 1
  %6 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %outcnt, align 4
  %conv = zext i16 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @__genradix_free(ptr noundef %stream) #6
  %in = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 1
  tail call void @__genradix_free(ptr noundef %in) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_stream_clear(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %outcnt = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp30.not = icmp eq i16 %1, 0
  br i1 %cmp30.not, label %entry.for.cond5.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %incnt = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 3
  %2 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %incnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp733.not = icmp eq i16 %3, 0
  br i1 %cmp733.not, label %for.cond5.preheader.for.end14_crit_edge, label %for.body9.lr.ph

for.cond5.preheader.for.end14_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end14

for.body9.lr.ph:                                  ; preds = %for.cond5.preheader
  %in.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 1
  br label %for.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv.i = shl i32 %i.031, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #6
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %call1.i, align 4
  %call1.i27 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i) #6
  %mid_uo = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i27, i32 0, i32 1
  %5 = ptrtoint ptr %mid_uo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mid_uo, align 4
  %inc = add nuw nsw i32 %i.031, 1
  %6 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %outcnt, align 4
  %conv = zext i16 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond5.preheader_crit_edge

for.body.for.cond5.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %i.134 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc13, %for.body9.for.body9_crit_edge ]
  %conv10 = trunc i32 %i.134 to i16
  %conv10.frozen = freeze i16 %conv10
  %div14.i2.i = udiv i16 %conv10.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %8 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %conv10.frozen, %8
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i28 = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %9 = ptrtoint ptr %call1.i28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %call1.i28, align 4
  %inc13 = add nuw nsw i32 %i.134, 1
  %10 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %incnt, align 2
  %conv6 = zext i16 %11 to i32
  %cmp7 = icmp ult i32 %inc13, %conv6
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.for.end14_crit_edge

for.body9.for.end14_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end14

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.end14:                                        ; preds = %for.body9.for.end14_crit_edge, %for.cond5.preheader.for.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sctp_stream_update(ptr noundef %stream, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sctp_sched_ops_from_stream(ptr noundef %stream) #6
  %unsched_all = getelementptr inbounds %struct.sctp_sched_ops, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %unsched_all to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unsched_all, align 4
  tail call void %1(ptr noundef %stream) #6
  %outcnt = getelementptr inbounds %struct.sctp_stream, ptr %new, i32 0, i32 2
  %2 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %outcnt, align 4
  tail call fastcc void @sctp_stream_outq_migrate(ptr noundef %stream, ptr noundef %new, i16 noundef zeroext %3)
  %call.i = tail call ptr @sctp_sched_ops_from_stream(ptr noundef %stream) #6
  %free.i = getelementptr inbounds %struct.sctp_sched_ops, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free.i, align 4
  tail call void %5(ptr noundef %stream) #6
  %outcnt.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 2
  %6 = ptrtoint ptr %outcnt.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %outcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp13.not.i = icmp eq i16 %7, 0
  br i1 %cmp13.not.i, label %entry.sctp_stream_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sctp_stream_free.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_stream_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %conv.i.i = shl i32 %i.014.i, 4
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %conv.i.i) #6
  %ext.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ext.i, align 4
  tail call void @kfree(ptr noundef %9) #6
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %10 = ptrtoint ptr %outcnt.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %outcnt.i, align 4
  %conv.i = zext i16 %11 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sctp_stream_free.exit_crit_edge

for.body.i.sctp_stream_free.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_stream_free.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sctp_stream_free.exit:                            ; preds = %for.body.i.sctp_stream_free.exit_crit_edge, %entry.sctp_stream_free.exit_crit_edge
  tail call void @__genradix_free(ptr noundef %stream) #6
  %in.i = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 1
  tail call void @__genradix_free(ptr noundef %in.i) #6
  %12 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new, align 4
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %stream, align 4
  %in2 = getelementptr inbounds %struct.sctp_stream, ptr %new, i32 0, i32 1
  %15 = ptrtoint ptr %in2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in2, align 4
  %17 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %in.i, align 4
  %18 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %outcnt, align 4
  %20 = ptrtoint ptr %outcnt.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %outcnt.i, align 4
  %incnt = getelementptr inbounds %struct.sctp_stream, ptr %new, i32 0, i32 3
  %21 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %incnt, align 2
  %incnt5 = getelementptr inbounds %struct.sctp_stream, ptr %stream, i32 0, i32 3
  %23 = ptrtoint ptr %incnt5 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %incnt5, align 2
  %sched_all = getelementptr inbounds %struct.sctp_sched_ops, ptr %call, i32 0, i32 8
  %24 = ptrtoint ptr %sched_all to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sched_all, align 4
  tail call void %25(ptr noundef %stream) #6
  %26 = call ptr @memset(ptr %new, i32 0, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_send_reset_streams(ptr noundef %asoc, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %reconf_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %reconf_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %reconf_capable, align 2
  %1 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup169_crit_edge, label %lor.lhs.false

entry.cleanup169_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

lor.lhs.false:                                    ; preds = %entry
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %2 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %strreset_enable, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup169_crit_edge, label %if.end

lor.lhs.false.cleanup169_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

if.end:                                           ; preds = %lor.lhs.false
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %5 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %strreset_outstanding, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup169_crit_edge

if.end.cleanup169_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

if.end6:                                          ; preds = %if.end
  %srs_flags = getelementptr inbounds %struct.sctp_reset_streams, ptr %params, i32 0, i32 1
  %7 = ptrtoint ptr %srs_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %srs_flags, align 4
  %conv7 = zext i16 %8 to i32
  %and8 = and i32 %conv7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9 = icmp ne i32 %and8, 0
  %and12 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13 = icmp ne i32 %and12, 0
  %9 = and i32 %conv7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %if.end6.cleanup169_crit_edge, label %if.end18

if.end6.cleanup169_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

if.end18:                                         ; preds = %if.end6
  %srs_number_streams = getelementptr inbounds %struct.sctp_reset_streams, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %srs_number_streams to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %srs_number_streams, align 2
  %srs_stream_list = getelementptr %struct.sctp_reset_streams, ptr %params, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool19.not = icmp eq i16 %11, 0
  br i1 %tobool19.not, label %if.end18.if.end62_crit_edge, label %if.then20

if.end18.if.end62_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then20:                                        ; preds = %if.end18
  br i1 %tobool9, label %for.body.preheader, label %if.then20.if.end33_crit_edge

if.then20.if.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

for.body.preheader:                               ; preds = %if.then20
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %12 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %outcnt, align 4
  %wide.trip.count = zext i16 %11 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %srs_stream_list, i32 %indvars.iv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %13)
  %cmp28.not = icmp ult i16 %15, %13
  br i1 %cmp28.not, label %for.cond, label %for.body.cleanup169_crit_edge

for.body.cleanup169_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl nuw nsw i32 %wide.trip.count, 1
  %add = add nuw nsw i32 %mul, 16
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.then20.if.end33_crit_edge
  %param_len.0 = phi i32 [ %add, %for.end ], [ 0, %if.then20.if.end33_crit_edge ]
  br i1 %tobool13, label %for.body41.preheader, label %if.end33.if.end57_crit_edge

if.end33.if.end57_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

for.body41.preheader:                             ; preds = %if.end33
  %incnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 3
  %16 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %incnt, align 2
  %wide.trip.count292 = zext i16 %11 to i32
  br label %for.body41

for.cond36:                                       ; preds = %for.body41
  %indvars.iv.next291 = add nuw nsw i32 %indvars.iv290, 1
  %exitcond293.not = icmp eq i32 %indvars.iv.next291, %wide.trip.count292
  br i1 %exitcond293.not, label %for.end52, label %for.cond36.for.body41_crit_edge

for.cond36.for.body41_crit_edge:                  ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41

for.body41:                                       ; preds = %for.cond36.for.body41_crit_edge, %for.body41.preheader
  %indvars.iv290 = phi i32 [ 0, %for.body41.preheader ], [ %indvars.iv.next291, %for.cond36.for.body41_crit_edge ]
  %arrayidx43 = getelementptr i16, ptr %srs_stream_list, i32 %indvars.iv290
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx43, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %17)
  %cmp46.not = icmp ult i16 %19, %17
  br i1 %cmp46.not, label %for.cond36, label %for.body41.cleanup169_crit_edge

for.body41.cleanup169_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

for.end52:                                        ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #8
  %mul54 = shl nuw nsw i32 %wide.trip.count292, 1
  %add55 = add nuw nsw i32 %mul54, 8
  %add56 = add nsw i32 %add55, %param_len.0
  br label %if.end57

if.end57:                                         ; preds = %for.end52, %if.end33.if.end57_crit_edge
  %param_len.1 = phi i32 [ %add56, %for.end52 ], [ %param_len.0, %if.end33.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65528, i32 %param_len.1)
  %cmp58 = icmp ugt i32 %param_len.1, 65528
  br i1 %cmp58, label %if.end57.cleanup169_crit_edge, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end57.cleanup169_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

if.end62:                                         ; preds = %if.end57.if.end62_crit_edge, %if.end18.if.end62_crit_edge
  %conv63 = zext i16 %11 to i32
  %20 = shl nuw nsw i32 %conv63, 1
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #10
  %tobool64.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool64.not, label %if.end62.cleanup169_crit_edge, label %for.cond67.preheader

if.end62.cleanup169_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

for.cond67.preheader:                             ; preds = %if.end62
  br i1 %tobool19.not, label %for.cond67.preheader.for.end79_crit_edge, label %for.cond67.preheader.for.body72_crit_edge

for.cond67.preheader.for.body72_crit_edge:        ; preds = %for.cond67.preheader
  br label %for.body72

for.cond67.preheader.for.end79_crit_edge:         ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end79

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.cond67.preheader.for.body72_crit_edge
  %indvars.iv294 = phi i32 [ %indvars.iv.next295, %for.body72.for.body72_crit_edge ], [ 0, %for.cond67.preheader.for.body72_crit_edge ]
  %arrayidx74 = getelementptr i16, ptr %srs_stream_list, i32 %indvars.iv294
  %21 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx74, align 2
  %arrayidx76 = getelementptr i16, ptr %call8.i.i, i32 %indvars.iv294
  %23 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %arrayidx76, align 2
  %indvars.iv.next295 = add nuw nsw i32 %indvars.iv294, 1
  %exitcond297.not = icmp eq i32 %indvars.iv.next295, %conv63
  br i1 %exitcond297.not, label %for.body72.for.end79_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body72

for.body72.for.end79_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end79

for.end79:                                        ; preds = %for.body72.for.end79_crit_edge, %for.cond67.preheader.for.end79_crit_edge
  br i1 %tobool9, label %land.lhs.true82, label %for.end79.if.end85_crit_edge

for.end79.if.end85_crit_edge:                     ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

land.lhs.true82:                                  ; preds = %for.end79
  %call83 = tail call fastcc zeroext i1 @sctp_stream_outq_is_empty(ptr noundef %stream1, i16 noundef zeroext %11, ptr noundef nonnull %call8.i.i)
  br i1 %call83, label %land.lhs.true82.if.end85_crit_edge, label %if.then84

land.lhs.true82.if.end85_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then84:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup169

if.end85:                                         ; preds = %land.lhs.true82.if.end85_crit_edge, %for.end79.if.end85_crit_edge
  %call88 = tail call ptr @sctp_make_strreset_req(ptr noundef %asoc, i16 noundef zeroext %11, ptr noundef nonnull %call8.i.i, i1 noundef zeroext %tobool9, i1 noundef zeroext %tobool13) #6
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %if.end85.cleanup169_crit_edge, label %if.end91

if.end85.cleanup169_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

if.end91:                                         ; preds = %if.end85
  br i1 %tobool9, label %if.then93, label %if.end91.if.end121_crit_edge

if.end91.if.end121_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

if.then93:                                        ; preds = %if.end91
  br i1 %tobool19.not, label %for.cond108.preheader, label %if.then93.for.body101_crit_edge

if.then93.for.body101_crit_edge:                  ; preds = %if.then93
  br label %for.body101

for.cond108.preheader:                            ; preds = %if.then93
  %outcnt110 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %24 = ptrtoint ptr %outcnt110 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %outcnt110, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp112280.not = icmp eq i16 %25, 0
  br i1 %cmp112280.not, label %for.cond108.preheader.if.end121_crit_edge, label %for.cond108.preheader.for.body114_crit_edge

for.cond108.preheader.for.body114_crit_edge:      ; preds = %for.cond108.preheader
  br label %for.body114

for.cond108.preheader.if.end121_crit_edge:        ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

for.body101:                                      ; preds = %for.body101.for.body101_crit_edge, %if.then93.for.body101_crit_edge
  %indvars.iv298 = phi i32 [ %indvars.iv.next299, %for.body101.for.body101_crit_edge ], [ 0, %if.then93.for.body101_crit_edge ]
  %arrayidx103 = getelementptr i16, ptr %srs_stream_list, i32 %indvars.iv298
  %26 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx103, align 2
  %conv.i = zext i16 %27 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #6
  %state = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 3
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %state, align 4
  %indvars.iv.next299 = add nuw nsw i32 %indvars.iv298, 1
  %exitcond301.not = icmp eq i32 %indvars.iv.next299, %conv63
  br i1 %exitcond301.not, label %for.body101.if.end121_crit_edge, label %for.body101.for.body101_crit_edge

for.body101.for.body101_crit_edge:                ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body101

for.body101.if.end121_crit_edge:                  ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

for.body114:                                      ; preds = %for.body114.for.body114_crit_edge, %for.cond108.preheader.for.body114_crit_edge
  %indvars.iv302 = phi i32 [ %indvars.iv.next303, %for.body114.for.body114_crit_edge ], [ 0, %for.cond108.preheader.for.body114_crit_edge ]
  %mul17.i.i256 = shl nuw nsw i32 %indvars.iv302, 4
  %call1.i257 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i256) #6
  %state116 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i257, i32 0, i32 3
  %29 = ptrtoint ptr %state116 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %state116, align 4
  %indvars.iv.next303 = add nuw nsw i32 %indvars.iv302, 1
  %30 = ptrtoint ptr %outcnt110 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %outcnt110, align 4
  %32 = zext i16 %31 to i32
  %cmp112 = icmp ult i32 %indvars.iv.next303, %32
  br i1 %cmp112, label %for.body114.for.body114_crit_edge, label %for.body114.if.end121_crit_edge

for.body114.if.end121_crit_edge:                  ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

for.body114.for.body114_crit_edge:                ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body114

if.end121:                                        ; preds = %for.body114.if.end121_crit_edge, %for.body101.if.end121_crit_edge, %for.cond108.preheader.if.end121_crit_edge, %if.end91.if.end121_crit_edge
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %33 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call88, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_hold(ptr noundef nonnull %call88) #6
  %call123 = tail call fastcc i32 @sctp_send_reconf(ptr noundef %asoc, ptr noundef nonnull %call88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end160, label %if.then125

if.then125:                                       ; preds = %if.end121
  %34 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_put(ptr noundef %35) #6
  %36 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %strreset_chunk, align 4
  br i1 %tobool9, label %if.end130, label %if.then125.cleanup169_crit_edge

if.then125.cleanup169_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

if.end130:                                        ; preds = %if.then125
  br i1 %tobool19.not, label %for.cond147.preheader, label %if.end130.for.body138_crit_edge

if.end130.for.body138_crit_edge:                  ; preds = %if.end130
  br label %for.body138

for.cond147.preheader:                            ; preds = %if.end130
  %outcnt149 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %37 = ptrtoint ptr %outcnt149 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %outcnt149, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp151284.not = icmp eq i16 %38, 0
  br i1 %cmp151284.not, label %for.cond147.preheader.cleanup169_crit_edge, label %for.cond147.preheader.for.body153_crit_edge

for.cond147.preheader.for.body153_crit_edge:      ; preds = %for.cond147.preheader
  br label %for.body153

for.cond147.preheader.cleanup169_crit_edge:       ; preds = %for.cond147.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %if.end130.for.body138_crit_edge
  %indvars.iv304 = phi i32 [ %indvars.iv.next305, %for.body138.for.body138_crit_edge ], [ 0, %if.end130.for.body138_crit_edge ]
  %arrayidx140 = getelementptr i16, ptr %srs_stream_list, i32 %indvars.iv304
  %39 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx140, align 2
  %conv.i258 = zext i16 %40 to i32
  %mul17.i.i259 = shl nuw nsw i32 %conv.i258, 4
  %call1.i260 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i259) #6
  %state142 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i260, i32 0, i32 3
  %41 = ptrtoint ptr %state142 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %state142, align 4
  %indvars.iv.next305 = add nuw nsw i32 %indvars.iv304, 1
  %exitcond307.not = icmp eq i32 %indvars.iv.next305, %conv63
  br i1 %exitcond307.not, label %for.body138.cleanup169_crit_edge, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body138

for.body138.cleanup169_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

for.body153:                                      ; preds = %for.body153.for.body153_crit_edge, %for.cond147.preheader.for.body153_crit_edge
  %indvars.iv308 = phi i32 [ %indvars.iv.next309, %for.body153.for.body153_crit_edge ], [ 0, %for.cond147.preheader.for.body153_crit_edge ]
  %mul17.i.i262 = shl nuw nsw i32 %indvars.iv308, 4
  %call1.i263 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i262) #6
  %state155 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i263, i32 0, i32 3
  %42 = ptrtoint ptr %state155 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %state155, align 4
  %indvars.iv.next309 = add nuw nsw i32 %indvars.iv308, 1
  %43 = ptrtoint ptr %outcnt149 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %outcnt149, align 4
  %45 = zext i16 %44 to i32
  %cmp151 = icmp ult i32 %indvars.iv.next309, %45
  br i1 %cmp151, label %for.body153.for.body153_crit_edge, label %for.body153.cleanup169_crit_edge

for.body153.cleanup169_crit_edge:                 ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup169

for.body153.for.body153_crit_edge:                ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body153

if.end160:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %and8.lobit = lshr exact i32 %and8, 1
  %add165 = add nuw nsw i32 %and8.lobit, %and12
  %conv166 = trunc i32 %add165 to i8
  %46 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv166, ptr %strreset_outstanding, align 2
  br label %cleanup169

cleanup169:                                       ; preds = %if.end160, %for.body153.cleanup169_crit_edge, %for.body138.cleanup169_crit_edge, %for.cond147.preheader.cleanup169_crit_edge, %if.then125.cleanup169_crit_edge, %if.end85.cleanup169_crit_edge, %if.then84, %if.end62.cleanup169_crit_edge, %if.end57.cleanup169_crit_edge, %for.body41.cleanup169_crit_edge, %for.body.cleanup169_crit_edge, %if.end6.cleanup169_crit_edge, %if.end.cleanup169_crit_edge, %lor.lhs.false.cleanup169_crit_edge, %entry.cleanup169_crit_edge
  %retval2.0 = phi i32 [ %call123, %if.then125.cleanup169_crit_edge ], [ 0, %if.end160 ], [ -11, %if.then84 ], [ -92, %lor.lhs.false.cleanup169_crit_edge ], [ -92, %entry.cleanup169_crit_edge ], [ -115, %if.end.cleanup169_crit_edge ], [ -22, %if.end6.cleanup169_crit_edge ], [ -12, %if.end62.cleanup169_crit_edge ], [ -12, %if.end85.cleanup169_crit_edge ], [ -22, %if.end57.cleanup169_crit_edge ], [ %call123, %for.cond147.preheader.cleanup169_crit_edge ], [ %call123, %for.body153.cleanup169_crit_edge ], [ %call123, %for.body138.cleanup169_crit_edge ], [ -22, %for.body41.cleanup169_crit_edge ], [ -22, %for.body.cleanup169_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sctp_stream_outq_is_empty(ptr noundef %stream, i16 noundef zeroext %str_nums, ptr nocapture noundef readonly %str_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %out_qlen = getelementptr i8, ptr %stream, i32 48
  %0 = ptrtoint ptr %out_qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %str_nums)
  %tobool1.not = icmp eq i16 %str_nums, 0
  br i1 %tobool1.not, label %if.end.cleanup13_crit_edge, label %for.body.preheader

if.end.cleanup13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext i16 %str_nums to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %str_list, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv.i = zext i16 %3 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #6
  %ext = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 2
  %4 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %for.body.for.inc.critedge_crit_edge, label %land.lhs.true

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %call1.i23 = tail call ptr @__genradix_ptr(ptr noundef %stream, i32 noundef %mul17.i.i) #6
  %ext8 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i23, i32 0, i32 2
  %6 = ptrtoint ptr %ext8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext8, align 4
  %outq = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %outq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %outq, align 4
  %cmp.i.not = icmp eq ptr %9, %outq
  br i1 %cmp.i.not, label %land.lhs.true.for.inc.critedge_crit_edge, label %land.lhs.true.cleanup13_crit_edge

land.lhs.true.cleanup13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.critedge

for.inc.critedge:                                 ; preds = %land.lhs.true.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.critedge.cleanup13_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.critedge.cleanup13_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup13

cleanup13:                                        ; preds = %for.inc.critedge.cleanup13_crit_edge, %land.lhs.true.cleanup13_crit_edge, %if.end.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  %retval.2 = phi i1 [ true, %entry.cleanup13_crit_edge ], [ false, %if.end.cleanup13_crit_edge ], [ false, %land.lhs.true.cleanup13_crit_edge ], [ true, %for.inc.critedge.cleanup13_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_strreset_req(ptr noundef, i16 noundef zeroext, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sctp_send_reconf(ptr noundef %asoc, ptr noundef %chunk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 8
  %call = tail call i32 @sctp_primitive_RECONF(ptr noundef %1, ptr noundef %asoc, ptr noundef %chunk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sctp_chunk_free(ptr noundef %chunk) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_send_reset_assoc(ptr noundef %asoc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %reconf_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %reconf_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %reconf_capable, align 2
  %1 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %2 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %strreset_enable, align 1
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %5 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %strreset_outstanding, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  %call = tail call i32 @sctp_outq_is_empty(ptr noundef %outqueue) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = tail call ptr @sctp_make_strreset_tsnreq(ptr noundef %asoc) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %for.cond.preheader

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end9
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %7 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp66.not = icmp eq i16 %8, 0
  br i1 %cmp66.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul17.i.i = shl nuw nsw i32 %indvars.iv, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #6
  %state = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 3
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %state, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %10 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %outcnt, align 4
  %12 = zext i16 %11 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %13 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_hold(ptr noundef nonnull %call10) #6
  %net.i = getelementptr inbounds %struct.sctp_ep_common, ptr %asoc, i32 0, i32 4
  %14 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i, align 8
  %call.i = tail call i32 @sctp_primitive_RECONF(ptr noundef %15, ptr noundef %asoc, ptr noundef nonnull %call10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end36, label %if.then21

if.then21:                                        ; preds = %for.end
  tail call void @sctp_chunk_free(ptr noundef nonnull %call10) #6
  %16 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_put(ptr noundef %17) #6
  %18 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %strreset_chunk, align 4
  %19 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp2868.not = icmp eq i16 %20, 0
  br i1 %cmp2868.not, label %if.then21.cleanup_crit_edge, label %if.then21.for.body30_crit_edge

if.then21.for.body30_crit_edge:                   ; preds = %if.then21
  br label %for.body30

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %if.then21.for.body30_crit_edge
  %indvars.iv70 = phi i32 [ %indvars.iv.next71, %for.body30.for.body30_crit_edge ], [ 0, %if.then21.for.body30_crit_edge ]
  %mul17.i.i64 = shl nuw nsw i32 %indvars.iv70, 4
  %call1.i65 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i64) #6
  %state32 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i65, i32 0, i32 3
  %21 = ptrtoint ptr %state32 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %state32, align 4
  %indvars.iv.next71 = add nuw nsw i32 %indvars.iv70, 1
  %22 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %outcnt, align 4
  %24 = zext i16 %23 to i32
  %cmp28 = icmp ult i32 %indvars.iv.next71, %24
  br i1 %cmp28, label %for.body30.for.body30_crit_edge, label %for.body30.cleanup_crit_edge

for.body30.cleanup_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30

if.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %strreset_outstanding, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %for.body30.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -92, %lor.lhs.false.cleanup_crit_edge ], [ -92, %entry.cleanup_crit_edge ], [ -115, %if.end.cleanup_crit_edge ], [ -11, %if.end6.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call.i, %if.then21.cleanup_crit_edge ], [ %call.i, %for.body30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_outq_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_strreset_tsnreq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_send_add_streams(ptr noundef %asoc, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %reconf_capable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %0 = ptrtoint ptr %reconf_capable to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %reconf_capable, align 2
  %1 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.out51_crit_edge, label %lor.lhs.false

entry.out51_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

lor.lhs.false:                                    ; preds = %entry
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %2 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %strreset_enable, align 1
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.out51_crit_edge, label %if.end

lor.lhs.false.out51_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

if.end:                                           ; preds = %lor.lhs.false
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %5 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %strreset_outstanding, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out51_crit_edge

if.end.out51_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

if.end6:                                          ; preds = %if.end
  %sas_outstrms = getelementptr inbounds %struct.sctp_add_streams, ptr %params, i32 0, i32 2
  %7 = ptrtoint ptr %sas_outstrms to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sas_outstrms, align 2
  %sas_instrms = getelementptr inbounds %struct.sctp_add_streams, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %sas_instrms to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sas_instrms, align 4
  %outcnt7 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %11 = ptrtoint ptr %outcnt7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %outcnt7, align 4
  %conv8 = zext i16 %12 to i32
  %conv9 = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv8, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp = icmp ugt i32 %add, 65535
  br i1 %cmp, label %if.end6.out51_crit_edge, label %lor.lhs.false15

if.end6.out51_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

lor.lhs.false15:                                  ; preds = %if.end6
  %incnt10 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 3
  %13 = ptrtoint ptr %incnt10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incnt10, align 2
  %conv11 = zext i16 %14 to i32
  %conv12 = zext i16 %10 to i32
  %add13 = add nuw nsw i32 %conv11, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add13)
  %cmp16 = icmp ugt i32 %add13, 65535
  br i1 %cmp16, label %lor.lhs.false15.out51_crit_edge, label %lor.lhs.false18

lor.lhs.false15.out51_crit_edge:                  ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool19 = icmp ne i16 %8, 0
  %tobool19.not = xor i1 %tobool19, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool20.not = icmp eq i16 %10, 0
  %or.cond = select i1 %tobool19.not, i1 %tobool20.not, i1 false
  br i1 %or.cond, label %lor.lhs.false18.out51_crit_edge, label %if.end22

lor.lhs.false18.out51_crit_edge:                  ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

if.end22:                                         ; preds = %lor.lhs.false18
  br i1 %tobool19, label %if.then24, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then24:                                        ; preds = %if.end22
  %conv25 = trunc i32 %add to i16
  %call = tail call fastcc i32 @sctp_stream_alloc_out(ptr noundef %stream1, i16 noundef zeroext %conv25, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.then24.if.end29_crit_edge, label %if.then24.out51_crit_edge

if.then24.out51_crit_edge:                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %call30 = tail call ptr @sctp_make_strreset_addstrm(ptr noundef %asoc, i16 noundef zeroext %8, i16 noundef zeroext %10) #6
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.out51_crit_edge, label %if.end33

if.end29.out51_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out51

if.end33:                                         ; preds = %if.end29
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %15 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call30, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_hold(ptr noundef nonnull %call30) #6
  %call35 = tail call fastcc i32 @sctp_send_reconf(ptr noundef %asoc, ptr noundef nonnull %call30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_put(ptr noundef %17) #6
  %18 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %strreset_chunk, align 4
  br label %out51

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %lnot.ext = zext i1 %tobool19 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool43 = icmp ne i16 %10, 0
  %lnot.ext47 = zext i1 %tobool43 to i8
  %add48 = add nuw nsw i8 %lnot.ext47, %lnot.ext
  %19 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add48, ptr %strreset_outstanding, align 2
  br label %out51

out51:                                            ; preds = %if.end40, %if.then37, %if.end29.out51_crit_edge, %if.then24.out51_crit_edge, %lor.lhs.false18.out51_crit_edge, %lor.lhs.false15.out51_crit_edge, %if.end6.out51_crit_edge, %if.end.out51_crit_edge, %lor.lhs.false.out51_crit_edge, %entry.out51_crit_edge
  %retval2.0 = phi i32 [ %call, %if.then24.out51_crit_edge ], [ %call35, %if.then37 ], [ 0, %if.end40 ], [ -92, %lor.lhs.false.out51_crit_edge ], [ -92, %entry.out51_crit_edge ], [ -115, %if.end.out51_crit_edge ], [ -22, %lor.lhs.false18.out51_crit_edge ], [ -22, %lor.lhs.false15.out51_crit_edge ], [ -22, %if.end6.out51_crit_edge ], [ -12, %if.end29.out51_crit_edge ]
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_strreset_addstrm(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_process_strreset_outreq(ptr noundef %asoc, [1 x i32] %param.coerce, ptr nocapture noundef writeonly %evp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %request_seq2 = getelementptr inbounds %struct.sctp_strreset_outreq, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %request_seq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %request_seq2, align 4
  %send_reset_at_tsn = getelementptr inbounds %struct.sctp_strreset_outreq, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %send_reset_at_tsn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %send_reset_at_tsn, align 4
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 2
  %5 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end:                                           ; preds = %entry
  %strreset_inseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 82
  %7 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %strreset_inseq, align 8
  %sub = sub i32 %8, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %if.end.err_crit_edge, label %lor.lhs.false

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false:                                    ; preds = %if.end
  %sub5.neg = add i32 %2, 2
  %sub6 = sub i32 %sub5.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6)
  %cmp7 = icmp slt i32 %sub6, 0
  br i1 %cmp7, label %lor.lhs.false.err_crit_edge, label %if.else

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.else:                                          ; preds = %lor.lhs.false
  %sub10 = sub i32 %2, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp11 = icmp slt i32 %sub10, 0
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv = add nuw i32 %sub, 65535
  %idxprom = and i32 %conv, 65535
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  br label %err

if.end17:                                         ; preds = %if.else
  %inc = add i32 %8, 1
  %11 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %strreset_inseq, align 8
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %12 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %strreset_enable, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %if.end17
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %length, align 2
  %conv22 = zext i16 %16 to i32
  %sub23 = add nuw nsw i32 %conv22, 131056
  %div132 = lshr i32 %sub23, 1
  %conv24 = trunc i32 %div132 to i16
  %list_of_streams = getelementptr inbounds %struct.sctp_strreset_outreq, ptr %0, i32 0, i32 4
  %conv26 = and i32 %div132, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv26)
  %cmp27144.not = icmp eq i32 %conv26, 0
  br i1 %cmp27144.not, label %if.end21.for.end_crit_edge, label %for.body.lr.ph

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end21
  %incnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 3
  %17 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %incnt, align 2
  %19 = trunc i32 %div132 to i16
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc37 = add nuw i16 %i.0145, 1
  %conv25 = zext i16 %inc37 to i32
  %cmp27 = icmp ult i16 %inc37, %19
  br i1 %cmp27, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv25146 = phi i32 [ 0, %for.body.lr.ph ], [ %conv25, %for.cond.for.body_crit_edge ]
  %i.0145 = phi i16 [ 0, %for.body.lr.ph ], [ %inc37, %for.cond.for.body_crit_edge ]
  %arrayidx30 = getelementptr i16, ptr %list_of_streams, i32 %conv25146
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx30, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %18)
  %cmp33.not = icmp ult i16 %21, %18
  br i1 %cmp33.not, label %for.cond, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end21.for.end_crit_edge
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %22 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %strreset_chunk, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %for.end.if.end56_crit_edge, label %if.then39

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then39:                                        ; preds = %for.end
  %response_seq = getelementptr inbounds %struct.sctp_strreset_outreq, ptr %0, i32 0, i32 2
  %24 = ptrtoint ptr %response_seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %response_seq, align 4
  %call40 = tail call fastcc ptr @sctp_chunk_lookup_strreset_param(ptr noundef %asoc, i32 noundef %25, i16 noundef zeroext 14)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then39.out_crit_edge, label %if.end43

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end43:                                         ; preds = %if.then39
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %26 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %strreset_outstanding, align 2
  %dec = add i8 %27, -1
  store i8 %dec, ptr %strreset_outstanding, align 2
  %strreset_outseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %28 = ptrtoint ptr %strreset_outseq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %strreset_outseq, align 4
  %inc44 = add i32 %29, 1
  store i32 %inc44, ptr %strreset_outseq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool46.not = icmp eq i8 %dec, 0
  br i1 %tobool46.not, label %if.then47, label %if.end43.if.end56_crit_edge

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then47:                                        ; preds = %if.end43
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %23, i32 0, i32 19
  %30 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %transport, align 4
  %reconf_timer = getelementptr inbounds %struct.sctp_transport, ptr %31, i32 0, i32 42
  %call49 = tail call i32 @del_timer(ptr noundef %reconf_timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then47.if.end52_crit_edge, label %if.then51

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sctp_transport_put(ptr noundef %31) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then47.if.end52_crit_edge
  %32 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_put(ptr noundef %33) #6
  %34 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %strreset_chunk, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end52, %if.end43.if.end56_crit_edge, %for.end.if.end56_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv24)
  %tobool57.not = icmp eq i16 %conv24, 0
  br i1 %tobool57.not, label %for.cond72.preheader, label %for.cond59.preheader

for.cond59.preheader:                             ; preds = %if.end56
  br i1 %cmp27144.not, label %for.cond59.preheader.if.end83_crit_edge, label %for.body64.lr.ph

for.cond59.preheader.if.end83_crit_edge:          ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

for.body64.lr.ph:                                 ; preds = %for.cond59.preheader
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 1
  br label %for.body64

for.cond72.preheader:                             ; preds = %if.end56
  %incnt74 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 3
  %35 = ptrtoint ptr %incnt74 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %incnt74, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp76150.not = icmp eq i16 %36, 0
  br i1 %cmp76150.not, label %for.cond72.preheader.if.end83_crit_edge, label %for.body78.lr.ph

for.cond72.preheader.if.end83_crit_edge:          ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

for.body78.lr.ph:                                 ; preds = %for.cond72.preheader
  %in.i133 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 1
  br label %for.body78

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.body64.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body64.lr.ph ], [ %indvars.iv.next, %for.body64.for.body64_crit_edge ]
  %arrayidx66 = getelementptr i16, ptr %list_of_streams, i32 %indvars.iv
  %37 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx66, align 2
  %.frozen = freeze i16 %38
  %div14.i2.i = udiv i16 %.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %39 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %.frozen, %39
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %40 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %call1.i, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv26
  br i1 %exitcond.not, label %for.body64.if.end83_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64

for.body64.if.end83_crit_edge:                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %for.body78.lr.ph
  %i.2151 = phi i16 [ 0, %for.body78.lr.ph ], [ %inc81, %for.body78.for.body78_crit_edge ]
  %i.2151.frozen = freeze i16 %i.2151
  %div14.i2.i134 = udiv i16 %i.2151.frozen, 204
  %div14.i.zext.i135 = zext i16 %div14.i2.i134 to i32
  %mul.i.i136 = shl nuw nsw i32 %div14.i.zext.i135, 12
  %41 = mul i16 %div14.i2.i134, 204
  %rem.i3.i137.decomposed = sub i16 %i.2151.frozen, %41
  %narrow.i138 = mul nuw nsw i16 %rem.i3.i137.decomposed, 20
  %mul15.i.i139 = zext i16 %narrow.i138 to i32
  %add.i.i140 = add nuw nsw i32 %mul.i.i136, %mul15.i.i139
  %call1.i141 = tail call ptr @__genradix_ptr(ptr noundef %in.i133, i32 noundef %add.i.i140) #6
  %42 = ptrtoint ptr %call1.i141 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %call1.i141, align 4
  %inc81 = add nuw i16 %i.2151, 1
  %43 = ptrtoint ptr %incnt74 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %incnt74, align 2
  %cmp76 = icmp ult i16 %inc81, %44
  br i1 %cmp76, label %for.body78.for.body78_crit_edge, label %for.body78.if.end83_crit_edge

for.body78.if.end83_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body78

if.end83:                                         ; preds = %for.body78.if.end83_crit_edge, %for.body64.if.end83_crit_edge, %for.cond72.preheader.if.end83_crit_edge, %for.cond59.preheader.if.end83_crit_edge
  %call84 = tail call ptr @sctp_ulpevent_make_stream_reset_event(ptr noundef %asoc, i16 noundef zeroext 1, i16 noundef zeroext %conv24, ptr noundef %list_of_streams, i32 noundef 2592) #6
  %45 = ptrtoint ptr %evp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call84, ptr %evp, align 4
  br label %out

out:                                              ; preds = %if.end83, %if.then39.out_crit_edge, %for.body.out_crit_edge, %if.end17.out_crit_edge
  %result.0 = phi i32 [ 1, %if.end83 ], [ 2, %if.end17.out_crit_edge ], [ 4, %if.then39.out_crit_edge ], [ 3, %for.body.out_crit_edge ]
  %strreset_result.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 83
  %46 = ptrtoint ptr %strreset_result.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %strreset_result.i, align 4
  %arrayidx2.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 1
  %48 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx2.i, align 4
  store i32 %result.0, ptr %strreset_result.i, align 4
  br label %err

err:                                              ; preds = %out, %if.then12, %lor.lhs.false.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %result.1 = phi i32 [ %10, %if.then12 ], [ %result.0, %out ], [ 6, %entry.err_crit_edge ], [ 5, %lor.lhs.false.err_crit_edge ], [ 5, %if.end.err_crit_edge ]
  %call85 = tail call ptr @sctp_make_strreset_resp(ptr noundef %asoc, i32 noundef %result.1, i32 noundef %2) #6
  ret ptr %call85
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sctp_chunk_lookup_strreset_param(ptr nocapture noundef readonly %asoc, i32 noundef %resp_seq, i16 noundef zeroext %type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %0 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %strreset_chunk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

if.end:                                           ; preds = %entry
  %chunk_hdr = getelementptr inbounds %struct.sctp_chunk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %chunk_hdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk_hdr, align 4
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length, align 2
  %conv = zext i16 %5 to i32
  %add.ptr3 = getelementptr i8, ptr %3, i32 %conv
  %add.ptr155 = getelementptr %struct.sctp_reconf_chunk, ptr %3, i32 2
  %cmp.not56 = icmp ugt ptr %add.ptr155, %add.ptr3
  br i1 %cmp.not56, label %if.end.cleanup34_crit_edge, label %land.lhs.true.lr.ph

if.end.cleanup34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

land.lhs.true.lr.ph:                              ; preds = %if.end
  %params = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %3, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resp_seq)
  %tobool18.not = icmp eq i32 %resp_seq, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %type)
  %tobool22.not = icmp eq i16 %type, 0
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %param.sroa.0.057 = phi ptr [ %params, %land.lhs.true.lr.ph ], [ %add.ptr33, %for.inc.land.lhs.true_crit_edge ]
  %length9 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.057, i32 0, i32 1
  %6 = ptrtoint ptr %length9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %length9, align 2
  %conv10 = zext i16 %7 to i32
  %idx.neg = sub nsw i32 0, %conv10
  %add.ptr11 = getelementptr i8, ptr %add.ptr3, i32 %idx.neg
  %cmp12.not = icmp ule ptr %param.sroa.0.057, %add.ptr11
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp16 = icmp ugt i16 %7, 3
  %or.cond = select i1 %cmp12.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true.cleanup34_crit_edge

land.lhs.true.cleanup34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

for.body:                                         ; preds = %land.lhs.true
  br i1 %tobool18.not, label %for.body.land.lhs.true21_crit_edge, label %lor.lhs.false

for.body.land.lhs.true21_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true21

lor.lhs.false:                                    ; preds = %for.body
  %request_seq = getelementptr inbounds %struct.sctp_strreset_tsnreq, ptr %param.sroa.0.057, i32 0, i32 1
  %8 = ptrtoint ptr %request_seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %request_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %resp_seq)
  %cmp19 = icmp eq i32 %9, %resp_seq
  br i1 %cmp19, label %lor.lhs.false.land.lhs.true21_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.land.lhs.true21_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true21

land.lhs.true21:                                  ; preds = %lor.lhs.false.land.lhs.true21_crit_edge, %for.body.land.lhs.true21_crit_edge
  br i1 %tobool22.not, label %land.lhs.true21.cleanup34_crit_edge, label %lor.lhs.false23

land.lhs.true21.cleanup34_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

lor.lhs.false23:                                  ; preds = %land.lhs.true21
  %10 = ptrtoint ptr %param.sroa.0.057 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %param.sroa.0.057, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %type)
  %cmp27 = icmp eq i16 %11, %type
  br i1 %cmp27, label %lor.lhs.false23.cleanup34_crit_edge, label %lor.lhs.false23.for.inc_crit_edge

lor.lhs.false23.for.inc_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false23.cleanup34_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

for.inc:                                          ; preds = %lor.lhs.false23.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %add = add nuw nsw i32 %conv10, 3
  %and = and i32 %add, 131068
  %add.ptr33 = getelementptr i8, ptr %param.sroa.0.057, i32 %and
  %add.ptr1 = getelementptr i8, ptr %add.ptr33, i32 4
  %cmp.not = icmp ugt ptr %add.ptr1, %add.ptr3
  br i1 %cmp.not, label %for.inc.cleanup34_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.inc.cleanup34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup34

cleanup34:                                        ; preds = %for.inc.cleanup34_crit_edge, %lor.lhs.false23.cleanup34_crit_edge, %land.lhs.true21.cleanup34_crit_edge, %land.lhs.true.cleanup34_crit_edge, %if.end.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup34_crit_edge ], [ null, %if.end.cleanup34_crit_edge ], [ null, %for.inc.cleanup34_crit_edge ], [ null, %land.lhs.true.cleanup34_crit_edge ], [ %param.sroa.0.057, %lor.lhs.false23.cleanup34_crit_edge ], [ %param.sroa.0.057, %land.lhs.true21.cleanup34_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_transport_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_stream_reset_event(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_strreset_resp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_process_strreset_inreq(ptr noundef %asoc, [1 x i32] %param.coerce, ptr nocapture noundef readnone %evp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %request_seq2 = getelementptr inbounds %struct.sctp_strreset_inreq, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %request_seq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %request_seq2, align 4
  %strreset_inseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 82
  %3 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %strreset_inseq, align 8
  %sub = sub i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then80_crit_edge, label %lor.lhs.false

entry.if.then80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

lor.lhs.false:                                    ; preds = %entry
  %sub4.neg = add i32 %2, 2
  %sub5 = sub i32 %sub4.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp6 = icmp slt i32 %sub5, 0
  br i1 %cmp6, label %lor.lhs.false.if.then80_crit_edge, label %if.else

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

if.else:                                          ; preds = %lor.lhs.false
  %sub8 = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp9 = icmp slt i32 %sub8, 0
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.else
  %conv = add nuw i32 %sub, 65535
  %idxprom = and i32 %conv, 65535
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14 = icmp eq i32 %6, 1
  br i1 %cmp14, label %if.then10.cleanup_crit_edge, label %if.then10.if.then80_crit_edge

if.then10.if.then80_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.else
  %inc = add i32 %4, 1
  %7 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %strreset_inseq, align 8
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %8 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %strreset_enable, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end18.err.thread146_crit_edge, label %if.end22

if.end18.err.thread146_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread146

if.end22:                                         ; preds = %if.end18
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %11 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %strreset_outstanding, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.err.thread146_crit_edge

if.end22.err.thread146_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread146

if.end25:                                         ; preds = %if.end22
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %length, align 2
  %conv26 = zext i16 %14 to i32
  %sub27 = add nuw nsw i32 %conv26, 131064
  %div136 = lshr i32 %sub27, 1
  %conv28 = trunc i32 %div136 to i16
  %list_of_streams = getelementptr inbounds %struct.sctp_strreset_inreq, ptr %0, i32 0, i32 2
  %conv30 = and i32 %div136, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv30)
  %cmp31154.not = icmp eq i32 %conv30, 0
  br i1 %cmp31154.not, label %if.end25.for.end_crit_edge, label %for.body.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end25
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %15 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %outcnt, align 4
  %17 = trunc i32 %div136 to i16
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc41 = add nuw i16 %i.0155, 1
  %conv29 = zext i16 %inc41 to i32
  %cmp31 = icmp ult i16 %inc41, %17
  br i1 %cmp31, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv29156 = phi i32 [ 0, %for.body.lr.ph ], [ %conv29, %for.cond.for.body_crit_edge ]
  %i.0155 = phi i16 [ 0, %for.body.lr.ph ], [ %inc41, %for.cond.for.body_crit_edge ]
  %arrayidx34 = getelementptr i16, ptr %list_of_streams, i32 %conv29156
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx34, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %16)
  %cmp37.not = icmp ult i16 %19, %16
  br i1 %cmp37.not, label %for.cond, label %for.body.err.thread146_crit_edge

for.body.err.thread146_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread146

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end25.for.end_crit_edge
  %out_qlen.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 3
  %20 = ptrtoint ptr %out_qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %for.end.if.end44_crit_edge, label %if.end.i

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv28)
  %tobool1.not.i = icmp eq i16 %conv28, 0
  br i1 %tobool1.not.i, label %if.end.i.if.then42_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.then42_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.critedge.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %list_of_streams, i32 %indvars.iv.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i = zext i16 %23 to i32
  %mul17.i.i.i = shl nuw nsw i32 %conv.i.i, 4
  %call1.i.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i.i) #6
  %ext.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext.i, align 4
  %tobool6.not.i = icmp eq ptr %25, null
  br i1 %tobool6.not.i, label %for.body.i.for.inc.critedge.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.critedge.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.critedge.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call1.i23.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i.i) #6
  %ext8.i = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i23.i, i32 0, i32 2
  %26 = ptrtoint ptr %ext8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ext8.i, align 4
  %outq.i = getelementptr inbounds %struct.sctp_stream_out_ext, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %outq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %outq.i, align 4
  %cmp.i.not.i = icmp eq ptr %29, %outq.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i.for.inc.critedge.i_crit_edge, label %land.lhs.true.i.if.then42_crit_edge

land.lhs.true.i.if.then42_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

land.lhs.true.i.for.inc.critedge.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.critedge.i

for.inc.critedge.i:                               ; preds = %land.lhs.true.i.for.inc.critedge.i_crit_edge, %for.body.i.for.inc.critedge.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %conv30
  br i1 %exitcond.not.i, label %for.inc.critedge.i.if.end44_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.critedge.i.if.end44_crit_edge:            ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true.i.if.then42_crit_edge, %if.end.i.if.then42_crit_edge
  %30 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %strreset_inseq, align 8
  %dec = add i32 %31, -1
  store i32 %dec, ptr %strreset_inseq, align 8
  br label %if.then80

if.end44:                                         ; preds = %for.inc.critedge.i.if.end44_crit_edge, %for.end.if.end44_crit_edge
  %call45 = tail call ptr @sctp_make_strreset_req(ptr noundef %asoc, i16 noundef zeroext %conv28, ptr noundef %list_of_streams, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.err.thread146_crit_edge, label %if.end48

if.end44.err.thread146_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread146

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv28)
  %tobool49.not = icmp eq i16 %conv28, 0
  br i1 %tobool49.not, label %for.cond64.preheader, label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %if.end48
  br i1 %cmp31154.not, label %for.cond51.preheader.err_crit_edge, label %for.cond51.preheader.for.body56_crit_edge

for.cond51.preheader.for.body56_crit_edge:        ; preds = %for.cond51.preheader
  br label %for.body56

for.cond51.preheader.err_crit_edge:               ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.cond64.preheader:                             ; preds = %if.end48
  %outcnt66 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %32 = ptrtoint ptr %outcnt66 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %outcnt66, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp68160.not = icmp eq i16 %33, 0
  br i1 %cmp68160.not, label %for.cond64.preheader.err_crit_edge, label %for.cond64.preheader.for.body70_crit_edge

for.cond64.preheader.for.body70_crit_edge:        ; preds = %for.cond64.preheader
  br label %for.body70

for.cond64.preheader.err_crit_edge:               ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.cond51.preheader.for.body56_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body56.for.body56_crit_edge ], [ 0, %for.cond51.preheader.for.body56_crit_edge ]
  %arrayidx58 = getelementptr i16, ptr %list_of_streams, i32 %indvars.iv
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx58, align 2
  %conv.i = zext i16 %35 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #6
  %state = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 3
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %state, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %conv30
  br i1 %exitcond.not, label %for.body56.err_crit_edge, label %for.body56.for.body56_crit_edge

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body56

for.body56.err_crit_edge:                         ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.cond64.preheader.for.body70_crit_edge
  %indvars.iv163 = phi i32 [ %indvars.iv.next164, %for.body70.for.body70_crit_edge ], [ 0, %for.cond64.preheader.for.body70_crit_edge ]
  %mul17.i.i138 = shl nuw nsw i32 %indvars.iv163, 4
  %call1.i139 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i138) #6
  %state72 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i139, i32 0, i32 3
  %37 = ptrtoint ptr %state72 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %state72, align 4
  %indvars.iv.next164 = add nuw nsw i32 %indvars.iv163, 1
  %38 = ptrtoint ptr %outcnt66 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %outcnt66, align 4
  %40 = zext i16 %39 to i32
  %cmp68 = icmp ult i32 %indvars.iv.next164, %40
  br i1 %cmp68, label %for.body70.for.body70_crit_edge, label %for.body70.err_crit_edge

for.body70.err_crit_edge:                         ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

err.thread146:                                    ; preds = %if.end44.err.thread146_crit_edge, %for.body.err.thread146_crit_edge, %if.end22.err.thread146_crit_edge, %if.end18.err.thread146_crit_edge
  %result.0.ph = phi i32 [ 4, %if.end22.err.thread146_crit_edge ], [ 2, %if.end18.err.thread146_crit_edge ], [ 2, %if.end44.err.thread146_crit_edge ], [ 3, %for.body.err.thread146_crit_edge ]
  %strreset_result.i149 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 83
  %41 = ptrtoint ptr %strreset_result.i149 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %strreset_result.i149, align 4
  %arrayidx2.i150 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 1
  %43 = ptrtoint ptr %arrayidx2.i150 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx2.i150, align 4
  store i32 %result.0.ph, ptr %strreset_result.i149, align 4
  br label %if.then80

err:                                              ; preds = %for.body70.err_crit_edge, %for.body56.err_crit_edge, %for.cond64.preheader.err_crit_edge, %for.cond51.preheader.err_crit_edge
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %44 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call45, ptr %strreset_chunk, align 4
  %45 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %strreset_outstanding, align 2
  tail call void @sctp_chunk_hold(ptr noundef nonnull %call45) #6
  %strreset_result.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 83
  %46 = ptrtoint ptr %strreset_result.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %strreset_result.i, align 4
  %arrayidx2.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 1
  %48 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx2.i, align 4
  store i32 1, ptr %strreset_result.i, align 4
  br label %cleanup

if.then80:                                        ; preds = %err.thread146, %if.then42, %if.then10.if.then80_crit_edge, %lor.lhs.false.if.then80_crit_edge, %entry.if.then80_crit_edge
  %result.1144 = phi i32 [ %result.0.ph, %err.thread146 ], [ 5, %entry.if.then80_crit_edge ], [ 5, %lor.lhs.false.if.then80_crit_edge ], [ 6, %if.then42 ], [ %6, %if.then10.if.then80_crit_edge ]
  %call81 = tail call ptr @sctp_make_strreset_resp(ptr noundef %asoc, i32 noundef %result.1144, i32 noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %err, %if.then10.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then10.cleanup_crit_edge ], [ %call45, %err ], [ %call81, %if.then80 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_process_strreset_tsnreq(ptr noundef %asoc, [1 x i32] %param.coerce, ptr nocapture noundef writeonly %evp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %request_seq2 = getelementptr inbounds %struct.sctp_strreset_tsnreq, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %request_seq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %request_seq2, align 4
  %strreset_inseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 82
  %3 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %strreset_inseq, align 8
  %sub = sub i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.err_crit_edge, label %lor.lhs.false

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %sub4.neg = add i32 %2, 2
  %sub5 = sub i32 %sub4.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp6 = icmp slt i32 %sub5, 0
  br i1 %cmp6, label %lor.lhs.false.err_crit_edge, label %if.else

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.else:                                          ; preds = %lor.lhs.false
  %sub8 = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp9 = icmp slt i32 %sub8, 0
  br i1 %cmp9, label %if.then10, label %if.end19

if.then10:                                        ; preds = %if.else
  %conv = add nuw i32 %sub, 65535
  %idxprom = and i32 %conv, 65535
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14 = icmp eq i32 %6, 1
  br i1 %cmp14, label %if.then16, label %if.then10.err_crit_edge

if.then10.err_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %ctsn_ack_point = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 36
  %7 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctsn_ack_point, align 4
  %add = add i32 %8, 1
  %cumulative_tsn_ack_point.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 2
  %9 = ptrtoint ptr %cumulative_tsn_ack_point.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cumulative_tsn_ack_point.i, align 4
  %add17 = add i32 %10, 1
  br label %err

if.end19:                                         ; preds = %if.else
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  %call20 = tail call i32 @sctp_outq_is_empty(ptr noundef %outqueue) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %if.end19.err_crit_edge, label %if.end22

if.end19.err_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end22:                                         ; preds = %if.end19
  %11 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %strreset_inseq, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %strreset_inseq, align 8
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %13 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %strreset_enable, align 1
  %15 = and i8 %14, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %if.end22.out_crit_edge, label %if.end27

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end27:                                         ; preds = %if.end22
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %16 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %strreset_outstanding, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end30:                                         ; preds = %if.end27
  %tsn_map32 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10
  %max_tsn_seen.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 3
  %18 = ptrtoint ptr %max_tsn_seen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_tsn_seen.i, align 4
  %si = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %20 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %si, align 4
  %report_ftsn = getelementptr inbounds %struct.sctp_stream_interleave, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %report_ftsn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %report_ftsn, align 4
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 62
  tail call void %23(ptr noundef %ulpq, i32 noundef %19) #6
  %cumulative_tsn_ack_point.i111 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 2
  %24 = ptrtoint ptr %cumulative_tsn_ack_point.i111 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cumulative_tsn_ack_point.i111, align 4
  %add38 = xor i32 %25, -2147483648
  %call41 = tail call ptr @sctp_tsnmap_init(ptr noundef %tsn_map32, i16 noundef zeroext 32, i32 noundef %add38, i32 noundef 2592) #6
  tail call void @sctp_outq_free(ptr noundef %outqueue) #6
  %next_tsn43 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %26 = ptrtoint ptr %next_tsn43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next_tsn43, align 8
  %sub44 = add i32 %27, -1
  %ctsn_ack_point45 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 36
  %28 = ptrtoint ptr %ctsn_ack_point45 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub44, ptr %ctsn_ack_point45, align 4
  %adv_peer_ack_point = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 37
  %29 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub44, ptr %adv_peer_ack_point, align 8
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %30 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp49116.not = icmp eq i16 %31, 0
  br i1 %cmp49116.not, label %if.end30.for.cond54.preheader_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.for.cond54.preheader_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond54.preheader

for.cond54.preheader:                             ; preds = %for.body.for.cond54.preheader_crit_edge, %if.end30.for.cond54.preheader_crit_edge
  %incnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 3
  %32 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %incnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp57118.not = icmp eq i16 %33, 0
  br i1 %cmp57118.not, label %for.cond54.preheader.for.end63_crit_edge, label %for.body59.lr.ph

for.cond54.preheader.for.end63_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end63

for.body59.lr.ph:                                 ; preds = %for.cond54.preheader
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 1
  br label %for.body59

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end30.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %mul17.i.i = shl nuw nsw i32 %indvars.iv, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #6
  %34 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %call1.i, align 4
  %call1.i114 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #6
  %mid_uo = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i114, i32 0, i32 1
  %35 = ptrtoint ptr %mid_uo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mid_uo, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %36 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %outcnt, align 4
  %38 = zext i16 %37 to i32
  %cmp49 = icmp ult i32 %indvars.iv.next, %38
  br i1 %cmp49, label %for.body.for.body_crit_edge, label %for.body.for.cond54.preheader_crit_edge

for.body.for.cond54.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond54.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body59:                                       ; preds = %for.body59.for.body59_crit_edge, %for.body59.lr.ph
  %i.1119 = phi i16 [ 0, %for.body59.lr.ph ], [ %inc62, %for.body59.for.body59_crit_edge ]
  %i.1119.frozen = freeze i16 %i.1119
  %div14.i2.i = udiv i16 %i.1119.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %39 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %i.1119.frozen, %39
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i115 = tail call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %40 = ptrtoint ptr %call1.i115 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %call1.i115, align 4
  %inc62 = add nuw i16 %i.1119, 1
  %41 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %incnt, align 2
  %cmp57 = icmp ult i16 %inc62, %42
  br i1 %cmp57, label %for.body59.for.body59_crit_edge, label %for.body59.for.end63_crit_edge

for.body59.for.end63_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end63

for.body59.for.body59_crit_edge:                  ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body59

for.end63:                                        ; preds = %for.body59.for.end63_crit_edge, %for.cond54.preheader.for.end63_crit_edge
  %call64 = tail call ptr @sctp_ulpevent_make_assoc_reset_event(ptr noundef %asoc, i16 noundef zeroext 0, i32 noundef %add38, i32 noundef %27, i32 noundef 2592) #6
  %43 = ptrtoint ptr %evp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call64, ptr %evp, align 4
  br label %out

out:                                              ; preds = %for.end63, %if.end27.out_crit_edge, %if.end22.out_crit_edge
  %next_tsn.0 = phi i32 [ %27, %for.end63 ], [ 0, %if.end22.out_crit_edge ], [ 0, %if.end27.out_crit_edge ]
  %init_tsn.0 = phi i32 [ %add38, %for.end63 ], [ 0, %if.end22.out_crit_edge ], [ 0, %if.end27.out_crit_edge ]
  %result.0 = phi i32 [ 1, %for.end63 ], [ 2, %if.end22.out_crit_edge ], [ 4, %if.end27.out_crit_edge ]
  %strreset_result.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 83
  %44 = ptrtoint ptr %strreset_result.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %strreset_result.i, align 4
  %arrayidx2.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 1
  %46 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx2.i, align 4
  store i32 %result.0, ptr %strreset_result.i, align 4
  br label %err

err:                                              ; preds = %out, %if.end19.err_crit_edge, %if.then16, %if.then10.err_crit_edge, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  %next_tsn.1 = phi i32 [ %add, %if.then16 ], [ 0, %if.then10.err_crit_edge ], [ %next_tsn.0, %out ], [ 0, %lor.lhs.false.err_crit_edge ], [ 0, %entry.err_crit_edge ], [ 0, %if.end19.err_crit_edge ]
  %init_tsn.1 = phi i32 [ %add17, %if.then16 ], [ 0, %if.then10.err_crit_edge ], [ %init_tsn.0, %out ], [ 0, %lor.lhs.false.err_crit_edge ], [ 0, %entry.err_crit_edge ], [ 0, %if.end19.err_crit_edge ]
  %result.1 = phi i32 [ 1, %if.then16 ], [ %6, %if.then10.err_crit_edge ], [ %result.0, %out ], [ 5, %lor.lhs.false.err_crit_edge ], [ 5, %entry.err_crit_edge ], [ 6, %if.end19.err_crit_edge ]
  %call65 = tail call ptr @sctp_make_strreset_tsnresp(ptr noundef %asoc, i32 noundef %result.1, i32 noundef %2, i32 noundef %next_tsn.1, i32 noundef %init_tsn.1) #6
  ret ptr %call65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_tsnmap_init(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_outq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_assoc_reset_event(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_make_strreset_tsnresp(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_process_strreset_addstrm_out(ptr noundef %asoc, [1 x i32] %param.coerce, ptr nocapture noundef writeonly %evp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %request_seq2 = getelementptr inbounds %struct.sctp_strreset_addstrm, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %request_seq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %request_seq2, align 4
  %strreset_inseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 82
  %3 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %strreset_inseq, align 8
  %sub = sub i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.err_crit_edge, label %lor.lhs.false

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

lor.lhs.false:                                    ; preds = %entry
  %sub4.neg = add i32 %2, 2
  %sub5 = sub i32 %sub4.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp6 = icmp slt i32 %sub5, 0
  br i1 %cmp6, label %lor.lhs.false.err_crit_edge, label %if.else

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.else:                                          ; preds = %lor.lhs.false
  %sub8 = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp9 = icmp slt i32 %sub8, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv = add nuw i32 %sub, 65535
  %idxprom = and i32 %conv, 65535
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %err

if.end14:                                         ; preds = %if.else
  %inc = add i32 %4, 1
  %7 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %strreset_inseq, align 8
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %8 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %strreset_enable, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %if.end14
  %number_of_streams = getelementptr inbounds %struct.sctp_strreset_addstrm, ptr %0, i32 0, i32 2
  %11 = ptrtoint ptr %number_of_streams to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %number_of_streams, align 4
  %incnt19 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 3
  %13 = ptrtoint ptr %incnt19 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %incnt19, align 2
  %conv20 = zext i16 %14 to i32
  %conv21 = zext i16 %12 to i32
  %add = add nuw nsw i32 %conv20, %conv21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool22.not = icmp eq i16 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp24 = icmp ugt i32 %add, 65535
  %or.cond = select i1 %tobool22.not, i1 true, i1 %cmp24
  br i1 %or.cond, label %if.end18.out_crit_edge, label %if.end27

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end27:                                         ; preds = %if.end18
  %conv28 = trunc i32 %add to i16
  %15 = ptrtoint ptr %incnt19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %incnt19, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %conv28)
  %cmp.not.i = icmp ult i16 %16, %conv28
  br i1 %cmp.not.i, label %if.end.i, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i:                                         ; preds = %if.end27
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 1
  %add.i = add nuw nsw i32 %add, 1
  %add.i.frozen = freeze i32 %add.i
  %div14.i.i = udiv i32 %add.i.frozen, 204
  %mul.i.i = shl nuw nsw i32 %div14.i.i, 12
  %17 = mul i32 %div14.i.i, 204
  %rem.i.i.decomposed = sub i32 %add.i.frozen, %17
  %mul15.i.i = mul nuw nsw i32 %rem.i.i.decomposed, 20
  %add.i.i = add nuw nsw i32 %mul15.i.i, %mul.i.i
  %call5.i = tail call i32 @__genradix_prealloc(ptr noundef %in.i, i32 noundef %add.i.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end31_crit_edge, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end31:                                         ; preds = %if.end.i.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  %18 = ptrtoint ptr %incnt19 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv28, ptr %incnt19, align 2
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %19 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %strreset_chunk, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %if.end31.if.end50_crit_edge, label %if.then33

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then33:                                        ; preds = %if.end31
  %call34 = tail call fastcc ptr @sctp_chunk_lookup_strreset_param(ptr noundef %asoc, i32 noundef 0, i16 noundef zeroext 18)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.then33.out_crit_edge, label %if.end37

if.then33.out_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end37:                                         ; preds = %if.then33
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %21 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %strreset_outstanding, align 2
  %dec = add i8 %22, -1
  store i8 %dec, ptr %strreset_outstanding, align 2
  %strreset_outseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %23 = ptrtoint ptr %strreset_outseq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %strreset_outseq, align 4
  %inc38 = add i32 %24, 1
  store i32 %inc38, ptr %strreset_outseq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool40.not = icmp eq i8 %dec, 0
  br i1 %tobool40.not, label %if.then41, label %if.end37.if.end50_crit_edge

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then41:                                        ; preds = %if.end37
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %20, i32 0, i32 19
  %25 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transport, align 4
  %reconf_timer = getelementptr inbounds %struct.sctp_transport, ptr %26, i32 0, i32 42
  %call43 = tail call i32 @del_timer(ptr noundef %reconf_timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then41.if.end46_crit_edge, label %if.then45

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sctp_transport_put(ptr noundef %26) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then41.if.end46_crit_edge
  %27 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %strreset_chunk, align 4
  tail call void @sctp_chunk_put(ptr noundef %28) #6
  %29 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %strreset_chunk, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end46, %if.end37.if.end50_crit_edge, %if.end31.if.end50_crit_edge
  %30 = ptrtoint ptr %incnt19 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv28, ptr %incnt19, align 2
  %31 = ptrtoint ptr %number_of_streams to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %number_of_streams, align 4
  %conv54 = zext i16 %32 to i32
  %call55 = tail call ptr @sctp_ulpevent_make_stream_change_event(ptr noundef %asoc, i16 noundef zeroext 0, i32 noundef %conv54, i32 noundef 0, i32 noundef 2592) #6
  %33 = ptrtoint ptr %evp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call55, ptr %evp, align 4
  br label %out

out:                                              ; preds = %if.end50, %if.then33.out_crit_edge, %if.end.i.out_crit_edge, %if.end18.out_crit_edge, %if.end14.out_crit_edge
  %result.0 = phi i32 [ 1, %if.end50 ], [ 2, %if.end18.out_crit_edge ], [ 2, %if.end14.out_crit_edge ], [ 4, %if.then33.out_crit_edge ], [ 2, %if.end.i.out_crit_edge ]
  %strreset_result.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 83
  %34 = ptrtoint ptr %strreset_result.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %strreset_result.i, align 4
  %arrayidx2.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 1
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx2.i, align 4
  store i32 %result.0, ptr %strreset_result.i, align 4
  br label %err

err:                                              ; preds = %out, %if.then10, %lor.lhs.false.err_crit_edge, %entry.err_crit_edge
  %result.1 = phi i32 [ %6, %if.then10 ], [ %result.0, %out ], [ 5, %lor.lhs.false.err_crit_edge ], [ 5, %entry.err_crit_edge ]
  %call56 = tail call ptr @sctp_make_strreset_resp(ptr noundef %asoc, i32 noundef %result.1, i32 noundef %2) #6
  ret ptr %call56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sctp_ulpevent_make_stream_change_event(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_process_strreset_addstrm_in(ptr noundef %asoc, [1 x i32] %param.coerce, ptr nocapture noundef readnone %evp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %request_seq2 = getelementptr inbounds %struct.sctp_strreset_addstrm, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %request_seq2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %request_seq2, align 4
  %strreset_inseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 82
  %3 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %strreset_inseq, align 8
  %sub = sub i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then49_crit_edge, label %lor.lhs.false

entry.if.then49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

lor.lhs.false:                                    ; preds = %entry
  %sub4.neg = add i32 %2, 2
  %sub5 = sub i32 %sub4.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp6 = icmp slt i32 %sub5, 0
  br i1 %cmp6, label %lor.lhs.false.if.then49_crit_edge, label %if.else

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.else:                                          ; preds = %lor.lhs.false
  %sub8 = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8)
  %cmp9 = icmp slt i32 %sub8, 0
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %if.else
  %conv = add nuw i32 %sub, 65535
  %idxprom = and i32 %conv, 65535
  %arrayidx = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14 = icmp eq i32 %6, 1
  br i1 %cmp14, label %if.then10.cleanup_crit_edge, label %if.then10.if.then49_crit_edge

if.then10.if.then49_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.else
  %inc = add i32 %4, 1
  %7 = ptrtoint ptr %strreset_inseq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc, ptr %strreset_inseq, align 8
  %strreset_enable = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 79
  %8 = ptrtoint ptr %strreset_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %strreset_enable, align 1
  %10 = and i8 %9, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end18.err.thread98_crit_edge, label %if.end22

if.end18.err.thread98_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread98

if.end22:                                         ; preds = %if.end18
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %11 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %strreset_outstanding, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.err.thread98_crit_edge

if.end22.err.thread98_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread98

if.end25:                                         ; preds = %if.end22
  %number_of_streams = getelementptr inbounds %struct.sctp_strreset_addstrm, ptr %0, i32 0, i32 2
  %13 = ptrtoint ptr %number_of_streams to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %number_of_streams, align 4
  %outcnt26 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %15 = ptrtoint ptr %outcnt26 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %outcnt26, align 4
  %conv27 = zext i16 %16 to i32
  %conv28 = zext i16 %14 to i32
  %add = add nuw nsw i32 %conv27, %conv28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool29.not = icmp eq i16 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp31 = icmp ugt i32 %add, 65535
  %or.cond = select i1 %tobool29.not, i1 true, i1 %cmp31
  br i1 %or.cond, label %if.end25.err.thread98_crit_edge, label %if.end34

if.end25.err.thread98_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread98

if.end34:                                         ; preds = %if.end25
  %conv35 = trunc i32 %add to i16
  %17 = ptrtoint ptr %outcnt26 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %outcnt26, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %conv35)
  %cmp.not.i = icmp ult i16 %18, %conv35
  br i1 %cmp.not.i, label %if.end.i, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end.i:                                         ; preds = %if.end34
  %conv.i = shl nuw nsw i32 %add, 4
  %add.i = and i32 %conv.i, 1048560
  %mul17.i.i = add nuw nsw i32 %add.i, 16
  %call5.i = tail call i32 @__genradix_prealloc(ptr noundef %stream1, i32 noundef %mul17.i.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end38_crit_edge, label %if.end.i.err.thread98_crit_edge

if.end.i.err.thread98_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread98

if.end.i.if.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %if.end.i.if.end38_crit_edge, %if.end34.if.end38_crit_edge
  %19 = ptrtoint ptr %outcnt26 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv35, ptr %outcnt26, align 4
  %call39 = tail call ptr @sctp_make_strreset_addstrm(ptr noundef %asoc, i16 noundef zeroext %14, i16 noundef zeroext 0) #6
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.err.thread98_crit_edge, label %err

if.end38.err.thread98_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.thread98

err.thread98:                                     ; preds = %if.end38.err.thread98_crit_edge, %if.end.i.err.thread98_crit_edge, %if.end25.err.thread98_crit_edge, %if.end22.err.thread98_crit_edge, %if.end18.err.thread98_crit_edge
  %result.0.ph = phi i32 [ 2, %if.end.i.err.thread98_crit_edge ], [ 4, %if.end22.err.thread98_crit_edge ], [ 2, %if.end18.err.thread98_crit_edge ], [ 2, %if.end25.err.thread98_crit_edge ], [ 2, %if.end38.err.thread98_crit_edge ]
  %strreset_result.i101 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 83
  %20 = ptrtoint ptr %strreset_result.i101 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %strreset_result.i101, align 4
  %arrayidx2.i102 = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 1
  %22 = ptrtoint ptr %arrayidx2.i102 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx2.i102, align 4
  store i32 %result.0.ph, ptr %strreset_result.i101, align 4
  br label %if.then49

err:                                              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %strreset_chunk = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %23 = ptrtoint ptr %strreset_chunk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call39, ptr %strreset_chunk, align 4
  %24 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %strreset_outstanding, align 2
  tail call void @sctp_chunk_hold(ptr noundef nonnull %call39) #6
  %25 = ptrtoint ptr %outcnt26 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv35, ptr %outcnt26, align 4
  %strreset_result.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 83
  %26 = ptrtoint ptr %strreset_result.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %strreset_result.i, align 4
  %arrayidx2.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 83, i32 1
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx2.i, align 4
  store i32 1, ptr %strreset_result.i, align 4
  br label %cleanup

if.then49:                                        ; preds = %err.thread98, %if.then10.if.then49_crit_edge, %lor.lhs.false.if.then49_crit_edge, %entry.if.then49_crit_edge
  %result.196 = phi i32 [ %result.0.ph, %err.thread98 ], [ 5, %entry.if.then49_crit_edge ], [ 5, %lor.lhs.false.if.then49_crit_edge ], [ %6, %if.then10.if.then49_crit_edge ]
  %call50 = tail call ptr @sctp_make_strreset_resp(ptr noundef %asoc, i32 noundef %result.196, i32 noundef %2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %err, %if.then10.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then10.cleanup_crit_edge ], [ %call39, %err ], [ %call50, %if.then49 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sctp_process_strreset_resp(ptr noundef %asoc, [1 x i32] %param.coerce, ptr nocapture noundef writeonly %evp) local_unnamed_addr #0 align 64 {
entry:
  %temp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %param.coerce.fca.0.extract = extractvalue [1 x i32] %param.coerce, 0
  %0 = inttoptr i32 %param.coerce.fca.0.extract to ptr
  %stream1 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60
  %response_seq = getelementptr inbounds %struct.sctp_strreset_resp, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %response_seq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %response_seq, align 4
  %strreset_chunk.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 84
  %3 = ptrtoint ptr %strreset_chunk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %strreset_chunk.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup211_crit_edge, label %if.end.i

entry.cleanup211_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

if.end.i:                                         ; preds = %entry
  %chunk_hdr.i = getelementptr inbounds %struct.sctp_chunk, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %chunk_hdr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chunk_hdr.i, align 4
  %length.i = getelementptr inbounds %struct.sctp_chunkhdr, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %length.i, align 2
  %conv.i = zext i16 %8 to i32
  %add.ptr3.i = getelementptr i8, ptr %6, i32 %conv.i
  %add.ptr155.i = getelementptr %struct.sctp_reconf_chunk, ptr %6, i32 2
  %cmp.not56.i = icmp ugt ptr %add.ptr155.i, %add.ptr3.i
  br i1 %cmp.not56.i, label %if.end.i.cleanup211_crit_edge, label %land.lhs.true.lr.ph.i

if.end.i.cleanup211_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

land.lhs.true.lr.ph.i:                            ; preds = %if.end.i
  %params.i = getelementptr inbounds %struct.sctp_reconf_chunk, ptr %6, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool18.not.i = icmp eq i32 %2, 0
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.i.land.lhs.true.i_crit_edge, %land.lhs.true.lr.ph.i
  %param.sroa.0.057.i = phi ptr [ %params.i, %land.lhs.true.lr.ph.i ], [ %add.ptr33.i, %for.inc.i.land.lhs.true.i_crit_edge ]
  %length9.i = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.057.i, i32 0, i32 1
  %9 = ptrtoint ptr %length9.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length9.i, align 2
  %conv10.i = zext i16 %10 to i32
  %idx.neg.i = sub nsw i32 0, %conv10.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr3.i, i32 %idx.neg.i
  %cmp12.not.i = icmp ule ptr %param.sroa.0.057.i, %add.ptr11.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp16.i = icmp ugt i16 %10, 3
  %or.cond.i = select i1 %cmp12.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %for.body.i, label %land.lhs.true.i.cleanup211_crit_edge

land.lhs.true.i.cleanup211_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

for.body.i:                                       ; preds = %land.lhs.true.i
  br i1 %tobool18.not.i, label %for.body.i.sctp_chunk_lookup_strreset_param.exit_crit_edge, label %lor.lhs.false.i

for.body.i.sctp_chunk_lookup_strreset_param.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_chunk_lookup_strreset_param.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %request_seq.i = getelementptr inbounds %struct.sctp_strreset_tsnreq, ptr %param.sroa.0.057.i, i32 0, i32 1
  %11 = ptrtoint ptr %request_seq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %request_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %2)
  %cmp19.i = icmp eq i32 %12, %2
  br i1 %cmp19.i, label %lor.lhs.false.i.sctp_chunk_lookup_strreset_param.exit_crit_edge, label %for.inc.i

lor.lhs.false.i.sctp_chunk_lookup_strreset_param.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_chunk_lookup_strreset_param.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %add.i = add nuw nsw i32 %conv10.i, 3
  %and.i = and i32 %add.i, 131068
  %add.ptr33.i = getelementptr i8, ptr %param.sroa.0.057.i, i32 %and.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr33.i, i32 4
  %cmp.not.i = icmp ugt ptr %add.ptr1.i, %add.ptr3.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup211_crit_edge, label %for.inc.i.land.lhs.true.i_crit_edge

for.inc.i.land.lhs.true.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.inc.i.cleanup211_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

sctp_chunk_lookup_strreset_param.exit:            ; preds = %lor.lhs.false.i.sctp_chunk_lookup_strreset_param.exit_crit_edge, %for.body.i.sctp_chunk_lookup_strreset_param.exit_crit_edge
  %param.sroa.0.057.i.lcssa389 = phi ptr [ %params.i, %for.body.i.sctp_chunk_lookup_strreset_param.exit_crit_edge ], [ %param.sroa.0.057.i, %lor.lhs.false.i.sctp_chunk_lookup_strreset_param.exit_crit_edge ]
  %tobool.not = icmp eq ptr %param.sroa.0.057.i.lcssa389, null
  br i1 %tobool.not, label %sctp_chunk_lookup_strreset_param.exit.cleanup211_crit_edge, label %if.end

sctp_chunk_lookup_strreset_param.exit.cleanup211_crit_edge: ; preds = %sctp_chunk_lookup_strreset_param.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

if.end:                                           ; preds = %sctp_chunk_lookup_strreset_param.exit
  %result2 = getelementptr inbounds %struct.sctp_strreset_resp, ptr %0, i32 0, i32 2
  %13 = ptrtoint ptr %result2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %result2, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %if.else8 [
    i32 1, label %if.end.if.end11_crit_edge
    i32 6, label %if.end.cleanup211_crit_edge
    i32 2, label %if.then7
  ]

if.end.cleanup211_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then7, %if.end.if.end11_crit_edge
  %flags.0 = phi i16 [ 4, %if.then7 ], [ 8, %if.else8 ], [ 0, %if.end.if.end11_crit_edge ]
  %16 = ptrtoint ptr %param.sroa.0.057.i.lcssa389 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %param.sroa.0.057.i.lcssa389, align 2
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %17, label %if.end11.if.end199_crit_edge [
    i16 13, label %if.then14
    i16 14, label %if.then60
    i16 15, label %if.then84
    i16 17, label %if.then152
    i16 18, label %if.then183
  ]

if.end11.if.end199_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end199

if.then14:                                        ; preds = %if.end11
  %list_of_streams = getelementptr inbounds %struct.sctp_strreset_outreq, ptr %param.sroa.0.057.i.lcssa389, i32 0, i32 4
  %length = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.057.i.lcssa389, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %length, align 2
  %conv15 = zext i16 %20 to i32
  %sub = add nuw nsw i32 %conv15, 131056
  %div332 = lshr i32 %sub, 1
  %conv16 = trunc i32 %div332 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp17 = icmp eq i32 %14, 1
  br i1 %cmp17, label %if.then19, label %if.then14.if.end40_crit_edge

if.then14.if.end40_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16)
  %tobool20.not = icmp eq i16 %conv16, 0
  br i1 %tobool20.not, label %for.cond28.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then19
  %conv23 = and i32 %div332, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23)
  %cmp24381.not = icmp eq i32 %conv23, 0
  br i1 %cmp24381.not, label %for.cond.preheader.if.end40_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end40_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.cond28.preheader:                             ; preds = %if.then19
  %outcnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %21 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %outcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp31384.not = icmp eq i16 %22, 0
  br i1 %cmp31384.not, label %for.cond28.preheader.if.end40_crit_edge, label %for.cond28.preheader.for.body33_crit_edge

for.cond28.preheader.for.body33_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body33

for.cond28.preheader.if.end40_crit_edge:          ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %indvars.iv394 = phi i32 [ %indvars.iv.next395, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %list_of_streams, i32 %indvars.iv394
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %conv.i336 = zext i16 %24 to i32
  %mul17.i.i = shl nuw nsw i32 %conv.i336, 4
  %call1.i = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i) #6
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %call1.i, align 4
  %mid_uo = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i, i32 0, i32 1
  %26 = ptrtoint ptr %mid_uo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mid_uo, align 4
  %indvars.iv.next395 = add nuw nsw i32 %indvars.iv394, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next395, %conv23
  br i1 %exitcond.not, label %for.body.if.end40_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.cond28.preheader.for.body33_crit_edge
  %indvars.iv396 = phi i32 [ %indvars.iv.next397, %for.body33.for.body33_crit_edge ], [ 0, %for.cond28.preheader.for.body33_crit_edge ]
  %mul17.i.i338 = shl nuw nsw i32 %indvars.iv396, 4
  %call1.i339 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i338) #6
  %27 = ptrtoint ptr %call1.i339 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %call1.i339, align 4
  %mid_uo35 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i339, i32 0, i32 1
  %28 = ptrtoint ptr %mid_uo35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %mid_uo35, align 4
  %indvars.iv.next397 = add nuw nsw i32 %indvars.iv396, 1
  %29 = ptrtoint ptr %outcnt to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %outcnt, align 4
  %31 = zext i16 %30 to i32
  %cmp31 = icmp ult i32 %indvars.iv.next397, %31
  br i1 %cmp31, label %for.body33.for.body33_crit_edge, label %for.body33.if.end40_crit_edge

for.body33.if.end40_crit_edge:                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33

if.end40:                                         ; preds = %for.body33.if.end40_crit_edge, %for.body.if.end40_crit_edge, %for.cond28.preheader.if.end40_crit_edge, %for.cond.preheader.if.end40_crit_edge, %if.then14.if.end40_crit_edge
  %32 = or i16 %flags.0, 2
  %outcnt45 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %33 = ptrtoint ptr %outcnt45 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %outcnt45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp47386.not = icmp eq i16 %34, 0
  br i1 %cmp47386.not, label %if.end40.for.end53_crit_edge, label %if.end40.for.body49_crit_edge

if.end40.for.body49_crit_edge:                    ; preds = %if.end40
  br label %for.body49

if.end40.for.end53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end53

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %if.end40.for.body49_crit_edge
  %indvars.iv398 = phi i32 [ %indvars.iv.next399, %for.body49.for.body49_crit_edge ], [ 0, %if.end40.for.body49_crit_edge ]
  %mul17.i.i341 = shl nuw nsw i32 %indvars.iv398, 4
  %call1.i342 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i341) #6
  %state = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i342, i32 0, i32 3
  %35 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %state, align 4
  %indvars.iv.next399 = add nuw nsw i32 %indvars.iv398, 1
  %36 = ptrtoint ptr %outcnt45 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %outcnt45, align 4
  %38 = zext i16 %37 to i32
  %cmp47 = icmp ult i32 %indvars.iv.next399, %38
  br i1 %cmp47, label %for.body49.for.body49_crit_edge, label %for.body49.for.end53_crit_edge

for.body49.for.end53_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end53

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body49

for.end53:                                        ; preds = %for.body49.for.end53_crit_edge, %if.end40.for.end53_crit_edge
  %call54 = tail call ptr @sctp_ulpevent_make_stream_reset_event(ptr noundef %asoc, i16 noundef zeroext %32, i16 noundef zeroext %conv16, ptr noundef %list_of_streams, i32 noundef 2592) #6
  br label %if.end199.sink.split

if.then60:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp62 = icmp eq i32 %14, 1
  br i1 %cmp62, label %if.then60.cleanup211_crit_edge, label %if.end65

if.then60.cleanup211_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

if.end65:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %list_of_streams66 = getelementptr inbounds %struct.sctp_strreset_inreq, ptr %param.sroa.0.057.i.lcssa389, i32 0, i32 2
  %length69 = getelementptr inbounds %struct.sctp_paramhdr, ptr %param.sroa.0.057.i.lcssa389, i32 0, i32 1
  %39 = ptrtoint ptr %length69 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %length69, align 2
  %conv70 = zext i16 %40 to i32
  %sub71 = add nuw nsw i32 %conv70, 131064
  %div72331 = lshr i32 %sub71, 1
  %conv73 = trunc i32 %div72331 to i16
  %41 = or i16 %flags.0, 1
  %call77 = tail call ptr @sctp_ulpevent_make_stream_reset_event(ptr noundef %asoc, i16 noundef zeroext %41, i16 noundef zeroext %conv73, ptr noundef %list_of_streams66, i32 noundef 2592) #6
  br label %if.end199.sink.split

if.then84:                                        ; preds = %if.end11
  %length85 = getelementptr inbounds %struct.sctp_paramhdr, ptr %0, i32 0, i32 1
  %42 = ptrtoint ptr %length85 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %length85, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %43)
  %cmp87.not = icmp eq i16 %43, 20
  br i1 %cmp87.not, label %if.end90, label %if.then84.cleanup211_crit_edge

if.then84.cleanup211_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

if.end90:                                         ; preds = %if.then84
  %senders_next_tsn = getelementptr inbounds %struct.sctp_strreset_resptsn, ptr %0, i32 0, i32 3
  %44 = ptrtoint ptr %senders_next_tsn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %senders_next_tsn, align 4
  %receivers_next_tsn = getelementptr inbounds %struct.sctp_strreset_resptsn, ptr %0, i32 0, i32 4
  %46 = ptrtoint ptr %receivers_next_tsn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %receivers_next_tsn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp91 = icmp eq i32 %14, 1
  br i1 %cmp91, label %if.then93, label %if.end90.if.end128_crit_edge

if.end90.if.end128_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then93:                                        ; preds = %if.end90
  %tsn_map = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10
  %max_tsn_seen.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 10, i32 3
  %48 = ptrtoint ptr %max_tsn_seen.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_tsn_seen.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %temp) #6
  %50 = getelementptr inbounds %struct.list_head, ptr %temp, i32 0, i32 1
  %51 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %temp, ptr %temp, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %temp, ptr %50, align 4
  %si = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 6
  %53 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %si, align 4
  %report_ftsn = getelementptr inbounds %struct.sctp_stream_interleave, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %report_ftsn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %report_ftsn, align 4
  %ulpq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 62
  call void %56(ptr noundef %ulpq, i32 noundef %49) #6
  %call98 = call ptr @sctp_tsnmap_init(ptr noundef %tsn_map, i16 noundef zeroext 32, i32 noundef %45, i32 noundef 2592) #6
  %outqueue = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61
  %out_chunk_list = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 1
  %57 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %out_chunk_list, align 4
  %cmp.i.not.i = icmp eq ptr %58, %out_chunk_list
  br i1 %cmp.i.not.i, label %if.then93.list_splice_init.exit_crit_edge, label %if.then.i

if.then93.list_splice_init.exit_crit_edge:        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %temp, align 4
  %prev2.i.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 1, i32 1
  %61 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %temp, ptr %prev3.i.i, align 4
  store ptr %58, ptr %temp, align 4
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %60, ptr %62, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev6.i.i, align 4
  %66 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %out_chunk_list, ptr %out_chunk_list, align 4
  store ptr %out_chunk_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.then93.list_splice_init.exit_crit_edge
  call void @sctp_outq_free(ptr noundef %outqueue) #6
  %67 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %temp, align 4
  %cmp.i.not.i344 = icmp eq ptr %68, %temp
  br i1 %cmp.i.not.i344, label %list_splice_init.exit.list_splice_init.exit350_crit_edge, label %if.then.i348

list_splice_init.exit.list_splice_init.exit350_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice_init.exit350

if.then.i348:                                     ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %out_chunk_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %out_chunk_list, align 4
  %71 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %50, align 4
  %prev3.i.i346 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %prev3.i.i346 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %out_chunk_list, ptr %prev3.i.i346, align 4
  store ptr %68, ptr %out_chunk_list, align 4
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %70, ptr %72, align 4
  %prev6.i.i347 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev6.i.i347 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev6.i.i347, align 4
  %76 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %temp, ptr %temp, align 4
  store ptr %temp, ptr %50, align 4
  br label %list_splice_init.exit350

list_splice_init.exit350:                         ; preds = %if.then.i348, %list_splice_init.exit.list_splice_init.exit350_crit_edge
  %next_tsn = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 35
  %77 = ptrtoint ptr %next_tsn to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %47, ptr %next_tsn, align 8
  %sub103 = add i32 %47, -1
  %ctsn_ack_point = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 36
  %78 = ptrtoint ptr %ctsn_ack_point to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub103, ptr %ctsn_ack_point, align 4
  %adv_peer_ack_point = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 37
  %79 = ptrtoint ptr %adv_peer_ack_point to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub103, ptr %adv_peer_ack_point, align 8
  %outcnt107 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %80 = ptrtoint ptr %outcnt107 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %outcnt107, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp109375.not = icmp eq i16 %81, 0
  br i1 %cmp109375.not, label %list_splice_init.exit350.for.cond118.preheader_crit_edge, label %list_splice_init.exit350.for.body111_crit_edge

list_splice_init.exit350.for.body111_crit_edge:   ; preds = %list_splice_init.exit350
  br label %for.body111

list_splice_init.exit350.for.cond118.preheader_crit_edge: ; preds = %list_splice_init.exit350
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond118.preheader

for.cond118.preheader:                            ; preds = %for.body111.for.cond118.preheader_crit_edge, %list_splice_init.exit350.for.cond118.preheader_crit_edge
  %incnt = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 3
  %82 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %incnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp121377.not = icmp eq i16 %83, 0
  br i1 %cmp121377.not, label %for.cond118.preheader.for.end127_crit_edge, label %for.body123.lr.ph

for.cond118.preheader.for.end127_crit_edge:       ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end127

for.body123.lr.ph:                                ; preds = %for.cond118.preheader
  %in.i = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 1
  br label %for.body123

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %list_splice_init.exit350.for.body111_crit_edge
  %indvars.iv390 = phi i32 [ %indvars.iv.next391, %for.body111.for.body111_crit_edge ], [ 0, %list_splice_init.exit350.for.body111_crit_edge ]
  %mul17.i.i352 = shl nuw nsw i32 %indvars.iv390, 4
  %call1.i353 = call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i352) #6
  %84 = ptrtoint ptr %call1.i353 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %call1.i353, align 4
  %call1.i356 = call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i352) #6
  %mid_uo114 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i356, i32 0, i32 1
  %85 = ptrtoint ptr %mid_uo114 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %mid_uo114, align 4
  %indvars.iv.next391 = add nuw nsw i32 %indvars.iv390, 1
  %86 = ptrtoint ptr %outcnt107 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %outcnt107, align 4
  %88 = zext i16 %87 to i32
  %cmp109 = icmp ult i32 %indvars.iv.next391, %88
  br i1 %cmp109, label %for.body111.for.body111_crit_edge, label %for.body111.for.cond118.preheader_crit_edge

for.body111.for.cond118.preheader_crit_edge:      ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond118.preheader

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body111

for.body123:                                      ; preds = %for.body123.for.body123_crit_edge, %for.body123.lr.ph
  %i.4378 = phi i16 [ 0, %for.body123.lr.ph ], [ %inc126, %for.body123.for.body123_crit_edge ]
  %i.4378.frozen = freeze i16 %i.4378
  %div14.i2.i = udiv i16 %i.4378.frozen, 204
  %div14.i.zext.i = zext i16 %div14.i2.i to i32
  %mul.i.i = shl nuw nsw i32 %div14.i.zext.i, 12
  %89 = mul i16 %div14.i2.i, 204
  %rem.i3.i.decomposed = sub i16 %i.4378.frozen, %89
  %narrow.i = mul nuw nsw i16 %rem.i3.i.decomposed, 20
  %mul15.i.i = zext i16 %narrow.i to i32
  %add.i.i = add nuw nsw i32 %mul.i.i, %mul15.i.i
  %call1.i357 = call ptr @__genradix_ptr(ptr noundef %in.i, i32 noundef %add.i.i) #6
  %90 = ptrtoint ptr %call1.i357 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %call1.i357, align 4
  %inc126 = add nuw i16 %i.4378, 1
  %91 = ptrtoint ptr %incnt to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %incnt, align 2
  %cmp121 = icmp ult i16 %inc126, %92
  br i1 %cmp121, label %for.body123.for.body123_crit_edge, label %for.body123.for.end127_crit_edge

for.body123.for.end127_crit_edge:                 ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end127

for.body123.for.body123_crit_edge:                ; preds = %for.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body123

for.end127:                                       ; preds = %for.body123.for.end127_crit_edge, %for.cond118.preheader.for.end127_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %temp) #6
  br label %if.end128

if.end128:                                        ; preds = %for.end127, %if.end90.if.end128_crit_edge
  %outcnt131 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %93 = ptrtoint ptr %outcnt131 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %outcnt131, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp133379.not = icmp eq i16 %94, 0
  br i1 %cmp133379.not, label %if.end128.for.end140_crit_edge, label %if.end128.for.body135_crit_edge

if.end128.for.body135_crit_edge:                  ; preds = %if.end128
  br label %for.body135

if.end128.for.end140_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end140

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %if.end128.for.body135_crit_edge
  %indvars.iv392 = phi i32 [ %indvars.iv.next393, %for.body135.for.body135_crit_edge ], [ 0, %if.end128.for.body135_crit_edge ]
  %mul17.i.i359 = shl nuw nsw i32 %indvars.iv392, 4
  %call1.i360 = call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i359) #6
  %state137 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i360, i32 0, i32 3
  %95 = ptrtoint ptr %state137 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %state137, align 4
  %indvars.iv.next393 = add nuw nsw i32 %indvars.iv392, 1
  %96 = ptrtoint ptr %outcnt131 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %outcnt131, align 4
  %98 = zext i16 %97 to i32
  %cmp133 = icmp ult i32 %indvars.iv.next393, %98
  br i1 %cmp133, label %for.body135.for.body135_crit_edge, label %for.body135.for.end140_crit_edge

for.body135.for.end140_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end140

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body135

for.end140:                                       ; preds = %for.body135.for.end140_crit_edge, %if.end128.for.end140_crit_edge
  %call141 = call ptr @sctp_ulpevent_make_assoc_reset_event(ptr noundef %asoc, i16 noundef zeroext %flags.0, i32 noundef %45, i32 noundef %47, i32 noundef 2592) #6
  br label %if.end199.sink.split

if.then152:                                       ; preds = %if.end11
  %number_of_streams = getelementptr inbounds %struct.sctp_strreset_addstrm, ptr %param.sroa.0.057.i.lcssa389, i32 0, i32 2
  %99 = ptrtoint ptr %number_of_streams to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %number_of_streams, align 4
  %outcnt153 = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 60, i32 2
  %101 = ptrtoint ptr %outcnt153 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %outcnt153, align 4
  %conv155 = zext i16 %100 to i32
  %sub156 = sub i16 %102, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp158 = icmp eq i32 %14, 1
  br i1 %cmp158, label %for.cond161.preheader, label %if.else173

for.cond161.preheader:                            ; preds = %if.then152
  %103 = ptrtoint ptr %outcnt153 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %outcnt153, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %sub156, i16 %104)
  %cmp165373 = icmp ult i16 %sub156, %104
  br i1 %cmp165373, label %for.body167.preheader, label %for.cond161.preheader.if.end175_crit_edge

for.cond161.preheader.if.end175_crit_edge:        ; preds = %for.cond161.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

for.body167.preheader:                            ; preds = %for.cond161.preheader
  %105 = zext i16 %sub156 to i32
  br label %for.body167

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %for.body167.preheader
  %indvars.iv = phi i32 [ %105, %for.body167.preheader ], [ %indvars.iv.next, %for.body167.for.body167_crit_edge ]
  %mul17.i.i362 = shl nuw nsw i32 %indvars.iv, 4
  %call1.i363 = tail call ptr @__genradix_ptr(ptr noundef %stream1, i32 noundef %mul17.i.i362) #6
  %state169 = getelementptr inbounds %struct.sctp_stream_out, ptr %call1.i363, i32 0, i32 3
  %106 = ptrtoint ptr %state169 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %state169, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %107 = ptrtoint ptr %outcnt153 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %outcnt153, align 4
  %109 = zext i16 %108 to i32
  %cmp165 = icmp ult i32 %indvars.iv.next, %109
  br i1 %cmp165, label %for.body167.for.body167_crit_edge, label %for.body167.if.end175_crit_edge

for.body167.if.end175_crit_edge:                  ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body167

if.else173:                                       ; preds = %if.then152
  %outqueue.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 61
  %out_chunk_list.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 61, i32 1
  %110 = ptrtoint ptr %out_chunk_list.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %out_chunk_list.i, align 4
  %cmp.not36.i = icmp eq ptr %111, %out_chunk_list.i
  br i1 %cmp.not36.i, label %if.else173.sctp_stream_shrink_out.exit_crit_edge, label %for.body.lr.ph.i

if.else173.sctp_stream_shrink_out.exit_crit_edge: ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_stream_shrink_out.exit

for.body.lr.ph.i:                                 ; preds = %if.else173
  %prsctp_capable.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 5, i32 12
  %sent_cnt_removable.i = getelementptr %struct.sctp_association, ptr %asoc, i32 0, i32 86
  br label %for.body.i364

for.body.i364:                                    ; preds = %cleanup.i.for.body.i364_crit_edge, %for.body.lr.ph.i
  %ch.037.i = phi ptr [ %111, %for.body.lr.ph.i ], [ %temp.039.i, %cleanup.i.for.body.i364_crit_edge ]
  %112 = ptrtoint ptr %ch.037.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %temp.039.i = load ptr, ptr %ch.037.i, align 4
  %subh.i.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.037.i, i32 0, i32 8
  %113 = ptrtoint ptr %subh.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %subh.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.sctp_datahdr, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %stream.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %116, i16 %sub156)
  %cmp11.i = icmp ult i16 %116, %sub156
  br i1 %cmp11.i, label %for.body.i364.cleanup.i_crit_edge, label %if.end.i366

for.body.i364.cleanup.i_crit_edge:                ; preds = %for.body.i364
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i366:                                      ; preds = %for.body.i364
  tail call void @sctp_sched_dequeue_common(ptr noundef %outqueue.i, ptr noundef %ch.037.i) #6
  tail call void @sctp_chunk_fail(ptr noundef %ch.037.i, i32 noundef 1) #6
  %117 = ptrtoint ptr %prsctp_capable.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load.i = load i16, ptr %prsctp_capable.i, align 2
  %118 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %118)
  %tobool.not.i365 = icmp eq i16 %118, 0
  br i1 %tobool.not.i365, label %if.end.i366.if.end18.i_crit_edge, label %land.lhs.true.i367

if.end.i366.if.end18.i_crit_edge:                 ; preds = %if.end.i366
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

land.lhs.true.i367:                               ; preds = %if.end.i366
  %sinfo_flags.i = getelementptr inbounds %struct.sctp_chunk, ptr %ch.037.i, i32 0, i32 12, i32 2
  %119 = ptrtoint ptr %sinfo_flags.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %sinfo_flags.i, align 4
  %121 = and i16 %120, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %121)
  %cmp15.i = icmp eq i16 %121, 48
  br i1 %cmp15.i, label %if.then17.i, label %land.lhs.true.i367.if.end18.i_crit_edge

land.lhs.true.i367.if.end18.i_crit_edge:          ; preds = %land.lhs.true.i367
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then17.i:                                      ; preds = %land.lhs.true.i367
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %sent_cnt_removable.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sent_cnt_removable.i, align 8
  %dec.i = add i32 %123, -1
  store i32 %dec.i, ptr %sent_cnt_removable.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %land.lhs.true.i367.if.end18.i_crit_edge, %if.end.i366.if.end18.i_crit_edge
  tail call void @sctp_chunk_free(ptr noundef %ch.037.i) #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end18.i, %for.body.i364.cleanup.i_crit_edge
  %cmp.not.i368 = icmp eq ptr %temp.039.i, %out_chunk_list.i
  br i1 %cmp.not.i368, label %cleanup.i.sctp_stream_shrink_out.exit_crit_edge, label %cleanup.i.for.body.i364_crit_edge

cleanup.i.for.body.i364_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i364

cleanup.i.sctp_stream_shrink_out.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sctp_stream_shrink_out.exit

sctp_stream_shrink_out.exit:                      ; preds = %cleanup.i.sctp_stream_shrink_out.exit_crit_edge, %if.else173.sctp_stream_shrink_out.exit_crit_edge
  %124 = ptrtoint ptr %outcnt153 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %sub156, ptr %outcnt153, align 4
  br label %if.end175

if.end175:                                        ; preds = %sctp_stream_shrink_out.exit, %for.body167.if.end175_crit_edge, %for.cond161.preheader.if.end175_crit_edge
  %call177 = tail call ptr @sctp_ulpevent_make_stream_change_event(ptr noundef %asoc, i16 noundef zeroext %flags.0, i32 noundef 0, i32 noundef %conv155, i32 noundef 2592) #6
  br label %if.end199.sink.split

if.then183:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp185 = icmp eq i32 %14, 1
  br i1 %cmp185, label %if.then183.cleanup211_crit_edge, label %if.end188

if.then183.cleanup211_crit_edge:                  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

if.end188:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #8
  %number_of_streams189 = getelementptr inbounds %struct.sctp_strreset_addstrm, ptr %param.sroa.0.057.i.lcssa389, i32 0, i32 2
  %125 = ptrtoint ptr %number_of_streams189 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %number_of_streams189, align 4
  %conv190 = zext i16 %126 to i32
  %call191 = tail call ptr @sctp_ulpevent_make_stream_change_event(ptr noundef %asoc, i16 noundef zeroext %flags.0, i32 noundef %conv190, i32 noundef 0, i32 noundef 2592) #6
  br label %if.end199.sink.split

if.end199.sink.split:                             ; preds = %if.end188, %if.end175, %for.end140, %if.end65, %for.end53
  %call141.sink = phi ptr [ %call141, %for.end140 ], [ %call191, %if.end188 ], [ %call77, %if.end65 ], [ %call177, %if.end175 ], [ %call54, %for.end53 ]
  %127 = ptrtoint ptr %evp to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call141.sink, ptr %evp, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.end199.sink.split, %if.end11.if.end199_crit_edge
  %strreset_outstanding = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 80
  %128 = ptrtoint ptr %strreset_outstanding to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %strreset_outstanding, align 2
  %dec = add i8 %129, -1
  store i8 %dec, ptr %strreset_outstanding, align 2
  %strreset_outseq = getelementptr inbounds %struct.sctp_association, ptr %asoc, i32 0, i32 81
  %130 = ptrtoint ptr %strreset_outseq to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %strreset_outseq, align 4
  %inc200 = add i32 %131, 1
  store i32 %inc200, ptr %strreset_outseq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool202.not = icmp eq i8 %dec, 0
  br i1 %tobool202.not, label %if.then203, label %if.end199.cleanup211_crit_edge

if.end199.cleanup211_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup211

if.then203:                                       ; preds = %if.end199
  %132 = ptrtoint ptr %strreset_chunk.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %strreset_chunk.i, align 4
  %transport = getelementptr inbounds %struct.sctp_chunk, ptr %133, i32 0, i32 19
  %134 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %transport, align 4
  %reconf_timer = getelementptr inbounds %struct.sctp_transport, ptr %135, i32 0, i32 42
  %call204 = call i32 @del_timer(ptr noundef %reconf_timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then203.if.end207_crit_edge, label %if.then206

if.then203.if.end207_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end207

if.then206:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  call void @sctp_transport_put(ptr noundef %135) #6
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.then203.if.end207_crit_edge
  %136 = ptrtoint ptr %strreset_chunk.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %strreset_chunk.i, align 4
  call void @sctp_chunk_put(ptr noundef %137) #6
  %138 = ptrtoint ptr %strreset_chunk.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %strreset_chunk.i, align 4
  br label %cleanup211

cleanup211:                                       ; preds = %if.end207, %if.end199.cleanup211_crit_edge, %if.then183.cleanup211_crit_edge, %if.then84.cleanup211_crit_edge, %if.then60.cleanup211_crit_edge, %if.end.cleanup211_crit_edge, %sctp_chunk_lookup_strreset_param.exit.cleanup211_crit_edge, %for.inc.i.cleanup211_crit_edge, %land.lhs.true.i.cleanup211_crit_edge, %if.end.i.cleanup211_crit_edge, %entry.cleanup211_crit_edge
  ret ptr null
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genradix_prealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__genradix_ptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_primitive_RECONF(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_sched_dequeue_common(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sctp_chunk_fail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

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
