; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_tables_trace.c_pt.bc'
source_filename = "../net/netfilter/nf_tables_trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nft_trace_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_trace_enabled\09\09\09\09"
module asm "\09.long\09__crc_nft_trace_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_trace_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_trace_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_nft_trace_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_traceinfo = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.nft_chain = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.rhlist_head, ptr, i64, i32, i8, ptr, i16, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_table = type { %struct.list_head, %struct.rhltable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, i16, i32, ptr, i16, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.nft_verdict = type { i32, ptr }
%struct.nft_base_chain = type { %struct.nf_hook_ops, %struct.list_head, ptr, i8, i8, ptr, %struct.nft_chain, %struct.flow_block }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.flow_block = type { %struct.list_head }
%struct.nft_chain_type = type { ptr, i32, i32, ptr, i32, [6 x ptr], ptr, ptr }
%struct.sk_buff = type { %union.anon.0, %union.anon.101, %union.anon.102, [48 x i8], %union.anon.103, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.105, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.101 = type { ptr }
%union.anon.102 = type { i64 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { i32, ptr }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.107, i32, i32, i32, i16, i16, %union.anon.109, i32, %union.anon.110, %union.anon.111, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.107 = type { i32 }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.100, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.100 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.vlan_ethhdr = type { %union.anon.122, i16, i16, i16 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { [6 x i8], [6 x i8] }

@nft_trace_enabled = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_nft_trace_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_trace_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_trace_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_trace_enabled to i32), ptr @__kstrtab_nft_trace_enabled, ptr @__kstrtabns_nft_trace_enabled }, section "___ksymtab_gpl+nft_trace_enabled", align 4
@nft_trace_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/netfilter/nf_tables_trace.c\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"nft_trace_enabled\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 25, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [35 x i8] c"../net/netfilter/nf_tables_trace.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 278, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_nft_trace_enabled, ptr @nft_trace_enabled, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_trace_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_trace_notify(ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i222 = alloca i32, align 4
  %tmp.i220 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i217 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  %call2 = tail call i32 @nfnetlink_has_listeners(ptr noundef %5, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %chain = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chain, align 4
  %table = getelementptr inbounds %struct.nft_chain, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 8
  %name = getelementptr inbounds %struct.nft_table, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call4 = tail call i32 @strlen(ptr noundef %11) #10
  %name7 = getelementptr inbounds %struct.nft_chain, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name7, align 8
  %call8 = tail call i32 @strlen(ptr noundef %13) #10
  %sub.i211 = add i32 %call8, 7
  %and.i212 = and i32 %sub.i211, -4
  %14 = add i32 %call4, 215
  %add10 = and i32 %14, -4
  %add40 = add i32 %add10, %and.i212
  %type.i = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 5
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch.i = icmp eq i32 %17, 2
  br i1 %switch.i, label %nft_trace_have_verdict_chain.exit, label %if.end.if.end48_crit_edge

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

nft_trace_have_verdict_chain.exit:                ; preds = %if.end
  %verdict.i = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 4
  %18 = ptrtoint ptr %verdict.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %verdict.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %22)
  %switch6.i = icmp eq i32 %22, -4
  br i1 %switch6.i, label %if.then42, label %nft_trace_have_verdict_chain.exit.if.end48_crit_edge

nft_trace_have_verdict_chain.exit.if.end48_crit_edge: ; preds = %nft_trace_have_verdict_chain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then42:                                        ; preds = %nft_trace_have_verdict_chain.exit
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %verdict.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %verdict.i, align 4
  %chain43 = getelementptr inbounds %struct.nft_verdict, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %chain43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chain43, align 4
  %name44 = getelementptr inbounds %struct.nft_chain, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %name44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name44, align 8
  %call45 = tail call i32 @strlen(ptr noundef %28) #10
  %sub.i213 = add i32 %call45, 7
  %and.i214 = and i32 %sub.i213, -4
  %add47 = add i32 %and.i214, %add40
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %nft_trace_have_verdict_chain.exit.if.end48_crit_edge, %if.end.if.end48_crit_edge
  %size.0 = phi i32 [ %add47, %if.then42 ], [ %add40, %nft_trace_have_verdict_chain.exit.if.end48_crit_edge ], [ %add40, %if.end.if.end48_crit_edge ]
  %sub.i.i = add i32 %size.0, 19
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool50.not = icmp eq ptr %call.i.i, null
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %basechain = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 1
  %29 = ptrtoint ptr %basechain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %basechain, align 4
  %type = getelementptr inbounds %struct.nft_base_chain, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %type, align 8
  %family = getelementptr inbounds %struct.nft_chain_type, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %family, align 4
  %conv54 = trunc i32 %34 to i8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end52.land.end_crit_edge

if.end52.land.end_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

skb_tailroom.exit.i.i:                            ; preds = %if.end52
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %37 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.land.end_crit_edge, label %nlmsg_put.exit.i, !prof !16

skb_tailroom.exit.i.i.land.end_crit_edge:         ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2577, i32 noundef 4, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.land.end_crit_edge, label %if.end58

nlmsg_put.exit.i.land.end_crit_edge:              ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end58:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv54, ptr %add.ptr.i.i.i, align 2
  %version1.i.i = getelementptr i8, ptr %call3.i.i, i32 17
  %42 = ptrtoint ptr %version1.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %version1.i.i, align 1
  %res_id2.i.i = getelementptr i8, ptr %call3.i.i, i32 18
  %43 = ptrtoint ptr %res_id2.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %res_id2.i.i, align 2
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pf.i, align 1
  %conv60 = zext i8 %47 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %48 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv60, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool62.not = icmp eq i32 %call.i, 0
  br i1 %tobool62.not, label %if.end64, label %if.end58.land.end_crit_edge

if.end58.land.end_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end64:                                         ; preds = %if.end58
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i217) #7
  %51 = ptrtoint ptr %tmp.i217 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tmp.i217, align 4
  %call.i218 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i217) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i217) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool67.not = icmp eq i32 %call.i218, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.land.end_crit_edge

if.end64.land.end_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end69:                                         ; preds = %if.end64
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 15
  %54 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %55 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %if.then.i.i, label %if.end69.trace_fill_id.exit_crit_edge

if.end69.trace_fill_id.exit_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %trace_fill_id.exit

if.then.i.i:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  call void @__skb_get_hash(ptr noundef %53) #7
  br label %trace_fill_id.exit

trace_fill_id.exit:                               ; preds = %if.then.i.i, %if.end69.trace_fill_id.exit_crit_edge
  %57 = ptrtoint ptr %53 to i32
  %hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 15, i32 0, i32 8
  %58 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hash.i.i, align 4
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 15, i32 0, i32 7
  %60 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %skb_iif.i, align 8
  %add1.i.i = add i32 %61, -559038729
  %add.i.i.i = add i32 %add1.i.i, %57
  %add1.i.i.i = add i32 %add1.i.i, %59
  %xor.i.i.i = xor i32 %add1.i.i.i, %add1.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #7
  %sub.i.i.i = sub i32 %xor.i.i.i, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %sub.i.i.i, %add.i.i.i
  %or.i1.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #7
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i.i
  %or.i2.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #7
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #7
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #7
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #7
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #7
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %62 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub20.i.i.i, ptr %tmp.i.i, align 4
  %call.i.i219 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i219)
  %tobool72.not = icmp eq i32 %call.i.i219, 0
  br i1 %tobool72.not, label %if.end74, label %trace_fill_id.exit.land.end_crit_edge

trace_fill_id.exit.land.end_crit_edge:            ; preds = %trace_fill_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end74:                                         ; preds = %trace_fill_id.exit
  %63 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chain, align 4
  %name76 = getelementptr inbounds %struct.nft_chain, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %name76 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name76, align 8
  %call77 = call fastcc i32 @nla_put_string(ptr noundef nonnull %call.i.i, i32 noundef 2, ptr noundef %66)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end74.land.end_crit_edge

if.end74.land.end_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end80:                                         ; preds = %if.end74
  %67 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chain, align 4
  %table82 = getelementptr inbounds %struct.nft_chain, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %table82 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %table82, align 8
  %name83 = getelementptr inbounds %struct.nft_table, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name83, align 4
  %call84 = call fastcc i32 @nla_put_string(ptr noundef nonnull %call.i.i, i32 noundef 1, ptr noundef %72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end80.land.end_crit_edge

if.end80.land.end_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end87:                                         ; preds = %if.end80
  %call88 = call fastcc i32 @nf_trace_fill_rule_info(ptr noundef nonnull %call.i.i, ptr noundef %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.land.end_crit_edge

if.end87.land.end_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end91:                                         ; preds = %if.end87
  %73 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type.i, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i32 %74, label %if.end91.sw.epilog_crit_edge [
    i32 1, label %sw.bb99
    i32 3, label %if.end91.sw.bb93_crit_edge
    i32 2, label %if.end91.sw.bb93_crit_edge231
  ]

if.end91.sw.bb93_crit_edge231:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb93

if.end91.sw.bb93_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb93

if.end91.sw.epilog_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end91.sw.bb93_crit_edge, %if.end91.sw.bb93_crit_edge231
  %verdict94 = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 4
  %76 = ptrtoint ptr %verdict94 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %verdict94, align 4
  %call95 = call i32 @nft_verdict_dump(ptr noundef nonnull %call.i.i, i32 noundef 5, ptr noundef %77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %sw.bb93.sw.epilog_crit_edge, label %sw.bb93.land.end_crit_edge

sw.bb93.land.end_crit_edge:                       ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

sw.bb93.sw.epilog_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end91
  %78 = ptrtoint ptr %basechain to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %basechain, align 4
  %policy = getelementptr inbounds %struct.nft_base_chain, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %policy to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %policy, align 4
  %conv101 = zext i8 %81 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i220) #7
  %82 = ptrtoint ptr %tmp.i220 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv101, ptr %tmp.i220, align 4
  %call.i221 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i220) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i220) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool103.not = icmp eq i32 %call.i221, 0
  br i1 %tobool103.not, label %sw.bb99.sw.epilog_crit_edge, label %sw.bb99.land.end_crit_edge

sw.bb99.land.end_crit_edge:                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

sw.bb99.sw.epilog_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb99.sw.epilog_crit_edge, %sw.bb93.sw.epilog_crit_edge, %if.end91.sw.epilog_crit_edge
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %85 = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 15, i32 0, i32 13
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool107.not = icmp eq i32 %87, 0
  br i1 %tobool107.not, label %sw.epilog.if.end112_crit_edge, label %land.lhs.true

sw.epilog.if.end112_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

land.lhs.true:                                    ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i222) #7
  %88 = ptrtoint ptr %tmp.i222 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %tmp.i222, align 4
  %call.i223 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i222) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i222) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool110.not = icmp eq i32 %call.i223, 0
  br i1 %tobool110.not, label %land.lhs.true.if.end112_crit_edge, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true.if.end112_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.end112:                                        ; preds = %land.lhs.true.if.end112_crit_edge, %sw.epilog.if.end112_crit_edge
  %packet_dumped = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 6
  %89 = ptrtoint ptr %packet_dumped to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %packet_dumped, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool113.not = icmp eq i8 %90, 0
  br i1 %tobool113.not, label %if.then114, label %if.end112.if.end126_crit_edge

if.end112.if.end126_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then114:                                       ; preds = %if.end112
  %91 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %92, i32 0, i32 3
  %95 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %out.i, align 4
  %call117 = call fastcc i32 @nf_trace_fill_dev_info(ptr noundef nonnull %call.i.i, ptr noundef %94, ptr noundef %96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %if.then114.land.end_crit_edge

if.then114.land.end_crit_edge:                    ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end120:                                        ; preds = %if.then114
  %call121 = call fastcc i32 @nf_trace_fill_pkt_info(ptr noundef nonnull %call.i.i, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end120.land.end_crit_edge

if.end120.land.end_crit_edge:                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

if.end124:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %packet_dumped to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %packet_dumped, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.end124, %if.end112.if.end126_crit_edge
  %98 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %100 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub.ptr.sub.i, ptr %call3.i.i, align 4
  %101 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state.i, align 4
  %net.i227 = getelementptr inbounds %struct.nf_hook_state, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %net.i227 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %net.i227, align 4
  %call128 = call i32 @nfnetlink_send(ptr noundef nonnull %call.i.i, ptr noundef %104, i32 noundef 0, i32 noundef 9, i32 noundef 0, i32 noundef 2592) #7
  br label %cleanup

land.end:                                         ; preds = %if.end120.land.end_crit_edge, %if.then114.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %sw.bb99.land.end_crit_edge, %sw.bb93.land.end_crit_edge, %if.end87.land.end_crit_edge, %if.end80.land.end_crit_edge, %if.end74.land.end_crit_edge, %trace_fill_id.exit.land.end_crit_edge, %if.end64.land.end_crit_edge, %if.end58.land.end_crit_edge, %nlmsg_put.exit.i.land.end_crit_edge, %skb_tailroom.exit.i.i.land.end_crit_edge, %if.end52.land.end_crit_edge
  %.b210 = load i1, ptr @nft_trace_notify.__already_done, align 1
  br i1 %.b210, label %land.end.if.end157_crit_edge, label %if.then135, !prof !18

land.end.if.end157_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

if.then135:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nft_trace_notify.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #7
  br label %if.end157

if.end157:                                        ; preds = %if.then135, %land.end.if.end157_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end157, %if.end126, %if.end48.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %str) #10
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_trace_fill_rule_info(ptr noundef %nlskb, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %bf.load = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %bf.load)
  %tobool2.not = icmp sgt i64 %bf.load, -1
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %verdict = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 4
  %5 = ptrtoint ptr %verdict to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %verdict, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp4 = icmp eq i32 %8, -1
  br i1 %cmp4, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %bf.lshr10 = lshr i64 %bf.load, 9
  %bf.clear = and i64 %bf.lshr10, 4398046511103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #7
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %bf.clear, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %nlskb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #7
  br label %return

return:                                           ; preds = %if.end7, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end7 ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_verdict_dump(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_trace_fill_dev_info(ptr noundef %nlskb, ptr noundef readonly %indev, ptr noundef readonly %outdev) unnamed_addr #0 align 64 {
entry:
  %tmp.i32 = alloca i16, align 2
  %tmp.i30 = alloca i32, align 4
  %tmp.i28 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %indev, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %ifindex = getelementptr inbounds %struct.net_device, ptr %indev, i32 0, i32 17
  %0 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %if.then
  %type = getelementptr inbounds %struct.net_device, ptr %indev, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i28) #7
  %5 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %tmp.i28, align 2
  %call.i29 = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 11, i32 noundef 2, ptr noundef nonnull %tmp.i28) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool4.not = icmp eq i32 %call.i29, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %outdev, null
  br i1 %tobool8.not, label %if.end7.if.end20_crit_edge, label %if.then9

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then9:                                         ; preds = %if.end7
  %ifindex10 = getelementptr inbounds %struct.net_device, ptr %outdev, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30) #7
  %8 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i30, align 4
  %call.i31 = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i30) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool12.not = icmp eq i32 %call.i31, 0
  br i1 %tobool12.not, label %if.end14, label %if.then9.return_crit_edge

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end14:                                         ; preds = %if.then9
  %type15 = getelementptr inbounds %struct.net_device, ptr %outdev, i32 0, i32 32
  %9 = ptrtoint ptr %type15 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type15, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i32) #7
  %11 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tmp.i32, align 2
  %call.i33 = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 13, i32 noundef 2, ptr noundef nonnull %tmp.i32) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool17.not = icmp eq i32 %call.i33, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.end14.return_crit_edge

if.end14.return_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.end14.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  br label %return

return:                                           ; preds = %if.end20, %if.end14.return_crit_edge, %if.then9.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -1, %if.then.return_crit_edge ], [ -1, %if.end.return_crit_edge ], [ -1, %if.then9.return_crit_edge ], [ -1, %if.end14.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_trace_fill_pkt_info(ptr noundef %nlskb, ptr nocapture noundef readonly %pkt) unnamed_addr #0 align 64 {
entry:
  %veth.i = alloca %struct.vlan_ethhdr, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %flags = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 4
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %cond.in = select i1 %tobool.not, ptr %len3, ptr %thoff.i
  %11 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond = load i32, ptr %cond.in, align 4
  %sub = sub i32 %cond, %sub.ptr.sub.i
  %12 = tail call i32 @llvm.umin.i32(i32 %sub, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @nla_reserve(ptr noundef %nlskb, i32 noundef 8, i32 noundef %12) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %trace_fill_header.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

trace_fill_header.exit:                           ; preds = %if.end.i
  %add.ptr.i.i91 = getelementptr i8, ptr %call.i, i32 4
  %call2.i = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %sub.ptr.sub.i, ptr noundef %add.ptr.i.i91, i32 noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i.not = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i.not, label %trace_fill_header.exit.if.end_crit_edge, label %trace_fill_header.exit.cleanup_crit_edge

trace_fill_header.exit.cleanup_crit_edge:         ; preds = %trace_fill_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

trace_fill_header.exit.if.end_crit_edge:          ; preds = %trace_fill_header.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %trace_fill_header.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 4
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %if.end.if.end32_crit_edge, label %if.then16

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then16:                                        ; preds = %if.end
  %16 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len3, align 4
  %18 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %thoff.i, align 4
  %sub19 = sub i32 %17, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %sub19, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i94 = icmp eq i32 %20, 0
  br i1 %cmp.i94, label %if.then16.if.end32_crit_edge, label %if.end.i97

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end.i97:                                       ; preds = %if.then16
  %call.i95 = tail call ptr @nla_reserve(ptr noundef %nlskb, i32 noundef 9, i32 noundef %20) #7
  %tobool.not.i96 = icmp eq ptr %call.i95, null
  br i1 %tobool.not.i96, label %if.end.i97.cleanup_crit_edge, label %trace_fill_header.exit104

if.end.i97.cleanup_crit_edge:                     ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

trace_fill_header.exit104:                        ; preds = %if.end.i97
  %add.ptr.i.i98 = getelementptr i8, ptr %call.i95, i32 4
  %call2.i99 = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %19, ptr noundef %add.ptr.i.i98, i32 noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i99)
  %tobool3.not.i100.not = icmp eq i32 %call2.i99, 0
  br i1 %tobool3.not.i100.not, label %trace_fill_header.exit104.if.end32_crit_edge, label %trace_fill_header.exit104.cleanup_crit_edge

trace_fill_header.exit104.cleanup_crit_edge:      ; preds = %trace_fill_header.exit104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

trace_fill_header.exit104.if.end32_crit_edge:     ; preds = %trace_fill_header.exit104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %trace_fill_header.exit104.if.end32_crit_edge, %if.then16.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %22)
  %cmp.i105.not = icmp eq i16 %22, -1
  br i1 %cmp.i105.not, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 10
  %23 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vlan_tci, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool37.not = icmp eq i16 %24, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %veth.i) #7
  %25 = getelementptr inbounds %struct.vlan_ethhdr, ptr %veth.i, i32 0, i32 1
  %26 = getelementptr inbounds %struct.vlan_ethhdr, ptr %veth.i, i32 0, i32 2
  %27 = getelementptr inbounds %struct.vlan_ethhdr, ptr %veth.i, i32 0, i32 3
  %28 = call ptr @memset(ptr %veth.i, i32 255, i32 18)
  %29 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i, align 8
  %conv.i.i107 = zext i16 %22 to i32
  %add.ptr.i.i108 = getelementptr i8, ptr %30, i32 %conv.i.i107
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i110 = ptrtoint ptr %add.ptr.i.i108 to i32
  %sub.ptr.rhs.cast.i111 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i112 = sub i32 %sub.ptr.lhs.cast.i110, %sub.ptr.rhs.cast.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %sub.ptr.sub.i112)
  %cmp.not.i = icmp eq i32 %sub.ptr.sub.i112, -14
  br i1 %cmp.not.i, label %if.end.i114, label %if.then38.nf_trace_fill_ll_header.exit_crit_edge

if.then38.nf_trace_fill_ll_header.exit_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_trace_fill_ll_header.exit

if.end.i114:                                      ; preds = %if.then38
  %call1.i = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef -14, ptr noundef nonnull %veth.i, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i113 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i113, label %if.end3.i, label %if.end.i114.nf_trace_fill_ll_header.exit_crit_edge

if.end.i114.nf_trace_fill_ll_header.exit_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_trace_fill_ll_header.exit

if.end3.i:                                        ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 9
  %33 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan_proto.i, align 8
  %35 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %25, align 2
  %36 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vlan_tci, align 2
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %26, align 2
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %39 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %protocol.i, align 8
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %27, align 2
  %call4.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 7, i32 noundef 18, ptr noundef nonnull %veth.i) #7
  br label %nf_trace_fill_ll_header.exit

nf_trace_fill_ll_header.exit:                     ; preds = %if.end3.i, %if.end.i114.nf_trace_fill_ll_header.exit_crit_edge, %if.then38.nf_trace_fill_ll_header.exit_crit_edge
  %retval.0.i115 = phi i32 [ %call4.i, %if.end3.i ], [ -1, %if.then38.nf_trace_fill_ll_header.exit_crit_edge ], [ -1, %if.end.i114.nf_trace_fill_ll_header.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %veth.i) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %conv.i = zext i16 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %43, i32 %conv.i
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %45 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub42 = sub i32 0, %sub.ptr.sub
  %46 = tail call i32 @llvm.umin.i32(i32 %sub42, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i117 = icmp eq i32 %46, 0
  br i1 %cmp.i117, label %if.end40.cleanup_crit_edge, label %if.end.i120

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i120:                                      ; preds = %if.end40
  %call.i118 = tail call ptr @nla_reserve(ptr noundef %nlskb, i32 noundef 7, i32 noundef %46) #7
  %tobool.not.i119 = icmp eq ptr %call.i118, null
  br i1 %tobool.not.i119, label %if.end.i120.cleanup_crit_edge, label %lor.lhs.false.i125

if.end.i120.cleanup_crit_edge:                    ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i125:                               ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i121 = getelementptr i8, ptr %call.i118, i32 4
  %call2.i122 = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %sub.ptr.sub, ptr noundef %add.ptr.i.i121, i32 noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i122)
  %tobool3.not.i123 = icmp ne i32 %call2.i122, 0
  %spec.select.i124 = sext i1 %tobool3.not.i123 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.i125, %if.end.i120.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %nf_trace_fill_ll_header.exit, %if.end32.cleanup_crit_edge, %trace_fill_header.exit104.cleanup_crit_edge, %if.end.i97.cleanup_crit_edge, %trace_fill_header.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i115, %nf_trace_fill_ll_header.exit ], [ -1, %trace_fill_header.exit.cleanup_crit_edge ], [ -1, %trace_fill_header.exit104.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ -1, %if.end.i120.cleanup_crit_edge ], [ %spec.select.i124, %lor.lhs.false.i125 ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %if.end.i97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_send(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nft_trace_init(ptr nocapture noundef writeonly %info, ptr noundef %pkt, ptr noundef %verdict, ptr noundef %chain) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chain, i32 -48
  %basechain = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %basechain to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr.i, ptr %basechain, align 4
  %trace = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 7
  %1 = ptrtoint ptr %trace to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %trace, align 1
  %packet_dumped = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 6
  %2 = ptrtoint ptr %packet_dumped to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %packet_dumped, align 4
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pkt, ptr %info, align 4
  %verdict2 = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %verdict2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %verdict, ptr %verdict2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @nft_trace_enabled, !1, !"nft_trace_enabled", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_tables_trace.c", i32 25, i32 1}
!2 = !{ptr @__ksymtab_nft_trace_enabled, !3, !"__ksymtab_nft_trace_enabled", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_tables_trace.c", i32 26, i32 1}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_tables_trace.c", i32 278, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 2000, i32 1}
