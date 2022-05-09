; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_nat.c_pt.bc'
source_filename = "../net/netfilter/xt_nat.c"
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
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.xt_action_param = type { %union.anon.151, %union.anon.152, ptr, i32, i16, i8 }
%union.anon.151 = type { ptr }
%union.anon.152 = type { ptr }
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
%struct.nf_nat_ipv4_multi_range_compat = type { i32, [1 x %struct.nf_nat_ipv4_range] }
%struct.nf_nat_ipv4_range = type { i32, i32, i32, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }

@xt_nat_target_reg = internal global [6 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SNAT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @xt_snat_target_v0, ptr @xt_nat_checkentry_v0, ptr @xt_nat_destroy, ptr null, ptr @.str, i32 20, i32 0, i32 18, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"DNAT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @xt_dnat_target_v0, ptr @xt_nat_checkentry_v0, ptr @xt_nat_destroy, ptr null, ptr @.str, i32 20, i32 0, i32 9, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SNAT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @xt_snat_target_v1, ptr @xt_nat_checkentry, ptr @xt_nat_destroy, ptr null, ptr @.str, i32 40, i32 0, i32 18, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"DNAT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @xt_dnat_target_v1, ptr @xt_nat_checkentry, ptr @xt_nat_destroy, ptr null, ptr @.str, i32 40, i32 0, i32 9, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"SNAT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @xt_snat_target_v2, ptr @xt_nat_checkentry, ptr @xt_nat_destroy, ptr null, ptr @.str, i32 44, i32 0, i32 18, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"DNAT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @xt_dnat_target_v2, ptr @xt_nat_checkentry, ptr @xt_nat_destroy, ptr null, ptr @.str, i32 44, i32 0, i32 9, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_nat__581_238_xt_nat_init6 = internal global ptr @xt_nat_init, section ".initcall6.init", align 4
@__exitcall_xt_nat_exit = internal global ptr @xt_nat_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file582 = internal constant [33 x i8] c"xt_nat.file=net/netfilter/xt_nat\00", section ".modinfo", align 1
@__UNIQUE_ID_license583 = internal constant [19 x i8] c"xt_nat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author584 = internal constant [48 x i8] c"xt_nat.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [22 x i8] c"xt_nat.alias=ipt_SNAT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias586 = internal constant [22 x i8] c"xt_nat.alias=ipt_DNAT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias587 = internal constant [23 x i8] c"xt_nat.alias=ip6t_SNAT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias588 = internal constant [23 x i8] c"xt_nat.alias=ip6t_DNAT\00", section ".modinfo", align 1
@__UNIQUE_ID_description589 = internal constant [49 x i8] c"xt_nat.description=SNAT and DNAT targets support\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/xt_nat.c\00", [41 x i8] zeroinitializer }, align 32
@xt_nat_checkentry_v0._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xt_nat_checkentry_v0 = private unnamed_addr constant [21 x i8] c"xt_nat_checkentry_v0\00", align 1
@xt_nat_checkentry_v0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.xt_nat_checkentry_v0, ptr @.str.1, i32 21, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016xt_nat: multiple ranges no longer supported\0A\00", [49 x i8] zeroinitializer }, align 32
@xt_nat_checkentry_v0._entry_ptr = internal global ptr @xt_nat_checkentry_v0._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 159, i32 13 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 60, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [26 x i8] c"../net/netfilter/xt_nat.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 21, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_alias586, ptr @__UNIQUE_ID_alias587, ptr @__UNIQUE_ID_alias588, ptr @__UNIQUE_ID_author584, ptr @__UNIQUE_ID_description589, ptr @__UNIQUE_ID_file582, ptr @__UNIQUE_ID_license583, ptr @__exitcall_xt_nat_exit, ptr @__initcall__kmod_xt_nat__581_238_xt_nat_init6, ptr @xt_nat_checkentry_v0._entry, ptr @xt_nat_checkentry_v0._entry_ptr, ptr @xt_nat_exit, ptr @.str, ptr @.str.1, ptr @xt_nat_checkentry_v0._rs, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_nat_checkentry_v0._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_nat_checkentry_v0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xt_nat_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_targets(ptr noundef nonnull @xt_nat_target_reg, i32 noundef 6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_nat_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @xt_nat_target_reg, i32 noundef 6) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_snat_target_v0(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #5
  %3 = getelementptr inbounds i8, ptr %range, i32 40
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !41
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %6, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %entry
  %and.i = and i32 %6, 7
  %7 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %land.rhs.do.end_crit_edge [
    i32 2, label %land.rhs.if.end_crit_edge
    i32 1, label %land.rhs.if.end_crit_edge28
    i32 4, label %land.rhs.if.end_crit_edge29
  ]

land.rhs.if.end_crit_edge29:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.if.end_crit_edge28:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 62, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.rhs.if.end_crit_edge28, %land.rhs.if.end_crit_edge29
  %8 = inttoptr i32 %and1.i to ptr
  %range23 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1
  %min_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %base_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 5
  %9 = ptrtoint ptr %base_proto.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %base_proto.i, align 4
  %10 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 28)
  %12 = ptrtoint ptr %range23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %range23, align 4
  %14 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %range, align 4
  %min_ip.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %min_ip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_ip.i, align 4
  %17 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %min_addr.i, align 4
  %max_ip.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %max_ip.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_ip.i, align 4
  %20 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_addr.i, align 4
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %min.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %min.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %min.i, align 4
  %23 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %min_proto.i, align 4
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %max.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max.i, align 2
  %26 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %max_proto.i, align 2
  %call24 = call i32 @nf_nat_setup_info(ptr noundef %8, ptr noundef nonnull %range, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #5
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_nat_checkentry_v0(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @xt_nat_checkentry_v0._rs, ptr noundef nonnull @__func__.xt_nat_checkentry_v0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 4
  %call4 = tail call i32 @nf_ct_netns_get(ptr noundef %5, i8 noundef zeroext %7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xt_nat_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_dnat_target_v0(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #5
  %3 = getelementptr inbounds i8, ptr %range, i32 40
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !41
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %6, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %entry
  %and.i = and i32 %6, 7
  %7 = add nsw i32 %and.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %land.rhs.do.end_crit_edge, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 78, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  %9 = inttoptr i32 %and1.i to ptr
  %range22 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1
  %min_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %max_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %base_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 5
  %10 = ptrtoint ptr %base_proto.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %base_proto.i, align 4
  %11 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 28)
  %13 = ptrtoint ptr %range22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %range22, align 4
  %15 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %range, align 4
  %min_ip.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %min_ip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_ip.i, align 4
  %18 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %min_addr.i, align 4
  %max_ip.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %max_ip.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_ip.i, align 4
  %21 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %max_addr.i, align 4
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %min.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %min.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %min.i, align 4
  %24 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %min_proto.i, align 4
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %max.i = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %2, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max.i, align 2
  %27 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %max_proto.i, align 2
  %call23 = call i32 @nf_nat_setup_info(ptr noundef %9, ptr noundef nonnull %range, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #5
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_snat_target_v1(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #5
  %3 = getelementptr inbounds i8, ptr %range, i32 40
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !41
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %6, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %entry
  %and.i = and i32 %6, 7
  %7 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and.i, label %land.rhs.do.end_crit_edge [
    i32 2, label %land.rhs.if.end_crit_edge
    i32 1, label %land.rhs.if.end_crit_edge27
    i32 4, label %land.rhs.if.end_crit_edge28
  ]

land.rhs.if.end_crit_edge28:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.if.end_crit_edge27:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 95, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.rhs.if.end_crit_edge27, %land.rhs.if.end_crit_edge28
  %8 = inttoptr i32 %and1.i to ptr
  %9 = call ptr @memcpy(ptr %range, ptr %2, i32 40)
  %base_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 5
  %10 = ptrtoint ptr %base_proto to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %base_proto, align 4
  %call23 = call i32 @nf_nat_setup_info(ptr noundef %8, ptr noundef nonnull %range, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #5
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_nat_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %1, i8 noundef zeroext %3) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_dnat_target_v1(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #5
  %3 = getelementptr inbounds i8, ptr %range, i32 40
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !41
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %6, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %entry
  %and.i = and i32 %6, 7
  %7 = add nsw i32 %and.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %land.rhs.do.end_crit_edge, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  %9 = inttoptr i32 %and1.i to ptr
  %10 = call ptr @memcpy(ptr %range, ptr %2, i32 40)
  %base_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 5
  %11 = ptrtoint ptr %base_proto to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %base_proto, align 4
  %call22 = call i32 @nf_nat_setup_info(ptr noundef %9, ptr noundef nonnull %range, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #5
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_snat_target_v2(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %entry
  %and.i = and i32 %4, 7
  %5 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and.i, label %land.rhs.do.end_crit_edge [
    i32 2, label %land.rhs.if.end_crit_edge
    i32 1, label %land.rhs.if.end_crit_edge27
    i32 4, label %land.rhs.if.end_crit_edge28
  ]

land.rhs.if.end_crit_edge28:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.if.end_crit_edge27:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 131, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.rhs.if.end_crit_edge27, %land.rhs.if.end_crit_edge28
  %6 = inttoptr i32 %and1.i to ptr
  %call23 = tail call i32 @nf_nat_setup_info(ptr noundef %6, ptr noundef %2, i32 noundef 0) #5
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_dnat_target_v2(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not = icmp eq i32 %and1.i, 0
  br i1 %cmp.not, label %entry.do.end_crit_edge, label %land.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %entry
  %and.i = and i32 %4, 7
  %5 = add nsw i32 %and.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %5)
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %land.rhs.do.end_crit_edge, label %land.rhs.if.end_crit_edge, !prof !42

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 145, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  %7 = inttoptr i32 %and1.i to ptr
  %call22 = tail call i32 @nf_nat_setup_info(ptr noundef %7, ptr noundef %2, i32 noundef 1) #5
  ret i32 %call22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_xt_nat__581_238_xt_nat_init6, !1, !"__initcall__kmod_xt_nat__581_238_xt_nat_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_nat.c", i32 238, i32 1}
!2 = !{ptr @__exitcall_xt_nat_exit, !3, !"__exitcall_xt_nat_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_nat.c", i32 239, i32 1}
!4 = !{ptr @__UNIQUE_ID_file582, !5, !"__UNIQUE_ID_file582", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_nat.c", i32 241, i32 1}
!6 = !{ptr @__UNIQUE_ID_license583, !5, !"__UNIQUE_ID_license583", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author584, !8, !"__UNIQUE_ID_author584", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_nat.c", i32 242, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias585, !10, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_nat.c", i32 243, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias586, !12, !"__UNIQUE_ID_alias586", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_nat.c", i32 244, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias587, !14, !"__UNIQUE_ID_alias587", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_nat.c", i32 245, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias588, !16, !"__UNIQUE_ID_alias588", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_nat.c", i32 246, i32 1}
!17 = !{ptr @__UNIQUE_ID_description589, !18, !"__UNIQUE_ID_description589", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_nat.c", i32 247, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_nat.c", i32 159, i32 13}
!21 = !{ptr @xt_nat_target_reg, !22, !"xt_nat_target_reg", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_nat.c", i32 150, i32 25}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_nat.c", i32 60, i32 2}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_nat.c", i32 21, i32 3}
!27 = !{ptr @xt_nat_checkentry_v0._rs, !26, !"_rs", i1 false, i1 false}
!28 = !{ptr @__func__.xt_nat_checkentry_v0, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @xt_nat_checkentry_v0._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @xt_nat_checkentry_v0._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 1, i32 2000}
