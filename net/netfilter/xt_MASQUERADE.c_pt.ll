; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_MASQUERADE.c_pt.bc'
source_filename = "../net/netfilter/xt_MASQUERADE.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xt_action_param = type { %union.anon.151, %union.anon.152, ptr, i32, i16, i8 }
%union.anon.151 = type { ptr }
%union.anon.152 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.nf_nat_ipv4_multi_range_compat = type { i32, [1 x %struct.nf_nat_ipv4_range] }
%struct.nf_nat_ipv4_range = type { i32, i32, i32, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }

@__UNIQUE_ID_file581 = internal constant [47 x i8] c"xt_MASQUERADE.file=net/netfilter/xt_MASQUERADE\00", section ".modinfo", align 1
@__UNIQUE_ID_license582 = internal constant [26 x i8] c"xt_MASQUERADE.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author583 = internal constant [66 x i8] c"xt_MASQUERADE.author=Netfilter Core Team <coreteam@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description584 = internal constant [58 x i8] c"xt_MASQUERADE.description=Xtables: automatic-address SNAT\00", section ".modinfo", align 1
@masquerade_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"MASQUERADE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @masquerade_tg6, ptr @masquerade_tg6_checkentry, ptr @masquerade_tg_destroy, ptr null, ptr @.str, i32 40, i32 0, i32 16, i16 0, i16 10 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"MASQUERADE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @masquerade_tg, ptr @masquerade_tg_check, ptr @masquerade_tg_destroy, ptr null, ptr @.str, i32 20, i32 0, i32 16, i16 0, i16 2 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_MASQUERADE__587_123_masquerade_tg_init6 = internal global ptr @masquerade_tg_init, section ".initcall6.init", align 4
@__exitcall_masquerade_tg_exit = internal global ptr @masquerade_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias588 = internal constant [36 x i8] c"xt_MASQUERADE.alias=ip6t_MASQUERADE\00", section ".modinfo", align 1
@__UNIQUE_ID_alias589 = internal constant [35 x i8] c"xt_MASQUERADE.alias=ipt_MASQUERADE\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@masquerade_tg_check.__UNIQUE_ID_ddebug585 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xt_MASQUERADE\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"masquerade_tg_check\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/xt_MASQUERADE.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bad MAP_IPS.\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xt_MASQUERADE: bad MAP_IPS.\0A\00", [35 x i8] zeroinitializer }, align 32
@masquerade_tg_check.__UNIQUE_ID_ddebug586 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad rangesize %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xt_MASQUERADE: bad rangesize %u\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 79, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 24, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [33 x i8] c"../net/netfilter/xt_MASQUERADE.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 28, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias588, ptr @__UNIQUE_ID_alias589, ptr @__UNIQUE_ID_author583, ptr @__UNIQUE_ID_description584, ptr @__UNIQUE_ID_file581, ptr @__UNIQUE_ID_license582, ptr @__exitcall_masquerade_tg_exit, ptr @__initcall__kmod_xt_MASQUERADE__587_123_masquerade_tg_init6, ptr @masquerade_tg_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @masquerade_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_targets(ptr noundef nonnull @masquerade_tg_reg, i32 noundef 2) #4
  tail call void @nf_nat_masquerade_inet_unregister_notifiers() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_masquerade_inet_unregister_notifiers() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @masquerade_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @masquerade_tg_reg, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nf_nat_masquerade_inet_register_notifiers() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_targets(ptr noundef nonnull @masquerade_tg_reg, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @masquerade_tg6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out.i, align 4
  %call1 = tail call i32 @nf_nat_masquerade_ipv6(ptr noundef %skb, ptr noundef %2, ptr noundef %6) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @masquerade_tg6_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %5, i8 noundef zeroext %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @masquerade_tg_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @masquerade_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #4
  %0 = getelementptr inbounds i8, ptr %range, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %2 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %range1 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %range1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %range1, align 4
  %7 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %range, align 4
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %min = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %4, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %min to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %min, align 4
  %10 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %min_proto, align 4
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %max = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %4, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max, align 2
  %13 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %max_proto, align 2
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv.i = zext i8 %17 to i32
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out.i, align 4
  %call8 = call i32 @nf_nat_masquerade_ipv4(ptr noundef %skb, i32 noundef %conv.i, ptr noundef nonnull %range, ptr noundef %19) #4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #4
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @masquerade_tg_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %range = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %range, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @masquerade_tg_check.__UNIQUE_ID_ddebug585, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@masquerade_tg_check, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !39

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @masquerade_tg_check.__UNIQUE_ID_ddebug585, ptr noundef nonnull @.str.5) #4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end24, label %do.body7

do.body7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @masquerade_tg_check.__UNIQUE_ID_ddebug586, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@masquerade_tg_check, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !39

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @masquerade_tg_check.__UNIQUE_ID_ddebug586, ptr noundef nonnull @.str.7, i32 noundef %7) #4
  br label %cleanup

if.end24:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %call25 = tail call i32 @nf_ct_netns_get(ptr noundef %9, i8 noundef zeroext %11) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then19, %do.body7, %if.then4, %do.body
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ -22, %if.then4 ], [ -22, %if.then19 ], [ -22, %do.body ], [ -22, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_masquerade_ipv6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_masquerade_ipv4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_masquerade_inet_register_notifiers() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__UNIQUE_ID_file581, !1, !"__UNIQUE_ID_file581", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_license582, !1, !"__UNIQUE_ID_license582", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author583, !4, !"__UNIQUE_ID_author583", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 15, i32 1}
!5 = !{ptr @__UNIQUE_ID_description584, !6, !"__UNIQUE_ID_description584", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 16, i32 1}
!7 = !{ptr @__initcall__kmod_xt_MASQUERADE__587_123_masquerade_tg_init6, !8, !"__initcall__kmod_xt_MASQUERADE__587_123_masquerade_tg_init6", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 123, i32 1}
!9 = !{ptr @__exitcall_masquerade_tg_exit, !10, !"__exitcall_masquerade_tg_exit", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 124, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias588, !12, !"__UNIQUE_ID_alias588", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 126, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias589, !14, !"__UNIQUE_ID_alias589", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 128, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 79, i32 13}
!17 = !{ptr @masquerade_tg_reg, !18, !"masquerade_tg_reg", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 72, i32 25}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 24, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @masquerade_tg_check.__UNIQUE_ID_ddebug585, !20, !"__UNIQUE_ID_ddebug585", i1 false, i1 false}
!25 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/xt_MASQUERADE.c", i32 28, i32 3}
!28 = !{ptr @masquerade_tg_check.__UNIQUE_ID_ddebug586, !27, !"__UNIQUE_ID_ddebug586", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148954796, i64 2148954801, i64 2148954814, i64 2148954858, i64 2148954892, i64 2148954913}
