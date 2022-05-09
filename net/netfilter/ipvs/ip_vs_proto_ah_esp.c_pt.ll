; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_proto_ah_esp.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_proto_ah_esp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ip_vs_conn_param = type { ptr, ptr, ptr, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%union.nf_inet_addr = type { [4 x i32] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AH\00", [29 x i8] zeroinitializer }, align 32
@ip_vs_protocol_ah = dso_local global { %struct.ip_vs_protocol, [48 x i8] } { %struct.ip_vs_protocol { ptr null, ptr @.str, i16 51, i16 1, i32 1, ptr null, ptr null, ptr null, ptr null, ptr @ah_esp_conn_schedule, ptr @ah_esp_conn_in_get, ptr @ah_esp_conn_out_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_vs_tcpudp_debug_packet, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ESP\00", [28 x i8] zeroinitializer }, align 32
@ip_vs_protocol_esp = dso_local global { %struct.ip_vs_protocol, [48 x i8] } { %struct.ip_vs_protocol { ptr null, ptr @.str.1, i16 50, i16 1, i32 1, ptr null, ptr null, ptr null, ptr null, ptr @ah_esp_conn_schedule, ptr @ah_esp_conn_in_get, ptr @ah_esp_conn_out_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip_vs_tcpudp_debug_packet, ptr null }, [48 x i8] zeroinitializer }, align 32
@ah_esp_conn_in_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: Unknown ISAKMP entry for outin packet %s%s %s->%s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ah_esp_conn_in_get\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"net/netfilter/ipvs/ip_vs_proto_ah_esp.c\00", [56 x i8] zeroinitializer }, align 32
@ah_esp_conn_in_get._entry_ptr = internal global ptr @ah_esp_conn_in_get._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ICMP+\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@ah_esp_conn_out_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017IPVS: Unknown ISAKMP entry for inout packet %s%s %s->%s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ah_esp_conn_out_get\00", [44 x i8] zeroinitializer }, align 32
@ah_esp_conn_out_get._entry_ptr = internal global ptr @ah_esp_conn_out_get._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 117, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"ip_vs_protocol_ah\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 116, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 139, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"ip_vs_protocol_esp\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 138, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 68, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 196, i32 46 }
@___asan_gen_.45 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 200, i32 46 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [43 x i8] c"../net/netfilter/ipvs/ip_vs_proto_ah_esp.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 90, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @ah_esp_conn_in_get._entry, ptr @ah_esp_conn_in_get._entry_ptr, ptr @ah_esp_conn_out_get._entry, ptr @ah_esp_conn_out_get._entry_ptr, ptr @.str, ptr @ip_vs_protocol_ah, ptr @.str.1, ptr @ip_vs_protocol_esp, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_protocol_ah to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_protocol_esp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah_esp_conn_in_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ah_esp_conn_out_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ah_esp_conn_schedule(ptr nocapture noundef readnone %ipvs, i32 noundef %af, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %pd, ptr nocapture noundef writeonly %verdict, ptr nocapture noundef readnone %cpp, ptr nocapture noundef readnone %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %verdict to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %verdict, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ah_esp_conn_in_get(ptr noundef %ipvs, i32 noundef %af, ptr nocapture noundef readnone %skb, ptr noundef %iph) #1 align 64 {
entry:
  %p = alloca %struct.ip_vs_conn_param, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #6
  %0 = getelementptr inbounds i8, ptr %p, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iph, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.else.i, !prof !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %saddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %daddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  br label %ah_esp_conn_fill_param_proto.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %daddr3.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %saddr4.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  br label %ah_esp_conn_fill_param_proto.exit

ah_esp_conn_fill_param_proto.exit:                ; preds = %if.else.i, %if.then.i
  %daddr3.sink.i = phi ptr [ %saddr.i, %if.then.i ], [ %daddr3.i, %if.else.i ]
  %saddr4.sink.i = phi ptr [ %daddr.i, %if.then.i ], [ %saddr4.i, %if.else.i ]
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipvs, ptr %p, align 4
  %conv.i12.sink.i = trunc i32 %af to i16
  %5 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i12.sink.i, ptr %5, align 2
  %7 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 17, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %daddr3.sink.i, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 500, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %saddr4.sink.i, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 500, ptr %15, align 2
  %17 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 4
  %call = call ptr @ip_vs_conn_in_get(ptr noundef nonnull %p) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %ah_esp_conn_fill_param_proto.exit.if.end12_crit_edge

ah_esp_conn_fill_param_proto.exit.if.end12_crit_edge: ; preds = %ah_esp_conn_fill_param_proto.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body:                                          ; preds = %ah_esp_conn_fill_param_proto.exit
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %21 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call1 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call1)
  %cmp = icmp sgt i32 %call1, 11
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %do.body
  %22 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iph, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i.not, ptr @.str.6, ptr @.str.5
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol, align 2
  %call5 = call ptr @ip_vs_proto_get(i16 noundef zeroext %25) #6
  %name = getelementptr inbounds %struct.ip_vs_protocol, ptr %call5, i32 0, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %saddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp.i = icmp eq i32 %af, 10
  %.str.7..str.8.i = select i1 %cmp.i, ptr @.str.7, ptr @.str.8
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.7..str.8.i, ptr noundef %saddr) #6
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !35

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx.i21 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i22 = sub nsw i32 159, %call3.i
  %call3.i24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i21, i32 noundef %sub.i22, ptr noundef nonnull %.str.7..str.8.i, ptr noundef %daddr) #6
  %len.0.i25 = add nsw i32 %call3.i, 2
  %add5.i26 = add i32 %len.0.i25, %call3.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i26)
  %cmp7.i27 = icmp ugt i32 %add5.i26, 161
  br i1 %cmp7.i27, label %do.body10.i28, label %ip_vs_dbg_addr.exit30, !prof !35

do.body10.i28:                                    ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

ip_vs_dbg_addr.exit30:                            ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %cond, ptr noundef %27, ptr noundef nonnull %ip_vs_dbg_buf, ptr noundef %arrayidx.i21) #9
  br label %if.end

if.end:                                           ; preds = %ip_vs_dbg_addr.exit30, %do.body.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %ah_esp_conn_fill_param_proto.exit.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ah_esp_conn_out_get(ptr noundef %ipvs, i32 noundef %af, ptr nocapture noundef readnone %skb, ptr noundef %iph) #1 align 64 {
entry:
  %p = alloca %struct.ip_vs_conn_param, align 4
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #6
  %0 = getelementptr inbounds i8, ptr %p, i32 28
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iph, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %if.else.i, !prof !34

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %saddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %daddr.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  br label %ah_esp_conn_fill_param_proto.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %daddr3.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %saddr4.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  br label %ah_esp_conn_fill_param_proto.exit

ah_esp_conn_fill_param_proto.exit:                ; preds = %if.else.i, %if.then.i
  %daddr3.sink.i = phi ptr [ %saddr.i, %if.then.i ], [ %daddr3.i, %if.else.i ]
  %saddr4.sink.i = phi ptr [ %daddr.i, %if.then.i ], [ %saddr4.i, %if.else.i ]
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipvs, ptr %p, align 4
  %conv.i12.sink.i = trunc i32 %af to i16
  %5 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i12.sink.i, ptr %5, align 2
  %7 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 17, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %daddr3.sink.i, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 500, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %saddr4.sink.i, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 500, ptr %15, align 2
  %17 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 7
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 4
  %call = call ptr @ip_vs_conn_out_get(ptr noundef nonnull %p) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %ah_esp_conn_fill_param_proto.exit.if.end12_crit_edge

ah_esp_conn_fill_param_proto.exit.if.end12_crit_edge: ; preds = %ah_esp_conn_fill_param_proto.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body:                                          ; preds = %ah_esp_conn_fill_param_proto.exit
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  %21 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call1 = call i32 @ip_vs_get_debug_level() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call1)
  %cmp = icmp sgt i32 %call1, 11
  br i1 %cmp, label %do.end, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %do.body
  %22 = ptrtoint ptr %iph to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iph, align 4
  %and.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.i.not, ptr @.str.6, ptr @.str.5
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %24 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol, align 2
  %call5 = call ptr @ip_vs_proto_get(i16 noundef zeroext %25) #6
  %name = getelementptr inbounds %struct.ip_vs_protocol, ptr %call5, i32 0, i32 1
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  %saddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %af)
  %cmp.i = icmp eq i32 %af, 10
  %.str.7..str.8.i = select i1 %cmp.i, ptr @.str.7, ptr @.str.8
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ip_vs_dbg_buf, i32 noundef 160, ptr noundef nonnull %.str.7..str.8.i, ptr noundef %saddr) #6
  %len.0.i = add i32 %call3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %len.0.i)
  %cmp7.i = icmp ugt i32 %len.0.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !35

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  %daddr = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %arrayidx.i21 = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %len.0.i
  %sub.i22 = sub nsw i32 159, %call3.i
  %call3.i24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx.i21, i32 noundef %sub.i22, ptr noundef nonnull %.str.7..str.8.i, ptr noundef %daddr) #6
  %len.0.i25 = add nsw i32 %call3.i, 2
  %add5.i26 = add i32 %len.0.i25, %call3.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i26)
  %cmp7.i27 = icmp ugt i32 %add5.i26, 161
  br i1 %cmp7.i27, label %do.body10.i28, label %ip_vs_dbg_addr.exit30, !prof !35

do.body10.i28:                                    ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

ip_vs_dbg_addr.exit30:                            ; preds = %ip_vs_dbg_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond, ptr noundef %27, ptr noundef nonnull %ip_vs_dbg_buf, ptr noundef %arrayidx.i21) #9
  br label %if.end

if.end:                                           ; preds = %ip_vs_dbg_addr.exit30, %do.body.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %ah_esp_conn_fill_param_proto.exit.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_vs_tcpudp_debug_packet(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_in_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_get(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_conn_out_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_proto_ah_esp.c", i32 117, i32 12}
!2 = !{ptr @ip_vs_protocol_ah, !3, !"ip_vs_protocol_ah", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_proto_ah_esp.c", i32 116, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_proto_ah_esp.c", i32 139, i32 12}
!6 = !{ptr @ip_vs_protocol_esp, !7, !"ip_vs_protocol_esp", i1 false, i1 false}
!7 = !{!"../net/netfilter/ipvs/ip_vs_proto_ah_esp.c", i32 138, i32 23}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/ipvs/ip_vs_proto_ah_esp.c", i32 68, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ah_esp_conn_in_get._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ah_esp_conn_in_get._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netfilter/ipvs/ip_vs_proto_ah_esp.c", i32 90, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ah_esp_conn_out_get._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ah_esp_conn_out_get._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 2158032888, i64 2158033372, i64 2158032925, i64 2158032981, i64 2158033015, i64 2158033039, i64 2158033080, i64 2158033101, i64 2158033129, i64 2158033163}
