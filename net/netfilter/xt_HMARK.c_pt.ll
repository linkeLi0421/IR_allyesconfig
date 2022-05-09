; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_HMARK.c_pt.bc'
source_filename = "../net/netfilter/xt_HMARK.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.icmphdr = type { i8, i8, i16, %union.anon.218 }
%union.anon.218 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.hmark_tuple = type { i32, i32, %union.hmark_ports, i8 }
%union.hmark_ports = type { i32 }
%struct.xt_action_param = type { %union.anon.195, %union.anon.196, ptr, i32, i16, i8 }
%union.anon.195 = type { ptr }
%union.anon.196 = type { ptr }
%struct.xt_hmark_info = type { %union.nf_inet_addr, %union.nf_inet_addr, %union.hmark_ports, %union.hmark_ports, i32, i16, i32, i32, i32 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.178, %union.anon.179, [48 x i8], %union.anon.180, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.182, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { i64 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, ptr }
%union.anon.182 = type { %struct.anon.183 }
%struct.anon.183 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.184, i32, i32, i32, i16, i16, %union.anon.186, i32, %union.anon.187, %union.anon.188, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.184 = type { i32 }
%union.anon.186 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.221 }
%union.anon.221 = type { [1 x i32] }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.217, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.209 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.209 = type { %union.nf_inet_addr, %union.anon.210, i8, i8 }
%union.anon.210 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.217 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.anon.202 = type { i16, i16 }

@__UNIQUE_ID_file690 = internal constant [37 x i8] c"xt_HMARK.file=net/netfilter/xt_HMARK\00", section ".modinfo", align 1
@__UNIQUE_ID_license691 = internal constant [21 x i8] c"xt_HMARK.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author692 = internal constant [65 x i8] c"xt_HMARK.author=Hans Schillstrom <hans.schillstrom@ericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description693 = internal constant [68 x i8] c"xt_HMARK.description=Xtables: packet marking using hash calculation\00", section ".modinfo", align 1
@__UNIQUE_ID_alias694 = internal constant [25 x i8] c"xt_HMARK.alias=ipt_HMARK\00", section ".modinfo", align 1
@__UNIQUE_ID_alias695 = internal constant [26 x i8] c"xt_HMARK.alias=ip6t_HMARK\00", section ".modinfo", align 1
@hmark_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"HMARK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @hmark_tg_v4, ptr @hmark_tg_check, ptr null, ptr null, ptr null, i32 60, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"HMARK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @hmark_tg_v6, ptr @hmark_tg_check, ptr null, ptr null, ptr null, i32 60, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_HMARK__696_367_hmark_tg_init6 = internal global ptr @hmark_tg_init, section ".initcall6.init", align 4
@__exitcall_hmark_tg_exit = internal global ptr @hmark_tg_exit, section ".exitcall.exit", align 4
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"proto mask must be zero with L3 mode\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"spi-set and port-set can't be combined\00", [57 x i8] zeroinitializer }, align 32
@hmark_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hmark_tg_check = private unnamed_addr constant [15 x i8] c"hmark_tg_check\00", align 1
@hmark_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.hmark_tg_check, ptr @.str.4, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016xt_HMARK: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/netfilter/xt_HMARK.c\00", [39 x i8] zeroinitializer }, align 32
@hmark_tg_check._entry_ptr = internal global ptr @hmark_tg_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 5, i64 11, i64 12]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 8, i64 6, i64 17, i64 33, i64 50, i64 51, i64 132, i64 136]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 8, i64 6, i64 17, i64 33, i64 50, i64 51, i64 132, i64 136]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 310, i32 23 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 327, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [28 x i8] c"../net/netfilter/xt_HMARK.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 332, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias694, ptr @__UNIQUE_ID_alias695, ptr @__UNIQUE_ID_author692, ptr @__UNIQUE_ID_description693, ptr @__UNIQUE_ID_file690, ptr @__UNIQUE_ID_license691, ptr @__exitcall_hmark_tg_exit, ptr @__initcall__kmod_xt_HMARK__696_367_hmark_tg_init6, ptr @hmark_tg_check._entry, ptr @hmark_tg_check._entry_ptr, ptr @hmark_tg_exit, ptr @.str, ptr @.str.1, ptr @hmark_tg_check._rs, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmark_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmark_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hmark_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @xt_unregister_targets(ptr noundef nonnull @hmark_tg_reg, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hmark_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @hmark_tg_reg, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmark_tg_v4(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_ih.i.i = alloca %struct.icmphdr, align 8
  %_ip.i = alloca %struct.iphdr, align 4
  %t = alloca %struct.hmark_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t) #7
  %3 = call ptr @memset(ptr %t, i32 0, i32 16)
  %flags = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @hmark_ct_set_htuple(ptr noundef %skb, ptr noundef nonnull %t, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_ip.i) #7
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = call ptr @memset(ptr %_ip.i, i32 255, i32 20)
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %10 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 %sub.ptr.sub.i.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 6
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protocol.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.i = icmp eq i8 %14, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end10.i_crit_edge

if.else.if.end10.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i:                                        ; preds = %if.else
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %16 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %16 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_ih.i.i) #7
  %17 = ptrtoint ptr %_ih.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %_ih.i.i, align 8
  %add.i.i = add i32 %sub.ptr.sub.i.i, %mul.i
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i.i, align 8
  %22 = add i32 %add.i.i, %21
  %sub.i4.i.i.i = sub i32 %19, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 8
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !38

if.end.i.i.i.i:                                   ; preds = %if.then.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.get_inner_hdr.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.get_inner_hdr.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner_hdr.exit.thread.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i.i, ptr noundef nonnull %_ih.i.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.get_inner_hdr.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge

lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i.i.i.get_inner_hdr.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner_hdr.exit.thread.i

skb_header_pointer.exit.i.i:                      ; preds = %if.then.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 %add.i.i
  %cmp.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %cmp.i.i, label %skb_header_pointer.exit.i.i.get_inner_hdr.exit.thread.i_crit_edge, label %skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge

skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i.i

skb_header_pointer.exit.i.i.get_inner_hdr.exit.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner_hdr.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge, %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge
  %retval.0.i.i20.i.i = phi ptr [ %add.ptr.i.i.i.i, %skb_header_pointer.exit.i.i.lor.lhs.false.i.i_crit_edge ], [ %_ih.i.i, %lor.lhs.false.i.i.i.i.lor.lhs.false.i.i_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i.i20.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %retval.0.i.i20.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %24)
  %cmp1.i.i = icmp ugt i8 %24, 18
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.get_inner_hdr.exit.thread.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.get_inner_hdr.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner_hdr.exit.thread.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.end.i.i.get_inner_hdr.exit.thread.i_crit_edge [
    i8 3, label %if.end.i.i.if.then4.i_crit_edge
    i8 4, label %if.end.i.i.if.then4.i_crit_edge22
    i8 5, label %if.end.i.i.if.then4.i_crit_edge23
    i8 11, label %if.end.i.i.if.then4.i_crit_edge24
    i8 12, label %if.end.i.i.if.then4.i_crit_edge25
  ]

if.end.i.i.if.then4.i_crit_edge25:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i.if.then4.i_crit_edge24:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i.if.then4.i_crit_edge23:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i.if.then4.i_crit_edge22:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i.if.then4.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.end.i.i.get_inner_hdr.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner_hdr.exit.thread.i

get_inner_hdr.exit.thread.i:                      ; preds = %if.end.i.i.get_inner_hdr.exit.thread.i_crit_edge, %lor.lhs.false.i.i.get_inner_hdr.exit.thread.i_crit_edge, %skb_header_pointer.exit.i.i.get_inner_hdr.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.i.get_inner_hdr.exit.thread.i_crit_edge, %if.end.i.i.i.i.get_inner_hdr.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ih.i.i) #7
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i.i.if.then4.i_crit_edge, %if.end.i.i.if.then4.i_crit_edge22, %if.end.i.i.if.then4.i_crit_edge23, %if.end.i.i.if.then4.i_crit_edge24, %if.end.i.i.if.then4.i_crit_edge25
  %add9.i.i = add i32 %add.i.i, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ih.i.i) #7
  %26 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i.i.i.i, align 4
  %28 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i.i.i, align 8
  %30 = add i32 %27, -8
  %31 = add i32 %add.i.i, %29
  %sub.i4.i.i = sub i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 20
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !38

if.end.i.i.i:                                     ; preds = %if.then4.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add9.i.i, ptr noundef nonnull %_ip.i, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end10.i_crit_edge

lor.lhs.false.i.i.i.if.end10.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

lor.lhs.false.i.i.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit

skb_header_pointer.exit.i:                        ; preds = %if.then4.i
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i51.i = getelementptr i8, ptr %33, i32 %add9.i.i
  %cmp6.i = icmp eq ptr %add.ptr.i.i51.i, null
  br i1 %cmp6.i, label %skb_header_pointer.exit.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge, label %skb_header_pointer.exit.i.if.end10.i_crit_edge

skb_header_pointer.exit.i.if.end10.i_crit_edge:   ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

skb_header_pointer.exit.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit

if.end10.i:                                       ; preds = %skb_header_pointer.exit.i.if.end10.i_crit_edge, %lor.lhs.false.i.i.i.if.end10.i_crit_edge, %get_inner_hdr.exit.thread.i, %if.else.if.end10.i_crit_edge
  %nhoff.1.i = phi i32 [ %add9.i.i, %skb_header_pointer.exit.i.if.end10.i_crit_edge ], [ %sub.ptr.sub.i.i, %if.else.if.end10.i_crit_edge ], [ %sub.ptr.sub.i.i, %get_inner_hdr.exit.thread.i ], [ %add9.i.i, %lor.lhs.false.i.i.i.if.end10.i_crit_edge ]
  %ip.0.i = phi ptr [ %add.ptr.i.i51.i, %skb_header_pointer.exit.i.if.end10.i_crit_edge ], [ %add.ptr.i, %if.else.if.end10.i_crit_edge ], [ %add.ptr.i, %get_inner_hdr.exit.thread.i ], [ %_ip.i, %lor.lhs.false.i.i.i.if.end10.i_crit_edge ]
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 8
  %34 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saddr.i, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %2, align 4
  %and.i = and i32 %37, %35
  %38 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and.i, ptr %t, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 9
  %39 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daddr.i, align 4
  %dst_mask.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 1
  %41 = ptrtoint ptr %dst_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dst_mask.i, align 4
  %and11.i = and i32 %42, %40
  %dst.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 1
  %43 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and11.i, ptr %dst.i, align 4
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and12.i = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge

if.end10.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit.thread

if.end15.i:                                       ; preds = %if.end10.i
  %protocol16.i = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 6
  %46 = ptrtoint ptr %protocol16.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %protocol16.i, align 1
  %proto.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 3
  %48 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %47)
  %cmp19.i = icmp eq i8 %47, 1
  br i1 %cmp19.i, label %if.end15.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge, label %if.end22.i

if.end15.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit.thread

if.end22.i:                                       ; preds = %if.end15.i
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %ip.0.i, i32 0, i32 4
  %49 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %frag_off.i.i, align 2
  %51 = and i16 %50, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp.i52.not.i = icmp eq i16 %51, 0
  br i1 %cmp.i52.not.i, label %if.end25.i, label %if.end22.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge

if.end22.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit.thread

if.end25.i:                                       ; preds = %if.end22.i
  %52 = ptrtoint ptr %ip.0.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load26.i = load i8, ptr %ip.0.i, align 4
  %bf.clear27.i = shl i8 %bf.load26.i, 2
  %53 = and i8 %bf.clear27.i, 60
  %mul29.i = zext i8 %53 to i32
  %add.i = add i32 %nhoff.1.i, %mul29.i
  %54 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %47, label %if.end25.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge [
    i8 6, label %if.end25.i.if.end.i54.i_crit_edge
    i8 17, label %if.end25.i.if.end.i54.i_crit_edge26
    i8 33, label %if.end25.i.if.end.i54.i_crit_edge27
    i8 50, label %if.end25.i.if.end.i54.i_crit_edge28
    i8 -124, label %if.end25.i.if.end.i54.i_crit_edge29
    i8 -120, label %if.end25.i.if.end.i54.i_crit_edge30
    i8 51, label %sw.bb1.i.i.i
  ]

if.end25.i.if.end.i54.i_crit_edge30:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54.i

if.end25.i.if.end.i54.i_crit_edge29:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54.i

if.end25.i.if.end.i54.i_crit_edge28:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54.i

if.end25.i.if.end.i54.i_crit_edge27:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54.i

if.end25.i.if.end.i54.i_crit_edge26:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54.i

if.end25.i.if.end.i54.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54.i

if.end25.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit.thread

sw.bb1.i.i.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54.i

if.end.i54.i:                                     ; preds = %sw.bb1.i.i.i, %if.end25.i.if.end.i54.i_crit_edge, %if.end25.i.if.end.i54.i_crit_edge26, %if.end25.i.if.end.i54.i_crit_edge27, %if.end25.i.if.end.i54.i_crit_edge28, %if.end25.i.if.end.i54.i_crit_edge29, %if.end25.i.if.end.i54.i_crit_edge30
  %retval.0.i.ph.i.i = phi i32 [ 0, %if.end25.i.if.end.i54.i_crit_edge ], [ 0, %if.end25.i.if.end.i54.i_crit_edge26 ], [ 0, %if.end25.i.if.end.i54.i_crit_edge27 ], [ 0, %if.end25.i.if.end.i54.i_crit_edge28 ], [ 0, %if.end25.i.if.end.i54.i_crit_edge29 ], [ 0, %if.end25.i.if.end.i54.i_crit_edge30 ], [ 4, %sw.bb1.i.i.i ]
  %add.i53.i = add i32 %add.i, %retval.0.i.ph.i.i
  %uports.i.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 2
  %call2.i.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add.i53.i, ptr noundef %uports.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i54.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge, label %if.end6.i.i

if.end.i54.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge: ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv4.exit.thread

if.end6.i.i:                                      ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %uports.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %uports.i.i, align 4
  %port_mask.i.i.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 2
  %57 = ptrtoint ptr %port_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port_mask.i.i.i, align 4
  %and.i.i.i = and i32 %58, %56
  %port_set.i.i.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 3
  %59 = ptrtoint ptr %port_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port_set.i.i.i, align 4
  %or.i.i.i = or i32 %and.i.i.i, %60
  %hp.sroa.0.0.extract.shift.i.i.i = lshr i32 %or.i.i.i, 16
  %conv.i.i55.i = and i32 %or.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i55.i, i32 %hp.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv.i.i55.i, %hp.sroa.0.0.extract.shift.i.i.i
  %shl.i.i.i = shl i32 %or.i.i.i, 16
  %or7.i.i.i = or i32 %shl.i.i.i, %hp.sroa.0.0.extract.shift.i.i.i
  %storemerge.i.i.i = select i1 %cmp.i.i.i, i32 %or7.i.i.i, i32 %or.i.i.i
  %61 = ptrtoint ptr %uports.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge.i.i.i, ptr %uports.i.i, align 4
  br label %hmark_pkt_set_htuple_ipv4.exit.thread

hmark_pkt_set_htuple_ipv4.exit.thread:            ; preds = %if.end6.i.i, %if.end.i54.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge, %if.end25.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge, %if.end22.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge, %if.end15.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge, %if.end10.i.hmark_pkt_set_htuple_ipv4.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_ip.i) #7
  br label %if.end6

hmark_pkt_set_htuple_ipv4.exit:                   ; preds = %skb_header_pointer.exit.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge, %lor.lhs.false.i.i.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge, %if.end.i.i.i.hmark_pkt_set_htuple_ipv4.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_ip.i) #7
  br label %cleanup

if.end6:                                          ; preds = %hmark_pkt_set_htuple_ipv4.exit.thread, %if.then.if.end6_crit_edge
  %62 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %t, align 4
  %dst2.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 1
  %64 = ptrtoint ptr %dst2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dst2.i, align 4
  %66 = call i32 @llvm.umin.i32(i32 %65, i32 %63) #7
  %67 = call i32 @llvm.umax.i32(i32 %65, i32 %63) #7
  %uports.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 2
  %68 = ptrtoint ptr %uports.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %uports.i, align 4
  %hashrnd.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 6
  %70 = ptrtoint ptr %hashrnd.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hashrnd.i, align 4
  %add1.i.i = add i32 %71, -559038725
  %add.i.i.i = add i32 %add1.i.i, %66
  %add1.i.i.i = add i32 %add1.i.i, %67
  %add2.i.i.i = add i32 %add1.i.i, %69
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #7
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #7
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #7
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #7
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #7
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #7
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #7
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  %proto.i14 = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 3
  %72 = ptrtoint ptr %proto.i14 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %proto.i14, align 4
  %conv.i = zext i8 %73 to i32
  %proto_mask.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 5
  %74 = ptrtoint ptr %proto_mask.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %proto_mask.i, align 4
  %conv3.i = zext i16 %75 to i32
  %and.i15 = and i32 %conv3.i, %conv.i
  %xor.i = xor i32 %sub20.i.i.i, %and.i15
  %hmodulus.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 7
  %76 = ptrtoint ptr %hmodulus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hmodulus.i, align 4
  %conv.i.i = zext i32 %xor.i to i64
  %conv1.i.i = zext i32 %77 to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %hoffset.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 8
  %78 = ptrtoint ptr %hoffset.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hoffset.i, align 4
  %add.i16 = add i32 %79, %conv2.i.i
  %80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i16, ptr %80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %hmark_pkt_set_htuple_ipv4.exit, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t) #7
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmark_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %hmodulus = getelementptr inbounds %struct.xt_hmark_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %hmodulus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hmodulus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %proto_mask = getelementptr inbounds %struct.xt_hmark_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %proto_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %proto_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.xt_hmark_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %flags5 = getelementptr inbounds %struct.xt_hmark_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags5, align 4
  %and6 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %and10 = and i32 %9, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %or.cond = or i1 %tobool7.not, %tobool11.not
  br i1 %or.cond, label %if.end13, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %and15 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and19 = and i32 %9, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond34 = or i1 %tobool16.not, %tobool20.not
  br i1 %or.cond34, label %if.end13.cleanup_crit_edge, label %if.end13.err_crit_edge

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.end13.err_crit_edge, %land.lhs.true.err_crit_edge
  %errmsg.0 = phi ptr [ @.str, %land.lhs.true.err_crit_edge ], [ @.str.1, %if.end13.err_crit_edge ]
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @hmark_tg_check._rs, ptr noundef nonnull @__func__.hmark_tg_check) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %err.cleanup_crit_edge, label %do.end

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %errmsg.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %err.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmark_tg_v6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_ih6.i.i = alloca %struct.icmp6hdr, align 8
  %_ip6.i = alloca %struct.ipv6hdr, align 4
  %flag.i = alloca i32, align 4
  %nhoff.i = alloca i32, align 4
  %fragoff.i = alloca i16, align 2
  %t = alloca %struct.hmark_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t) #7
  %3 = call ptr @memset(ptr %t, i32 0, i32 16)
  %flags = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @hmark_ct_set_htuple(ptr noundef %skb, ptr noundef nonnull %t, ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_ip6.i) #7
  %6 = call ptr @memset(ptr %_ip6.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag.i) #7
  %7 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %flag.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nhoff.i) #7
  %8 = ptrtoint ptr %nhoff.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nhoff.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fragoff.i) #7
  %9 = ptrtoint ptr %fragoff.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %fragoff.i, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 %sub.ptr.sub.i.i
  %call1.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %nhoff.i, i32 noundef -1, ptr noundef nonnull %fragoff.i, ptr noundef nonnull %flag.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.else.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, label %if.end.i

if.else.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit.thread

if.end.i:                                         ; preds = %if.else
  %16 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flag.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, 58
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp2.not.i, i1 false
  br i1 %or.cond.i, label %if.end4.i, label %if.end.i.noicmp.i_crit_edge

if.end.i.noicmp.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %noicmp.i

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_ih6.i.i) #7
  %18 = ptrtoint ptr %_ih6.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %_ih6.i.i, align 8
  %19 = ptrtoint ptr %nhoff.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nhoff.i, align 4
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i.i.i, align 8
  %25 = add i32 %20, %24
  %sub.i4.i.i.i = sub i32 %22, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 8
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !38

if.end.i.i.i.i:                                   ; preds = %if.end4.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.get_inner6_hdr.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.get_inner6_hdr.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner6_hdr.exit.thread.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %20, ptr noundef nonnull %_ih6.i.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.get_inner6_hdr.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.get_inner6_hdr.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner6_hdr.exit.thread.i

skb_header_pointer.exit.i.i:                      ; preds = %if.end4.i
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %27, i32 %20
  %cmp.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %cmp.i.i, label %skb_header_pointer.exit.i.i.get_inner6_hdr.exit.thread.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

skb_header_pointer.exit.i.i.get_inner6_hdr.exit.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner6_hdr.exit.thread.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i16.i.i = phi ptr [ %add.ptr.i.i.i.i, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %_ih6.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %28 = ptrtoint ptr %retval.0.i.i16.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %retval.0.i.i16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %30 = icmp sgt i8 %29, 0
  br i1 %30, label %if.then7.i, label %if.end.i.i.get_inner6_hdr.exit.thread.i_crit_edge

if.end.i.i.get_inner6_hdr.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_inner6_hdr.exit.thread.i

get_inner6_hdr.exit.thread.i:                     ; preds = %if.end.i.i.get_inner6_hdr.exit.thread.i_crit_edge, %skb_header_pointer.exit.i.i.get_inner6_hdr.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.i.get_inner6_hdr.exit.thread.i_crit_edge, %if.end.i.i.i.i.get_inner6_hdr.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ih6.i.i) #7
  br label %noicmp.i

if.then7.i:                                       ; preds = %if.end.i.i
  %31 = ptrtoint ptr %nhoff.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nhoff.i, align 4
  %add.i.i = add i32 %32, 8
  store i32 %add.i.i, ptr %nhoff.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_ih6.i.i) #7
  %33 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i.i, align 4
  %35 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i.i.i, align 8
  %37 = add i32 %34, -8
  %38 = add i32 %32, %36
  %sub.i4.i.i = sub i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 40
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !38

if.end.i.i.i:                                     ; preds = %if.then7.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i.i, ptr noundef nonnull %_ip6.i, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end11.i_crit_edge

lor.lhs.false.i.i.i.if.end11.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

lor.lhs.false.i.i.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit

skb_header_pointer.exit.i:                        ; preds = %if.then7.i
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i61.i = getelementptr i8, ptr %40, i32 %add.i.i
  %cmp9.i = icmp eq ptr %add.ptr.i.i61.i, null
  br i1 %cmp9.i, label %skb_header_pointer.exit.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge, label %skb_header_pointer.exit.i.if.end11.i_crit_edge

skb_header_pointer.exit.i.if.end11.i_crit_edge:   ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

skb_header_pointer.exit.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit

if.end11.i:                                       ; preds = %skb_header_pointer.exit.i.if.end11.i_crit_edge, %lor.lhs.false.i.i.i.if.end11.i_crit_edge
  %retval.0.i.i85.i = phi ptr [ %add.ptr.i.i61.i, %skb_header_pointer.exit.i.if.end11.i_crit_edge ], [ %_ip6.i, %lor.lhs.false.i.i.i.if.end11.i_crit_edge ]
  %41 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %flag.i, align 4
  %call12.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %nhoff.i, i32 noundef -1, ptr noundef nonnull %fragoff.i, ptr noundef nonnull %flag.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end11.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge, label %if.end11.i.noicmp.i_crit_edge

if.end11.i.noicmp.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %noicmp.i

if.end11.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit

noicmp.i:                                         ; preds = %if.end11.i.noicmp.i_crit_edge, %get_inner6_hdr.exit.thread.i, %if.end.i.noicmp.i_crit_edge
  %ip6.0.i = phi ptr [ %add.ptr.i, %if.end.i.noicmp.i_crit_edge ], [ %retval.0.i.i85.i, %if.end11.i.noicmp.i_crit_edge ], [ %add.ptr.i, %get_inner6_hdr.exit.thread.i ]
  %nexthdr.0.i = phi i32 [ %call1.i, %if.end.i.noicmp.i_crit_edge ], [ %call12.i, %if.end11.i.noicmp.i_crit_edge ], [ 58, %get_inner6_hdr.exit.thread.i ]
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 5
  %42 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr.i, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %2, align 4
  %and.i.i = and i32 %45, %43
  %arrayidx2.i.i = getelementptr %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 5, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %2, i32 1
  %48 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx3.i.i, align 4
  %and4.i.i = and i32 %49, %47
  %xor.i.i = xor i32 %and4.i.i, %and.i.i
  %arrayidx5.i.i = getelementptr %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 5, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr i32, ptr %2, i32 2
  %52 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx6.i.i, align 4
  %and7.i.i = and i32 %53, %51
  %xor8.i.i = xor i32 %xor.i.i, %and7.i.i
  %arrayidx9.i.i = getelementptr %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 5, i32 0, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr i32, ptr %2, i32 3
  %56 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx10.i.i, align 4
  %and11.i.i = and i32 %57, %55
  %xor12.i.i = xor i32 %xor8.i.i, %and11.i.i
  %58 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %xor12.i.i, ptr %t, align 4
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 6
  %dst_mask.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 1
  %59 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %daddr.i, align 4
  %61 = ptrtoint ptr %dst_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dst_mask.i, align 4
  %and.i62.i = and i32 %62, %60
  %arrayidx2.i63.i = getelementptr %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx2.i63.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2.i63.i, align 4
  %arrayidx3.i64.i = getelementptr %struct.xt_hmark_info, ptr %2, i32 0, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx3.i64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx3.i64.i, align 4
  %and4.i65.i = and i32 %66, %64
  %xor.i66.i = xor i32 %and4.i65.i, %and.i62.i
  %arrayidx5.i67.i = getelementptr %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 6, i32 0, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx5.i67.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx5.i67.i, align 4
  %arrayidx6.i68.i = getelementptr %struct.xt_hmark_info, ptr %2, i32 0, i32 1, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx6.i68.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx6.i68.i, align 4
  %and7.i69.i = and i32 %70, %68
  %xor8.i70.i = xor i32 %xor.i66.i, %and7.i69.i
  %arrayidx9.i71.i = getelementptr %struct.ipv6hdr, ptr %ip6.0.i, i32 0, i32 6, i32 0, i32 0, i32 3
  %71 = ptrtoint ptr %arrayidx9.i71.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx9.i71.i, align 4
  %arrayidx10.i72.i = getelementptr %struct.xt_hmark_info, ptr %2, i32 0, i32 1, i32 0, i32 3
  %73 = ptrtoint ptr %arrayidx10.i72.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx10.i72.i, align 4
  %and11.i73.i = and i32 %74, %72
  %xor12.i74.i = xor i32 %xor8.i70.i, %and11.i73.i
  %dst.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 1
  %75 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %xor12.i74.i, ptr %dst.i, align 4
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags, align 4
  %and23.i = and i32 %77, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %noicmp.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge

noicmp.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge: ; preds = %noicmp.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit.thread

if.end26.i:                                       ; preds = %noicmp.i
  %conv.i = trunc i32 %nexthdr.0.i to i8
  %proto.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 3
  %78 = ptrtoint ptr %proto.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i, ptr %proto.i, align 4
  %conv28.i = and i32 %nexthdr.0.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %conv28.i)
  %cmp29.i = icmp eq i32 %conv28.i, 58
  br i1 %cmp29.i, label %if.end26.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, label %if.end32.i

if.end26.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit.thread

if.end32.i:                                       ; preds = %if.end26.i
  %79 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flag.i, align 4
  %and33.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge

if.end32.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit.thread

if.end36.i:                                       ; preds = %if.end32.i
  %81 = ptrtoint ptr %nhoff.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nhoff.i, align 4
  %83 = zext i8 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %conv.i, label %if.end36.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge [
    i8 6, label %if.end36.i.if.end.i76.i_crit_edge
    i8 17, label %if.end36.i.if.end.i76.i_crit_edge24
    i8 33, label %if.end36.i.if.end.i76.i_crit_edge25
    i8 50, label %if.end36.i.if.end.i76.i_crit_edge26
    i8 -124, label %if.end36.i.if.end.i76.i_crit_edge27
    i8 -120, label %if.end36.i.if.end.i76.i_crit_edge28
    i8 51, label %sw.bb1.i.i.i
  ]

if.end36.i.if.end.i76.i_crit_edge28:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76.i

if.end36.i.if.end.i76.i_crit_edge27:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76.i

if.end36.i.if.end.i76.i_crit_edge26:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76.i

if.end36.i.if.end.i76.i_crit_edge25:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76.i

if.end36.i.if.end.i76.i_crit_edge24:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76.i

if.end36.i.if.end.i76.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76.i

if.end36.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit.thread

sw.bb1.i.i.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76.i

if.end.i76.i:                                     ; preds = %sw.bb1.i.i.i, %if.end36.i.if.end.i76.i_crit_edge, %if.end36.i.if.end.i76.i_crit_edge24, %if.end36.i.if.end.i76.i_crit_edge25, %if.end36.i.if.end.i76.i_crit_edge26, %if.end36.i.if.end.i76.i_crit_edge27, %if.end36.i.if.end.i76.i_crit_edge28
  %retval.0.i.ph.i.i = phi i32 [ 0, %if.end36.i.if.end.i76.i_crit_edge ], [ 0, %if.end36.i.if.end.i76.i_crit_edge24 ], [ 0, %if.end36.i.if.end.i76.i_crit_edge25 ], [ 0, %if.end36.i.if.end.i76.i_crit_edge26 ], [ 0, %if.end36.i.if.end.i76.i_crit_edge27 ], [ 0, %if.end36.i.if.end.i76.i_crit_edge28 ], [ 4, %sw.bb1.i.i.i ]
  %add.i75.i = add i32 %retval.0.i.ph.i.i, %82
  %uports.i.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 2
  %call2.i.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %add.i75.i, ptr noundef %uports.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i76.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, label %if.end6.i.i

if.end.i76.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge: ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_pkt_set_htuple_ipv6.exit.thread

if.end6.i.i:                                      ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %uports.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %uports.i.i, align 4
  %port_mask.i.i.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 2
  %86 = ptrtoint ptr %port_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port_mask.i.i.i, align 4
  %and.i.i.i = and i32 %87, %85
  %port_set.i.i.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 3
  %88 = ptrtoint ptr %port_set.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port_set.i.i.i, align 4
  %or.i.i.i = or i32 %and.i.i.i, %89
  %hp.sroa.0.0.extract.shift.i.i.i = lshr i32 %or.i.i.i, 16
  %conv.i.i77.i = and i32 %or.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i77.i, i32 %hp.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv.i.i77.i, %hp.sroa.0.0.extract.shift.i.i.i
  %shl.i.i.i = shl i32 %or.i.i.i, 16
  %or7.i.i.i = or i32 %shl.i.i.i, %hp.sroa.0.0.extract.shift.i.i.i
  %storemerge.i.i.i = select i1 %cmp.i.i.i, i32 %or7.i.i.i, i32 %or.i.i.i
  %90 = ptrtoint ptr %uports.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %storemerge.i.i.i, ptr %uports.i.i, align 4
  br label %hmark_pkt_set_htuple_ipv6.exit.thread

hmark_pkt_set_htuple_ipv6.exit.thread:            ; preds = %if.end6.i.i, %if.end.i76.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, %if.end36.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, %if.end32.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, %if.end26.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, %noicmp.i.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge, %if.else.hmark_pkt_set_htuple_ipv6.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fragoff.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhoff.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6.i) #7
  br label %if.end6

hmark_pkt_set_htuple_ipv6.exit:                   ; preds = %if.end11.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge, %skb_header_pointer.exit.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge, %lor.lhs.false.i.i.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge, %if.end.i.i.i.hmark_pkt_set_htuple_ipv6.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fragoff.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhoff.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_ip6.i) #7
  br label %cleanup

if.end6:                                          ; preds = %hmark_pkt_set_htuple_ipv6.exit.thread, %if.then.if.end6_crit_edge
  %91 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %t, align 4
  %dst2.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 1
  %93 = ptrtoint ptr %dst2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dst2.i, align 4
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 %92) #7
  %96 = call i32 @llvm.umax.i32(i32 %94, i32 %92) #7
  %uports.i = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 2
  %97 = ptrtoint ptr %uports.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %uports.i, align 4
  %hashrnd.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 6
  %99 = ptrtoint ptr %hashrnd.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hashrnd.i, align 4
  %add1.i.i = add i32 %100, -559038725
  %add.i.i.i = add i32 %add1.i.i, %95
  %add1.i.i.i = add i32 %add1.i.i, %96
  %add2.i.i.i = add i32 %add1.i.i, %98
  %xor.i.i.i = xor i32 %add2.i.i.i, %add1.i.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #7
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i52.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #7
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i53.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #7
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #7
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #7
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #7
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #7
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  %proto.i14 = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 3
  %101 = ptrtoint ptr %proto.i14 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %proto.i14, align 4
  %conv.i15 = zext i8 %102 to i32
  %proto_mask.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 5
  %103 = ptrtoint ptr %proto_mask.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %proto_mask.i, align 4
  %conv3.i = zext i16 %104 to i32
  %and.i16 = and i32 %conv3.i, %conv.i15
  %xor.i = xor i32 %sub20.i.i.i, %and.i16
  %hmodulus.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 7
  %105 = ptrtoint ptr %hmodulus.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hmodulus.i, align 4
  %conv.i.i = zext i32 %xor.i to i64
  %conv1.i.i = zext i32 %106 to i64
  %mul.i.i = mul nuw i64 %conv.i.i, %conv1.i.i
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %hoffset.i = getelementptr inbounds %struct.xt_hmark_info, ptr %2, i32 0, i32 8
  %107 = ptrtoint ptr %hoffset.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hoffset.i, align 4
  %add.i = add i32 %108, %conv2.i.i
  %109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add.i, ptr %109, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %hmark_pkt_set_htuple_ipv6.exit, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t) #7
  ret i32 -1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @hmark_ct_set_htuple(ptr nocapture noundef readonly %skb, ptr nocapture noundef %t, ptr nocapture noundef readonly %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp = icmp eq i32 %and1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1
  %tuple3 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1
  %l3num = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %l3num, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %4, label %if.end.hmark_addr_mask.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.end.hmark_addr_mask.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_addr_mask.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tuple, align 8
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %and.i51 = and i32 %9, %7
  br label %hmark_addr_mask.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuple, align 8
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %info, align 4
  %and.i.i = and i32 %13, %11
  %arrayidx2.i.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %info, i32 1
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.i.i, align 4
  %and4.i.i = and i32 %17, %15
  %xor.i.i = xor i32 %and4.i.i, %and.i.i
  %arrayidx5.i.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.i.i, align 8
  %arrayidx6.i.i = getelementptr i32, ptr %info, i32 2
  %20 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.i.i, align 4
  %and7.i.i = and i32 %21, %19
  %xor8.i.i = xor i32 %xor.i.i, %and7.i.i
  %arrayidx9.i.i = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr i32, ptr %info, i32 3
  %24 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.i.i, align 4
  %and11.i.i = and i32 %25, %23
  %xor12.i.i = xor i32 %xor8.i.i, %and11.i.i
  br label %hmark_addr_mask.exit

hmark_addr_mask.exit:                             ; preds = %sw.bb1.i, %sw.bb.i, %if.end.hmark_addr_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %xor12.i.i, %sw.bb1.i ], [ %and.i51, %sw.bb.i ], [ 0, %if.end.hmark_addr_mask.exit_crit_edge ]
  %26 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %t, align 4
  %27 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %l3num, align 2
  %dst_mask = getelementptr inbounds %struct.xt_hmark_info, ptr %info, i32 0, i32 1
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %28, label %hmark_addr_mask.exit.hmark_addr_mask.exit69_crit_edge [
    i16 2, label %sw.bb.i53
    i16 10, label %sw.bb1.i67
  ]

hmark_addr_mask.exit.hmark_addr_mask.exit69_crit_edge: ; preds = %hmark_addr_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hmark_addr_mask.exit69

sw.bb.i53:                                        ; preds = %hmark_addr_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %tuple3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tuple3, align 8
  %32 = ptrtoint ptr %dst_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dst_mask, align 4
  %and.i52 = and i32 %33, %31
  br label %hmark_addr_mask.exit69

sw.bb1.i67:                                       ; preds = %hmark_addr_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %tuple3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tuple3, align 8
  %36 = ptrtoint ptr %dst_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dst_mask, align 4
  %and.i.i54 = and i32 %37, %35
  %arrayidx2.i.i55 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx2.i.i55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.i.i55, align 4
  %arrayidx3.i.i56 = getelementptr %struct.xt_hmark_info, ptr %info, i32 0, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx3.i.i56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx3.i.i56, align 4
  %and4.i.i57 = and i32 %41, %39
  %xor.i.i58 = xor i32 %and4.i.i57, %and.i.i54
  %arrayidx5.i.i59 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx5.i.i59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx5.i.i59, align 8
  %arrayidx6.i.i60 = getelementptr %struct.xt_hmark_info, ptr %info, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx6.i.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx6.i.i60, align 4
  %and7.i.i61 = and i32 %45, %43
  %xor8.i.i62 = xor i32 %xor.i.i58, %and7.i.i61
  %arrayidx9.i.i63 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx9.i.i63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx9.i.i63, align 4
  %arrayidx10.i.i64 = getelementptr %struct.xt_hmark_info, ptr %info, i32 0, i32 1, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx10.i.i64 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx10.i.i64, align 4
  %and11.i.i65 = and i32 %49, %47
  %xor12.i.i66 = xor i32 %xor8.i.i62, %and11.i.i65
  br label %hmark_addr_mask.exit69

hmark_addr_mask.exit69:                           ; preds = %sw.bb1.i67, %sw.bb.i53, %hmark_addr_mask.exit.hmark_addr_mask.exit69_crit_edge
  %retval.0.i68 = phi i32 [ %xor12.i.i66, %sw.bb1.i67 ], [ %and.i52, %sw.bb.i53 ], [ 0, %hmark_addr_mask.exit.hmark_addr_mask.exit69_crit_edge ]
  %dst = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 1
  %50 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i68, ptr %dst, align 4
  %flags = getelementptr inbounds %struct.xt_hmark_info, ptr %info, i32 0, i32 4
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and = and i32 %52, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %hmark_addr_mask.exit69.cleanup_crit_edge

hmark_addr_mask.exit69.cleanup_crit_edge:         ; preds = %hmark_addr_mask.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %hmark_addr_mask.exit69
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %53 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %protonum.i, align 2
  %proto = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 3
  %55 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp21.not = icmp eq i8 %54, 1
  br i1 %cmp21.not, label %if.end17.cleanup_crit_edge, label %if.then23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %u = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %u, align 8
  %uports = getelementptr inbounds %struct.hmark_tuple, ptr %t, i32 0, i32 2
  %58 = ptrtoint ptr %uports to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %uports, align 4
  %u27 = getelementptr %struct.nf_conn, ptr %2, i32 0, i32 4, i32 1, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %u27 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %u27, align 8
  %dst29 = getelementptr inbounds %struct.anon.202, ptr %uports, i32 0, i32 1
  %61 = ptrtoint ptr %dst29 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %dst29, align 2
  %62 = load i32, ptr %uports, align 4
  %port_mask.i = getelementptr inbounds %struct.xt_hmark_info, ptr %info, i32 0, i32 2
  %63 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_mask.i, align 4
  %and.i70 = and i32 %64, %62
  %port_set.i = getelementptr inbounds %struct.xt_hmark_info, ptr %info, i32 0, i32 3
  %65 = ptrtoint ptr %port_set.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port_set.i, align 4
  %or.i = or i32 %and.i70, %66
  %hp.sroa.0.0.extract.shift.i = lshr i32 %or.i, 16
  %conv.i = and i32 %or.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %hp.sroa.0.0.extract.shift.i)
  %cmp.i = icmp ugt i32 %conv.i, %hp.sroa.0.0.extract.shift.i
  %shl.i = shl i32 %or.i, 16
  %or7.i = or i32 %shl.i, %hp.sroa.0.0.extract.shift.i
  %storemerge.i = select i1 %cmp.i, i32 %or7.i, i32 %or.i
  %67 = ptrtoint ptr %uports to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %storemerge.i, ptr %uports, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end17.cleanup_crit_edge, %hmark_addr_mask.exit69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %hmark_addr_mask.exit69.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_file690, !1, !"__UNIQUE_ID_file690", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_HMARK.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_license691, !1, !"__UNIQUE_ID_license691", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author692, !4, !"__UNIQUE_ID_author692", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_HMARK.c", i32 28, i32 1}
!5 = !{ptr @__UNIQUE_ID_description693, !6, !"__UNIQUE_ID_description693", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_HMARK.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias694, !8, !"__UNIQUE_ID_alias694", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_HMARK.c", i32 30, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias695, !10, !"__UNIQUE_ID_alias695", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_HMARK.c", i32 31, i32 1}
!11 = !{ptr @__initcall__kmod_xt_HMARK__696_367_hmark_tg_init6, !12, !"__initcall__kmod_xt_HMARK__696_367_hmark_tg_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_HMARK.c", i32 367, i32 1}
!13 = !{ptr @__exitcall_hmark_tg_exit, !14, !"__exitcall_hmark_tg_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_HMARK.c", i32 368, i32 1}
!15 = !{ptr @hmark_tg_reg, !16, !"hmark_tg_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_HMARK.c", i32 336, i32 25}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_HMARK.c", i32 310, i32 23}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_HMARK.c", i32 327, i32 12}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_HMARK.c", i32 332, i32 2}
!23 = !{ptr @hmark_tg_check._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.hmark_tg_check, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @hmark_tg_check._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @hmark_tg_check._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
