; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_conntrack.c_pt.bc'
source_filename = "../net/netfilter/xt_conntrack.c"
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
%struct.xt_action_param = type { %union.anon.151, %union.anon.152, ptr, i32, i16, i8 }
%union.anon.151 = type { ptr }
%union.anon.152 = type { ptr }
%struct.xt_conntrack_mtinfo1 = type { %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i8, i8 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_conntrack_mtinfo2 = type { %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.xt_conntrack_mtinfo3 = type { %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, i32, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.171, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.163 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.163 = type { %union.nf_inet_addr, %union.anon.164, i8, i8 }
%union.anon.164 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.171 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_file581 = internal constant [45 x i8] c"xt_conntrack.file=net/netfilter/xt_conntrack\00", section ".modinfo", align 1
@__UNIQUE_ID_license582 = internal constant [25 x i8] c"xt_conntrack.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author583 = internal constant [48 x i8] c"xt_conntrack.author=Marc Boucher <marc@mbsi.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author584 = internal constant [56 x i8] c"xt_conntrack.author=Jan Engelhardt <jengelh@medozas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description585 = internal constant [66 x i8] c"xt_conntrack.description=Xtables: connection tracking state match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias586 = internal constant [33 x i8] c"xt_conntrack.alias=ipt_conntrack\00", section ".modinfo", align 1
@__UNIQUE_ID_alias587 = internal constant [34 x i8] c"xt_conntrack.alias=ip6t_conntrack\00", section ".modinfo", align 1
@conntrack_mt_reg = internal global [3 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"conntrack\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @conntrack_mt_v1, ptr @conntrack_mt_check, ptr @conntrack_mt_destroy, ptr null, ptr null, i32 152, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"conntrack\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @conntrack_mt_v2, ptr @conntrack_mt_check, ptr @conntrack_mt_destroy, ptr null, ptr null, i32 156, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"conntrack\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 3, ptr @conntrack_mt_v3, ptr @conntrack_mt_check, ptr @conntrack_mt_destroy, ptr null, ptr null, i32 164, i32 0, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_conntrack__588_326_conntrack_mt_init6 = internal global ptr @conntrack_mt_init, section ".initcall6.init", align 4
@__exitcall_conntrack_mt_exit = internal global ptr @conntrack_mt_exit, section ".exitcall.exit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@conntrack_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.conntrack_mt_check = private unnamed_addr constant [19 x i8] c"conntrack_mt_check\00", align 1
@conntrack_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.conntrack_mt_check, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016xt_conntrack: cannot load conntrack support for proto=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netfilter/xt_conntrack.c\00", [35 x i8] zeroinitializer }, align 32
@conntrack_mt_check._entry_ptr = internal global ptr @conntrack_mt_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.6 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [32 x i8] c"../net/netfilter/xt_conntrack.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 272, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias586, ptr @__UNIQUE_ID_alias587, ptr @__UNIQUE_ID_author583, ptr @__UNIQUE_ID_author584, ptr @__UNIQUE_ID_description585, ptr @__UNIQUE_ID_file581, ptr @__UNIQUE_ID_license582, ptr @__exitcall_conntrack_mt_exit, ptr @__initcall__kmod_xt_conntrack__588_326_conntrack_mt_init6, ptr @conntrack_mt_check._entry, ptr @conntrack_mt_check._entry_ptr, ptr @conntrack_mt_exit, ptr @conntrack_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conntrack_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conntrack_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @conntrack_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_matches(ptr noundef nonnull @conntrack_mt_reg, i32 noundef 3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @conntrack_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @conntrack_mt_reg, i32 noundef 3) #6
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @conntrack_mt_v1(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state_mask = getelementptr inbounds %struct.xt_conntrack_mtinfo1, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %state_mask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state_mask, align 2
  %conv = zext i8 %4 to i16
  %status_mask = getelementptr inbounds %struct.xt_conntrack_mtinfo1, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %status_mask to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status_mask, align 1
  %conv1 = zext i8 %6 to i16
  %call = tail call fastcc zeroext i1 @conntrack_mt(ptr noundef %skb, ptr noundef %par, i16 noundef zeroext %conv, i16 noundef zeroext %conv1)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conntrack_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %1, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @conntrack_mt_check._rs, ptr noundef nonnull @__func__.conntrack_mt_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  %conv = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @conntrack_mt_destroy(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #6
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @conntrack_mt_v2(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state_mask = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %state_mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %state_mask, align 2
  %status_mask = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %status_mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status_mask, align 4
  %call = tail call fastcc zeroext i1 @conntrack_mt(ptr noundef %skb, ptr noundef %par, i16 noundef zeroext %4, i16 noundef zeroext %6)
  ret i1 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @conntrack_mt_v3(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state_mask = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %state_mask to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %state_mask, align 2
  %status_mask = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %status_mask to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status_mask, align 4
  %call = tail call fastcc zeroext i1 @conntrack_mt(ptr noundef %skb, ptr noundef %par, i16 noundef zeroext %4, i16 noundef zeroext %6)
  ret i1 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @conntrack_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par, i16 noundef zeroext %state_mask, i16 noundef zeroext %status_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %4, 7
  %and1.i249 = and i32 %4, -8
  %5 = inttoptr i32 %and1.i249 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i249)
  %tobool.not = icmp eq i32 %and1.i249, 0
  br i1 %tobool.not, label %if.end3, label %if.end3.thread

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 7
  %. = select i1 %cmp, i32 256, i32 1
  %match_flags = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 15
  %6 = ptrtoint ptr %match_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %match_flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %if.end3.cleanup191_crit_edge, label %if.end3.if.end19_crit_edge

if.end3.if.end19_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end3.cleanup191_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

if.end3.thread:                                   ; preds = %entry
  %match_flags363 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 15
  %9 = ptrtoint ptr %match_flags363 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %match_flags363, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not364 = icmp eq i16 %11, 0
  br i1 %tobool4.not364, label %if.end3.thread.if.end40_crit_edge, label %if.then8

if.end3.thread.if.end40_crit_edge:                ; preds = %if.end3.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then8:                                         ; preds = %if.end3.thread
  call void @__sanitizer_cov_trace_pc() #8
  %rem.lhs.trunc = trunc i32 %and.i to i8
  %rem370 = urem i8 %rem.lhs.trunc, 3
  %rem.zext = zext i8 %rem370 to i32
  %shl = shl nuw nsw i32 2, %rem.zext
  %status = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status, align 8
  %14 = shl i32 %13, 2
  %15 = and i32 %14, 64
  %16 = or i32 %15, %shl
  %17 = load volatile i32, ptr %status, align 8
  %18 = shl i32 %17, 2
  %19 = and i32 %18, 128
  %20 = or i32 %19, %16
  br label %if.end19

if.end19:                                         ; preds = %if.then8, %if.end3.if.end19_crit_edge
  %21 = phi i16 [ %10, %if.then8 ], [ %7, %if.end3.if.end19_crit_edge ]
  %statebit.2 = phi i32 [ %20, %if.then8 ], [ %., %if.end3.if.end19_crit_edge ]
  %conv20 = zext i16 %state_mask to i32
  %and21 = and i32 %statebit.2, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22 = icmp ne i32 %and21, 0
  %invert_flags = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %22 = ptrtoint ptr %invert_flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %invert_flags, align 4
  %24 = and i16 %23, 1
  %25 = xor i16 %24, 1
  %26 = zext i1 %tobool22 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %26)
  %tobool29.not = icmp ne i16 %25, %26
  %brmerge = select i1 %tobool29.not, i1 true, i1 %tobool.not
  %not.tobool29.not = xor i1 %tobool29.not, true
  br i1 %brmerge, label %if.end19.cleanup191_crit_edge, label %if.end19.if.end40_crit_edge

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end19.cleanup191_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

if.end40:                                         ; preds = %if.end19.if.end40_crit_edge, %if.end3.thread.if.end40_crit_edge
  %27 = phi i16 [ %10, %if.end3.thread.if.end40_crit_edge ], [ %21, %if.end19.if.end40_crit_edge ]
  %28 = and i16 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool44.not = icmp eq i16 %28, 0
  br i1 %tobool44.not, label %if.end40.if.end58_crit_edge, label %land.lhs.true

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp45 = icmp ult i32 %and.i, 3
  %invert_flags49 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %29 = ptrtoint ptr %invert_flags49 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %invert_flags49, align 4
  %31 = lshr i16 %30, 12
  %.lobit245 = and i16 %31, 1
  %32 = xor i16 %.lobit245, 1
  %33 = zext i1 %cmp45 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %33)
  %tobool56.not = icmp eq i16 %32, %33
  br i1 %tobool56.not, label %land.lhs.true.if.end58_crit_edge, label %land.lhs.true.cleanup191_crit_edge

land.lhs.true.cleanup191_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true.if.end58_crit_edge, %if.end40.if.end58_crit_edge
  %34 = and i16 %27, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool62.not = icmp eq i16 %34, 0
  br i1 %tobool62.not, label %if.end58.if.end77_crit_edge, label %if.then63

if.end58.if.end77_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then63:                                        ; preds = %if.end58
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %35 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pf.i, align 1
  %tuple.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1
  %origsrc_mask.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i8 %38, label %if.then63.conntrack_mt_origsrc.exit_crit_edge [
    i8 2, label %if.then.i.i
    i8 10, label %if.then3.i.i
  ]

if.then63.conntrack_mt_origsrc.exit_crit_edge:    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %conntrack_mt_origsrc.exit

if.then.i.i:                                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %tuple.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tuple.i, align 8
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  %xor.i.i = xor i32 %43, %41
  %44 = ptrtoint ptr %origsrc_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %origsrc_mask.i, align 4
  %and.i.i = and i32 %xor.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br label %conntrack_mt_origsrc.exit

if.then3.i.i:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %tuple.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tuple.i, align 8
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %2, align 4
  %xor.i.i.i = xor i32 %49, %47
  %50 = ptrtoint ptr %origsrc_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %origsrc_mask.i, align 4
  %and.i.i.i = and i32 %xor.i.i.i, %51
  %arrayidx6.i.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx6.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx8.i.i.i, align 4
  %xor9.i.i.i = xor i32 %55, %53
  %arrayidx11.i.i.i = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx11.i.i.i, align 4
  %and12.i.i.i = and i32 %xor9.i.i.i, %57
  %or.i.i.i = or i32 %and12.i.i.i, %and.i.i.i
  %arrayidx14.i.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx14.i.i.i, align 8
  %arrayidx16.i.i.i = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx16.i.i.i, align 4
  %xor17.i.i.i = xor i32 %61, %59
  %arrayidx19.i.i.i = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx19.i.i.i, align 4
  %and20.i.i.i = and i32 %xor17.i.i.i, %63
  %or21.i.i.i = or i32 %or.i.i.i, %and20.i.i.i
  %arrayidx23.i.i.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx23.i.i.i, align 4
  %arrayidx25.i.i.i = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx25.i.i.i, align 4
  %xor26.i.i.i = xor i32 %67, %65
  %arrayidx28.i.i.i = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 1, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx28.i.i.i, align 4
  %and29.i.i.i = and i32 %xor26.i.i.i, %69
  %or30.i.i.i = or i32 %or21.i.i.i, %and29.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %or30.i.i.i, 0
  br label %conntrack_mt_origsrc.exit

conntrack_mt_origsrc.exit:                        ; preds = %if.then3.i.i, %if.then.i.i, %if.then63.conntrack_mt_origsrc.exit_crit_edge
  %retval.0.i.i = phi i1 [ %cmp1.i.i, %if.then.i.i ], [ %tobool.i.not.i.i, %if.then3.i.i ], [ false, %if.then63.conntrack_mt_origsrc.exit_crit_edge ]
  %invert_flags67 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %70 = ptrtoint ptr %invert_flags67 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %invert_flags67, align 4
  %72 = lshr i16 %71, 2
  %.lobit244 = and i16 %72, 1
  %73 = xor i16 %.lobit244, 1
  %74 = zext i1 %retval.0.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %74)
  %tobool74.not = icmp eq i16 %73, %74
  br i1 %tobool74.not, label %conntrack_mt_origsrc.exit.if.end77_crit_edge, label %conntrack_mt_origsrc.exit.cleanup191_crit_edge

conntrack_mt_origsrc.exit.cleanup191_crit_edge:   ; preds = %conntrack_mt_origsrc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

conntrack_mt_origsrc.exit.if.end77_crit_edge:     ; preds = %conntrack_mt_origsrc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.end77:                                         ; preds = %conntrack_mt_origsrc.exit.if.end77_crit_edge, %if.end58.if.end77_crit_edge
  %75 = and i16 %27, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool81.not = icmp eq i16 %75, 0
  br i1 %tobool81.not, label %if.end77.if.end96_crit_edge, label %if.then82

if.end77.if.end96_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.then82:                                        ; preds = %if.end77
  %state.i250 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %76 = ptrtoint ptr %state.i250 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state.i250, align 4
  %pf.i251 = getelementptr inbounds %struct.nf_hook_state, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %pf.i251 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pf.i251, align 1
  %dst.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1
  %origdst_addr.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 2
  %origdst_mask.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 3
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %79, label %if.then82.conntrack_mt_origdst.exit_crit_edge [
    i8 2, label %if.then.i.i255
    i8 10, label %if.then3.i.i277
  ]

if.then82.conntrack_mt_origdst.exit_crit_edge:    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %conntrack_mt_origdst.exit

if.then.i.i255:                                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dst.i, align 4
  %83 = ptrtoint ptr %origdst_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %origdst_addr.i, align 4
  %xor.i.i252 = xor i32 %84, %82
  %85 = ptrtoint ptr %origdst_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %origdst_mask.i, align 4
  %and.i.i253 = and i32 %xor.i.i252, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i253)
  %cmp1.i.i254 = icmp eq i32 %and.i.i253, 0
  br label %conntrack_mt_origdst.exit

if.then3.i.i277:                                  ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dst.i, align 4
  %89 = ptrtoint ptr %origdst_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %origdst_addr.i, align 4
  %xor.i.i.i256 = xor i32 %90, %88
  %91 = ptrtoint ptr %origdst_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %origdst_mask.i, align 4
  %and.i.i.i257 = and i32 %xor.i.i.i256, %92
  %arrayidx6.i.i.i258 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx6.i.i.i258 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx6.i.i.i258, align 8
  %arrayidx8.i.i.i259 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 2, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx8.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx8.i.i.i259, align 4
  %xor9.i.i.i260 = xor i32 %96, %94
  %arrayidx11.i.i.i261 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 3, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx11.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx11.i.i.i261, align 4
  %and12.i.i.i262 = and i32 %xor9.i.i.i260, %98
  %or.i.i.i263 = or i32 %and12.i.i.i262, %and.i.i.i257
  %arrayidx14.i.i.i264 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %99 = ptrtoint ptr %arrayidx14.i.i.i264 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx14.i.i.i264, align 4
  %arrayidx16.i.i.i265 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 2, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx16.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx16.i.i.i265, align 4
  %xor17.i.i.i266 = xor i32 %102, %100
  %arrayidx19.i.i.i267 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 3, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx19.i.i.i267 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx19.i.i.i267, align 4
  %and20.i.i.i268 = and i32 %xor17.i.i.i266, %104
  %or21.i.i.i269 = or i32 %or.i.i.i263, %and20.i.i.i268
  %arrayidx23.i.i.i270 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 0, i32 0, i32 3
  %105 = ptrtoint ptr %arrayidx23.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx23.i.i.i270, align 8
  %arrayidx25.i.i.i271 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 2, i32 0, i32 3
  %107 = ptrtoint ptr %arrayidx25.i.i.i271 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx25.i.i.i271, align 4
  %xor26.i.i.i272 = xor i32 %108, %106
  %arrayidx28.i.i.i273 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 3, i32 0, i32 3
  %109 = ptrtoint ptr %arrayidx28.i.i.i273 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx28.i.i.i273, align 4
  %and29.i.i.i274 = and i32 %xor26.i.i.i272, %110
  %or30.i.i.i275 = or i32 %or21.i.i.i269, %and29.i.i.i274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i.i275)
  %tobool.i.not.i.i276 = icmp eq i32 %or30.i.i.i275, 0
  br label %conntrack_mt_origdst.exit

conntrack_mt_origdst.exit:                        ; preds = %if.then3.i.i277, %if.then.i.i255, %if.then82.conntrack_mt_origdst.exit_crit_edge
  %retval.0.i.i278 = phi i1 [ %cmp1.i.i254, %if.then.i.i255 ], [ %tobool.i.not.i.i276, %if.then3.i.i277 ], [ false, %if.then82.conntrack_mt_origdst.exit_crit_edge ]
  %invert_flags86 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %111 = ptrtoint ptr %invert_flags86 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %invert_flags86, align 4
  %113 = lshr i16 %112, 3
  %.lobit243 = and i16 %113, 1
  %114 = xor i16 %.lobit243, 1
  %115 = zext i1 %retval.0.i.i278 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %115)
  %tobool93.not = icmp eq i16 %114, %115
  br i1 %tobool93.not, label %conntrack_mt_origdst.exit.if.end96_crit_edge, label %conntrack_mt_origdst.exit.cleanup191_crit_edge

conntrack_mt_origdst.exit.cleanup191_crit_edge:   ; preds = %conntrack_mt_origdst.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

conntrack_mt_origdst.exit.if.end96_crit_edge:     ; preds = %conntrack_mt_origdst.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

if.end96:                                         ; preds = %conntrack_mt_origdst.exit.if.end96_crit_edge, %if.end77.if.end96_crit_edge
  %116 = and i16 %27, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool100.not = icmp eq i16 %116, 0
  br i1 %tobool100.not, label %if.end96.if.end115_crit_edge, label %if.then101

if.end96.if.end115_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then101:                                       ; preds = %if.end96
  %state.i279 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %117 = ptrtoint ptr %state.i279 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %state.i279, align 4
  %pf.i280 = getelementptr inbounds %struct.nf_hook_state, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %pf.i280 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %pf.i280, align 1
  %tuple.i281 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1
  %replsrc_addr.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 4
  %replsrc_mask.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 5
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %120, label %if.then101.conntrack_mt_replsrc.exit_crit_edge [
    i8 2, label %if.then.i.i285
    i8 10, label %if.then3.i.i307
  ]

if.then101.conntrack_mt_replsrc.exit_crit_edge:   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %conntrack_mt_replsrc.exit

if.then.i.i285:                                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %tuple.i281 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tuple.i281, align 8
  %124 = ptrtoint ptr %replsrc_addr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %replsrc_addr.i, align 4
  %xor.i.i282 = xor i32 %125, %123
  %126 = ptrtoint ptr %replsrc_mask.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %replsrc_mask.i, align 4
  %and.i.i283 = and i32 %xor.i.i282, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i283)
  %cmp1.i.i284 = icmp eq i32 %and.i.i283, 0
  br label %conntrack_mt_replsrc.exit

if.then3.i.i307:                                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %tuple.i281 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tuple.i281, align 8
  %130 = ptrtoint ptr %replsrc_addr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %replsrc_addr.i, align 4
  %xor.i.i.i286 = xor i32 %131, %129
  %132 = ptrtoint ptr %replsrc_mask.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %replsrc_mask.i, align 4
  %and.i.i.i287 = and i32 %xor.i.i.i286, %133
  %arrayidx6.i.i.i288 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx6.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx6.i.i.i288, align 4
  %arrayidx8.i.i.i289 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 4, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx8.i.i.i289 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx8.i.i.i289, align 4
  %xor9.i.i.i290 = xor i32 %137, %135
  %arrayidx11.i.i.i291 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 5, i32 0, i32 1
  %138 = ptrtoint ptr %arrayidx11.i.i.i291 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx11.i.i.i291, align 4
  %and12.i.i.i292 = and i32 %xor9.i.i.i290, %139
  %or.i.i.i293 = or i32 %and12.i.i.i292, %and.i.i.i287
  %arrayidx14.i.i.i294 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 2
  %140 = ptrtoint ptr %arrayidx14.i.i.i294 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx14.i.i.i294, align 8
  %arrayidx16.i.i.i295 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 4, i32 0, i32 2
  %142 = ptrtoint ptr %arrayidx16.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx16.i.i.i295, align 4
  %xor17.i.i.i296 = xor i32 %143, %141
  %arrayidx19.i.i.i297 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 5, i32 0, i32 2
  %144 = ptrtoint ptr %arrayidx19.i.i.i297 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx19.i.i.i297, align 4
  %and20.i.i.i298 = and i32 %xor17.i.i.i296, %145
  %or21.i.i.i299 = or i32 %or.i.i.i293, %and20.i.i.i298
  %arrayidx23.i.i.i300 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3
  %146 = ptrtoint ptr %arrayidx23.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx23.i.i.i300, align 4
  %arrayidx25.i.i.i301 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 4, i32 0, i32 3
  %148 = ptrtoint ptr %arrayidx25.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx25.i.i.i301, align 4
  %xor26.i.i.i302 = xor i32 %149, %147
  %arrayidx28.i.i.i303 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 5, i32 0, i32 3
  %150 = ptrtoint ptr %arrayidx28.i.i.i303 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx28.i.i.i303, align 4
  %and29.i.i.i304 = and i32 %xor26.i.i.i302, %151
  %or30.i.i.i305 = or i32 %or21.i.i.i299, %and29.i.i.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i.i305)
  %tobool.i.not.i.i306 = icmp eq i32 %or30.i.i.i305, 0
  br label %conntrack_mt_replsrc.exit

conntrack_mt_replsrc.exit:                        ; preds = %if.then3.i.i307, %if.then.i.i285, %if.then101.conntrack_mt_replsrc.exit_crit_edge
  %retval.0.i.i308 = phi i1 [ %cmp1.i.i284, %if.then.i.i285 ], [ %tobool.i.not.i.i306, %if.then3.i.i307 ], [ false, %if.then101.conntrack_mt_replsrc.exit_crit_edge ]
  %invert_flags105 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %152 = ptrtoint ptr %invert_flags105 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %invert_flags105, align 4
  %154 = lshr i16 %153, 4
  %.lobit242 = and i16 %154, 1
  %155 = xor i16 %.lobit242, 1
  %156 = zext i1 %retval.0.i.i308 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %155, i16 %156)
  %tobool112.not = icmp eq i16 %155, %156
  br i1 %tobool112.not, label %conntrack_mt_replsrc.exit.if.end115_crit_edge, label %conntrack_mt_replsrc.exit.cleanup191_crit_edge

conntrack_mt_replsrc.exit.cleanup191_crit_edge:   ; preds = %conntrack_mt_replsrc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

conntrack_mt_replsrc.exit.if.end115_crit_edge:    ; preds = %conntrack_mt_replsrc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.end115:                                        ; preds = %conntrack_mt_replsrc.exit.if.end115_crit_edge, %if.end96.if.end115_crit_edge
  %157 = and i16 %27, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool119.not = icmp eq i16 %157, 0
  br i1 %tobool119.not, label %if.end115.if.end134_crit_edge, label %if.then120

if.end115.if.end134_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.then120:                                       ; preds = %if.end115
  %state.i309 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %158 = ptrtoint ptr %state.i309 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %state.i309, align 4
  %pf.i310 = getelementptr inbounds %struct.nf_hook_state, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %pf.i310 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %pf.i310, align 1
  %dst.i311 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1
  %repldst_addr.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 6
  %repldst_mask.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 7
  %162 = zext i8 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %161, label %if.then120.conntrack_mt_repldst.exit_crit_edge [
    i8 2, label %if.then.i.i315
    i8 10, label %if.then3.i.i337
  ]

if.then120.conntrack_mt_repldst.exit_crit_edge:   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  br label %conntrack_mt_repldst.exit

if.then.i.i315:                                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  %163 = ptrtoint ptr %dst.i311 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %dst.i311, align 4
  %165 = ptrtoint ptr %repldst_addr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %repldst_addr.i, align 4
  %xor.i.i312 = xor i32 %166, %164
  %167 = ptrtoint ptr %repldst_mask.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %repldst_mask.i, align 4
  %and.i.i313 = and i32 %xor.i.i312, %168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i313)
  %cmp1.i.i314 = icmp eq i32 %and.i.i313, 0
  br label %conntrack_mt_repldst.exit

if.then3.i.i337:                                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %dst.i311 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dst.i311, align 4
  %171 = ptrtoint ptr %repldst_addr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %repldst_addr.i, align 4
  %xor.i.i.i316 = xor i32 %172, %170
  %173 = ptrtoint ptr %repldst_mask.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %repldst_mask.i, align 4
  %and.i.i.i317 = and i32 %xor.i.i.i316, %174
  %arrayidx6.i.i.i318 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1
  %175 = ptrtoint ptr %arrayidx6.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx6.i.i.i318, align 8
  %arrayidx8.i.i.i319 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 6, i32 0, i32 1
  %177 = ptrtoint ptr %arrayidx8.i.i.i319 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx8.i.i.i319, align 4
  %xor9.i.i.i320 = xor i32 %178, %176
  %arrayidx11.i.i.i321 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 7, i32 0, i32 1
  %179 = ptrtoint ptr %arrayidx11.i.i.i321 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx11.i.i.i321, align 4
  %and12.i.i.i322 = and i32 %xor9.i.i.i320, %180
  %or.i.i.i323 = or i32 %and12.i.i.i322, %and.i.i.i317
  %arrayidx14.i.i.i324 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 2
  %181 = ptrtoint ptr %arrayidx14.i.i.i324 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx14.i.i.i324, align 4
  %arrayidx16.i.i.i325 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 6, i32 0, i32 2
  %183 = ptrtoint ptr %arrayidx16.i.i.i325 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx16.i.i.i325, align 4
  %xor17.i.i.i326 = xor i32 %184, %182
  %arrayidx19.i.i.i327 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 7, i32 0, i32 2
  %185 = ptrtoint ptr %arrayidx19.i.i.i327 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx19.i.i.i327, align 4
  %and20.i.i.i328 = and i32 %xor17.i.i.i326, %186
  %or21.i.i.i329 = or i32 %or.i.i.i323, %and20.i.i.i328
  %arrayidx23.i.i.i330 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 3
  %187 = ptrtoint ptr %arrayidx23.i.i.i330 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx23.i.i.i330, align 8
  %arrayidx25.i.i.i331 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 6, i32 0, i32 3
  %189 = ptrtoint ptr %arrayidx25.i.i.i331 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx25.i.i.i331, align 4
  %xor26.i.i.i332 = xor i32 %190, %188
  %arrayidx28.i.i.i333 = getelementptr %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 7, i32 0, i32 3
  %191 = ptrtoint ptr %arrayidx28.i.i.i333 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx28.i.i.i333, align 4
  %and29.i.i.i334 = and i32 %xor26.i.i.i332, %192
  %or30.i.i.i335 = or i32 %or21.i.i.i329, %and29.i.i.i334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i.i335)
  %tobool.i.not.i.i336 = icmp eq i32 %or30.i.i.i335, 0
  br label %conntrack_mt_repldst.exit

conntrack_mt_repldst.exit:                        ; preds = %if.then3.i.i337, %if.then.i.i315, %if.then120.conntrack_mt_repldst.exit_crit_edge
  %retval.0.i.i338 = phi i1 [ %cmp1.i.i314, %if.then.i.i315 ], [ %tobool.i.not.i.i336, %if.then3.i.i337 ], [ false, %if.then120.conntrack_mt_repldst.exit_crit_edge ]
  %invert_flags124 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %193 = ptrtoint ptr %invert_flags124 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %invert_flags124, align 4
  %195 = lshr i16 %194, 5
  %.lobit241 = and i16 %195, 1
  %196 = xor i16 %.lobit241, 1
  %197 = zext i1 %retval.0.i.i338 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %196, i16 %197)
  %tobool131.not = icmp eq i16 %196, %197
  br i1 %tobool131.not, label %conntrack_mt_repldst.exit.if.end134_crit_edge, label %conntrack_mt_repldst.exit.cleanup191_crit_edge

conntrack_mt_repldst.exit.cleanup191_crit_edge:   ; preds = %conntrack_mt_repldst.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

conntrack_mt_repldst.exit.if.end134_crit_edge:    ; preds = %conntrack_mt_repldst.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134

if.end134:                                        ; preds = %conntrack_mt_repldst.exit.if.end134_crit_edge, %if.end115.if.end134_crit_edge
  %198 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %par, align 4
  %revision = getelementptr inbounds %struct.xt_match, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %201)
  %cmp136.not = icmp eq i8 %201, 3
  br i1 %cmp136.not, label %if.else142, label %if.then138

if.then138:                                       ; preds = %if.end134
  %202 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool.not.i = icmp eq i16 %202, 0
  br i1 %tobool.not.i, label %if.then138.if.end.i_crit_edge, label %land.lhs.true.i

if.then138.if.end.i_crit_edge:                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then138
  %protonum.i.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %203 = ptrtoint ptr %protonum.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %protonum.i.i, align 2
  %l4proto.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 10
  %205 = ptrtoint ptr %l4proto.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %l4proto.i, align 4
  %207 = zext i8 %204 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %206, i16 %207)
  %cmp.i = icmp eq i16 %206, %207
  %invert_flags.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %208 = ptrtoint ptr %invert_flags.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %invert_flags.i, align 4
  %210 = lshr i16 %209, 1
  %.lobit115.i = and i16 %210, 1
  %211 = xor i16 %.lobit115.i, 1
  %212 = zext i1 %cmp.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %211, i16 %212)
  %tobool8.not.i = icmp eq i16 %211, %212
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup191_crit_edge

land.lhs.true.i.cleanup191_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then138.if.end.i_crit_edge
  %213 = and i16 %27, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %213)
  %tobool12.not.i = icmp eq i16 %213, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end27.i_crit_edge, label %land.lhs.true13.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

land.lhs.true13.i:                                ; preds = %if.end.i
  %u.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %214 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %u.i, align 8
  %origsrc_port.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 11
  %216 = ptrtoint ptr %origsrc_port.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %origsrc_port.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %215, i16 %217)
  %cmp16.i = icmp eq i16 %215, %217
  %invert_flags18.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %218 = ptrtoint ptr %invert_flags18.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %invert_flags18.i, align 4
  %220 = lshr i16 %219, 8
  %.lobit114.i = and i16 %220, 1
  %221 = xor i16 %.lobit114.i, 1
  %222 = zext i1 %cmp16.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %221, i16 %222)
  %tobool25.not.i = icmp eq i16 %221, %222
  br i1 %tobool25.not.i, label %land.lhs.true13.i.if.end27.i_crit_edge, label %land.lhs.true13.i.cleanup191_crit_edge

land.lhs.true13.i.cleanup191_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true13.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %land.lhs.true13.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %223 = and i16 %27, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %223)
  %tobool31.not.i = icmp eq i16 %223, 0
  br i1 %tobool31.not.i, label %if.end27.i.if.end47.i_crit_edge, label %land.lhs.true32.i

if.end27.i.if.end47.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

land.lhs.true32.i:                                ; preds = %if.end27.i
  %u33.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %224 = ptrtoint ptr %u33.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %u33.i, align 4
  %origdst_port.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 12
  %226 = ptrtoint ptr %origdst_port.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %origdst_port.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %225, i16 %227)
  %cmp36.i = icmp eq i16 %225, %227
  %invert_flags38.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %228 = ptrtoint ptr %invert_flags38.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %invert_flags38.i, align 4
  %230 = lshr i16 %229, 9
  %.lobit113.i = and i16 %230, 1
  %231 = xor i16 %.lobit113.i, 1
  %232 = zext i1 %cmp36.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %231, i16 %232)
  %tobool45.not.i = icmp eq i16 %231, %232
  br i1 %tobool45.not.i, label %land.lhs.true32.i.if.end47.i_crit_edge, label %land.lhs.true32.i.cleanup191_crit_edge

land.lhs.true32.i.cleanup191_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true32.i.if.end47.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.i

if.end47.i:                                       ; preds = %land.lhs.true32.i.if.end47.i_crit_edge, %if.end27.i.if.end47.i_crit_edge
  %233 = and i16 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %tobool54.not.i = icmp eq i16 %233, 0
  br i1 %tobool54.not.i, label %if.end47.i.if.end71.i_crit_edge, label %land.lhs.true55.i

if.end47.i.if.end71.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i

land.lhs.true55.i:                                ; preds = %if.end47.i
  %u57.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 1
  %234 = ptrtoint ptr %u57.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %u57.i, align 8
  %replsrc_port.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 13
  %236 = ptrtoint ptr %replsrc_port.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %replsrc_port.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %235, i16 %237)
  %cmp60.i = icmp eq i16 %235, %237
  %invert_flags62.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %238 = ptrtoint ptr %invert_flags62.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %invert_flags62.i, align 4
  %240 = lshr i16 %239, 10
  %.lobit112.i = and i16 %240, 1
  %241 = xor i16 %.lobit112.i, 1
  %242 = zext i1 %cmp60.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %241, i16 %242)
  %tobool69.not.i = icmp eq i16 %241, %242
  br i1 %tobool69.not.i, label %land.lhs.true55.i.if.end71.i_crit_edge, label %land.lhs.true55.i.cleanup191_crit_edge

land.lhs.true55.i.cleanup191_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true55.i.if.end71.i_crit_edge:           ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i

if.end71.i:                                       ; preds = %land.lhs.true55.i.if.end71.i_crit_edge, %if.end47.i.if.end71.i_crit_edge
  %243 = and i16 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool75.not.i = icmp eq i16 %243, 0
  br i1 %tobool75.not.i, label %if.end71.i.if.end146_crit_edge, label %land.lhs.true76.i

if.end71.i.if.end146_crit_edge:                   ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

land.lhs.true76.i:                                ; preds = %if.end71.i
  %u78.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 1
  %244 = ptrtoint ptr %u78.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %u78.i, align 4
  %repldst_port.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 14
  %246 = ptrtoint ptr %repldst_port.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %repldst_port.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %245, i16 %247)
  %cmp81.i = icmp eq i16 %245, %247
  %invert_flags83.i = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %248 = ptrtoint ptr %invert_flags83.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %invert_flags83.i, align 4
  %250 = lshr i16 %249, 11
  %.lobit.i = and i16 %250, 1
  %251 = xor i16 %.lobit.i, 1
  %252 = zext i1 %cmp81.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %251, i16 %252)
  %tobool90.not.i = icmp eq i16 %251, %252
  br i1 %tobool90.not.i, label %land.lhs.true76.i.if.end146_crit_edge, label %land.lhs.true76.i.cleanup191_crit_edge

land.lhs.true76.i.cleanup191_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true76.i.if.end146_crit_edge:            ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.else142:                                       ; preds = %if.end134
  %match_flags.i339 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 15
  %253 = ptrtoint ptr %match_flags.i339 to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %match_flags.i339, align 2
  %255 = and i16 %254, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %255)
  %tobool.not.i340 = icmp eq i16 %255, 0
  br i1 %tobool.not.i340, label %if.else142.if.end.i349_crit_edge, label %land.lhs.true.i347

if.else142.if.end.i349_crit_edge:                 ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i349

land.lhs.true.i347:                               ; preds = %if.else142
  %protonum.i.i341 = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %256 = ptrtoint ptr %protonum.i.i341 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %protonum.i.i341, align 2
  %l4proto.i342 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 10
  %258 = ptrtoint ptr %l4proto.i342 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %l4proto.i342, align 4
  %260 = zext i8 %257 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %259, i16 %260)
  %cmp.i343 = icmp eq i16 %259, %260
  %invert_flags.i344 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 16
  %261 = ptrtoint ptr %invert_flags.i344 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %invert_flags.i344, align 4
  %263 = lshr i16 %262, 1
  %.lobit.i345 = and i16 %263, 1
  %264 = xor i16 %.lobit.i345, 1
  %265 = zext i1 %cmp.i343 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %264, i16 %265)
  %tobool8.not.i346 = icmp eq i16 %264, %265
  br i1 %tobool8.not.i346, label %land.lhs.true.i347.if.end.i349_crit_edge, label %land.lhs.true.i347.cleanup191_crit_edge

land.lhs.true.i347.cleanup191_crit_edge:          ; preds = %land.lhs.true.i347
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true.i347.if.end.i349_crit_edge:         ; preds = %land.lhs.true.i347
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i349

if.end.i349:                                      ; preds = %land.lhs.true.i347.if.end.i349_crit_edge, %if.else142.if.end.i349_crit_edge
  %266 = and i16 %254, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %266)
  %tobool12.not.i348 = icmp eq i16 %266, 0
  br i1 %tobool12.not.i348, label %if.end.i349.if.end20.i_crit_edge, label %land.lhs.true13.i352

if.end.i349.if.end20.i_crit_edge:                 ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

land.lhs.true13.i352:                             ; preds = %if.end.i349
  %origsrc_port.i350 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 11
  %267 = ptrtoint ptr %origsrc_port.i350 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %origsrc_port.i350, align 2
  %origsrc_port_high.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 19
  %269 = ptrtoint ptr %origsrc_port_high.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %origsrc_port_high.i, align 2
  %u.i351 = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %271 = ptrtoint ptr %u.i351 to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %u.i351, align 8
  %invert_flags14.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 16
  %273 = ptrtoint ptr %invert_flags14.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %invert_flags14.i, align 4
  %275 = and i16 %274, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %275)
  %tobool17.i = icmp ne i16 %275, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %272, i16 %268)
  %cmp.not.i.i = icmp uge i16 %272, %268
  call void @__sanitizer_cov_trace_cmp2(i16 %272, i16 %270)
  %cmp5.i.i = icmp ule i16 %272, %270
  %narrow.i.i = and i1 %cmp.not.i.i, %cmp5.i.i
  %tobool8.i.i = xor i1 %narrow.i.i, %tobool17.i
  br i1 %tobool8.i.i, label %land.lhs.true13.i352.if.end20.i_crit_edge, label %land.lhs.true13.i352.cleanup191_crit_edge

land.lhs.true13.i352.cleanup191_crit_edge:        ; preds = %land.lhs.true13.i352
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true13.i352.if.end20.i_crit_edge:        ; preds = %land.lhs.true13.i352
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true13.i352.if.end20.i_crit_edge, %if.end.i349.if.end20.i_crit_edge
  %276 = and i16 %254, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %276)
  %tobool24.not.i = icmp eq i16 %276, 0
  br i1 %tobool24.not.i, label %if.end20.i.if.end33.i_crit_edge, label %land.lhs.true25.i

if.end20.i.if.end33.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

land.lhs.true25.i:                                ; preds = %if.end20.i
  %origdst_port.i353 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 12
  %277 = ptrtoint ptr %origdst_port.i353 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %origdst_port.i353, align 4
  %origdst_port_high.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 20
  %279 = ptrtoint ptr %origdst_port_high.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %origdst_port_high.i, align 4
  %u26.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 4, i32 0, i32 1, i32 1, i32 1
  %281 = ptrtoint ptr %u26.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %u26.i, align 4
  %invert_flags27.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 16
  %283 = ptrtoint ptr %invert_flags27.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %invert_flags27.i, align 4
  %285 = and i16 %284, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %285)
  %tobool30.i = icmp ne i16 %285, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %282, i16 %278)
  %cmp.not.i88.i = icmp uge i16 %282, %278
  call void @__sanitizer_cov_trace_cmp2(i16 %282, i16 %280)
  %cmp5.i89.i = icmp ule i16 %282, %280
  %narrow.i90.i = and i1 %cmp.not.i88.i, %cmp5.i89.i
  %tobool8.i91.i = xor i1 %narrow.i90.i, %tobool30.i
  br i1 %tobool8.i91.i, label %land.lhs.true25.i.if.end33.i_crit_edge, label %land.lhs.true25.i.cleanup191_crit_edge

land.lhs.true25.i.cleanup191_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true25.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %land.lhs.true25.i.if.end33.i_crit_edge, %if.end20.i.if.end33.i_crit_edge
  %286 = and i16 %254, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %286)
  %tobool40.not.i = icmp eq i16 %286, 0
  br i1 %tobool40.not.i, label %if.end33.i.if.end50.i_crit_edge, label %land.lhs.true41.i

if.end33.i.if.end50.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

land.lhs.true41.i:                                ; preds = %if.end33.i
  %replsrc_port.i354 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 13
  %287 = ptrtoint ptr %replsrc_port.i354 to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %replsrc_port.i354, align 2
  %replsrc_port_high.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 21
  %289 = ptrtoint ptr %replsrc_port_high.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %replsrc_port_high.i, align 2
  %u43.i = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 0, i32 1
  %291 = ptrtoint ptr %u43.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %u43.i, align 8
  %invert_flags44.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 16
  %293 = ptrtoint ptr %invert_flags44.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %invert_flags44.i, align 4
  %295 = and i16 %294, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %295)
  %tobool47.i = icmp ne i16 %295, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %292, i16 %288)
  %cmp.not.i92.i = icmp uge i16 %292, %288
  call void @__sanitizer_cov_trace_cmp2(i16 %292, i16 %290)
  %cmp5.i93.i = icmp ule i16 %292, %290
  %narrow.i94.i = and i1 %cmp.not.i92.i, %cmp5.i93.i
  %tobool8.i95.i = xor i1 %narrow.i94.i, %tobool47.i
  br i1 %tobool8.i95.i, label %land.lhs.true41.i.if.end50.i_crit_edge, label %land.lhs.true41.i.cleanup191_crit_edge

land.lhs.true41.i.cleanup191_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true41.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.end50.i:                                       ; preds = %land.lhs.true41.i.if.end50.i_crit_edge, %if.end33.i.if.end50.i_crit_edge
  %296 = and i16 %254, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %296)
  %tobool54.not.i355 = icmp eq i16 %296, 0
  br i1 %tobool54.not.i355, label %if.end50.i.if.end146_crit_edge, label %land.lhs.true55.i358

if.end50.i.if.end146_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

land.lhs.true55.i358:                             ; preds = %if.end50.i
  %repldst_port.i356 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 14
  %297 = ptrtoint ptr %repldst_port.i356 to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %repldst_port.i356, align 4
  %repldst_port_high.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 22
  %299 = ptrtoint ptr %repldst_port_high.i to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %repldst_port_high.i, align 4
  %u57.i357 = getelementptr %struct.nf_conn, ptr %5, i32 0, i32 4, i32 1, i32 1, i32 1, i32 1
  %301 = ptrtoint ptr %u57.i357 to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %u57.i357, align 4
  %invert_flags58.i = getelementptr inbounds %struct.xt_conntrack_mtinfo3, ptr %2, i32 0, i32 16
  %303 = ptrtoint ptr %invert_flags58.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %invert_flags58.i, align 4
  %305 = and i16 %304, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %305)
  %tobool61.i = icmp ne i16 %305, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %302, i16 %298)
  %cmp.not.i96.i = icmp uge i16 %302, %298
  call void @__sanitizer_cov_trace_cmp2(i16 %302, i16 %300)
  %cmp5.i97.i = icmp ule i16 %302, %300
  %narrow.i98.i = and i1 %cmp.not.i96.i, %cmp5.i97.i
  %tobool8.i99.i = xor i1 %narrow.i98.i, %tobool61.i
  br i1 %tobool8.i99.i, label %land.lhs.true55.i358.if.end146_crit_edge, label %land.lhs.true55.i358.cleanup191_crit_edge

land.lhs.true55.i358.cleanup191_crit_edge:        ; preds = %land.lhs.true55.i358
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true55.i358.if.end146_crit_edge:         ; preds = %land.lhs.true55.i358
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.end146:                                        ; preds = %land.lhs.true55.i358.if.end146_crit_edge, %if.end50.i.if.end146_crit_edge, %land.lhs.true76.i.if.end146_crit_edge, %if.end71.i.if.end146_crit_edge
  %306 = and i16 %27, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %306)
  %tobool150.not = icmp eq i16 %306, 0
  br i1 %tobool150.not, label %if.end146.if.end169_crit_edge, label %land.lhs.true151

if.end146.if.end169_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

land.lhs.true151:                                 ; preds = %if.end146
  %conv152 = zext i16 %status_mask to i32
  %status153 = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 5
  %307 = ptrtoint ptr %status153 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %status153, align 8
  %and154 = and i32 %308, %conv152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155 = icmp ne i32 %and154, 0
  %invert_flags160 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %309 = ptrtoint ptr %invert_flags160 to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %invert_flags160, align 4
  %311 = lshr i16 %310, 6
  %.lobit240 = and i16 %311, 1
  %312 = xor i16 %.lobit240, 1
  %313 = zext i1 %tobool155 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %312, i16 %313)
  %tobool167.not = icmp eq i16 %312, %313
  br i1 %tobool167.not, label %land.lhs.true151.if.end169_crit_edge, label %land.lhs.true151.cleanup191_crit_edge

land.lhs.true151.cleanup191_crit_edge:            ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.lhs.true151.if.end169_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169

if.end169:                                        ; preds = %land.lhs.true151.if.end169_crit_edge, %if.end146.if.end169_crit_edge
  %314 = and i16 %27, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %314)
  %tobool173.not = icmp eq i16 %314, 0
  br i1 %tobool173.not, label %if.end169.if.end190_crit_edge, label %if.then174

if.end169.if.end190_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.then174:                                       ; preds = %if.end169
  %timeout1.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 2
  %315 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %timeout1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %317 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %316, %317
  %318 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #6
  %div = udiv i32 %318, 100
  %expires_min = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 8
  %319 = ptrtoint ptr %expires_min to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %expires_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %320)
  %cmp176.not = icmp ult i32 %div, %320
  br i1 %cmp176.not, label %if.then174.land.end_crit_edge, label %land.rhs

if.then174.land.end_crit_edge:                    ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #8
  %expires_max = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 9
  %321 = ptrtoint ptr %expires_max to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %expires_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %322)
  %cmp178 = icmp ule i32 %div, %322
  %phi.cast = zext i1 %cmp178 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then174.land.end_crit_edge
  %323 = phi i32 [ 0, %if.then174.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %invert_flags180 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, ptr %2, i32 0, i32 16
  %324 = ptrtoint ptr %invert_flags180 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %invert_flags180, align 4
  %326 = lshr i16 %325, 7
  %.lobit = and i16 %326, 1
  %327 = xor i16 %.lobit, 1
  %328 = zext i16 %327 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %323, i32 %328)
  %tobool187.not = icmp eq i32 %323, %328
  br i1 %tobool187.not, label %land.end.if.end190_crit_edge, label %land.end.cleanup191_crit_edge

land.end.cleanup191_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup191

land.end.if.end190_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

if.end190:                                        ; preds = %land.end.if.end190_crit_edge, %if.end169.if.end190_crit_edge
  br label %cleanup191

cleanup191:                                       ; preds = %if.end190, %land.end.cleanup191_crit_edge, %land.lhs.true151.cleanup191_crit_edge, %land.lhs.true55.i358.cleanup191_crit_edge, %land.lhs.true41.i.cleanup191_crit_edge, %land.lhs.true25.i.cleanup191_crit_edge, %land.lhs.true13.i352.cleanup191_crit_edge, %land.lhs.true.i347.cleanup191_crit_edge, %land.lhs.true76.i.cleanup191_crit_edge, %land.lhs.true55.i.cleanup191_crit_edge, %land.lhs.true32.i.cleanup191_crit_edge, %land.lhs.true13.i.cleanup191_crit_edge, %land.lhs.true.i.cleanup191_crit_edge, %conntrack_mt_repldst.exit.cleanup191_crit_edge, %conntrack_mt_replsrc.exit.cleanup191_crit_edge, %conntrack_mt_origdst.exit.cleanup191_crit_edge, %conntrack_mt_origsrc.exit.cleanup191_crit_edge, %land.lhs.true.cleanup191_crit_edge, %if.end19.cleanup191_crit_edge, %if.end3.cleanup191_crit_edge
  %retval.1 = phi i1 [ true, %if.end190 ], [ false, %land.end.cleanup191_crit_edge ], [ %not.tobool29.not, %if.end19.cleanup191_crit_edge ], [ false, %land.lhs.true.cleanup191_crit_edge ], [ false, %conntrack_mt_origsrc.exit.cleanup191_crit_edge ], [ false, %conntrack_mt_origdst.exit.cleanup191_crit_edge ], [ false, %conntrack_mt_replsrc.exit.cleanup191_crit_edge ], [ false, %conntrack_mt_repldst.exit.cleanup191_crit_edge ], [ false, %land.lhs.true151.cleanup191_crit_edge ], [ false, %land.lhs.true.i.cleanup191_crit_edge ], [ false, %land.lhs.true13.i.cleanup191_crit_edge ], [ false, %land.lhs.true32.i.cleanup191_crit_edge ], [ false, %land.lhs.true55.i.cleanup191_crit_edge ], [ false, %land.lhs.true76.i.cleanup191_crit_edge ], [ false, %land.lhs.true.i347.cleanup191_crit_edge ], [ false, %land.lhs.true13.i352.cleanup191_crit_edge ], [ false, %land.lhs.true25.i.cleanup191_crit_edge ], [ false, %land.lhs.true41.i.cleanup191_crit_edge ], [ false, %land.lhs.true55.i358.cleanup191_crit_edge ], [ false, %if.end3.cleanup191_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__UNIQUE_ID_file581, !1, !"__UNIQUE_ID_file581", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_conntrack.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_license582, !1, !"__UNIQUE_ID_license582", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author583, !4, !"__UNIQUE_ID_author583", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_conntrack.c", i32 19, i32 1}
!5 = !{ptr @__UNIQUE_ID_author584, !6, !"__UNIQUE_ID_author584", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_conntrack.c", i32 20, i32 1}
!7 = !{ptr @__UNIQUE_ID_description585, !8, !"__UNIQUE_ID_description585", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_conntrack.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias586, !10, !"__UNIQUE_ID_alias586", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_conntrack.c", i32 22, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias587, !12, !"__UNIQUE_ID_alias587", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_conntrack.c", i32 23, i32 1}
!13 = !{ptr @__initcall__kmod_xt_conntrack__588_326_conntrack_mt_init6, !14, !"__initcall__kmod_xt_conntrack__588_326_conntrack_mt_init6", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_conntrack.c", i32 326, i32 1}
!15 = !{ptr @__exitcall_conntrack_mt_exit, !16, !"__exitcall_conntrack_mt_exit", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_conntrack.c", i32 327, i32 1}
!17 = !{ptr @conntrack_mt_reg, !18, !"conntrack_mt_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_conntrack.c", i32 282, i32 24}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_conntrack.c", i32 272, i32 3}
!21 = !{ptr @conntrack_mt_check._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.conntrack_mt_check, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @conntrack_mt_check._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @conntrack_mt_check._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
