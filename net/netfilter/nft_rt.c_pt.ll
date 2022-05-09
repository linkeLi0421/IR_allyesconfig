; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_rt.c_pt.bc'
source_filename = "../net/netfilter/nft_rt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.flowi = type { %union.anon.145 }
%union.anon.145 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_rt = type { i8, i8, [2 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.112, i32, %struct.list_head, ptr }
%union.anon.112 = type { %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/nft_rt.c\00", [41 x i8] zeroinitializer }, align 32
@nft_rt_get_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_rt_get_eval, ptr null, i32 16, ptr @nft_rt_get_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_rt_get_dump, ptr @nft_rt_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_rt_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rt\00", [29 x i8] zeroinitializer }, align 32
@nft_rt_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nft_rt_type = dso_local global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_rt_get_ops, %struct.list_head zeroinitializer, ptr @.str.1, ptr null, ptr @nft_rt_policy, i32 2, i8 0, i8 0 }, section ".data..read_mostly", align 4
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@switch.table.nft_rt_get_init = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 4, i32 16, i32 2, i32 1], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 96, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [15 x i8] c"nft_rt_get_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 187, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 197, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"nft_rt_policy\00", align 1
@___asan_gen_.15 = private constant [26 x i8] c"../net/netfilter/nft_rt.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 105, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 1011, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [29 x i8] c"switch.table.nft_rt_get_init\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @nft_rt_get_ops, ptr @.str.1, ptr @nft_rt_policy, ptr @.str.2, ptr @switch.table.nft_rt_get_init], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rt_get_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rt_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nft_rt_get_init to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_rt_get_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #0 align 64 {
entry:
  %dst.i = alloca ptr, align 4
  %fl.i = alloca %struct.flowi, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %dreg = getelementptr inbounds %struct.nft_rt, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !21

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1013, i32 noundef 9, ptr noundef null) #4
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %and25.i = and i32 %8, -2
  %9 = inttoptr i32 %and25.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not = icmp eq i32 %and25.i, 0
  br i1 %tobool.not, label %skb_dst.exit.err_crit_edge, label %if.end

skb_dst.exit.err_crit_edge:                       ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end:                                           ; preds = %skb_dst.exit
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load66 = load i8, ptr %data.i, align 4
  %11 = zext i8 %bf.load66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load66, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb10
    i8 3, label %sw.bb20
    i8 4, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %tclassid = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 17
  %12 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tclassid, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.not = icmp eq i8 %18, 2
  br i1 %cmp.not, label %if.end7, label %sw.bb3.err_crit_edge

sw.bb3.err_crit_edge:                             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %rt_gw_family.i = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 7
  %23 = ptrtoint ptr %rt_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rt_gw_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.i = icmp eq i8 %24, 2
  %25 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 8
  %spec.select = select i1 %cmp.i, ptr %25, ptr %daddr
  %26 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0.i = load i32, ptr %spec.select, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %state.i67 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %28 = ptrtoint ptr %state.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state.i67, align 4
  %pf.i68 = getelementptr inbounds %struct.nf_hook_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pf.i68 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pf.i68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp13.not = icmp eq i8 %31, 10
  br i1 %cmp13.not, label %if.end16, label %sw.bb10.err_crit_edge

sw.bb10.err_crit_edge:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end16:                                         ; preds = %sw.bb10
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %9, i32 0, i32 7
  %32 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rt6i_flags.i, align 4
  %and.i73 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %if.else.i, label %if.then.i75

if.then.i75:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %9, i32 0, i32 5
  br label %rt6_nexthop.exit

if.else.i:                                        ; preds = %if.end16
  %head.i.i69 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i69, align 8
  %network_header.i.i70 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i70 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i70, align 4
  %conv.i.i71 = zext i16 %37 to i32
  %add.ptr.i.i72 = getelementptr i8, ptr %35, i32 %conv.i.i71
  %daddr18 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i72, i32 0, i32 6
  %and2.i = and i32 %33, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i76 = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i76, label %if.else.i.rt6_nexthop.exit_crit_edge, label %if.then6.i, !prof !22

if.else.i.rt6_nexthop.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rt6_nexthop.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %9, i32 0, i32 3
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %if.then6.i, %if.else.i.rt6_nexthop.exit_crit_edge, %if.then.i75
  %retval.0.i77 = phi ptr [ %rt6i_gateway.i, %if.then.i75 ], [ %rt6i_dst.i, %if.then6.i ], [ %daddr18, %if.else.i.rt6_nexthop.exit_crit_edge ]
  %38 = call ptr @memcpy(ptr %arrayidx, ptr %retval.0.i77, i32 16)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 1
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.dst_ops, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mtu.i.i, align 4
  %call.i.i = tail call i32 %42(ptr noundef nonnull %9) #4
  %43 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pkt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst.i) #4
  %45 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %dst.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl.i) #4
  %46 = call ptr @memset(ptr %fl.i, i32 0, i32 88)
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %47 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %state.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pf.i.i, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %50, label %sw.bb20.sw.epilog.i_crit_edge [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb4.i
  ]

sw.bb20.sw.epilog.i_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 15, i32 0, i32 20
  %54 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %55 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl.i, i32 0, i32 2
  %58 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %daddr.i, align 4
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  %daddr6.i = getelementptr inbounds %struct.flowi6, ptr %fl.i, i32 0, i32 1
  %head.i.i36.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 18
  %59 = ptrtoint ptr %head.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i36.i, align 8
  %network_header.i.i37.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 15, i32 0, i32 20
  %61 = ptrtoint ptr %network_header.i.i37.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %network_header.i.i37.i, align 4
  %conv.i.i38.i = zext i16 %62 to i32
  %add.ptr.i.i39.i = getelementptr i8, ptr %60, i32 %conv.i.i38.i
  %saddr8.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i39.i, i32 0, i32 5
  %63 = call ptr @memcpy(ptr %daddr6.i, ptr %saddr8.i, i32 16)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i, %sw.bb20.sw.epilog.i_crit_edge
  %minlen.0.i = phi i32 [ 40, %sw.bb20.sw.epilog.i_crit_edge ], [ 60, %sw.bb4.i ], [ 40, %sw.bb.i ]
  %net.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %48, i32 0, i32 5
  %64 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net.i.i, align 4
  %66 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pf.i.i, align 1
  %conv11.i = zext i8 %67 to i16
  %call12.i = call i32 @nf_route(ptr noundef %65, ptr noundef nonnull %dst.i, ptr noundef nonnull %fl.i, i1 noundef zeroext false, i16 noundef zeroext %conv11.i) #4
  %68 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dst.i, align 4
  %tobool.not.i78 = icmp eq ptr %69, null
  br i1 %tobool.not.i78, label %sw.epilog.i.get_tcpmss.exit_crit_edge, label %if.then.i79

sw.epilog.i.get_tcpmss.exit_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_tcpmss.exit

if.then.i79:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %ops.i43.i = getelementptr inbounds %struct.dst_entry, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ops.i43.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i43.i, align 4
  %mtu.i44.i = getelementptr inbounds %struct.dst_ops, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %mtu.i44.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mtu.i44.i, align 4
  %call.i45.i = call i32 %73(ptr noundef nonnull %69) #4
  %74 = call i32 @llvm.umin.i32(i32 %call.i.i, i32 %call.i45.i) #4
  %75 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dst.i, align 4
  call void @dst_release(ptr noundef %76) #4
  br label %get_tcpmss.exit

get_tcpmss.exit:                                  ; preds = %if.then.i79, %sw.epilog.i.get_tcpmss.exit_crit_edge
  %mtu.0.i = phi i32 [ %74, %if.then.i79 ], [ %call.i.i, %sw.epilog.i.get_tcpmss.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mtu.0.i, i32 %minlen.0.i)
  %cmp15.not.i = icmp ule i32 %mtu.0.i, %minlen.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mtu.0.i)
  %cmp17.i = icmp ugt i32 %mtu.0.i, 65535
  %or.cond.i = or i1 %cmp15.not.i, %cmp17.i
  %sub.i = sub i32 %mtu.0.i, %minlen.0.i
  %conv21.i = trunc i32 %sub.i to i16
  %retval.0.i80 = select i1 %or.cond.i, i16 536, i16 %conv21.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst.i) #4
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx, align 4
  store i16 %retval.0.i80, ptr %arrayidx, align 2
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 4
  %78 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %xfrm, align 4
  %tobool23 = icmp ne ptr %79, null
  %conv25 = zext i1 %tobool23 to i8
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %arrayidx, align 4
  store i8 %conv25, ptr %arrayidx, align 1
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 9, ptr noundef null) #4
  br label %err

err:                                              ; preds = %do.end, %sw.bb10.err_crit_edge, %sw.bb3.err_crit_edge, %skb_dst.exit.err_crit_edge
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %sw.bb22, %get_tcpmss.exit, %rt6_nexthop.exit, %if.end7, %sw.bb
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rt_get_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = trunc i32 %5 to i8
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %8 = icmp ult i8 %6, 5
  br i1 %8, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sext = shl i32 %5, 24
  %9 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nft_rt_get_init, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1, align 4
  %dreg = getelementptr inbounds %struct.nft_rt, ptr %data.i, i32 0, i32 1
  %call9 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %12, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef %switch.load) #4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %switch.lookup ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rt_get_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %data.i, align 4
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %1 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %dreg = getelementptr inbounds %struct.nft_rt, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %conv = zext i8 %3 to i32
  %call2 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rt_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load4 = load i8, ptr %data.i, align 4
  %1 = zext i8 %bf.load4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %bf.load4, label %sw.default [
    i8 1, label %entry.cleanup_crit_edge
    i8 2, label %entry.cleanup_crit_edge5
    i8 0, label %entry.cleanup_crit_edge6
    i8 4, label %entry.cleanup_crit_edge7
    i8 3, label %sw.bb1
  ]

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain, align 4
  %call2 = tail call i32 @nft_chain_validate_hooks(ptr noundef %3, i32 noundef 28) #4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb1, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge5, %entry.cleanup_crit_edge6, %entry.cleanup_crit_edge7
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call2, %sw.bb1 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge5 ], [ 0, %entry.cleanup_crit_edge6 ], [ 0, %entry.cleanup_crit_edge7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_rt.c", i32 96, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_rt.c", i32 197, i32 11}
!4 = !{ptr @nft_rt_type, !5, !"nft_rt_type", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_rt.c", i32 196, i32 22}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!8 = !{ptr @nft_rt_get_ops, !9, !"nft_rt_get_ops", i1 false, i1 false}
!9 = !{!"../net/netfilter/nft_rt.c", i32 187, i32 34}
!10 = !{ptr @nft_rt_policy, !11, !"nft_rt_policy", i1 false, i1 false}
!11 = !{!"../net/netfilter/nft_rt.c", i32 105, i32 32}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!"branch_weights", i32 2000, i32 1}
