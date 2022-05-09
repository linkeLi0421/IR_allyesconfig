; ModuleID = '/llk/IR_all_yes/net/sched/sch_choke.c_pt.bc'
source_filename = "../net/sched/sch_choke.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.153, i16 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.155 }
%union.anon.155 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.157, i16 }
%struct.anon.157 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.158 }
%union.anon.158 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.red_parms = type { i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, i8, i8, i8, [256 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_red_qopt = type { i32, i32, i32, i8, i8, i8, i8 }
%struct.choke_sched_data = type { i32, i8, %struct.red_parms, %struct.red_vars, %struct.anon.151, i32, i32, i32, ptr }
%struct.red_vars = type { i32, i32, i32, i64 }
%struct.anon.151 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_choke_xstats = type { i32, i32, i32, i32, i32 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }

@choke_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"choke\00\00\00\00\00\00\00\00\00\00\00", i32 376, i32 0, ptr @choke_enqueue, ptr @choke_dequeue, ptr @choke_peek_head, ptr @choke_init, ptr @choke_reset, ptr @choke_destroy, ptr @choke_change, ptr null, ptr null, ptr null, ptr @choke_dump, ptr @choke_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_choke__507_516_choke_module_init6 = internal global ptr @choke_module_init, section ".initcall6.init", align 4
@__exitcall_choke_module_exit = internal global ptr @choke_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file508 = internal constant [35 x i8] c"sch_choke.file=net/sched/sch_choke\00", section ".modinfo", align 1
@__UNIQUE_ID_license509 = internal constant [22 x i8] c"sch_choke.license=GPL\00", section ".modinfo", align 1
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@choke_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 256, %union.anon.48 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.48 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 598, i32 8 }
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 271, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"choke_policy\00", align 1
@___asan_gen_.14 = private constant [25 x i8] c"../net/sched/sch_choke.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 326, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 596, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 991, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_file508, ptr @__UNIQUE_ID_license509, ptr @__exitcall_choke_module_exit, ptr @__initcall__kmod_sch_choke__507_516_choke_module_init6, ptr @choke_module_exit, ptr @.str, ptr @.str.1, ptr @choke_policy, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @choke_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @choke_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @choke_qdisc_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @choke_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @choke_qdisc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @choke_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #2 align 64 {
entry:
  %temp.i.i = alloca %struct.flow_keys, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data.i, align 1
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %qidlestart.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %1 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp.i.not.i = icmp eq i64 %2, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen, align 8
  %qavg.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %5 = ptrtoint ptr %qavg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qavg.i.i, align 8
  %Wlog.i.i = getelementptr inbounds %struct.red_parms, ptr %parms, i32 0, i32 9
  %7 = ptrtoint ptr %Wlog.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %Wlog.i.i, align 1
  %conv.i6.i = zext i8 %8 to i32
  %shr.i.i = lshr i32 %6, %conv.i6.i
  %sub.i.i = add i32 %6, %4
  %add.i.i = sub i32 %sub.i.i, %shr.i.i
  br label %red_calc_qavg.exit

if.else.i:                                        ; preds = %entry
  %call.i.i = tail call i64 @ktime_get() #11
  %9 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %qidlestart.i.i, align 8
  %sub.i.i.i = sub i64 %call.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i.i)
  %cmp8.i.i.i.i.i = icmp slt i64 %sub.i.i.i, 0
  %11 = tail call i64 @llvm.abs.i64(i64 %sub.i.i.i, i1 false) #11
  %12 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %11, i32 0) #14, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %asmresult4.i.i.i.i.i.i = extractvalue { i64, i32 } %12, 1
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %11, i64 %asmresult.i.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i.i) #14, !srcloc !33
  %asmresult10.i.i.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %div1811.i.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i.i, 9
  %sub210.i.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i.i
  %cond213.i.i.i.i.i = select i1 %cmp8.i.i.i.i.i, i64 %sub210.i.i.i.i.i, i64 %div1811.i.i.i.i.i
  %Scell_max.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %14 = ptrtoint ptr %Scell_max.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Scell_max.i.i, align 4
  %conv.i8.i = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i.i.i.i, i64 %conv.i8.i)
  %cmp.i9.i = icmp slt i64 %cond213.i.i.i.i.i, %conv.i8.i
  %extract.t.i.i = trunc i64 %cond213.i.i.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i9.i, i32 %extract.t.i.i, i32 %15
  %Scell_log.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %16 = ptrtoint ptr %Scell_log.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %Scell_log.i.i, align 4
  %conv4.i.i = zext i8 %17 to i32
  %shr.i10.i = ashr i32 %cond.off0.i.i, %conv4.i.i
  %and.i.i = and i32 %shr.i10.i, 255
  %arrayidx.i.i = getelementptr %struct.red_parms, ptr %parms, i32 0, i32 11, i32 %and.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i = zext i8 %19 to i32
  %qavg.i11.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %20 = ptrtoint ptr %qavg.i11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qavg.i11.i, align 8
  %shr6.i.i = lshr i32 %21, %conv5.i.i
  br label %red_calc_qavg.exit

if.else.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %qavg7.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %22 = ptrtoint ptr %qavg7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qavg7.i.i, align 8
  %conv8.i.i = zext i32 %23 to i64
  %conv9.i.i = sext i32 %cond.off0.i.i to i64
  %mul.i.i = mul nsw i64 %conv8.i.i, %conv9.i.i
  %sh_prom.i.i = zext i8 %17 to i64
  %shr12.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %conv13.i.i = trunc i64 %shr12.i.i to i32
  %shr15.i.i = lshr i32 %23, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr15.i.i, i32 %conv13.i.i)
  %cmp16.i.i = icmp ugt i32 %shr15.i.i, %conv13.i.i
  %sub.i12.i = sub i32 %23, %conv13.i.i
  %spec.select.i.i = select i1 %cmp16.i.i, i32 %sub.i12.i, i32 %shr15.i.i
  br label %red_calc_qavg.exit

red_calc_qavg.exit:                               ; preds = %if.else.i.i, %if.then.i.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i.i, %if.then.i ], [ %shr6.i.i, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %qavg = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %24 = ptrtoint ptr %qavg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %qavg, align 8
  %25 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %qidlestart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp.i.not = icmp eq i64 %26, 0
  br i1 %cmp.i.not, label %red_calc_qavg.exit.if.end_crit_edge, label %if.then

red_calc_qavg.exit.if.end_crit_edge:              ; preds = %red_calc_qavg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %red_calc_qavg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %qidlestart.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %red_calc_qavg.exit.if.end_crit_edge
  %28 = ptrtoint ptr %qavg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qavg, align 8
  %30 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %parms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not = icmp ugt i32 %29, %31
  br i1 %cmp.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %vars, align 8
  br label %if.end68

if.else:                                          ; preds = %if.end
  %head.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp.i140 = icmp eq i32 %36, %34
  br i1 %cmp.i140, label %if.else.if.end14_crit_edge, label %if.end.i

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end.i:                                         ; preds = %if.else
  %tab_mask.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %tab.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %sub.i.i.i141 = sub i32 %36, %34
  %37 = ptrtoint ptr %tab_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tab_mask.i.i.i, align 4
  %and.i.i.i = and i32 %38, %sub.i.i.i141
  %call.i.i.i = tail call i32 @prandom_u32() #11
  %conv.i.i.i = zext i32 %call.i.i.i to i64
  %conv1.i.i.i = zext i32 %and.i.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv1.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i.i142 = add i32 %34, %conv2.i.i.i
  %39 = ptrtoint ptr %tab_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tab_mask.i.i.i, align 4
  %and.i.i143 = and i32 %add.i.i142, %40
  %41 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tab.i.i, align 8
  %arrayidx.i.i144 = getelementptr ptr, ptr %42, i32 %and.i.i143
  %43 = ptrtoint ptr %arrayidx.i.i144 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i144, align 4
  %tobool.not.i.i145 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i145, label %do.cond.i.i, label %if.end.i.choke_peek_random.exit.i_crit_edge

if.end.i.choke_peek_random.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_peek_random.exit.i

do.cond.i.i:                                      ; preds = %if.end.i
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %head.i, align 4
  %47 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tail.i, align 8
  %sub.i.1.i.i = sub i32 %48, %46
  %and.i.1.i.i = and i32 %sub.i.1.i.i, %40
  %call.i.1.i.i = tail call i32 @prandom_u32() #11
  %conv.i.1.i.i = zext i32 %call.i.1.i.i to i64
  %conv1.i.1.i.i = zext i32 %and.i.1.i.i to i64
  %mul.i.1.i.i = mul nuw i64 %conv1.i.1.i.i, %conv.i.1.i.i
  %shr.i.1.i.i = lshr i64 %mul.i.1.i.i, 32
  %conv2.i.1.i.i = trunc i64 %shr.i.1.i.i to i32
  %add.1.i.i = add i32 %46, %conv2.i.1.i.i
  %49 = ptrtoint ptr %tab_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tab_mask.i.i.i, align 4
  %and.1.i.i = and i32 %add.1.i.i, %50
  %51 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tab.i.i, align 8
  %arrayidx.1.i.i = getelementptr ptr, ptr %52, i32 %and.1.i.i
  %53 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.1.i.i, label %do.cond.1.i.i, label %do.cond.i.i.choke_peek_random.exit.i_crit_edge

do.cond.i.i.choke_peek_random.exit.i_crit_edge:   ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_peek_random.exit.i

do.cond.1.i.i:                                    ; preds = %do.cond.i.i
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %head.i, align 4
  %57 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tail.i, align 8
  %sub.i.2.i.i = sub i32 %58, %56
  %and.i.2.i.i = and i32 %sub.i.2.i.i, %50
  %call.i.2.i.i = tail call i32 @prandom_u32() #11
  %conv.i.2.i.i = zext i32 %call.i.2.i.i to i64
  %conv1.i.2.i.i = zext i32 %and.i.2.i.i to i64
  %mul.i.2.i.i = mul nuw i64 %conv1.i.2.i.i, %conv.i.2.i.i
  %shr.i.2.i.i = lshr i64 %mul.i.2.i.i, 32
  %conv2.i.2.i.i = trunc i64 %shr.i.2.i.i to i32
  %add.2.i.i = add i32 %56, %conv2.i.2.i.i
  %59 = ptrtoint ptr %tab_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tab_mask.i.i.i, align 4
  %and.2.i.i = and i32 %add.2.i.i, %60
  %61 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tab.i.i, align 8
  %arrayidx.2.i.i = getelementptr ptr, ptr %62, i32 %and.2.i.i
  %63 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.2.i.i, label %do.cond.2.i.i, label %do.cond.1.i.i.choke_peek_random.exit.i_crit_edge

do.cond.1.i.i.choke_peek_random.exit.i_crit_edge: ; preds = %do.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_peek_random.exit.i

do.cond.2.i.i:                                    ; preds = %do.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %head.i, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %62, i32 %66
  %67 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx4.i.i, align 4
  br label %choke_peek_random.exit.i

choke_peek_random.exit.i:                         ; preds = %do.cond.2.i.i, %do.cond.1.i.i.choke_peek_random.exit.i_crit_edge, %do.cond.i.i.choke_peek_random.exit.i_crit_edge, %if.end.i.choke_peek_random.exit.i_crit_edge
  %idx.0 = phi i32 [ %66, %do.cond.2.i.i ], [ %and.2.i.i, %do.cond.1.i.i.choke_peek_random.exit.i_crit_edge ], [ %and.1.i.i, %do.cond.i.i.choke_peek_random.exit.i_crit_edge ], [ %and.i.i143, %if.end.i.choke_peek_random.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ %68, %do.cond.2.i.i ], [ %64, %do.cond.1.i.i.choke_peek_random.exit.i_crit_edge ], [ %54, %do.cond.i.i.choke_peek_random.exit.i_crit_edge ], [ %44, %if.end.i.choke_peek_random.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %temp.i.i) #11
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i, i32 0, i32 15, i32 0, i32 18
  %69 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %protocol.i.i, align 8
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %71 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %protocol1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %72)
  %cmp.not.i.i = icmp eq i16 %70, %72
  br i1 %cmp.not.i.i, label %if.end.i.i, label %choke_match_random.exit.thread192

choke_match_random.exit.thread192:                ; preds = %choke_peek_random.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %temp.i.i) #11
  br label %if.end14

if.end.i.i:                                       ; preds = %choke_peek_random.exit.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i, i32 0, i32 3, i32 8
  %73 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %data.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i4.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i4.i, label %if.then4.i.i, label %if.end.i.i.if.end9.i.i_crit_edge

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %data.i.i.i, align 1
  %76 = call ptr @memset(ptr %temp.i.i, i32 0, i32 72)
  %call.i.i5.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %retval.0.i.i, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %temp.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %keys.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i, i32 0, i32 3, i32 9
  call void @make_flow_keys_digest(ptr noundef %keys.i.i, ptr noundef nonnull %temp.i.i) #11
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool12.not.i.i = icmp eq i8 %78, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end9.i.i.choke_match_random.exit_crit_edge

if.end9.i.i.choke_match_random.exit_crit_edge:    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_match_random.exit

if.then13.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %data.i, align 1
  %80 = call ptr @memset(ptr %temp.i.i, i32 0, i32 72)
  %call.i40.i.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %temp.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %keys18.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  call void @make_flow_keys_digest(ptr noundef %keys18.i.i, ptr noundef nonnull %temp.i.i) #11
  br label %choke_match_random.exit

choke_match_random.exit:                          ; preds = %if.then13.i.i, %if.end9.i.i.choke_match_random.exit_crit_edge
  %keys21.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i.i, i32 0, i32 3, i32 9
  %keys23.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %keys21.i.i, ptr noundef dereferenceable(16) %keys23.i.i, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool25.not.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %temp.i.i) #11
  br i1 %tobool25.not.i.i, label %if.then13, label %choke_match_random.exit.if.end14_crit_edge

choke_match_random.exit.if.end14_crit_edge:       ; preds = %choke_match_random.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %choke_match_random.exit
  %matched = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %matched to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %matched, align 8
  %inc = add i32 %82, 1
  store i32 %inc, ptr %matched, align 8
  %83 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tab.i.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %84, i32 %idx.0
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  %87 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %idx.0)
  %cmp.i148 = icmp eq i32 %88, %idx.0
  br i1 %cmp.i148, label %if.then.i149, label %if.then13.if.end.i155_crit_edge

if.then13.if.end.i155_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i155

if.then.i149:                                     ; preds = %if.then13
  %89 = ptrtoint ptr %tab_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tab_mask.i.i.i, align 4
  %91 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tail.i, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i153.do.body.i.i_crit_edge, %if.then.i149
  %93 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %head.i, align 4
  %add.i.i150 = add i32 %94, 1
  %and.i.i151 = and i32 %add.i.i150, %90
  store i32 %and.i.i151, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i151, i32 %92)
  %cmp.i.i = icmp eq i32 %and.i.i151, %92
  br i1 %cmp.i.i, label %do.body.i.i.if.end.i155_crit_edge, label %do.cond.i.i153

do.body.i.i.if.end.i155_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i155

do.cond.i.i153:                                   ; preds = %do.body.i.i
  %95 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %tab.i.i, align 8
  %arrayidx.i.i152 = getelementptr ptr, ptr %96, i32 %and.i.i151
  %97 = ptrtoint ptr %arrayidx.i.i152 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i152, align 4
  %cmp4.i.i = icmp eq ptr %98, null
  br i1 %cmp4.i.i, label %do.cond.i.i153.do.body.i.i_crit_edge, label %do.cond.i.i153.if.end.i155_crit_edge

do.cond.i.i153.if.end.i155_crit_edge:             ; preds = %do.cond.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i155

do.cond.i.i153.do.body.i.i_crit_edge:             ; preds = %do.cond.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.end.i155:                                      ; preds = %do.cond.i.i153.if.end.i155_crit_edge, %do.body.i.i.if.end.i155_crit_edge, %if.then13.if.end.i155_crit_edge
  %99 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %idx.0)
  %cmp3.i = icmp eq i32 %100, %idx.0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i155.choke_drop_by_idx.exit_crit_edge

if.end.i155.choke_drop_by_idx.exit_crit_edge:     ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_drop_by_idx.exit

if.then4.i:                                       ; preds = %if.end.i155
  %101 = ptrtoint ptr %tab_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tab_mask.i.i.i, align 4
  %103 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %head.i, align 4
  br label %do.body.i29.i

do.body.i29.i:                                    ; preds = %do.cond.i32.i.do.body.i29.i_crit_edge, %if.then4.i
  %105 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tail.i, align 8
  %sub.i.i156 = add i32 %106, -1
  %and.i27.i = and i32 %sub.i.i156, %102
  store i32 %and.i27.i, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %and.i27.i)
  %cmp.i28.i = icmp eq i32 %104, %and.i27.i
  br i1 %cmp.i28.i, label %do.body.i29.i.choke_drop_by_idx.exit_crit_edge, label %do.cond.i32.i

do.body.i29.i.choke_drop_by_idx.exit_crit_edge:   ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_drop_by_idx.exit

do.cond.i32.i:                                    ; preds = %do.body.i29.i
  %107 = ptrtoint ptr %tab.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %tab.i.i, align 8
  %arrayidx.i30.i = getelementptr ptr, ptr %108, i32 %and.i27.i
  %109 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i30.i, align 4
  %cmp4.i31.i = icmp eq ptr %110, null
  br i1 %cmp4.i31.i, label %do.cond.i32.i.do.body.i29.i_crit_edge, label %do.cond.i32.i.choke_drop_by_idx.exit_crit_edge

do.cond.i32.i.choke_drop_by_idx.exit_crit_edge:   ; preds = %do.cond.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_drop_by_idx.exit

do.cond.i32.i.do.body.i29.i_crit_edge:            ; preds = %do.cond.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i29.i

choke_drop_by_idx.exit:                           ; preds = %do.cond.i32.i.choke_drop_by_idx.exit_crit_edge, %do.body.i29.i.choke_drop_by_idx.exit_crit_edge, %if.end.i155.choke_drop_by_idx.exit_crit_edge
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3
  %111 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %113 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %backlog.i.i, align 4
  %sub.i33.i = sub i32 %114, %112
  store i32 %sub.i33.i, ptr %backlog.i.i, align 4
  %115 = load i32, ptr %cb.i.i.i.i, align 4
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 1, i32 noundef %115) #11
  %116 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %to_free, align 4
  %118 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %86, align 8
  store ptr %86, ptr %to_free, align 4
  %drops.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %119 = ptrtoint ptr %drops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %drops.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %120, 1
  store i32 %inc.i.i.i.i, ptr %drops.i.i.i.i, align 4
  br label %congestion_drop

if.end14:                                         ; preds = %choke_match_random.exit.if.end14_crit_edge, %choke_match_random.exit.thread192, %if.else.if.end14_crit_edge
  %121 = ptrtoint ptr %qavg to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %qavg, align 8
  %qth_max = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %123 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qth_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp17 = icmp ugt i32 %122, %124
  br i1 %cmp17, label %if.then18, label %if.else34

if.then18:                                        ; preds = %if.end14
  %125 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %vars, align 8
  %overlimits.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %126 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %overlimits.i, align 16
  %inc.i = add i32 %127, 1
  store i32 %inc.i, ptr %overlimits.i, align 16
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %128 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %flags.i, align 4
  %130 = and i8 %129, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %130)
  %.not = icmp eq i8 %130, 1
  br i1 %.not, label %lor.lhs.false25, label %if.then18.if.then28_crit_edge

if.then18.if.then28_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false25:                                  ; preds = %if.then18
  %call26 = call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false25.if.then28_crit_edge, label %if.end31

lor.lhs.false25.if.then28_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25.if.then28_crit_edge, %if.then18.if.then28_crit_edge
  %forced_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 1
  br label %congestion_drop

if.end31:                                         ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  %forced_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 2
  %131 = ptrtoint ptr %forced_mark to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %forced_mark, align 4
  %inc33 = add i32 %132, 1
  store i32 %inc33, ptr %forced_mark, align 4
  br label %if.end68

if.else34:                                        ; preds = %if.end14
  %133 = ptrtoint ptr %vars to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vars, align 8
  %inc37 = add i32 %134, 1
  store i32 %inc37, ptr %vars, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc37)
  %tobool38.not = icmp eq i32 %inc37, 0
  br i1 %tobool38.not, label %if.else62, label %if.then39

if.then39:                                        ; preds = %if.else34
  %135 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %parms, align 4
  %sub.i = sub i32 %122, %136
  %Wlog.i = getelementptr inbounds %struct.red_parms, ptr %parms, i32 0, i32 9
  %137 = ptrtoint ptr %Wlog.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %Wlog.i, align 1
  %conv.i159 = zext i8 %138 to i32
  %shr.i = lshr i32 %sub.i, %conv.i159
  %mul.i = mul i32 %shr.i, %inc37
  %qR.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %139 = ptrtoint ptr %qR.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %qR.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %140)
  %cmp.i160.not = icmp ult i32 %mul.i, %140
  br i1 %cmp.i160.not, label %if.then39.if.end68_crit_edge, label %if.then45

if.then39.if.end68_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then45:                                        ; preds = %if.then39
  %141 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %vars, align 8
  %call.i = call i32 @prandom_u32() #11
  %max_P_reciprocal.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %142 = ptrtoint ptr %max_P_reciprocal.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %.unpack.i = load i32, ptr %max_P_reciprocal.i, align 4
  %.elt2.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %143 = ptrtoint ptr %.elt2.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %.unpack3.i = load i32, ptr %.elt2.i, align 4
  %R.sroa.2.4.extract.shift.i.i = lshr i32 %.unpack3.i, 24
  %R.sroa.4.4.extract.shift.i.i = lshr i32 %.unpack3.i, 16
  %conv.i.i = zext i32 %call.i to i64
  %conv1.i.i = zext i32 %.unpack.i to i64
  %mul.i.i161 = mul nuw i64 %conv1.i.i, %conv.i.i
  %shr.i.i162 = lshr i64 %mul.i.i161, 32
  %conv2.i.i = trunc i64 %shr.i.i162 to i32
  %sub.i.i163 = sub i32 %call.i, %conv2.i.i
  %shr4.i.i = lshr i32 %sub.i.i163, %R.sroa.2.4.extract.shift.i.i
  %add.i.i164 = add i32 %shr4.i.i, %conv2.i.i
  %conv5.i.i165 = and i32 %R.sroa.4.4.extract.shift.i.i, 255
  %shr6.i.i166 = lshr i32 %add.i.i164, %conv5.i.i165
  %144 = ptrtoint ptr %qR.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %shr6.i.i166, ptr %qR.i, align 4
  %overlimits.i167 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 4
  %145 = ptrtoint ptr %overlimits.i167 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %overlimits.i167, align 16
  %inc.i168 = add i32 %146, 1
  store i32 %inc.i168, ptr %overlimits.i167, align 16
  %flags.i169 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %147 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %flags.i169, align 4
  %149 = and i8 %148, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool51.not = icmp eq i8 %149, 0
  br i1 %tobool51.not, label %if.then45.if.then55_crit_edge, label %lor.lhs.false52

if.then45.if.then55_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

lor.lhs.false52:                                  ; preds = %if.then45
  %call53 = call fastcc i32 @INET_ECN_set_ce(ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %lor.lhs.false52.if.then55_crit_edge, label %if.end58

lor.lhs.false52.if.then55_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false52.if.then55_crit_edge, %if.then45.if.then55_crit_edge
  %stats56 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 1
  br label %congestion_drop

if.end58:                                         ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #13
  %prob_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2
  %150 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %prob_mark, align 4
  %inc60 = add i32 %151, 1
  store i32 %inc60, ptr %prob_mark, align 4
  br label %if.end68

if.else62:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #13
  %call.i171 = call i32 @prandom_u32() #11
  %max_P_reciprocal.i172 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %152 = ptrtoint ptr %max_P_reciprocal.i172 to i32
  call void @__asan_load4_noabort(i32 %152)
  %.unpack.i173 = load i32, ptr %max_P_reciprocal.i172, align 4
  %.elt2.i174 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6, i32 1
  %153 = ptrtoint ptr %.elt2.i174 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.unpack3.i175 = load i32, ptr %.elt2.i174, align 4
  %R.sroa.2.4.extract.shift.i.i176 = lshr i32 %.unpack3.i175, 24
  %R.sroa.4.4.extract.shift.i.i177 = lshr i32 %.unpack3.i175, 16
  %conv.i.i178 = zext i32 %call.i171 to i64
  %conv1.i.i179 = zext i32 %.unpack.i173 to i64
  %mul.i.i180 = mul nuw i64 %conv1.i.i179, %conv.i.i178
  %shr.i.i181 = lshr i64 %mul.i.i180, 32
  %conv2.i.i182 = trunc i64 %shr.i.i181 to i32
  %sub.i.i183 = sub i32 %call.i171, %conv2.i.i182
  %shr4.i.i184 = lshr i32 %sub.i.i183, %R.sroa.2.4.extract.shift.i.i176
  %add.i.i185 = add i32 %shr4.i.i184, %conv2.i.i182
  %conv5.i.i186 = and i32 %R.sroa.4.4.extract.shift.i.i177, 255
  %shr6.i.i187 = lshr i32 %add.i.i185, %conv5.i.i186
  %qR65 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 20
  %154 = ptrtoint ptr %qR65 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %shr6.i.i187, ptr %qR65, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else62, %if.end58, %if.then39.if.end68_crit_edge, %if.end31, %if.then10
  %155 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %qlen, align 8
  %157 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %privdata.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %158)
  %cmp71 = icmp ult i32 %156, %158
  br i1 %cmp71, label %if.then72, label %if.end78

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %tab = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %159 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tab, align 8
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %161 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tail, align 8
  %arrayidx = getelementptr ptr, ptr %160, i32 %162
  %163 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %skb, ptr %arrayidx, align 4
  %164 = load i32, ptr %tail, align 8
  %add = add i32 %164, 1
  %tab_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %165 = ptrtoint ptr %tab_mask to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tab_mask, align 4
  %and = and i32 %add, %166
  store i32 %and, ptr %tail, align 8
  %167 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %qlen, align 8
  %inc77 = add i32 %168, 1
  store i32 %inc77, ptr %qlen, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %169 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  br label %cleanup83

if.end78:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %pdrop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 3
  %171 = ptrtoint ptr %pdrop to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %pdrop, align 8
  %inc80 = add i32 %172, 1
  store i32 %inc80, ptr %pdrop, align 8
  %173 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %to_free, align 4
  %175 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %174, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %cleanup83

congestion_drop:                                  ; preds = %if.then55, %if.then28, %choke_drop_by_idx.exit
  %qlen.sink197 = phi ptr [ %qlen, %choke_drop_by_idx.exit ], [ %forced_drop, %if.then28 ], [ %stats56, %if.then55 ]
  %.sink196 = phi i32 [ -1, %choke_drop_by_idx.exit ], [ 1, %if.then28 ], [ 1, %if.then55 ]
  %176 = ptrtoint ptr %qlen.sink197 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %qlen.sink197, align 8
  %dec.i = add i32 %177, %.sink196
  store i32 %dec.i, ptr %qlen.sink197, align 8
  %178 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %to_free, align 4
  %180 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i188 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %cleanup83

cleanup83:                                        ; preds = %congestion_drop, %if.end78, %if.then72
  %drops.i.i.i188.sink199 = phi ptr [ %drops.i.i.i188, %congestion_drop ], [ %drops.i.i.i, %if.end78 ], [ %backlog.i, %if.then72 ]
  %.sink198 = phi i32 [ 1, %congestion_drop ], [ 1, %if.end78 ], [ %170, %if.then72 ]
  %retval.0 = phi i32 [ 2, %congestion_drop ], [ 1, %if.end78 ], [ 0, %if.then72 ]
  %181 = ptrtoint ptr %drops.i.i.i188.sink199 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %drops.i.i.i188.sink199, align 4
  %inc.i.i.i189 = add i32 %182, %.sink198
  store i32 %inc.i.i.i189, ptr %drops.i.i.i188.sink199, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @choke_dequeue(ptr noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %qidlestart.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %4 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %qidlestart.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp.i.not = icmp eq i64 %5, 0
  br i1 %cmp.i.not, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i64 @ktime_get() #11
  %6 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %qidlestart.i, align 8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %tab = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tab, align 8
  %arrayidx = getelementptr ptr, ptr %8, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %tab_mask.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %tab_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tab_mask.i, align 4
  %13 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tail, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end4
  %15 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %head, align 4
  %add.i = add i32 %16, 1
  %and.i = and i32 %add.i, %12
  store i32 %and.i, ptr %head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %14)
  %cmp.i25 = icmp eq i32 %and.i, %14
  br i1 %cmp.i25, label %do.body.i.choke_zap_head_holes.exit_crit_edge, label %do.cond.i

do.body.i.choke_zap_head_holes.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_zap_head_holes.exit

do.cond.i:                                        ; preds = %do.body.i
  %17 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tab, align 8
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %and.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %20, null
  br i1 %cmp4.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.choke_zap_head_holes.exit_crit_edge

do.cond.i.choke_zap_head_holes.exit_crit_edge:    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %choke_zap_head_holes.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

choke_zap_head_holes.exit:                        ; preds = %do.cond.i.choke_zap_head_holes.exit_crit_edge, %do.body.i.choke_zap_head_holes.exit_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qlen, align 8
  %dec = add i32 %22, -1
  store i32 %dec, ptr %qlen, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %23 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %25 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %26, %24
  store i32 %sub.i, ptr %backlog.i, align 4
  %27 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.i.not.i.i = icmp eq i16 %31, 0
  br i1 %tobool.i.not.i.i, label %choke_zap_head_holes.exit.cond.end.i.i_crit_edge, label %cond.true.i.i

choke_zap_head_holes.exit.cond.end.i.i_crit_edge: ; preds = %choke_zap_head_holes.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %choke_zap_head_holes.exit
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %33 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %choke_zap_head_holes.exit.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %choke_zap_head_holes.exit.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !22) #11
  %and.i.i.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %38, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  %39 = tail call i32 @llvm.read_register.i32(metadata !22) #11
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %44, ptrtoint (ptr @lockdep_recursion to i32)
  %45 = inttoptr i32 %add.i.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !35
  %48 = tail call i32 @llvm.read_register.i32(metadata !22) #11
  %and.i.i.i7.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %52 = tail call i32 @llvm.read_register.i32(metadata !22) #11
  %and.i.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.i.i.i.i.i = icmp eq i32 %55, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %56 = tail call i32 @llvm.read_register.i32(metadata !22) #11
  %and.i.i.i9.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  %60 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %63, ptrtoint (ptr @hardirqs_enabled to i32)
  %64 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %67 = tail call i32 @llvm.read_register.i32(metadata !22) #11
  %and.i.i.i12.i.i.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !38

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %27 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %71 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !39
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %73 = tail call ptr @llvm.returnaddress(i32 0) #11
  %74 = ptrtoint ptr %73 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %74) #11
  %75 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %76, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %77 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %78, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %74) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !40
  %79 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %qdisc_bstats_update.exit, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %qdisc_bstats_update.exit ], [ null, %if.then2 ], [ null, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @choke_peek_head(ptr nocapture noundef readonly %sch) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tab = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %4 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tab, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %7, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @choke_init(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @choke_change(ptr noundef %sch, ptr noundef %opt, ptr noundef %extack)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @choke_reset(ptr nocapture noundef %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %tail = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not32 = icmp eq i32 %1, %3
  br i1 %cmp.not32, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tab = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %tab_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %15, %cleanup.while.body_crit_edge ]
  %5 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tab, align 8
  %arrayidx = getelementptr ptr, ptr %6, i32 %4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %add = add i32 %4, 1
  %9 = ptrtoint ptr %tab_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tab_mask, align 4
  %and = and i32 %10, %add
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %head, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rtnl_kfree_skbs(ptr noundef nonnull %8, ptr noundef nonnull %8) #11
  %12 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %13, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.body.cleanup_crit_edge
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %head, align 4
  %16 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tail, align 8
  %cmp.not = icmp eq i32 %15, %17
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %18 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen, align 8
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %backlog, align 4
  %tab5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %tab5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tab5, align 8
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %while.end.if.end11_crit_edge, label %if.then7

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %tab_mask9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %tab_mask9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tab_mask9, align 4
  %add10 = shl i32 %23, 2
  %mul = add i32 %add10, 4
  %24 = call ptr @memset(ptr %21, i32 0, i32 %mul)
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %while.end.if.end11_crit_edge
  %25 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tail, align 8
  %26 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %head, align 4
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %qidlestart.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %27 = ptrtoint ptr %qidlestart.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %qidlestart.i.i, align 8
  %qavg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %28 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %qavg.i, align 8
  %29 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %vars, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @choke_destroy(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tab = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %0 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tab, align 8
  tail call void @kvfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @choke_change(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tmp13.i = alloca %struct.reciprocal_value, align 8
  %tb = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #11
  %0 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 3
  %cmp = icmp eq ptr %opt, null
  %3 = call ptr @memset(ptr %tb, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup121_crit_edge, label %if.end

entry.cleanup121_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @choke_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup121_crit_edge, label %if.end4

if.end.cleanup121_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end4.cleanup121_crit_edge, label %lor.lhs.false

if.end4.cleanup121_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

lor.lhs.false:                                    ; preds = %if.end4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %lor.lhs.false.cleanup121_crit_edge, label %if.end9

lor.lhs.false.cleanup121_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end9:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end9.cond.end_crit_edge, label %cond.true

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i195 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i195 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i195, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end9.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ 0, %if.end9.cond.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %add.ptr.i196 = getelementptr i8, ptr %9, i32 4
  %qth_min = getelementptr i8, ptr %7, i32 8
  %14 = ptrtoint ptr %qth_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qth_min, align 4
  %qth_max = getelementptr i8, ptr %7, i32 12
  %Wlog = getelementptr i8, ptr %7, i32 16
  %16 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %Wlog, align 4
  %Scell_log = getelementptr i8, ptr %7, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  %18 = call i32 @llvm.ctlz.i32(i32 %15, i1 true) #11, !range !41
  %sub.i.i197 = sub nuw nsw i32 32, %18
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i197
  %conv.i = zext i8 %17 to i32
  %add.i = add nuw nsw i32 %cond.i.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 31
  br i1 %cmp.i, label %cond.end.cleanup121_crit_edge, label %if.end.i

cond.end.cleanup121_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end.i:                                         ; preds = %cond.end
  %19 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %Scell_log, align 2
  %21 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qth_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i34.i = icmp eq i32 %22, 0
  %23 = call i32 @llvm.ctlz.i32(i32 %22, i1 true) #11, !range !41
  %sub.i35.i = sub nuw nsw i32 32, %23
  %cond.i36.i = select i1 %tobool.not.i34.i, i32 0, i32 %sub.i35.i
  %add4.i = add nuw nsw i32 %cond.i36.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add4.i)
  %cmp5.i = icmp ugt i32 %add4.i, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %20)
  %cmp10.i = icmp ugt i8 %20, 31
  %or.cond.i = or i1 %cmp10.i, %cmp5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp14.i = icmp ult i32 %22, %15
  %or.cond33.i = or i1 %cmp14.i, %or.cond.i
  br i1 %or.cond33.i, label %if.end.i.cleanup121_crit_edge, label %if.end17.i

if.end.i.cleanup121_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end17.i:                                       ; preds = %if.end.i
  %tobool.not.i = icmp eq ptr %add.ptr.i196, null
  br i1 %tobool.not.i, label %if.end17.i.if.end19_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  br label %for.body.i

if.end17.i.if.end19_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end17.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end17.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr.i196, i32 %i.038.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %25)
  %cmp22.i = icmp ugt i8 %25, 31
  %inc.i = add nuw nsw i32 %i.038.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond39.i = select i1 %cmp22.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond39.i, label %red_check_params.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

red_check_params.exit:                            ; preds = %for.body.i
  br i1 %cmp22.i, label %red_check_params.exit.cleanup121_crit_edge, label %red_check_params.exit.if.end19_crit_edge

red_check_params.exit.if.end19_crit_edge:         ; preds = %red_check_params.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

red_check_params.exit.cleanup121_crit_edge:       ; preds = %red_check_params.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end19:                                         ; preds = %red_check_params.exit.if.end19_crit_edge, %if.end17.i.if.end19_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %27)
  %cmp20 = icmp ugt i32 %27, 131071
  br i1 %cmp20, label %if.end19.cleanup121_crit_edge, label %cond.false55

if.end19.cleanup121_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

cond.false55:                                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp27 = icmp eq i32 %27, 0
  %28 = call i32 @llvm.ctlz.i32(i32 %27, i1 true) #11, !range !41
  %sub.i.i.i = sub nuw nsw i32 32, %28
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %cmp27, i32 1, i32 %sub.i.i.op.i
  %sub61 = add i32 %shl.i, -1
  %tab_mask = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %tab_mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tab_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub61, i32 %30)
  %cmp62.not = icmp eq i32 %sub61, %30
  br i1 %cmp62.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %cond.false55
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shl.i, i32 4) #11
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.then64.cleanup121_crit_edge, label %kvcalloc.exit, !prof !42

if.then64.cleanup121_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

kvcalloc.exit:                                    ; preds = %if.then64
  %33 = extractvalue { i32, i1 } %31, 0
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %33, i32 noundef 3520, i32 noundef -1) #16
  %tobool67.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool67.not, label %kvcalloc.exit.cleanup121_crit_edge, label %if.end69

kvcalloc.exit.cleanup121_crit_edge:               ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup121

if.end69:                                         ; preds = %kvcalloc.exit
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  %tab = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tab, align 8
  %tobool70.not = icmp eq ptr %35, null
  br i1 %tobool70.not, label %cleanup103.thread218, label %if.then71

cleanup103.thread218:                             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %tab_mask to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub61, ptr %tab_mask, align 4
  %37 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i, ptr %tab, align 8
  br label %if.end106

if.then71:                                        ; preds = %if.end69
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %38 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen, align 8
  %head = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %tail73 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %head, align 4
  %42 = ptrtoint ptr %tail73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tail73, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp74.not219 = icmp eq i32 %41, %43
  br i1 %cmp74.not219, label %if.end106.critedge, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then71
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %44 = phi i32 [ %41, %while.body.lr.ph ], [ %62, %cleanup.while.body_crit_edge ]
  %dropped.0221 = phi i32 [ 0, %while.body.lr.ph ], [ %dropped.1, %cleanup.while.body_crit_edge ]
  %tail.0220 = phi i32 [ 0, %while.body.lr.ph ], [ %tail.1, %cleanup.while.body_crit_edge ]
  %45 = ptrtoint ptr %tab to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tab, align 8
  %arrayidx78 = getelementptr ptr, ptr %46, i32 %44
  %47 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx78, align 4
  %add80 = add i32 %44, 1
  %49 = ptrtoint ptr %tab_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tab_mask, align 4
  %and = and i32 %50, %add80
  %51 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and, ptr %head, align 4
  %tobool83.not = icmp eq ptr %48, null
  br i1 %tobool83.not, label %while.body.cleanup_crit_edge, label %if.end85

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end85:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %tail.0220, i32 %sub61)
  %cmp86 = icmp ult i32 %tail.0220, %sub61
  br i1 %cmp86, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nuw i32 %tail.0220, 1
  %arrayidx89 = getelementptr ptr, ptr %call.i.i.i, i32 %tail.0220
  %52 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %arrayidx89, align 4
  br label %cleanup

if.end90:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 3
  %53 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cb.i.i, align 4
  %add92 = add i32 %54, %dropped.0221
  %55 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %backlog.i, align 4
  %sub.i199 = sub i32 %56, %54
  store i32 %sub.i199, ptr %backlog.i, align 4
  %57 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen, align 8
  %dec = add i32 %58, -1
  store i32 %dec, ptr %qlen, align 8
  call void @rtnl_kfree_skbs(ptr noundef nonnull %48, ptr noundef nonnull %48) #11
  %59 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %60, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then88, %while.body.cleanup_crit_edge
  %tail.1 = phi i32 [ %inc, %if.then88 ], [ %tail.0220, %if.end90 ], [ %tail.0220, %while.body.cleanup_crit_edge ]
  %dropped.1 = phi i32 [ %dropped.0221, %if.then88 ], [ %add92, %if.end90 ], [ %dropped.0221, %while.body.cleanup_crit_edge ]
  %61 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %head, align 4
  %63 = ptrtoint ptr %tail73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tail73, align 8
  %cmp74.not = icmp eq i32 %62, %64
  br i1 %cmp74.not, label %cleanup103, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup103:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %qlen, align 8
  %sub97 = sub i32 %39, %66
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub97, i32 noundef %dropped.1) #11
  %67 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %head, align 4
  %68 = ptrtoint ptr %tail73 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %tail.1, ptr %tail73, align 8
  %69 = ptrtoint ptr %tab_mask to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub61, ptr %tab_mask, align 4
  %70 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i.i, ptr %tab, align 8
  br label %if.end106

if.else:                                          ; preds = %cond.false55
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sch_tree_lock(ptr noundef %sch)
  br label %if.end106

if.end106.critedge:                               ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qlen, align 8
  %sub97.c = sub i32 %39, %72
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub97.c, i32 noundef 0) #11
  %73 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %head, align 4
  %74 = ptrtoint ptr %tail73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %tail73, align 8
  %75 = ptrtoint ptr %tab_mask to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub61, ptr %tab_mask, align 4
  %76 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i.i.i, ptr %tab, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.end106.critedge, %if.else, %cleanup103, %cleanup103.thread218
  %old.1 = phi ptr [ %35, %cleanup103 ], [ null, %if.else ], [ null, %cleanup103.thread218 ], [ %35, %if.end106.critedge ]
  %flags = getelementptr i8, ptr %7, i32 19
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags, align 1
  %flags107 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %79 = ptrtoint ptr %flags107 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %flags107, align 4
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i, align 4
  %82 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %privdata.i, align 8
  %parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %83 = ptrtoint ptr %qth_min to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %qth_min, align 4
  %85 = ptrtoint ptr %qth_max to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qth_max, align 4
  %87 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %Wlog, align 4
  %Plog = getelementptr i8, ptr %7, i32 17
  %89 = ptrtoint ptr %Plog to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %Plog, align 1
  %91 = ptrtoint ptr %Scell_log to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %Scell_log, align 2
  %sub.i200 = sub i32 %86, %84
  %conv.i201 = zext i8 %88 to i32
  %shl.i202 = shl i32 %84, %conv.i201
  %93 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl.i202, ptr %parms, align 4
  %shl3.i = shl i32 %86, %conv.i201
  %qth_max4.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %94 = ptrtoint ptr %qth_max4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %shl3.i, ptr %qth_max4.i, align 4
  %Wlog5.i = getelementptr inbounds %struct.red_parms, ptr %parms, i32 0, i32 9
  %95 = ptrtoint ptr %Wlog5.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %88, ptr %Wlog5.i, align 1
  %Plog6.i = getelementptr inbounds %struct.red_parms, ptr %parms, i32 0, i32 10
  %96 = ptrtoint ptr %Plog6.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %90, ptr %Plog6.i, align 2
  %97 = call i32 @llvm.smax.i32(i32 %sub.i200, i32 1) #11
  %qth_delta.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %98 = ptrtoint ptr %qth_delta.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %qth_delta.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not.i203 = icmp eq i32 %cond, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %90)
  %cmp.i.i = icmp ult i8 %90, 32
  %conv.i.i204 = zext i8 %90 to i32
  %shr.i.i = lshr i32 -1, %conv.i.i204
  %cond.i.i205 = select i1 %cmp.i.i, i32 %shr.i.i, i32 -1
  %mul.i = mul i32 %cond.i.i205, %97
  %max_P.addr.0.i = select i1 %tobool.not.i203, i32 %mul.i, i32 %cond
  %max_P10.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %99 = ptrtoint ptr %max_P10.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %max_P.addr.0.i, ptr %max_P10.i, align 4
  %div.i = udiv i32 %max_P.addr.0.i, %97
  %100 = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #11
  %max_P_reciprocal.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp13.i) #11
  call void @reciprocal_value(ptr nonnull sret(%struct.reciprocal_value) align 4 %tmp13.i, i32 noundef %100) #11
  %101 = ptrtoint ptr %tmp13.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %tmp13.i, align 8
  %103 = ptrtoint ptr %max_P_reciprocal.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 %102, ptr %max_P_reciprocal.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp13.i) #11
  %div14.i = udiv i32 %97, 5
  %mul15.i = shl nuw nsw i32 %div14.i, 1
  %add.i206 = add i32 %mul15.i, %84
  %target_min.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 8
  %104 = ptrtoint ptr %target_min.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add.i206, ptr %target_min.i, align 4
  %mul16.i = mul nuw nsw i32 %div14.i, 3
  %add17.i = add i32 %mul16.i, %84
  %target_max.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %105 = ptrtoint ptr %target_max.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add17.i, ptr %target_max.i, align 4
  %Scell_log18.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %106 = ptrtoint ptr %Scell_log18.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %92, ptr %Scell_log18.i, align 4
  %conv19.i = zext i8 %92 to i32
  %shl20.i = shl i32 255, %conv19.i
  %Scell_max.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %107 = ptrtoint ptr %Scell_max.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %shl20.i, ptr %Scell_max.i, align 4
  br i1 %tobool.not.i, label %if.end106.red_set_parms.exit_crit_edge, label %if.then22.i

if.end106.red_set_parms.exit_crit_edge:           ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %red_set_parms.exit

if.then22.i:                                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %Stab.i = getelementptr inbounds %struct.red_parms, ptr %parms, i32 0, i32 11
  %108 = call ptr @memcpy(ptr %Stab.i, ptr %add.ptr.i196, i32 256)
  br label %red_set_parms.exit

red_set_parms.exit:                               ; preds = %if.then22.i, %if.end106.red_set_parms.exit_crit_edge
  %vars = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 19, i32 4
  %qavg.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 21
  %109 = ptrtoint ptr %qavg.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %qavg.i, align 8
  %110 = ptrtoint ptr %vars to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %vars, align 8
  %head114 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %111 = ptrtoint ptr %head114 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %head114, align 4
  %tail115 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 2
  %113 = ptrtoint ptr %tail115 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tail115, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp116 = icmp eq i32 %112, %114
  br i1 %cmp116, label %if.then118, label %red_set_parms.exit.if.end120_crit_edge

red_set_parms.exit.if.end120_crit_edge:           ; preds = %red_set_parms.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then118:                                       ; preds = %red_set_parms.exit
  call void @__sanitizer_cov_trace_pc() #13
  %qidlestart.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23
  %115 = ptrtoint ptr %qidlestart.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 0, ptr %qidlestart.i, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %red_set_parms.exit.if.end120_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %116 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %117, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i207 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i207, label %if.else.i, label %if.end120.sch_tree_unlock.exit_crit_edge

if.end120.sch_tree_unlock.exit_crit_edge:         ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.else.i:                                        ; preds = %if.end120
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %118 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i208 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i208, label %land.rhs.i.i, label %if.else.i.sch_tree_unlock.exit_crit_edge

if.else.i.sch_tree_unlock.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

land.rhs.i.i:                                     ; preds = %if.else.i
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_unlock.exit_crit_edge, label %if.then.i.i, !prof !38

land.rhs.i.i.sch_tree_unlock.exit_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sch_tree_unlock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #11
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_unlock.exit_crit_edge, %if.else.i.sch_tree_unlock.exit_crit_edge, %if.end120.sch_tree_unlock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end120.sch_tree_unlock.exit_crit_edge ], [ %121, %if.else.i.sch_tree_unlock.exit_crit_edge ], [ %121, %land.rhs.i.i.sch_tree_unlock.exit_crit_edge ], [ %121, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i) #11
  call void @kvfree(ptr noundef %old.1) #11
  br label %cleanup121

cleanup121:                                       ; preds = %sch_tree_unlock.exit, %kvcalloc.exit.cleanup121_crit_edge, %if.then64.cleanup121_crit_edge, %if.end19.cleanup121_crit_edge, %red_check_params.exit.cleanup121_crit_edge, %if.end.i.cleanup121_crit_edge, %cond.end.cleanup121_crit_edge, %lor.lhs.false.cleanup121_crit_edge, %if.end4.cleanup121_crit_edge, %if.end.cleanup121_crit_edge, %entry.cleanup121_crit_edge
  %retval.1 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -22, %entry.cleanup121_crit_edge ], [ %call2.i, %if.end.cleanup121_crit_edge ], [ -22, %lor.lhs.false.cleanup121_crit_edge ], [ -22, %if.end4.cleanup121_crit_edge ], [ -22, %red_check_params.exit.cleanup121_crit_edge ], [ -22, %if.end19.cleanup121_crit_edge ], [ -22, %cond.end.cleanup121_crit_edge ], [ -22, %if.end.i.cleanup121_crit_edge ], [ -12, %kvcalloc.exit.cleanup121_crit_edge ], [ -12, %if.then64.cleanup121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @choke_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %opt = alloca %struct.tc_red_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opt) #11
  %0 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 5
  %5 = getelementptr inbounds %struct.tc_red_qopt, ptr %opt, i32 0, i32 6
  %6 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %privdata.i, align 8
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %opt, align 4
  %parms = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 2
  %9 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %parms, align 8
  %Wlog = getelementptr inbounds %struct.choke_sched_data, ptr %privdata.i, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %Wlog to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %Wlog, align 1
  %conv = zext i8 %12 to i32
  %shr = lshr i32 %10, %conv
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %0, align 4
  %qth_max5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 3
  %14 = ptrtoint ptr %qth_max5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qth_max5, align 4
  %shr9 = lshr i32 %15, %conv
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr9, ptr %1, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %12, ptr %2, align 4
  %Plog14 = getelementptr inbounds %struct.choke_sched_data, ptr %privdata.i, i32 0, i32 2, i32 10
  %18 = ptrtoint ptr %Plog14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %Plog14, align 2
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %3, align 1
  %Scell_log16 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 10
  %21 = ptrtoint ptr %Scell_log16 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %Scell_log16, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %4, align 2
  %flags17 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 1
  %24 = ptrtoint ptr %flags17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags17, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %5, align 1
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp45 = icmp eq ptr %28, null
  %cmp = select i1 %cmp.i, i1 true, i1 %cmp45
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call20 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %opt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %max_P = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 5
  %29 = ptrtoint ptr %max_P to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_P, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %31 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end25:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %28, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %38, %28
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !42

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %if.end25 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @choke_dump_stats(ptr nocapture noundef readonly %sch, ptr noundef %d) #2 align 64 {
entry:
  %st = alloca %struct.tc_choke_xstats, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %st) #11
  %0 = getelementptr inbounds %struct.tc_choke_xstats, ptr %st, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_choke_xstats, ptr %st, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_choke_xstats, ptr %st, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_choke_xstats, ptr %st, i32 0, i32 4
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 1
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stats, align 8
  %forced_drop = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %forced_drop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %forced_drop, align 8
  %add = add i32 %7, %5
  %8 = ptrtoint ptr %st to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %st, align 4
  %pdrop3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 3
  %9 = ptrtoint ptr %pdrop3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdrop3, align 8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %0, align 4
  %other5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %other5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %other5, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %1, align 4
  %prob_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2
  %15 = ptrtoint ptr %prob_mark to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prob_mark, align 4
  %forced_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %forced_mark to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %forced_mark, align 4
  %add8 = add i32 %18, %16
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add8, ptr %2, align 4
  %matched10 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 23, i32 2, i32 0, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %matched10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %matched10, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %3, align 4
  %call11 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 20) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %st) #11
  ret i32 %call11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @INET_ECN_set_ce(ptr noundef %skb) unnamed_addr #5 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #13
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %2 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %4 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge42
  ]

entry.if.then.i.i.i_crit_edge42:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i.i.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp.i.i.i = icmp ult i16 %3, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !42

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %5 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %6 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !43
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %5, align 2, !annotation !43
  %8 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %12 = add i32 %vlan_depth.1.i.i.i, %11
  %sub.i1.i.i.i.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !38

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %14, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !42
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %15 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !42
  br i1 %15, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !42

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  br label %return

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #11
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %17, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge43
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %1, %entry.skb_protocol.exit_crit_edge ], [ %17, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %19 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.return_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb6
  ]

skb_protocol.exit.return_crit_edge:               ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %skb_protocol.exit
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %cmp.not = icmp ugt ptr %add.ptr, %25
  br i1 %cmp.not, label %sw.bb.return_crit_edge, label %if.then

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %sw.bb
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tos.i, align 1
  %28 = add i8 %27, 1
  %29 = and i8 %28, 3
  %30 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool2.not.i = icmp eq i8 %29, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  br label %return

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv4.i = zext i8 %29 to i16
  %add5.i = add nuw nsw i16 %conv4.i, -5
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 7
  %31 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %check.i, align 2
  %add.i.i = add i16 %32, %add5.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %add5.i)
  %cmp.i.i = icmp ult i16 %add.i.i, %add5.i
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %33 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add7.i.i, ptr %check.i, align 2
  %34 = or i8 %27, 3
  %35 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tos.i, align 1
  br label %return

sw.bb6:                                           ; preds = %skb_protocol.exit
  %head.i23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i23, align 8
  %network_header.i24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i24, align 4
  %conv.i25 = zext i16 %39 to i32
  %add.ptr.i26 = getelementptr i8, ptr %37, i32 %conv.i25
  %add.ptr8 = getelementptr i8, ptr %add.ptr.i26, i32 40
  %tail.i27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i27, align 8
  %cmp10.not = icmp ugt ptr %add.ptr8, %41
  br i1 %cmp10.not, label %sw.bb6.return_crit_edge, label %if.then12

sw.bb6.return_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then12:                                        ; preds = %sw.bb6
  %42 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i26, align 2
  %44 = and i16 %43, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i14.not.i = icmp eq i16 %44, 0
  br i1 %cmp.i14.not.i, label %if.then12.return_crit_edge, label %if.end.i32

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i32:                                       ; preds = %if.then12
  %45 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr.i26, align 4
  %or.i = or i32 %46, 3145728
  store i32 %or.i, ptr %add.ptr.i26, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %47 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %48 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %48)
  %cmp.i = icmp eq i16 %48, 1024
  br i1 %cmp.i, label %if.then3.i, label %if.end.i32.return_crit_edge

if.end.i32.return_crit_edge:                      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then3.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  %49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  %neg.i.i = xor i32 %46, -1
  %add.i.i.i33 = add i32 %51, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33, i32 %neg.i.i)
  %cmp.i.i.i34 = icmp ult i32 %add.i.i.i33, %neg.i.i
  %conv.i.i.i35 = zext i1 %cmp.i.i.i34 to i32
  %add1.i.i.i = add i32 %add.i.i.i33, %or.i
  %add.i.i36 = add i32 %add1.i.i.i, %conv.i.i.i35
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36, i32 %or.i)
  %cmp.i.i37 = icmp ult i32 %add.i.i36, %or.i
  %conv.i.i38 = zext i1 %cmp.i.i37 to i32
  %add1.i.i = add i32 %add.i.i36, %conv.i.i38
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add1.i.i, ptr %49, align 8
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i32.return_crit_edge, %if.then12.return_crit_edge, %sw.bb6.return_crit_edge, %if.end.i, %if.then.i, %sw.bb.return_crit_edge, %skb_protocol.exit.return_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0 = phi i32 [ 0, %sw.bb6.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %skb_protocol.exit.return_crit_edge ], [ 1, %if.end.i ], [ %lnot.ext.i, %if.then.i ], [ 0, %if.then12.return_crit_edge ], [ 1, %if.then3.i ], [ 1, %if.end.i32.return_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %cleanup.thread.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_flow_keys_digest(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sch_tree_lock(ptr noundef %q) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %qdisc_sleeping.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i.i, align 4
  %call1.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b41.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !38

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 596) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi ptr [ %q, %entry.if.end_crit_edge ], [ %5, %if.else.if.end_crit_edge ], [ %5, %land.rhs.i.if.end_crit_edge ], [ %5, %if.then.i ]
  %lock.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reciprocal_value(ptr sret(%struct.reciprocal_value) align 4, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_sch_choke__507_516_choke_module_init6, !1, !"__initcall__kmod_sch_choke__507_516_choke_module_init6", i1 false, i1 false}
!1 = !{!"../net/sched/sch_choke.c", i32 516, i32 1}
!2 = !{ptr @__exitcall_choke_module_exit, !3, !"__exitcall_choke_module_exit", i1 false, i1 false}
!3 = !{!"../net/sched/sch_choke.c", i32 517, i32 1}
!4 = !{ptr @__UNIQUE_ID_file508, !5, !"__UNIQUE_ID_file508", i1 false, i1 false}
!5 = !{!"../net/sched/sch_choke.c", i32 519, i32 1}
!6 = !{ptr @__UNIQUE_ID_license509, !5, !"__UNIQUE_ID_license509", i1 false, i1 false}
!7 = !{ptr @choke_qdisc_ops, !8, !"choke_qdisc_ops", i1 false, i1 false}
!8 = !{!"../net/sched/sch_choke.c", i32 490, i32 25}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @choke_policy, !15, !"choke_policy", i1 false, i1 false}
!15 = !{!"../net/sched/sch_choke.c", i32 326, i32 32}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/net/netlink.h", i32 991, i32 3}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 711765, i64 711792, i64 711814, i64 711842}
!33 = !{i64 712173, i64 712200, i64 712233, i64 712254, i64 712281, i64 712307}
!34 = !{i64 2149875043}
!35 = !{i64 2149879975}
!36 = !{i64 2149901687}
!37 = !{i64 2149906579}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2149983036}
!40 = !{i64 2149983361}
!41 = !{i32 0, i32 33}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"auto-init"}
