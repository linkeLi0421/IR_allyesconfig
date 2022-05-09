; ModuleID = '/llk/IR_all_yes/net/sctp/offload.c_pt.bc'
source_filename = "../net/sctp/offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.142, i32, i32, i32, i16, i16, %union.anon.144, i32, %union.anon.145, %union.anon.146, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.142 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sctphdr = type { i16, i16, i32, i32 }

@sctp_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @sctp_gso_segment, ptr null, ptr null }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sctp6_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @sctp_gso_segment, ptr null, ptr null }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@crc32c_csum_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"sctp_offload\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 89, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"sctp6_offload\00", align 1
@___asan_gen_.5 = private constant [22 x i8] c"../net/sctp/offload.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 95, i32 33 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 46, i32 38 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @sctp_offload, ptr @sctp6_offload, ptr @sctp_csum_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp6_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sctp_offload_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_add_offload(ptr noundef nonnull @sctp_offload, i8 noundef zeroext -124) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet6_add_offload(ptr noundef nonnull @sctp6_offload, i8 noundef zeroext -124) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %ipv4

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @crc32c_csum_stub to i32))
  store ptr @sctp_csum_ops, ptr @crc32c_csum_stub, align 4
  br label %cleanup

ipv4:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @inet_del_offload(ptr noundef nonnull @sctp_offload, i8 noundef zeroext -124) #7
  br label %cleanup

cleanup:                                          ; preds = %ipv4, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %ipv4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet6_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_del_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sctp_gso_segment(ptr noundef %skb, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 11
  br i1 %cmp.i, label %if.end.if.end5_crit_edge, label %if.end.i, !prof !15

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp3.i = icmp ult i32 %5, 12
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !16

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 12, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #7
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end5_crit_edge

pskb_may_pull.exit.if.end5_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %pskb_may_pull.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %sub.i60 = add i32 %9, -12
  store i32 %sub.i60, ptr %len.i.i, align 4
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i60, i32 %11)
  %cmp.i61 = icmp ult i32 %sub.i60, %11
  br i1 %cmp.i61, label %do.body4.i, label %__skb_pull.exit, !prof !16

do.body4.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !17
  unreachable

__skb_pull.exit:                                  ; preds = %if.end5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 12
  store ptr %add.ptr.i, ptr %data.i, align 4
  %or = or i64 %features, 131072
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i, align 4
  %gso_type.i63 = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %gso_type.i63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gso_type.i63, align 8
  %conv.i.i64 = sext i32 %17 to i64
  %shl.i.i = shl nsw i64 %conv.i.i64, 16
  %and.i.i = and i64 %shl.i.i, %or
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %shl.i.i)
  %cmp.i.i = icmp eq i64 %and.i.i, %shl.i.i
  br i1 %cmp.i.i, label %land.rhs.i, label %__skb_pull.exit.if.end16_crit_edge

__skb_pull.exit.if.end16_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.rhs.i:                                       ; preds = %__skb_pull.exit
  %frag_list.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %frag_list.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %frag_list.i.i, align 8
  %cmp.i5.not.i = icmp eq ptr %19, null
  %and.i65 = and i64 %features, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i65)
  %tobool.i66 = icmp ne i64 %and.i65, 0
  %or.cond80 = or i1 %tobool.i66, %cmp.i5.not.i
  br i1 %or.cond80, label %if.then8, label %land.rhs.i.if.end16_crit_edge

land.rhs.i.if.end16_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then8:                                         ; preds = %land.rhs.i
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %gso_segs, align 2
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not = icmp ne i32 %22, %24
  %spec.store.select = zext i1 %cmp.not to i16
  %25 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.store.select, ptr %gso_segs, align 2
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %frag_iter.085 = load ptr, ptr %frag_list, align 8
  %tobool.not86 = icmp eq ptr %frag_iter.085, null
  br i1 %tobool.not86, label %if.then8.cleanup_crit_edge, label %if.then8.for.body_crit_edge

if.then8.for.body_crit_edge:                      ; preds = %if.then8
  br label %for.body

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then8.for.body_crit_edge
  %frag_iter.087 = phi ptr [ %frag_iter.0, %for.body.for.body_crit_edge ], [ %frag_iter.085, %if.then8.for.body_crit_edge ]
  %29 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %gso_segs, align 2
  %inc15 = add i16 %30, 1
  store i16 %inc15, ptr %gso_segs, align 2
  %31 = ptrtoint ptr %frag_iter.087 to i32
  call void @__asan_load4_noabort(i32 %31)
  %frag_iter.0 = load ptr, ptr %frag_iter.087, align 8
  %tobool.not = icmp eq ptr %frag_iter.0, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %land.rhs.i.if.end16_crit_edge, %__skb_pull.exit.if.end16_crit_edge
  %or17 = and i64 %features, -10
  %and = or i64 %or17, 8
  %call18 = tail call ptr @skb_segment(ptr noundef %skb, i64 noundef %and) #7
  %cmp.i68 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  %and22 = and i64 %features, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp ne i64 %and22, 0
  %or.cond.not = or i1 %tobool23.not, %cmp.i68
  %tobool26.not82 = icmp eq ptr %call18, null
  %or.cond88 = or i1 %or.cond.not, %tobool26.not82
  br i1 %or.cond88, label %if.end16.cleanup_crit_edge, label %if.end16.for.body27_crit_edge

if.end16.for.body27_crit_edge:                    ; preds = %if.end16
  br label %for.body27

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body27:                                       ; preds = %for.inc34.for.body27_crit_edge, %if.end16.for.body27_crit_edge
  %skb.addr.083 = phi ptr [ %53, %for.inc34.for.body27_crit_edge ], [ %call18, %if.end16.for.body27_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 15
  %32 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %ip_summed, align 8
  %33 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %33)
  %cmp28 = icmp eq i16 %33, 1536
  br i1 %cmp28, label %if.then30, label %for.body27.for.inc34_crit_edge

for.body27.for.inc34_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc34

if.then30:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  %head.i.i69 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i69, align 8
  %transport_header.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 15, i32 0, i32 19
  %36 = ptrtoint ptr %transport_header.i.i70 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_header.i.i70, align 2
  %conv.i.i71 = zext i16 %37 to i32
  %add.ptr.i.i72 = getelementptr i8, ptr %35, i32 %conv.i.i71
  %bf.clear.i = and i16 %bf.load, -1537
  %38 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %bf.clear.i, ptr %ip_summed, align 8
  %csum_not_inet.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 15, i32 0, i32 3
  %39 = ptrtoint ptr %csum_not_inet.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load1.i = load i32, ptr %csum_not_inet.i, align 2
  %bf.clear2.i = and i32 %bf.load1.i, -134217729
  store i32 %bf.clear2.i, ptr %csum_not_inet.i, align 2
  %csum.i = getelementptr %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 3, i32 40
  %40 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %csum.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 6
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %add.i = add i32 %sub.ptr.sub.i.i, %44
  %conv.i = trunc i32 %add.i to i16
  %csum_start.i = getelementptr %struct.sk_buff, ptr %skb.addr.083, i32 0, i32 3, i32 44
  %45 = ptrtoint ptr %csum_start.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %csum_start.i, align 4
  %sub.ptr.lhs.cast.i17.i = ptrtoint ptr %add.ptr.i.i72 to i32
  %sub.ptr.sub.i19.i = sub i32 %sub.ptr.lhs.cast.i17.i, %sub.ptr.lhs.cast.i.i
  %add.ptr.i.i74 = getelementptr i8, ptr %42, i32 %sub.ptr.sub.i19.i
  %checksum.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i74, i32 0, i32 3
  %46 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %checksum.i.i, align 4
  store i32 0, ptr %checksum.i.i, align 4
  %48 = load i32, ptr %len.i, align 4
  %sub.i.i75 = sub i32 %48, %sub.ptr.sub.i19.i
  %call.i.i = tail call i32 @__skb_checksum(ptr noundef nonnull %skb.addr.083, i32 noundef %sub.ptr.sub.i19.i, i32 noundef %sub.i.i75, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #7
  %neg.i.i = xor i32 %call.i.i, -1
  %49 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %checksum.i.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #7
  %checksum = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i72, i32 0, i32 3
  %51 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %checksum, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %if.then30, %for.body27.for.inc34_crit_edge
  %52 = ptrtoint ptr %skb.addr.083 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %skb.addr.083, align 8
  %tobool26.not = icmp eq ptr %53, null
  br i1 %tobool26.not, label %for.inc34.cleanup_crit_edge, label %for.inc34.for.body27_crit_edge

for.inc34.for.body27_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc34.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %segs.0 = phi ptr [ %call18, %if.end16.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ], [ null, %if.then8.cleanup_crit_edge ], [ null, %for.body.cleanup_crit_edge ], [ %call18, %for.inc34.cleanup_crit_edge ]
  ret ptr %segs.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #7
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #10
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @sctp_offload, !1, !"sctp_offload", i1 false, i1 false}
!1 = !{!"../net/sctp/offload.c", i32 89, i32 33}
!2 = !{ptr @sctp6_offload, !3, !"sctp6_offload", i1 false, i1 false}
!3 = !{!"../net/sctp/offload.c", i32 95, i32 33}
!4 = !{ptr @sctp_csum_ops, !5, !"sctp_csum_ops", i1 false, i1 false}
!5 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2154932805, i64 2154933293, i64 2154932842, i64 2154932898, i64 2154932932, i64 2154932956, i64 2154932997, i64 2154933018, i64 2154933046, i64 2154933080}
