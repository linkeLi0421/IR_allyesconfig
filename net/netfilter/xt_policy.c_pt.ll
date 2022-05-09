; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_policy.c_pt.bc'
source_filename = "../net/netfilter/xt_policy.c"
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
%struct.xt_action_param = type { %union.anon.147, %union.anon.148, ptr, i32, i16, i8 }
%union.anon.147 = type { ptr }
%union.anon.148 = type { ptr }
%struct.xt_policy_info = type { [4 x %struct.xt_policy_elem], i16, i16 }
%struct.xt_policy_elem = type { %union.anon.153, i32, i32, i8, i8, %struct.xt_policy_spec, %struct.xt_policy_spec }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.xt_policy_spec = type { i8 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.130, %union.anon.131, [48 x i8], %union.anon.132, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.134, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.130 = type { ptr }
%union.anon.131 = type { i64 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, ptr }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.136, i32, i32, i32, i16, i16, %union.anon.138, i32, %union.anon.139, %union.anon.140, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.136 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.155, i32, i32, i8, i8 }
%struct.anon.155 = type { i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.xfrm_dst = type { %union.anon.156, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.156 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.127, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.128, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.128 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }

@__UNIQUE_ID_author525 = internal constant [51 x i8] c"xt_policy.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description526 = internal constant [50 x i8] c"xt_policy.description=Xtables: IPsec policy match\00", section ".modinfo", align 1
@__UNIQUE_ID_file527 = internal constant [39 x i8] c"xt_policy.file=net/netfilter/xt_policy\00", section ".modinfo", align 1
@__UNIQUE_ID_license528 = internal constant [22 x i8] c"xt_policy.license=GPL\00", section ".modinfo", align 1
@policy_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"policy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @policy_mt, ptr @policy_mt_check, ptr null, ptr null, ptr null, i32 308, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"policy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @policy_mt, ptr @policy_mt_check, ptr null, ptr null, ptr null, i32 308, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_policy__529_186_policy_mt_init6 = internal global ptr @policy_mt_init, section ".initcall6.init", align 4
@__exitcall_policy_mt_exit = internal global ptr @policy_mt_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias530 = internal constant [27 x i8] c"xt_policy.alias=ipt_policy\00", section ".modinfo", align 1
@__UNIQUE_ID_alias531 = internal constant [28 x i8] c"xt_policy.alias=ip6t_policy\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"neither incoming nor outgoing policy selected\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"output policy not valid in PREROUTING and INPUT\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"input policy not valid in POSTROUTING and OUTPUT\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"too many policy elements\00", [39 x i8] zeroinitializer }, align 32
@policy_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.policy_mt_check = private unnamed_addr constant [16 x i8] c"policy_mt_check\00", align 1
@policy_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.policy_mt_check, ptr @.str.7, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016xt_policy: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/xt_policy.c\00", [38 x i8] zeroinitializer }, align 32
@policy_mt_check._entry_ptr = internal global ptr @policy_mt_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.10 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 1011, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 132, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 139, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 144, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 148, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [29 x i8] c"../net/netfilter/xt_policy.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 153, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias530, ptr @__UNIQUE_ID_alias531, ptr @__UNIQUE_ID_author525, ptr @__UNIQUE_ID_description526, ptr @__UNIQUE_ID_file527, ptr @__UNIQUE_ID_license528, ptr @__exitcall_policy_mt_exit, ptr @__initcall__kmod_xt_policy__529_186_policy_mt_init6, ptr @policy_mt_check._entry, ptr @policy_mt_check._entry_ptr, ptr @policy_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @policy_mt_check._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policy_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @policy_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_matches(ptr noundef nonnull @policy_mt_reg, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @policy_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @policy_mt_reg, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @policy_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %flags = getelementptr inbounds %struct.xt_policy_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags, align 4
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  %state.i29 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %6 = ptrtoint ptr %state.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i29, align 4
  %pf.i30 = getelementptr inbounds %struct.nf_hook_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pf.i30 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pf.i30, align 1
  %conv4 = zext i8 %9 to i16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %active_extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %10 = ptrtoint ptr %active_extensions.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_extensions.i.i.i.i, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.not.i.i.i, label %if.then.if.then7_crit_edge, label %skb_sec_path.exit.i

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

skb_sec_path.exit.i:                              ; preds = %if.then
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %13 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extensions.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.skb_ext, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %shl.i.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i, label %skb_sec_path.exit.i.if.then7_crit_edge, label %if.end.i

skb_sec_path.exit.i.if.then7_crit_edge:           ; preds = %skb_sec_path.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

if.end.i:                                         ; preds = %skb_sec_path.exit.i
  %17 = and i16 %4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %len.i = getelementptr inbounds %struct.xt_policy_info, ptr %2, i32 0, i32 2
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i, align 2
  %conv2.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv2.i)
  %cmp4.not.i = icmp eq i32 %21, %conv2.i
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end7.i_crit_edge, label %land.lhs.true.i.if.else12_crit_edge

land.lhs.true.i.if.else12_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i, align 4
  %i.053.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.053.i)
  %cmp954.i = icmp sgt i32 %i.053.i, -1
  br i1 %cmp954.i, label %for.body.lr.ph.i, label %if.end7.i.for.end.i_crit_edge

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end7.i
  %sub13.i = sub i32 1, %23
  %len14.i = getelementptr inbounds %struct.xt_policy_info, ptr %2, i32 0, i32 2
  %24 = ptrtoint ptr %len14.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len14.i, align 2
  %conv15.i = zext i16 %25 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.055.i = phi i32 [ %i.053.i, %for.body.lr.ph.i ], [ %i.0.i, %for.inc.i.for.body.i_crit_edge ]
  %add.i = add i32 %sub13.i, %i.055.i
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv15.i)
  %cmp16.not.i = icmp slt i32 %cond.i, %conv15.i
  br i1 %cmp16.not.i, label %if.end19.i, label %for.body.i.if.else12_crit_edge

for.body.i.if.else12_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

if.end19.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr [4 x %struct.xt_policy_elem], ptr %2, i32 0, i32 %cond.i
  %arrayidx20.i = getelementptr %struct.sec_path, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %i.055.i
  %26 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx20.i, align 4
  %call21.i = tail call fastcc zeroext i1 @match_xfrm_state(ptr noundef %27, ptr noundef %arrayidx.i, i16 noundef zeroext %conv4) #5
  br i1 %call21.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end19.i
  br i1 %tobool.not.i, label %if.then22.i.if.else12_crit_edge, label %if.then22.i.for.inc.i_crit_edge

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then22.i.if.else12_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

if.else.i:                                        ; preds = %if.end19.i
  br i1 %tobool.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.if.else12_crit_edge

if.else.i.if.else12_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %if.then22.i.for.inc.i_crit_edge
  %i.0.i = add i32 %i.055.i, -1
  %cmp9.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp9.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  br label %if.else12

if.else:                                          ; preds = %entry
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.skb_dst.exit.i_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.else
  %call.i.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !44

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1013, i32 noundef 9, ptr noundef null) #5
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.else.skb_dst.exit.i_crit_edge
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 8
  %and25.i.i = and i32 %32, -2
  %33 = inttoptr i32 %and25.i.i to ptr
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags, align 4
  %36 = and i16 %35, 8
  %xfrm.i = getelementptr inbounds %struct.dst_entry, ptr %33, i32 0, i32 4
  %37 = ptrtoint ptr %xfrm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xfrm.i, align 4
  %cmp.i32 = icmp eq ptr %38, null
  br i1 %cmp.i32, label %skb_dst.exit.i.if.then7_crit_edge, label %for.cond.preheader.i

skb_dst.exit.i.if.then7_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7

for.cond.preheader.i:                             ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not47.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not47.i, label %for.cond.preheader.i.for.end.i39_crit_edge, label %land.rhs.lr.ph.i

for.cond.preheader.i.for.end.i39_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i39

land.rhs.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool4.not.i = icmp eq i16 %36, 0
  %len.i33 = getelementptr inbounds %struct.xt_policy_info, ptr %2, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i38.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %i.049.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i38.land.rhs.i_crit_edge ]
  %dst.048.i = phi ptr [ %33, %land.rhs.lr.ph.i ], [ %44, %for.inc.i38.land.rhs.i_crit_edge ]
  %xfrm2.i = getelementptr inbounds %struct.dst_entry, ptr %dst.048.i, i32 0, i32 4
  %39 = ptrtoint ptr %xfrm2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xfrm2.i, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %land.rhs.i.for.end.i39_crit_edge, label %for.body.i34

land.rhs.i.for.end.i39_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i39

for.body.i34:                                     ; preds = %land.rhs.i
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 %i.049.i
  %41 = ptrtoint ptr %len.i33 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len.i33, align 2
  %conv5.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %conv5.i)
  %cmp6.not.i = icmp slt i32 %spec.select.i, %conv5.i
  br i1 %cmp6.not.i, label %if.end9.i, label %for.body.i34.if.else12_crit_edge

for.body.i34.if.else12_crit_edge:                 ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

if.end9.i:                                        ; preds = %for.body.i34
  %arrayidx.i35 = getelementptr [4 x %struct.xt_policy_elem], ptr %2, i32 0, i32 %spec.select.i
  %call11.i = tail call fastcc zeroext i1 @match_xfrm_state(ptr noundef nonnull %40, ptr noundef %arrayidx.i35, i16 noundef zeroext %conv4) #5
  br i1 %call11.i, label %if.then12.i, label %if.else.i36

if.then12.i:                                      ; preds = %if.end9.i
  br i1 %tobool4.not.i, label %if.then12.i.if.else12_crit_edge, label %if.then12.i.for.inc.i38_crit_edge

if.then12.i.for.inc.i38_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i38

if.then12.i.if.else12_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

if.else.i36:                                      ; preds = %if.end9.i
  br i1 %tobool4.not.i, label %if.else.i36.for.inc.i38_crit_edge, label %if.else.i36.if.else12_crit_edge

if.else.i36.if.else12_crit_edge:                  ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

if.else.i36.for.inc.i38_crit_edge:                ; preds = %if.else.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %if.else.i36.for.inc.i38_crit_edge, %if.then12.i.for.inc.i38_crit_edge
  %child.i = getelementptr inbounds %struct.xfrm_dst, ptr %dst.048.i, i32 0, i32 2
  %43 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %child.i, align 4
  %inc.i = add i32 %i.049.i, 1
  %tobool.not.i37 = icmp eq ptr %44, null
  br i1 %tobool.not.i37, label %for.inc.i38.for.end.i39_crit_edge, label %for.inc.i38.land.rhs.i_crit_edge

for.inc.i38.land.rhs.i_crit_edge:                 ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i38.for.end.i39_crit_edge:                ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i39

for.end.i39:                                      ; preds = %for.inc.i38.for.end.i39_crit_edge, %land.rhs.i.for.end.i39_crit_edge, %for.cond.preheader.i.for.end.i39_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i39_crit_edge ], [ %i.049.i, %land.rhs.i.for.end.i39_crit_edge ], [ %inc.i, %for.inc.i38.for.end.i39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool20.not.i = icmp eq i16 %36, 0
  br i1 %tobool20.not.i, label %for.end.i39.if.else12_crit_edge, label %cond.true21.i

for.end.i39.if.else12_crit_edge:                  ; preds = %for.end.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

cond.true21.i:                                    ; preds = %for.end.i39
  call void @__sanitizer_cov_trace_pc() #7
  %len22.i = getelementptr inbounds %struct.xt_policy_info, ptr %2, i32 0, i32 2
  %45 = ptrtoint ptr %len22.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %len22.i, align 2
  %conv23.i = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv23.i)
  %cmp24.i = icmp eq i32 %i.0.lcssa.i, %conv23.i
  br label %if.else12

if.then7:                                         ; preds = %skb_dst.exit.i.if.then7_crit_edge, %skb_sec_path.exit.i.if.then7_crit_edge, %if.then.if.then7_crit_edge
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags, align 4
  %49 = lshr i16 %48, 2
  %.lobit = and i16 %49, 1
  %50 = zext i16 %.lobit to i32
  br label %if.end19

if.else12:                                        ; preds = %cond.true21.i, %for.end.i39.if.else12_crit_edge, %if.else.i36.if.else12_crit_edge, %if.then12.i.if.else12_crit_edge, %for.body.i34.if.else12_crit_edge, %for.end.i, %if.else.i.if.else12_crit_edge, %if.then22.i.if.else12_crit_edge, %for.body.i.if.else12_crit_edge, %land.lhs.true.i.if.else12_crit_edge
  %ret.0.ph.shrunk = phi i1 [ false, %for.end.i39.if.else12_crit_edge ], [ %cmp24.i, %cond.true21.i ], [ false, %land.lhs.true.i.if.else12_crit_edge ], [ %not.tobool.not.i, %for.end.i ], [ false, %if.else.i36.if.else12_crit_edge ], [ true, %if.then12.i.if.else12_crit_edge ], [ false, %for.body.i34.if.else12_crit_edge ], [ false, %if.else.i.if.else12_crit_edge ], [ true, %if.then22.i.if.else12_crit_edge ], [ false, %for.body.i.if.else12_crit_edge ]
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags, align 4
  %53 = and i16 %52, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool16.not = icmp eq i16 %53, 0
  %narrow = select i1 %tobool16.not, i1 %ret.0.ph.shrunk, i1 false
  %spec.select = zext i1 %narrow to i32
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.then7
  %ret.1 = phi i32 [ %50, %if.then7 ], [ %spec.select, %if.else12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool20 = icmp ne i32 %ret.1, 0
  ret i1 %tobool20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @policy_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %flags = getelementptr inbounds %struct.xt_policy_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %hook_mask = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 5
  %4 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hook_mask, align 4
  %and1 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and5 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end8, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end8:                                          ; preds = %if.end
  %and10 = and i32 %5, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %6 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool16.not = icmp eq i16 %6, 0
  %or.cond33 = select i1 %tobool11.not, i1 true, i1 %tobool16.not
  br i1 %or.cond33, label %if.end18, label %if.end8.err_crit_edge

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end18:                                         ; preds = %if.end8
  %len = getelementptr inbounds %struct.xt_policy_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp = icmp ugt i16 %8, 4
  br i1 %cmp, label %if.end18.err_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

err:                                              ; preds = %if.end18.err_crit_edge, %if.end8.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %errmsg.0 = phi ptr [ @.str.1, %entry.err_crit_edge ], [ @.str.2, %if.end.err_crit_edge ], [ @.str.4, %if.end18.err_crit_edge ], [ @.str.3, %if.end8.err_crit_edge ]
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @policy_mt_check._rs, ptr noundef nonnull @__func__.policy_mt_check) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %err.cleanup_crit_edge, label %do.end

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull %errmsg.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %err.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @match_xfrm_state(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %e, i16 noundef zeroext %family) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %match = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 5
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %match, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %lor.lhs.false

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %smask = getelementptr inbounds %struct.anon.154, ptr %e, i32 0, i32 1
  %saddr1 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8
  %1 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i16 %family, label %lor.lhs.false.xt_addr_cmp.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb2.i
  ]

lor.lhs.false.xt_addr_cmp.exit_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %xt_addr_cmp.exit

sw.bb.i:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %e, align 4
  %4 = ptrtoint ptr %saddr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saddr1, align 4
  %xor.i = xor i32 %5, %3
  %6 = ptrtoint ptr %smask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smask, align 4
  %and.i = and i32 %xor.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br label %xt_addr_cmp.exit

sw.bb2.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %e, align 4
  %10 = ptrtoint ptr %saddr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saddr1, align 4
  %xor.i.i = xor i32 %11, %9
  %12 = ptrtoint ptr %smask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smask, align 4
  %and.i.i = and i32 %xor.i.i, %13
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %e, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i.i, align 4
  %xor9.i.i = xor i32 %17, %15
  %arrayidx11.i.i = getelementptr %struct.anon.154, ptr %e, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11.i.i, align 4
  %and12.i.i = and i32 %xor9.i.i, %19
  %or.i.i = or i32 %and12.i.i, %and.i.i
  %arrayidx14.i.i = getelementptr [4 x i32], ptr %e, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16.i.i, align 4
  %xor17.i.i = xor i32 %23, %21
  %arrayidx19.i.i = getelementptr %struct.anon.154, ptr %e, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx19.i.i, align 4
  %and20.i.i = and i32 %xor17.i.i, %25
  %or21.i.i = or i32 %or.i.i, %and20.i.i
  %arrayidx23.i.i = getelementptr [4 x i32], ptr %e, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx23.i.i, align 4
  %arrayidx25.i.i = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 8, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx25.i.i, align 4
  %xor26.i.i = xor i32 %29, %27
  %arrayidx28.i.i = getelementptr %struct.anon.154, ptr %e, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx28.i.i, align 4
  %and29.i.i = and i32 %xor26.i.i, %31
  %or30.i.i = or i32 %or21.i.i, %and29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i)
  %tobool.i.not.i = icmp eq i32 %or30.i.i, 0
  br label %xt_addr_cmp.exit

xt_addr_cmp.exit:                                 ; preds = %sw.bb2.i, %sw.bb.i, %lor.lhs.false.xt_addr_cmp.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool.i.not.i, %sw.bb2.i ], [ %cmp.i, %sw.bb.i ], [ false, %lor.lhs.false.xt_addr_cmp.exit_crit_edge ]
  %invert = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 6
  %32 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load2 = load i8, ptr %invert, align 1
  %bf.lshr3 = lshr i8 %bf.load2, 7
  %33 = zext i1 %retval.0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr3, i8 %33)
  %tobool5.not = icmp eq i8 %bf.lshr3, %33
  br i1 %tobool5.not, label %xt_addr_cmp.exit.land.end_crit_edge, label %xt_addr_cmp.exit.land.lhs.true_crit_edge

xt_addr_cmp.exit.land.lhs.true_crit_edge:         ; preds = %xt_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

xt_addr_cmp.exit.land.end_crit_edge:              ; preds = %xt_addr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true:                                    ; preds = %xt_addr_cmp.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %34 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool9.not = icmp eq i8 %34, 0
  br i1 %tobool9.not, label %land.lhs.true.land.lhs.true21_crit_edge, label %lor.lhs.false10

land.lhs.true.land.lhs.true21_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true21

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %daddr = getelementptr inbounds %struct.anon.154, ptr %e, i32 0, i32 2
  %dmask = getelementptr inbounds %struct.anon.154, ptr %e, i32 0, i32 3
  %id = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7
  %35 = zext i16 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %family, label %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge [
    i16 2, label %sw.bb.i122
    i16 10, label %sw.bb2.i144
  ]

lor.lhs.false10.xt_addr_cmp.exit146_crit_edge:    ; preds = %lor.lhs.false10
  %invert14147 = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 6
  %36 = ptrtoint ptr %invert14147 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load15148 = load i8, ptr %invert14147, align 1
  %37 = and i8 %bf.load15148, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge.land.end_crit_edge, label %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge.land.lhs.true21_crit_edge

lor.lhs.false10.xt_addr_cmp.exit146_crit_edge.land.lhs.true21_crit_edge: ; preds = %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true21

lor.lhs.false10.xt_addr_cmp.exit146_crit_edge.land.end_crit_edge: ; preds = %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

sw.bb.i122:                                       ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %daddr, align 4
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %xor.i119 = xor i32 %42, %40
  %43 = ptrtoint ptr %dmask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dmask, align 4
  %and.i120 = and i32 %xor.i119, %44
  br label %xt_addr_cmp.exit146

sw.bb2.i144:                                      ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %daddr, align 4
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %xor.i.i123 = xor i32 %48, %46
  %49 = ptrtoint ptr %dmask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dmask, align 4
  %and.i.i124 = and i32 %xor.i.i123, %50
  %arrayidx6.i.i125 = getelementptr %struct.anon.154, ptr %e, i32 0, i32 2, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx6.i.i125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx6.i.i125, align 4
  %arrayidx8.i.i126 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 0, i32 0, i32 1
  %53 = ptrtoint ptr %arrayidx8.i.i126 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx8.i.i126, align 4
  %xor9.i.i127 = xor i32 %54, %52
  %arrayidx11.i.i128 = getelementptr %struct.anon.154, ptr %e, i32 0, i32 3, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx11.i.i128 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx11.i.i128, align 4
  %and12.i.i129 = and i32 %xor9.i.i127, %56
  %or.i.i130 = or i32 %and12.i.i129, %and.i.i124
  %arrayidx14.i.i131 = getelementptr %struct.anon.154, ptr %e, i32 0, i32 2, i32 0, i32 2
  %57 = ptrtoint ptr %arrayidx14.i.i131 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx14.i.i131, align 4
  %arrayidx16.i.i132 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 0, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx16.i.i132 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx16.i.i132, align 4
  %xor17.i.i133 = xor i32 %60, %58
  %arrayidx19.i.i134 = getelementptr %struct.anon.154, ptr %e, i32 0, i32 3, i32 0, i32 2
  %61 = ptrtoint ptr %arrayidx19.i.i134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx19.i.i134, align 4
  %and20.i.i135 = and i32 %xor17.i.i133, %62
  %or21.i.i136 = or i32 %or.i.i130, %and20.i.i135
  %arrayidx23.i.i137 = getelementptr %struct.anon.154, ptr %e, i32 0, i32 2, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx23.i.i137 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx23.i.i137, align 4
  %arrayidx25.i.i138 = getelementptr %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 0, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx25.i.i138 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx25.i.i138, align 4
  %xor26.i.i139 = xor i32 %66, %64
  %arrayidx28.i.i140 = getelementptr %struct.anon.154, ptr %e, i32 0, i32 3, i32 0, i32 3
  %67 = ptrtoint ptr %arrayidx28.i.i140 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx28.i.i140, align 4
  %and29.i.i141 = and i32 %xor26.i.i139, %68
  %or30.i.i142 = or i32 %or21.i.i136, %and29.i.i141
  br label %xt_addr_cmp.exit146

xt_addr_cmp.exit146:                              ; preds = %sw.bb2.i144, %sw.bb.i122
  %retval.0.i145.in = phi i32 [ %or30.i.i142, %sw.bb2.i144 ], [ %and.i120, %sw.bb.i122 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i145.in)
  %retval.0.i145 = icmp eq i32 %retval.0.i145.in, 0
  %invert14 = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 6
  %69 = ptrtoint ptr %invert14 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load15 = load i8, ptr %invert14, align 1
  %70 = and i8 %bf.load15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %71 = icmp eq i8 %70, 0
  %tobool20.not = xor i1 %retval.0.i145, %71
  br i1 %tobool20.not, label %xt_addr_cmp.exit146.land.end_crit_edge, label %xt_addr_cmp.exit146.land.lhs.true21_crit_edge

xt_addr_cmp.exit146.land.lhs.true21_crit_edge:    ; preds = %xt_addr_cmp.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true21

xt_addr_cmp.exit146.land.end_crit_edge:           ; preds = %xt_addr_cmp.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true21:                                  ; preds = %xt_addr_cmp.exit146.land.lhs.true21_crit_edge, %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge.land.lhs.true21_crit_edge, %land.lhs.true.land.lhs.true21_crit_edge
  %72 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool26.not = icmp eq i8 %72, 0
  br i1 %tobool26.not, label %land.lhs.true21.land.lhs.true40_crit_edge, label %lor.lhs.false27

land.lhs.true21.land.lhs.true40_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true40

lor.lhs.false27:                                  ; preds = %land.lhs.true21
  %proto = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 3
  %73 = ptrtoint ptr %proto to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %proto, align 4
  %proto30 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 2
  %75 = ptrtoint ptr %proto30 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %proto30, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %76)
  %cmp = icmp ne i8 %74, %76
  %invert33 = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 6
  %77 = ptrtoint ptr %invert33 to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load34 = load i8, ptr %invert33, align 1
  %78 = and i8 %bf.load34, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %79 = icmp ne i8 %78, 0
  %tobool39.not = xor i1 %cmp, %79
  br i1 %tobool39.not, label %lor.lhs.false27.land.end_crit_edge, label %lor.lhs.false27.land.lhs.true40_crit_edge

lor.lhs.false27.land.lhs.true40_crit_edge:        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true40

lor.lhs.false27.land.end_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true40:                                  ; preds = %lor.lhs.false27.land.lhs.true40_crit_edge, %land.lhs.true21.land.lhs.true40_crit_edge
  %80 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool45.not = icmp eq i8 %80, 0
  br i1 %tobool45.not, label %land.lhs.true40.land.lhs.true60_crit_edge, label %lor.lhs.false46

land.lhs.true40.land.lhs.true60_crit_edge:        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true60

lor.lhs.false46:                                  ; preds = %land.lhs.true40
  %mode = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 4
  %81 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mode, align 1
  %mode49 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14, i32 1
  %83 = ptrtoint ptr %mode49 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %mode49, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp51 = icmp ne i8 %82, %84
  %invert53 = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 6
  %85 = ptrtoint ptr %invert53 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load54 = load i8, ptr %invert53, align 1
  %86 = and i8 %bf.load54, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %87 = icmp ne i8 %86, 0
  %tobool59.not = xor i1 %cmp51, %87
  br i1 %tobool59.not, label %lor.lhs.false46.land.end_crit_edge, label %lor.lhs.false46.land.lhs.true60_crit_edge

lor.lhs.false46.land.lhs.true60_crit_edge:        ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true60

lor.lhs.false46.land.end_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.lhs.true60:                                  ; preds = %lor.lhs.false46.land.lhs.true60_crit_edge, %land.lhs.true40.land.lhs.true60_crit_edge
  %88 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool65.not = icmp eq i8 %88, 0
  br i1 %tobool65.not, label %land.lhs.true60.land.rhs_crit_edge, label %lor.lhs.false66

land.lhs.true60.land.rhs_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.lhs.false66:                                  ; preds = %land.lhs.true60
  %spi = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 1
  %89 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %spi, align 4
  %spi68 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %91 = ptrtoint ptr %spi68 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %spi68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp69 = icmp ne i32 %90, %92
  %invert71 = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 6
  %93 = ptrtoint ptr %invert71 to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load72 = load i8, ptr %invert71, align 1
  %94 = and i8 %bf.load72, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %95 = icmp ne i8 %94, 0
  %tobool77.not = xor i1 %cmp69, %95
  br i1 %tobool77.not, label %lor.lhs.false66.land.end_crit_edge, label %lor.lhs.false66.land.rhs_crit_edge

lor.lhs.false66.land.rhs_crit_edge:               ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

lor.lhs.false66.land.end_crit_edge:               ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %lor.lhs.false66.land.rhs_crit_edge, %land.lhs.true60.land.rhs_crit_edge
  %96 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool82.not = icmp eq i8 %96, 0
  br i1 %tobool82.not, label %land.rhs.land.end_crit_edge, label %lor.rhs

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %reqid = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 2
  %97 = ptrtoint ptr %reqid to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reqid, align 4
  %props83 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 14
  %99 = ptrtoint ptr %props83 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %props83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp85 = icmp eq i32 %98, %100
  %invert87 = getelementptr inbounds %struct.xt_policy_elem, ptr %e, i32 0, i32 6
  %101 = ptrtoint ptr %invert87 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load88 = load i8, ptr %invert87, align 1
  %102 = and i8 %bf.load88, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %103 = icmp ne i8 %102, 0
  %tobool93 = xor i1 %cmp85, %103
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %lor.lhs.false66.land.end_crit_edge, %lor.lhs.false46.land.end_crit_edge, %lor.lhs.false27.land.end_crit_edge, %xt_addr_cmp.exit146.land.end_crit_edge, %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge.land.end_crit_edge, %xt_addr_cmp.exit.land.end_crit_edge
  %104 = phi i1 [ false, %lor.lhs.false66.land.end_crit_edge ], [ false, %lor.lhs.false46.land.end_crit_edge ], [ false, %lor.lhs.false27.land.end_crit_edge ], [ false, %xt_addr_cmp.exit146.land.end_crit_edge ], [ false, %xt_addr_cmp.exit.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %tobool93, %lor.rhs ], [ false, %lor.lhs.false10.xt_addr_cmp.exit146_crit_edge.land.end_crit_edge ]
  ret i1 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__UNIQUE_ID_author525, !1, !"__UNIQUE_ID_author525", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_policy.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description526, !3, !"__UNIQUE_ID_description526", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_policy.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file527, !5, !"__UNIQUE_ID_file527", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_policy.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license528, !5, !"__UNIQUE_ID_license528", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_xt_policy__529_186_policy_mt_init6, !8, !"__initcall__kmod_xt_policy__529_186_policy_mt_init6", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_policy.c", i32 186, i32 1}
!9 = !{ptr @__exitcall_policy_mt_exit, !10, !"__exitcall_policy_mt_exit", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_policy.c", i32 187, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias530, !12, !"__UNIQUE_ID_alias530", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_policy.c", i32 188, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias531, !14, !"__UNIQUE_ID_alias531", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_policy.c", i32 189, i32 1}
!15 = !{ptr @policy_mt_reg, !16, !"policy_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_policy.c", i32 157, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_policy.c", i32 132, i32 23}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_policy.c", i32 139, i32 12}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_policy.c", i32 144, i32 12}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_policy.c", i32 148, i32 12}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/xt_policy.c", i32 153, i32 2}
!29 = !{ptr @policy_mt_check._rs, !28, !"_rs", i1 false, i1 false}
!30 = !{ptr @__func__.policy_mt_check, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @policy_mt_check._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @policy_mt_check._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
