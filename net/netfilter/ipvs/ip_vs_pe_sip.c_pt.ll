; ModuleID = '/llk/IR_all_yes/net/netfilter/ipvs/ip_vs_pe_sip.c_pt.bc'
source_filename = "../net/netfilter/ipvs/ip_vs_pe_sip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_vs_pe = type { %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.ip_vs_conn_param = type { ptr, ptr, ptr, i16, i16, i16, i16, ptr, ptr, i8 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }

@ip_vs_sip_pe = internal global { %struct.ip_vs_pe, [56 x i8] } { %struct.ip_vs_pe { %struct.list_head { ptr @ip_vs_sip_pe, ptr @ip_vs_sip_pe }, ptr @.str, %struct.atomic_t zeroinitializer, ptr null, ptr @ip_vs_sip_fill_param, ptr @ip_vs_sip_ct_match, ptr @ip_vs_sip_hashkey_raw, ptr @ip_vs_sip_show_pe_data, ptr @ip_vs_sip_conn_out }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ip_vs_pe_sip__588_185_ip_vs_sip_init6 = internal global ptr @ip_vs_sip_init, section ".initcall6.init", align 4
@__exitcall_ip_vs_sip_cleanup = internal global ptr @ip_vs_sip_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file589 = internal constant [50 x i8] c"ip_vs_pe_sip.file=net/netfilter/ipvs/ip_vs_pe_sip\00", section ".modinfo", align 1
@__UNIQUE_ID_license590 = internal constant [25 x i8] c"ip_vs_pe_sip.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sip\00", [28 x i8] zeroinitializer }, align 32
@get_callid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017IPVS: SIP callid %s (%d bytes)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get_callid\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/netfilter/ipvs/ip_vs_pe_sip.c\00", [62 x i8] zeroinitializer }, align 32
@get_callid._entry_ptr = internal global ptr @get_callid._entry, section ".printk_index", align 4
@ip_vs_sip_ct_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017IPVS: SIP template match %s %s->%s:%d %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_vs_sip_ct_match\00", [45 x i8] zeroinitializer }, align 32
@ip_vs_sip_ct_match._entry_ptr = internal global ptr @ip_vs_sip_ct_match._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hit\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"not hit\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%pI6c]\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 13]
@__sancov_gen_cov_switch_values.10 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"ip_vs_sip_pe\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 161, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 163, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 60, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private constant [37 x i8] c"../net/netfilter/ipvs/ip_vs_pe_sip.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 126, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 196, i32 46 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"../include/net/ip_vs.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 200, i32 46 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_file589, ptr @__UNIQUE_ID_license590, ptr @__exitcall_ip_vs_sip_cleanup, ptr @__initcall__kmod_ip_vs_pe_sip__588_185_ip_vs_sip_init6, ptr @get_callid._entry, ptr @get_callid._entry_ptr, ptr @ip_vs_sip_cleanup, ptr @ip_vs_sip_ct_match._entry, ptr @ip_vs_sip_ct_match._entry_ptr, ptr @ip_vs_sip_pe, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sip_pe to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_callid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip_vs_sip_ct_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ip_vs_sip_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_ip_vs_pe(ptr noundef nonnull @ip_vs_sip_pe) #10
  tail call void @synchronize_rcu() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_ip_vs_pe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_sip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_ip_vs_pe(ptr noundef nonnull @ip_vs_sip_pe) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_sip_fill_param(ptr nocapture noundef %p, ptr noundef %skb) #2 align 64 {
entry:
  %ip_vs_dbg_buf.i = alloca [160 x i8], align 1
  %_iph.i.i = alloca %struct.ipv6hdr, align 4
  %_iph15.i.i = alloca %struct.iphdr, align 4
  %iph = alloca %struct.ip_vs_iphdr, align 4
  %matchoff = alloca i32, align 4
  %matchlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %iph) #10
  %0 = getelementptr inbounds i8, ptr %iph, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchoff) #10
  %2 = ptrtoint ptr %matchoff to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %matchoff, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matchlen) #10
  %3 = ptrtoint ptr %matchlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %matchlen, align 4, !annotation !37
  %af = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %af, align 2
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %9 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %12 = ptrtoint ptr %iph to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %iph, align 4
  %off.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 1
  %13 = ptrtoint ptr %off.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub.ptr.sub.i.i, ptr %off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %5)
  %cmp.i.i = icmp eq i16 %5, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph.i.i) #10
  %14 = call ptr @memset(ptr %_iph.i.i, i32 255, i32 40)
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i.i, align 8
  %19 = add i32 %sub.ptr.sub.i.i, %18
  %sub.i4.i.i.i = sub i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 40
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !38

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull %_iph.i.i, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.cleanup.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

skb_header_pointer.exit.i.i:                      ; preds = %if.then.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %11, i32 %sub.ptr.sub.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i22.i.i = phi ptr [ %add.ptr.i.i.i.i, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %_iph.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %saddr.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %saddr3.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i22.i.i, i32 0, i32 5
  %20 = call ptr @memcpy(ptr %saddr.i.i, ptr %saddr3.i.i, i32 16)
  %daddr.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %daddr4.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i22.i.i, i32 0, i32 6
  %21 = call ptr @memcpy(ptr %daddr.i.i, ptr %daddr4.i.i, i32 16)
  %len.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %22 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.ptr.sub.i.i, ptr %len.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 5
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags.i.i, align 4
  %fragoffs.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %call7.i.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef %len.i.i, i32 noundef -1, ptr noundef %fragoffs.i.i, ptr noundef %flags.i.i) #10
  %conv.i.i = trunc i32 %call7.i.i to i16
  %protocol.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %24 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i, ptr %protocol.i.i, align 2
  %sext.mask.i.i = and i32 %call7.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask.i.i)
  %cmp10.not.i.i = icmp eq i32 %sext.mask.i.i, 0
  br i1 %cmp10.not.i.i, label %cleanup.i.i, label %if.end.i.i.cleanup.thread.i.i_crit_edge

if.end.i.i.cleanup.thread.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %if.end.i.i.cleanup.thread.i.i_crit_edge, %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph.i.i) #10
  br label %cleanup

cleanup.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph.i.i) #10
  br label %lor.lhs.false

if.else.i.i:                                      ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph15.i.i) #10
  %len.i.i2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = call ptr @memset(ptr %_iph15.i.i, i32 255, i32 20)
  %26 = ptrtoint ptr %len.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i2.i.i, align 4
  %data_len.i.i3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i3.i.i, align 8
  %30 = add i32 %sub.ptr.sub.i.i, %29
  %sub.i4.i4.i.i = sub i32 %27, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i4.i.i)
  %cmp.not.i.i5.i.i = icmp slt i32 %sub.i4.i4.i.i, 20
  br i1 %cmp.not.i.i5.i.i, label %if.end.i.i10.i.i, label %skb_header_pointer.exit16.i.i, !prof !38

if.end.i.i10.i.i:                                 ; preds = %if.else.i.i
  %tobool2.not.i.i9.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i9.i.i, label %if.end.i.i10.i.i.cleanup31.thread.i.i_crit_edge, label %lor.lhs.false.i.i14.i.i

if.end.i.i10.i.i.cleanup31.thread.i.i_crit_edge:  ; preds = %if.end.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31.thread.i.i

lor.lhs.false.i.i14.i.i:                          ; preds = %if.end.i.i10.i.i
  %call.i.i11.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull %_iph15.i.i, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i.i)
  %cmp3.i.i12.i.i = icmp slt i32 %call.i.i11.i.i, 0
  br i1 %cmp3.i.i12.i.i, label %lor.lhs.false.i.i14.i.i.cleanup31.thread.i.i_crit_edge, label %lor.lhs.false.i.i14.i.i.cleanup31.i.i_crit_edge

lor.lhs.false.i.i14.i.i.cleanup31.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31.i.i

lor.lhs.false.i.i14.i.i.cleanup31.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31.thread.i.i

skb_header_pointer.exit16.i.i:                    ; preds = %if.else.i.i
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %11, i32 %sub.ptr.sub.i.i
  %tobool18.not.i.i = icmp eq ptr %add.ptr.i.i7.i.i, null
  br i1 %tobool18.not.i.i, label %skb_header_pointer.exit16.i.i.cleanup31.thread.i.i_crit_edge, label %skb_header_pointer.exit16.i.i.cleanup31.i.i_crit_edge

skb_header_pointer.exit16.i.i.cleanup31.i.i_crit_edge: ; preds = %skb_header_pointer.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31.i.i

skb_header_pointer.exit16.i.i.cleanup31.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31.thread.i.i

cleanup31.thread.i.i:                             ; preds = %skb_header_pointer.exit16.i.i.cleanup31.thread.i.i_crit_edge, %lor.lhs.false.i.i14.i.i.cleanup31.thread.i.i_crit_edge, %if.end.i.i10.i.i.cleanup31.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph15.i.i) #10
  br label %cleanup

cleanup31.i.i:                                    ; preds = %skb_header_pointer.exit16.i.i.cleanup31.i.i_crit_edge, %lor.lhs.false.i.i14.i.i.cleanup31.i.i_crit_edge
  %retval.0.i.i1533.i.i = phi ptr [ %add.ptr.i.i7.i.i, %skb_header_pointer.exit16.i.i.cleanup31.i.i_crit_edge ], [ %_iph15.i.i, %lor.lhs.false.i.i14.i.i.cleanup31.i.i_crit_edge ]
  %31 = ptrtoint ptr %retval.0.i.i1533.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %retval.0.i.i1533.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %32 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %32 to i32
  %add.i.i = add i32 %sub.ptr.sub.i.i, %mul.i.i
  %len22.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %33 = ptrtoint ptr %len22.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add.i.i, ptr %len22.i.i, align 4
  %fragoffs23.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %34 = ptrtoint ptr %fragoffs23.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %fragoffs23.i.i, align 4
  %protocol24.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i1533.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %protocol24.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %protocol24.i.i, align 1
  %conv25.i.i = zext i8 %36 to i16
  %protocol26.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %37 = ptrtoint ptr %protocol26.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv25.i.i, ptr %protocol26.i.i, align 2
  %saddr27.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i1533.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %saddr27.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %saddr27.i.i, align 4
  %saddr28.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %40 = ptrtoint ptr %saddr28.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %saddr28.i.i, align 4
  %daddr29.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i1533.i.i, i32 0, i32 9
  %41 = ptrtoint ptr %daddr29.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %daddr29.i.i, align 4
  %daddr30.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %43 = ptrtoint ptr %daddr30.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %daddr30.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph15.i.i) #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup31.i.i, %cleanup.i.i
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %44 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %45)
  %cmp.not = icmp eq i16 %45, 17
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %add = add i32 %47, 8
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %49)
  %cmp4.not = icmp ult i32 %add, %49
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %50 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i.not.i = icmp eq i32 %51, 0
  br i1 %tobool.i.not.i, label %if.end7.if.end12_crit_edge, label %cond.true.i

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cond.true.i:                                      ; preds = %if.end7
  %call.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %51) #10
  %tobool.not.i.i43 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i43, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end12_crit_edge

cond.true.i.if.end12_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %cond.true.i.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %53, i32 %add
  %54 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len3, align 4
  %sub = sub i32 %55, %add
  %call8.i = call i32 @ct_sip_get_header(ptr noundef null, ptr noundef %add.ptr, i32 noundef 0, i32 noundef %sub, i32 noundef 8, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp sgt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end12.while.end.i_crit_edge, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  br label %if.end.i

if.end12.while.end.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge
  %call11.i = phi i32 [ %call.i, %cleanup.i.if.end.i_crit_edge ], [ %call8.i, %if.end12.if.end.i_crit_edge ]
  %dataoff.addr.010.i = phi i32 [ %add.i, %cleanup.i.if.end.i_crit_edge ], [ 0, %if.end12.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %cleanup.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.i:                                        ; preds = %if.end.i
  %56 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %matchoff, align 4
  %add.i = add i32 %57, %dataoff.addr.010.i
  %call.i = call i32 @ct_sip_get_header(ptr noundef null, ptr noundef %add.ptr, i32 noundef %add.i, i32 noundef %sub, i32 noundef 8, ptr noundef nonnull %matchoff, ptr noundef nonnull %matchlen) #10
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end12.while.end.i_crit_edge
  %58 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %matchlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %59)
  %cmp3.i = icmp ugt i32 %59, 255
  br i1 %cmp3.i, label %while.end.i.cleanup_crit_edge, label %if.end5.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %while.end.i
  %60 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %matchoff, align 4
  %add6.i = add i32 %61, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %sub)
  %cmp7.i = icmp eq i32 %add6.i, %sub
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %61
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %59
  %62 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr10.i, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i8 %63, label %if.end9.i.cleanup_crit_edge [
    i8 13, label %if.end9.i.do.body.i_crit_edge
    i8 10, label %if.end9.i.do.body.i_crit_edge53
  ]

if.end9.i.do.body.i_crit_edge53:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end9.i.do.body.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end9.i.do.body.i_crit_edge, %if.end9.i.do.body.i_crit_edge53
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #10
  %65 = call ptr @memset(ptr %ip_vs_dbg_buf.i, i32 255, i32 160)
  %call20.i = call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call20.i)
  %cmp21.i = icmp sgt i32 %call20.i, 8
  br i1 %cmp21.i, label %do.end.i, label %do.body.i.if.end17_crit_edge

do.body.i.if.end17_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %matchoff, align 4
  %add.ptr25.i = getelementptr i8, ptr %add.ptr, i32 %67
  %68 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %matchlen, align 4
  %70 = call i32 @llvm.umin.i32(i32 %69, i32 64) #10
  %71 = call ptr @memcpy(ptr %ip_vs_dbg_buf.i, ptr %add.ptr25.i, i32 %70)
  %arrayidx.i.i = getelementptr i8, ptr %ip_vs_dbg_buf.i, i32 %70
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %arrayidx.i.i, align 1
  %add.ptr11.i.i = getelementptr inbounds i8, ptr %ip_vs_dbg_buf.i, i32 1
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %add.ptr11.i.i, i32 noundef %69) #13
  br label %if.end17

if.end17:                                         ; preds = %do.end.i, %do.body.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf.i) #10
  %73 = ptrtoint ptr %matchoff to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %matchoff, align 4
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %74
  %75 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %matchlen, align 4
  %call19 = call ptr @kmemdup(ptr noundef %add.ptr18, i32 noundef %76, i32 noundef 2592) #10
  %pe_data = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %77 = ptrtoint ptr %pe_data to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call19, ptr %pe_data, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %matchlen to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %matchlen, align 4
  %conv24 = trunc i32 %79 to i8
  %pe_data_len = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 9
  %80 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv24, ptr %pe_data_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end17.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %while.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cleanup31.thread.i.i, %cleanup.thread.i.i
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ -12, %cond.true.i.cleanup_crit_edge ], [ -22, %cleanup.thread.i.i ], [ -22, %cleanup31.thread.i.i ], [ -22, %while.end.i.cleanup_crit_edge ], [ -22, %if.end5.i.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchlen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matchoff) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %iph) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ip_vs_sip_ct_match(ptr nocapture noundef readonly %p, ptr noundef %ct) #2 align 64 {
entry:
  %ip_vs_dbg_buf = alloca [160 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %af = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 4
  %0 = ptrtoint ptr %af to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %af, align 2
  %af1 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %af1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %af1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp = icmp eq i16 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %caddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %caddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caddr, align 4
  %caddr6 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp.i = icmp eq i16 %1, 10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %caddr6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caddr6, align 4
  br i1 %cmp.i, label %if.then.i, label %ip_vs_addr_equal.exit

if.then.i:                                        ; preds = %land.lhs.true
  %xor.i.i = xor i32 %9, %7
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.ip_vs_conn, ptr %ct, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %13, %11
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.ip_vs_conn, ptr %ct, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %17, %15
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.ip_vs_conn, ptr %ct, i32 0, i32 5, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %21, %19
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true7, label %if.then.i.do.body_crit_edge

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

ip_vs_addr_equal.exit:                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp1.i = icmp eq i32 %7, %9
  br i1 %cmp1.i, label %land.lhs.true7.thread, label %ip_vs_addr_equal.exit.do.body_crit_edge

ip_vs_addr_equal.exit.do.body_crit_edge:          ; preds = %ip_vs_addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true7:                                   ; preds = %if.then.i
  %protocol = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp9 = icmp eq i16 %23, 0
  br i1 %cmp9, label %land.lhs.true7.cond.end.thread_crit_edge, label %if.then.i113

land.lhs.true7.cond.end.thread_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.thread

land.lhs.true7.thread:                            ; preds = %ip_vs_addr_equal.exit
  %protocol129 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %24 = ptrtoint ptr %protocol129 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol129, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp9130 = icmp eq i16 %25, 0
  br i1 %cmp9130, label %land.lhs.true7.thread.cond.end.thread_crit_edge, label %land.lhs.true7.thread.ip_vs_addr_equal.exit118_crit_edge

land.lhs.true7.thread.ip_vs_addr_equal.exit118_crit_edge: ; preds = %land.lhs.true7.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %ip_vs_addr_equal.exit118

land.lhs.true7.thread.cond.end.thread_crit_edge:  ; preds = %land.lhs.true7.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %land.lhs.true7.thread.cond.end.thread_crit_edge, %land.lhs.true7.cond.end.thread_crit_edge
  br label %ip_vs_addr_equal.exit118

if.then.i113:                                     ; preds = %land.lhs.true7
  %vaddr = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %26 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vaddr, align 4
  %vaddr13 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 6
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = ptrtoint ptr %vaddr13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vaddr13, align 4
  %xor.i.i99 = xor i32 %31, %29
  %arrayidx4.i.i100 = getelementptr [4 x i32], ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx4.i.i100 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i.i100, align 4
  %arrayidx6.i.i101 = getelementptr %struct.ip_vs_conn, ptr %ct, i32 0, i32 6, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx6.i.i101 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i.i101, align 4
  %xor7.i.i102 = xor i32 %35, %33
  %or.i.i103 = or i32 %xor7.i.i102, %xor.i.i99
  %arrayidx9.i.i104 = getelementptr [4 x i32], ptr %27, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx9.i.i104 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx9.i.i104, align 4
  %arrayidx11.i.i105 = getelementptr %struct.ip_vs_conn, ptr %ct, i32 0, i32 6, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx11.i.i105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx11.i.i105, align 4
  %xor12.i.i106 = xor i32 %39, %37
  %or13.i.i107 = or i32 %or.i.i103, %xor12.i.i106
  %arrayidx15.i.i108 = getelementptr [4 x i32], ptr %27, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx15.i.i108 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15.i.i108, align 4
  %arrayidx17.i.i109 = getelementptr %struct.ip_vs_conn, ptr %ct, i32 0, i32 6, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx17.i.i109 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx17.i.i109, align 4
  %xor18.i.i110 = xor i32 %43, %41
  %or19.i.i111 = or i32 %or13.i.i107, %xor18.i.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i111)
  %cmp.i.i112 = icmp eq i32 %or19.i.i111, 0
  br i1 %cmp.i.i112, label %if.then.i113.land.lhs.true16_crit_edge, label %if.then.i113.do.body_crit_edge

if.then.i113.do.body_crit_edge:                   ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then.i113.land.lhs.true16_crit_edge:           ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true16

ip_vs_addr_equal.exit118:                         ; preds = %cond.end.thread, %land.lhs.true7.thread.ip_vs_addr_equal.exit118_crit_edge
  %44 = phi i16 [ 0, %cond.end.thread ], [ %25, %land.lhs.true7.thread.ip_vs_addr_equal.exit118_crit_edge ]
  %vaddr126 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %45 = ptrtoint ptr %vaddr126 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vaddr126, align 4
  %vaddr13127 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %49 = ptrtoint ptr %vaddr13127 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vaddr13127, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp1.i114 = icmp eq i32 %48, %50
  br i1 %cmp1.i114, label %ip_vs_addr_equal.exit118.land.lhs.true16_crit_edge, label %ip_vs_addr_equal.exit118.do.body_crit_edge

ip_vs_addr_equal.exit118.do.body_crit_edge:       ; preds = %ip_vs_addr_equal.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

ip_vs_addr_equal.exit118.land.lhs.true16_crit_edge: ; preds = %ip_vs_addr_equal.exit118
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %ip_vs_addr_equal.exit118.land.lhs.true16_crit_edge, %if.then.i113.land.lhs.true16_crit_edge
  %51 = phi i16 [ %23, %if.then.i113.land.lhs.true16_crit_edge ], [ %44, %ip_vs_addr_equal.exit118.land.lhs.true16_crit_edge ]
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 3
  %52 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vport, align 4
  %vport18 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %54 = ptrtoint ptr %vport18 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vport18, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp20 = icmp eq i16 %53, %55
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true16.do.body_crit_edge

land.lhs.true16.do.body_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 8
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags, align 4
  %and = and i32 %57, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.lhs.true22.do.body_crit_edge, label %land.lhs.true24

land.lhs.true22.do.body_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %protocol25 = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 9
  %58 = ptrtoint ptr %protocol25 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %protocol25, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %51)
  %cmp29 = icmp eq i16 %59, %51
  br i1 %cmp29, label %land.lhs.true31, label %land.lhs.true24.do.body_crit_edge

land.lhs.true24.do.body_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true31:                                  ; preds = %land.lhs.true24
  %pe_data = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 30
  %60 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pe_data, align 4
  %tobool32.not = icmp eq ptr %61, null
  br i1 %tobool32.not, label %land.lhs.true31.do.body_crit_edge, label %land.lhs.true33

land.lhs.true31.do.body_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true33:                                  ; preds = %land.lhs.true31
  %pe_data_len = getelementptr inbounds %struct.ip_vs_conn, ptr %ct, i32 0, i32 31
  %62 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pe_data_len, align 4
  %pe_data_len35 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 9
  %64 = ptrtoint ptr %pe_data_len35 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pe_data_len35, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp37 = icmp eq i8 %63, %65
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true33.do.body_crit_edge

land.lhs.true33.do.body_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true39:                                  ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  %conv36 = zext i8 %63 to i32
  %pe_data41 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %66 = ptrtoint ptr %pe_data41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pe_data41, align 4
  %bcmp = tail call i32 @bcmp(ptr nonnull %61, ptr %67, i32 %conv36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool45.not = icmp eq i32 %bcmp, 0
  br label %do.body

do.body:                                          ; preds = %land.lhs.true39, %land.lhs.true33.do.body_crit_edge, %land.lhs.true31.do.body_crit_edge, %land.lhs.true24.do.body_crit_edge, %land.lhs.true22.do.body_crit_edge, %land.lhs.true16.do.body_crit_edge, %ip_vs_addr_equal.exit118.do.body_crit_edge, %if.then.i113.do.body_crit_edge, %ip_vs_addr_equal.exit.do.body_crit_edge, %if.then.i.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0.off0 = phi i1 [ false, %land.lhs.true33.do.body_crit_edge ], [ false, %land.lhs.true31.do.body_crit_edge ], [ false, %land.lhs.true24.do.body_crit_edge ], [ false, %land.lhs.true22.do.body_crit_edge ], [ false, %land.lhs.true16.do.body_crit_edge ], [ false, %ip_vs_addr_equal.exit118.do.body_crit_edge ], [ false, %ip_vs_addr_equal.exit.do.body_crit_edge ], [ false, %entry.do.body_crit_edge ], [ %tobool45.not, %land.lhs.true39 ], [ false, %if.then.i.do.body_crit_edge ], [ false, %if.then.i113.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #10
  %68 = call ptr @memset(ptr %ip_vs_dbg_buf, i32 255, i32 160)
  %call46 = tail call i32 @ip_vs_get_debug_level() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call46)
  %cmp47 = icmp sgt i32 %call46, 8
  br i1 %cmp47, label %do.end, label %do.body.if.end69_crit_edge

do.body.if.end69_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

do.end:                                           ; preds = %do.body
  %protocol51 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 5
  %69 = ptrtoint ptr %protocol51 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %protocol51, align 4
  %conv52 = zext i16 %70 to i32
  %call53 = tail call ptr @ip_vs_proto_name(i32 noundef %conv52) #10
  %pe_data54 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %71 = ptrtoint ptr %pe_data54 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pe_data54, align 4
  %pe_data_len55 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 9
  %73 = ptrtoint ptr %pe_data_len55 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pe_data_len55, align 4
  %75 = tail call i8 @llvm.umin.i8(i8 %74, i8 64)
  %76 = zext i8 %75 to i32
  %77 = call ptr @memcpy(ptr %ip_vs_dbg_buf, ptr %72, i32 %76)
  %arrayidx.i = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %76
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %arrayidx.i, align 1
  %add8.i = add nuw nsw i32 %76, 1
  %add.ptr10.i = getelementptr i8, ptr %ip_vs_dbg_buf, i32 %add8.i
  %79 = ptrtoint ptr %af1 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %af1, align 2
  %vaddr61 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 2
  %81 = ptrtoint ptr %vaddr61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vaddr61, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %80)
  %cmp.i119 = icmp eq i16 %80, 10
  %sub.i = sub nuw nsw i32 159, %76
  %.str.8..str.9.i = select i1 %cmp.i119, ptr @.str.8, ptr @.str.9
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr10.i, i32 noundef %sub.i, ptr noundef nonnull %.str.8..str.9.i, ptr noundef %82) #10
  %len.0.i = add nuw nsw i32 %76, 2
  %add5.i = add i32 %len.0.i, %call3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 161, i32 %add5.i)
  %cmp7.i = icmp ugt i32 %add5.i, 161
  br i1 %cmp7.i, label %do.body10.i, label %ip_vs_dbg_addr.exit, !prof !38

do.body10.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/ip_vs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #10, !srcloc !39
  unreachable

ip_vs_dbg_addr.exit:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr11.i = getelementptr inbounds i8, ptr %ip_vs_dbg_buf, i32 1
  %vport63 = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 4
  %83 = ptrtoint ptr %vport63 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vport63, align 2
  %conv64 = zext i16 %84 to i32
  %cond67 = select i1 %ret.0.off0, ptr @.str.6, ptr @.str.7
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %call53, ptr noundef %add.ptr11.i, ptr noundef %add.ptr10.i, i32 noundef %conv64, ptr noundef nonnull %cond67) #13
  br label %if.end69

if.end69:                                         ; preds = %ip_vs_dbg_addr.exit, %do.body.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ip_vs_dbg_buf) #10
  ret i1 %ret.0.off0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_vs_sip_hashkey_raw(ptr nocapture noundef readonly %p, i32 noundef %initval, i1 noundef zeroext %inverse) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pe_data = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pe_data, align 4
  %pe_data_len = getelementptr inbounds %struct.ip_vs_conn_param, ptr %p, i32 0, i32 9
  %2 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pe_data_len, align 4
  %conv = zext i8 %3 to i32
  %add.i = add i32 %initval, -559038737
  %add1.i = add i32 %add.i, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %3)
  %cmp213.i = icmp ugt i8 %3, 12
  br i1 %cmp213.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.0218.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %c.0217.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %b.0216.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %a.0215.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add1.i, %entry.while.body.i_crit_edge ]
  %length.addr.0214.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %entry.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %k.0218.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %k.0218.i, align 1
  %add2.i = add i32 %5, %a.0215.i
  %add.ptr.i = getelementptr i8, ptr %k.0218.i, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr.i, align 1
  %add4.i = add i32 %7, %b.0216.i
  %add.ptr5.i = getelementptr i8, ptr %k.0218.i, i32 8
  %8 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr5.i, align 1
  %add7.i = add i32 %9, %c.0217.i
  %sub.i = sub i32 %add2.i, %add7.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #10
  %xor.i = xor i32 %sub.i, %or.i.i
  %add9.i = add i32 %add7.i, %add4.i
  %sub10.i = sub i32 %add4.i, %xor.i
  %or.i201.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #10
  %xor12.i = xor i32 %sub10.i, %or.i201.i
  %add13.i = add i32 %xor.i, %add9.i
  %sub14.i = sub i32 %add9.i, %xor12.i
  %or.i202.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #10
  %xor16.i = xor i32 %sub14.i, %or.i202.i
  %add17.i = add i32 %xor12.i, %add13.i
  %sub18.i = sub i32 %add13.i, %xor16.i
  %or.i203.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #10
  %xor20.i = xor i32 %sub18.i, %or.i203.i
  %add21.i = add i32 %xor16.i, %add17.i
  %sub22.i = sub i32 %add17.i, %xor20.i
  %or.i204.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #10
  %xor24.i = xor i32 %sub22.i, %or.i204.i
  %add25.i = add i32 %xor20.i, %add21.i
  %sub26.i = sub i32 %add21.i, %xor24.i
  %or.i205.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #10
  %xor28.i = xor i32 %sub26.i, %or.i205.i
  %add29.i = add i32 %xor24.i, %add25.i
  %sub30.i = add i32 %length.addr.0214.i, -12
  %add.ptr31.i = getelementptr i8, ptr %k.0218.i, i32 12
  %cmp.i = icmp ugt i32 %sub30.i, 12
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %conv, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add1.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ]
  %k.0.lcssa.i = phi ptr [ %1, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ]
  %10 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ]

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb81.i

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb76.i

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb71.i

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb66.i

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62.i

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb57.i

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb52.i

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb47.i

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb43.i

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb38.i

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb33.i

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %jhash.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add32.i = add i32 %shl.i, %c.0.lcssa.i
  br label %sw.bb33.i

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ]
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10
  %13 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %14 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 16
  %add37.i = add i32 %shl36.i, %c.1.i
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ]
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9
  %15 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %16 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 8
  %add42.i = add i32 %shl41.i, %c.2.i
  br label %sw.bb43.i

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ]
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8
  %17 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %18 to i32
  %add46.i = add i32 %c.3.i, %conv45.i
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ]
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7
  %19 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %20 to i32
  %shl50.i = shl nuw i32 %conv49.i, 24
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i
  br label %sw.bb52.i

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ]
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ]
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6
  %21 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %22 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %add56.i = add i32 %shl55.i, %b.1.i
  br label %sw.bb57.i

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ]
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ]
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5
  %23 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %24 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 8
  %add61.i = add i32 %shl60.i, %b.2.i
  br label %sw.bb62.i

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ]
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ]
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4
  %25 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %26 to i32
  %add65.i = add i32 %b.3.i, %conv64.i
  br label %sw.bb66.i

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ]
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ]
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3
  %27 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx67.i, align 1
  %conv68.i = zext i8 %28 to i32
  %shl69.i = shl nuw i32 %conv68.i, 24
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i
  br label %sw.bb71.i

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ]
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ]
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ]
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2
  %29 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %30 to i32
  %shl74.i = shl nuw nsw i32 %conv73.i, 16
  %add75.i = add i32 %shl74.i, %a.1.i
  br label %sw.bb76.i

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ]
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ]
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ]
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1
  %31 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %32 to i32
  %shl79.i = shl nuw nsw i32 %conv78.i, 8
  %add80.i = add i32 %shl79.i, %a.2.i
  br label %sw.bb81.i

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ]
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ]
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ]
  %33 = ptrtoint ptr %k.0.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %k.0.lcssa.i, align 1
  %conv83.i = zext i8 %34 to i32
  %add84.i = add i32 %a.3.i, %conv83.i
  %xor85.i = xor i32 %c.11.i, %b.7.i
  %or.i206.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #10
  %sub87.i = sub i32 %xor85.i, %or.i206.i
  %xor88.i = xor i32 %add84.i, %sub87.i
  %or.i207.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #10
  %sub90.i = sub i32 %xor88.i, %or.i207.i
  %xor91.i = xor i32 %sub90.i, %b.7.i
  %or.i208.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #10
  %sub93.i = sub i32 %xor91.i, %or.i208.i
  %xor94.i = xor i32 %sub93.i, %sub87.i
  %or.i209.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #10
  %sub96.i = sub i32 %xor94.i, %or.i209.i
  %xor97.i = xor i32 %sub96.i, %sub90.i
  %or.i210.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #10
  %sub99.i = sub i32 %xor97.i, %or.i210.i
  %xor100.i = xor i32 %sub99.i, %sub93.i
  %or.i211.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #10
  %sub102.i = sub i32 %xor100.i, %or.i211.i
  %xor103.i = xor i32 %sub102.i, %sub96.i
  %or.i212.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #10
  %sub105.i = sub i32 %xor103.i, %or.i212.i
  br label %jhash.exit

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ]
  ret i32 %c.12.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip_vs_sip_show_pe_data(ptr nocapture noundef readonly %cp, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pe_data = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 30
  %0 = ptrtoint ptr %pe_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pe_data, align 4
  %pe_data_len = getelementptr inbounds %struct.ip_vs_conn, ptr %cp, i32 0, i32 31
  %2 = ptrtoint ptr %pe_data_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pe_data_len, align 4
  %conv = zext i8 %3 to i32
  %4 = call ptr @memcpy(ptr %buf, ptr %1, i32 %conv)
  %5 = load i8, ptr %pe_data_len, align 4
  %conv2 = zext i8 %5 to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ip_vs_sip_conn_out(ptr noundef %svc, ptr noundef %dest, ptr noundef %skb, ptr noundef %iph, i16 noundef zeroext %dport, i16 noundef zeroext %cport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %1)
  %cmp = icmp eq i16 %1, 17
  br i1 %cmp, label %if.then, label %entry.return_crit_edge, !prof !40

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @ip_vs_new_conn_out(ptr noundef %svc, ptr noundef %dest, ptr noundef %skb, ptr noundef %iph, i16 noundef zeroext %dport, i16 noundef zeroext %cport) #10
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.then ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_sip_get_header(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_vs_get_debug_level() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_new_conn_out(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_ip_vs_pe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_ip_vs_pe_sip__588_185_ip_vs_sip_init6, !1, !"__initcall__kmod_ip_vs_pe_sip__588_185_ip_vs_sip_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipvs/ip_vs_pe_sip.c", i32 185, i32 1}
!2 = !{ptr @__exitcall_ip_vs_sip_cleanup, !3, !"__exitcall_ip_vs_sip_cleanup", i1 false, i1 false}
!3 = !{!"../net/netfilter/ipvs/ip_vs_pe_sip.c", i32 186, i32 1}
!4 = !{ptr @__UNIQUE_ID_file589, !5, !"__UNIQUE_ID_file589", i1 false, i1 false}
!5 = !{!"../net/netfilter/ipvs/ip_vs_pe_sip.c", i32 187, i32 1}
!6 = !{ptr @__UNIQUE_ID_license590, !5, !"__UNIQUE_ID_license590", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipvs/ip_vs_pe_sip.c", i32 163, i32 12}
!9 = !{ptr @ip_vs_sip_pe, !10, !"ip_vs_sip_pe", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipvs/ip_vs_pe_sip.c", i32 161, i32 24}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipvs/ip_vs_pe_sip.c", i32 60, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @get_callid._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @get_callid._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/ipvs/ip_vs_pe_sip.c", i32 126, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ip_vs_sip_ct_match._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @ip_vs_sip_ct_match._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/net/ip_vs.h", i32 196, i32 46}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/net/ip_vs.h", i32 200, i32 46}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2158033957, i64 2158034441, i64 2158033994, i64 2158034050, i64 2158034084, i64 2158034108, i64 2158034149, i64 2158034170, i64 2158034198, i64 2158034232}
!40 = !{!"branch_weights", i32 2000, i32 1}
