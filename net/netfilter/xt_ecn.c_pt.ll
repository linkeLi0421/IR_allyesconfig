; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_ecn.c_pt.bc'
source_filename = "../net/netfilter/xt_ecn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_ecn_info = type { i8, i8, i8, %union.anon.191 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }

@__UNIQUE_ID_author618 = internal constant [51 x i8] c"xt_ecn.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description619 = internal constant [78 x i8] c"xt_ecn.description=Xtables: Explicit Congestion Notification (ECN) flag match\00", section ".modinfo", align 1
@__UNIQUE_ID_file620 = internal constant [33 x i8] c"xt_ecn.file=net/netfilter/xt_ecn\00", section ".modinfo", align 1
@__UNIQUE_ID_license621 = internal constant [19 x i8] c"xt_ecn.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [21 x i8] c"xt_ecn.alias=ipt_ecn\00", section ".modinfo", align 1
@__UNIQUE_ID_alias623 = internal constant [22 x i8] c"xt_ecn.alias=ip6t_ecn\00", section ".modinfo", align 1
@ecn_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ecn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ecn_mt4, ptr @ecn_mt_check4, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ecn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ecn_mt6, ptr @ecn_mt_check6, ptr null, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_ecn__624_175_ecn_mt_init6 = internal global ptr @ecn_mt_init, section ".initcall6.init", align 4
@__exitcall_ecn_mt_exit = internal global ptr @ecn_mt_exit, section ".exitcall.exit", align 4
@ecn_mt_check4._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ecn_mt_check4 = private unnamed_addr constant [14 x i8] c"ecn_mt_check4\00", align 1
@ecn_mt_check4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.ecn_mt_check4, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016xt_ecn: cannot match TCP bits for non-tcp packets\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_ecn.c\00", [41 x i8] zeroinitializer }, align 32
@ecn_mt_check4._entry_ptr = internal global ptr @ecn_mt_check4._entry, section ".printk_index", align 4
@ecn_mt_check6._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ecn_mt_check6 = private unnamed_addr constant [14 x i8] c"ecn_mt_check6\00", align 1
@ecn_mt_check6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.ecn_mt_check6, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ecn_mt_check6._entry_ptr = internal global ptr @ecn_mt_check6._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 97, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [26 x i8] c"../net/netfilter/xt_ecn.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 139, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_alias623, ptr @__UNIQUE_ID_author618, ptr @__UNIQUE_ID_description619, ptr @__UNIQUE_ID_file620, ptr @__UNIQUE_ID_license621, ptr @__exitcall_ecn_mt_exit, ptr @__initcall__kmod_xt_ecn__624_175_ecn_mt_init6, ptr @ecn_mt_check4._entry, ptr @ecn_mt_check4._entry_ptr, ptr @ecn_mt_check6._entry, ptr @ecn_mt_check6._entry_ptr, ptr @ecn_mt_exit, ptr @ecn_mt_check4._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ecn_mt_check6._rs], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecn_mt_check4._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecn_mt_check4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecn_mt_check6._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecn_mt_check6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ecn_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_matches(ptr noundef nonnull @ecn_mt_reg, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ecn_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @ecn_mt_reg, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ecn_mt4(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_tcph.i = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
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
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tos.i, align 1
  %12 = and i8 %11, 3
  %ip_ect.i = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %ip_ect.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ip_ect.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp.i = icmp eq i8 %12, %14
  %invert.i = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %invert.i, align 1
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %18 = icmp ne i8 %17, 0
  %tobool6.i = xor i1 %cmp.i, %18
  br i1 %tobool6.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = and i8 %4, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not = icmp eq i8 %19, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true5:                                   ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph.i) #5
  %thoff.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %20 = call ptr @memset(ptr %_tcph.i, i32 255, i32 20)
  %21 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %thoff.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  %27 = add i32 %22, %26
  %sub.i1.i.i = sub i32 %24, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 19
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !39

if.end.i.i.i:                                     ; preds = %land.lhs.true5
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.match_tcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.match_tcp.exit.thread_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %22, ptr noundef nonnull %_tcph.i, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.match_tcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false.i.i.i.match_tcp.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

skb_header_pointer.exit.i:                        ; preds = %land.lhs.true5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i13 = getelementptr i8, ptr %29, i32 %22
  %cmp.i14 = icmp eq ptr %add.ptr.i.i.i13, null
  br i1 %cmp.i14, label %skb_header_pointer.exit.i.match_tcp.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

skb_header_pointer.exit.i.match_tcp.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i67.i = phi ptr [ %add.ptr.i.i.i13, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_tcph.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %32 = and i8 %31, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then1.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then1.i:                                       ; preds = %if.end.i
  %invert.i15 = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 1
  %33 = ptrtoint ptr %invert.i15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %invert.i15, align 1
  %35 = and i8 %34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool4.not.i = icmp eq i8 %35, 0
  %ece11.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i67.i, i32 0, i32 4
  %36 = ptrtoint ptr %ece11.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load12.i = load i16, ptr %ece11.i, align 4
  %37 = and i16 %bf.load12.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp16.i = icmp eq i16 %37, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then1.i
  br i1 %cmp16.i, label %if.then5.i.if.end21.i_crit_edge, label %if.then5.i.match_tcp.exit.thread_crit_edge

if.then5.i.match_tcp.exit.thread_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.then5.i.if.end21.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then1.i
  br i1 %cmp16.i, label %if.else.i.match_tcp.exit.thread_crit_edge, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.else.i.match_tcp.exit.thread_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.end21.i:                                       ; preds = %if.else.i.if.end21.i_crit_edge, %if.then5.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %38 = and i8 %31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool25.not.i = icmp eq i8 %38, 0
  br i1 %tobool25.not.i, label %if.end21.i.match_tcp.exit_crit_edge, label %if.then26.i

if.end21.i.match_tcp.exit_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit

if.then26.i:                                      ; preds = %if.end21.i
  %invert27.i = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 1
  %39 = ptrtoint ptr %invert27.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %invert27.i, align 1
  %41 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool30.not.i = icmp eq i8 %41, 0
  %cwr41.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i67.i, i32 0, i32 4
  %42 = ptrtoint ptr %cwr41.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load42.i = load i16, ptr %cwr41.i, align 4
  %43 = and i16 %bf.load42.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp46.i = icmp eq i16 %43, 0
  br i1 %tobool30.not.i, label %if.else40.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then26.i
  br i1 %cmp46.i, label %if.then31.i.match_tcp.exit_crit_edge, label %if.then31.i.match_tcp.exit.thread_crit_edge

if.then31.i.match_tcp.exit.thread_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.then31.i.match_tcp.exit_crit_edge:             ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit

if.else40.i:                                      ; preds = %if.then26.i
  br i1 %cmp46.i, label %if.else40.i.match_tcp.exit.thread_crit_edge, label %if.else40.i.match_tcp.exit_crit_edge

if.else40.i.match_tcp.exit_crit_edge:             ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit

if.else40.i.match_tcp.exit.thread_crit_edge:      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

match_tcp.exit.thread:                            ; preds = %if.else40.i.match_tcp.exit.thread_crit_edge, %if.then31.i.match_tcp.exit.thread_crit_edge, %if.else.i.match_tcp.exit.thread_crit_edge, %if.then5.i.match_tcp.exit.thread_crit_edge, %skb_header_pointer.exit.i.match_tcp.exit.thread_crit_edge, %lor.lhs.false.i.i.i.match_tcp.exit.thread_crit_edge, %if.end.i.i.i.match_tcp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #5
  br label %cleanup

match_tcp.exit:                                   ; preds = %if.else40.i.match_tcp.exit_crit_edge, %if.then31.i.match_tcp.exit_crit_edge, %if.end21.i.match_tcp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #5
  br label %cleanup

cleanup:                                          ; preds = %match_tcp.exit, %match_tcp.exit.thread, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %match_tcp.exit.thread ], [ true, %match_tcp.exit ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecn_mt_check4(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %invert = getelementptr inbounds %struct.xt_ecn_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %invert, align 1
  %8 = and i8 %7, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and8 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %proto = getelementptr inbounds %struct.ipt_ip, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %10)
  %cmp.not = icmp eq i16 %10, 6
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false:                                    ; preds = %land.lhs.true
  %invflags = getelementptr inbounds %struct.ipt_ip, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %invflags, align 1
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ecn_mt_check4._rs, ptr noundef nonnull @__func__.ecn_mt_check4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %do.end

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then15.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ecn_mt6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_tcph.i = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
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
  %flow_lbl.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %flow_lbl.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flow_lbl.i, align 1
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 3
  %ip_ect.i = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %ip_ect.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ip_ect.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.i = icmp eq i8 %13, %15
  %invert.i = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %invert.i, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %19 = icmp ne i8 %18, 0
  %tobool6.i = xor i1 %cmp.i, %19
  br i1 %tobool6.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = and i8 %4, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not = icmp eq i8 %20, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true5:                                   ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph.i) #5
  %thoff.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 3
  %21 = call ptr @memset(ptr %_tcph.i, i32 255, i32 20)
  %22 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %thoff.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i, align 8
  %28 = add i32 %23, %27
  %sub.i1.i.i = sub i32 %25, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 19
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !39

if.end.i.i.i:                                     ; preds = %land.lhs.true5
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.match_tcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.match_tcp.exit.thread_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %23, ptr noundef nonnull %_tcph.i, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.match_tcp.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

lor.lhs.false.i.i.i.match_tcp.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

skb_header_pointer.exit.i:                        ; preds = %land.lhs.true5
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i13 = getelementptr i8, ptr %30, i32 %23
  %cmp.i14 = icmp eq ptr %add.ptr.i.i.i13, null
  br i1 %cmp.i14, label %skb_header_pointer.exit.i.match_tcp.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

skb_header_pointer.exit.i.match_tcp.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i67.i = phi ptr [ %add.ptr.i.i.i13, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_tcph.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %2, align 1
  %33 = and i8 %32, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then1.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then1.i:                                       ; preds = %if.end.i
  %invert.i15 = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 1
  %34 = ptrtoint ptr %invert.i15 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %invert.i15, align 1
  %36 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool4.not.i = icmp eq i8 %36, 0
  %ece11.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i67.i, i32 0, i32 4
  %37 = ptrtoint ptr %ece11.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load12.i = load i16, ptr %ece11.i, align 4
  %38 = and i16 %bf.load12.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp16.i = icmp eq i16 %38, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then1.i
  br i1 %cmp16.i, label %if.then5.i.if.end21.i_crit_edge, label %if.then5.i.match_tcp.exit.thread_crit_edge

if.then5.i.match_tcp.exit.thread_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.then5.i.if.end21.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then1.i
  br i1 %cmp16.i, label %if.else.i.match_tcp.exit.thread_crit_edge, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.else.i.match_tcp.exit.thread_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.end21.i:                                       ; preds = %if.else.i.if.end21.i_crit_edge, %if.then5.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %39 = and i8 %32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool25.not.i = icmp eq i8 %39, 0
  br i1 %tobool25.not.i, label %if.end21.i.match_tcp.exit_crit_edge, label %if.then26.i

if.end21.i.match_tcp.exit_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit

if.then26.i:                                      ; preds = %if.end21.i
  %invert27.i = getelementptr inbounds %struct.xt_ecn_info, ptr %2, i32 0, i32 1
  %40 = ptrtoint ptr %invert27.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %invert27.i, align 1
  %42 = and i8 %41, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool30.not.i = icmp eq i8 %42, 0
  %cwr41.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i67.i, i32 0, i32 4
  %43 = ptrtoint ptr %cwr41.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load42.i = load i16, ptr %cwr41.i, align 4
  %44 = and i16 %bf.load42.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp46.i = icmp eq i16 %44, 0
  br i1 %tobool30.not.i, label %if.else40.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.then26.i
  br i1 %cmp46.i, label %if.then31.i.match_tcp.exit_crit_edge, label %if.then31.i.match_tcp.exit.thread_crit_edge

if.then31.i.match_tcp.exit.thread_crit_edge:      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

if.then31.i.match_tcp.exit_crit_edge:             ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit

if.else40.i:                                      ; preds = %if.then26.i
  br i1 %cmp46.i, label %if.else40.i.match_tcp.exit.thread_crit_edge, label %if.else40.i.match_tcp.exit_crit_edge

if.else40.i.match_tcp.exit_crit_edge:             ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit

if.else40.i.match_tcp.exit.thread_crit_edge:      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_tcp.exit.thread

match_tcp.exit.thread:                            ; preds = %if.else40.i.match_tcp.exit.thread_crit_edge, %if.then31.i.match_tcp.exit.thread_crit_edge, %if.else.i.match_tcp.exit.thread_crit_edge, %if.then5.i.match_tcp.exit.thread_crit_edge, %skb_header_pointer.exit.i.match_tcp.exit.thread_crit_edge, %lor.lhs.false.i.i.i.match_tcp.exit.thread_crit_edge, %if.end.i.i.i.match_tcp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #5
  br label %cleanup

match_tcp.exit:                                   ; preds = %if.else40.i.match_tcp.exit_crit_edge, %if.then31.i.match_tcp.exit_crit_edge, %if.end21.i.match_tcp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #5
  br label %cleanup

cleanup:                                          ; preds = %match_tcp.exit, %match_tcp.exit.thread, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %match_tcp.exit.thread ], [ true, %match_tcp.exit ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecn_mt_check6(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %entryinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entryinfo, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 206
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %invert = getelementptr inbounds %struct.xt_ecn_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %invert, align 1
  %8 = and i8 %7, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and8 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %proto = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %proto, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %10)
  %cmp.not = icmp eq i16 %10, 6
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.then15_crit_edge

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false:                                    ; preds = %land.lhs.true
  %invflags = getelementptr inbounds %struct.ip6t_ip6, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %invflags, align 4
  %13 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ecn_mt_check6._rs, ptr noundef nonnull @__func__.ecn_mt_check6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.then15.cleanup_crit_edge, label %do.end

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %if.then15.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__UNIQUE_ID_author618, !1, !"__UNIQUE_ID_author618", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_ecn.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description619, !3, !"__UNIQUE_ID_description619", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_ecn.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file620, !5, !"__UNIQUE_ID_file620", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_ecn.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license621, !5, !"__UNIQUE_ID_license621", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_ecn.c", i32 24, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias623, !10, !"__UNIQUE_ID_alias623", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_ecn.c", i32 25, i32 1}
!11 = !{ptr @__initcall__kmod_xt_ecn__624_175_ecn_mt_init6, !12, !"__initcall__kmod_xt_ecn__624_175_ecn_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_ecn.c", i32 175, i32 1}
!13 = !{ptr @__exitcall_ecn_mt_exit, !14, !"__exitcall_ecn_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_ecn.c", i32 176, i32 1}
!15 = !{ptr @ecn_mt_reg, !16, !"ecn_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_ecn.c", i32 146, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_ecn.c", i32 97, i32 3}
!19 = !{ptr @ecn_mt_check4._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.ecn_mt_check4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ecn_mt_check4._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ecn_mt_check4._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ecn_mt_check6._rs, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_ecn.c", i32 139, i32 3}
!27 = !{ptr @__func__.ecn_mt_check6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ecn_mt_check6._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ecn_mt_check6._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
