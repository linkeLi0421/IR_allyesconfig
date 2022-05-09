; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_rpfilter.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_rpfilter.c"
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
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.xt_action_param = type { %union.anon.149, %union.anon.150, ptr, i32, i16, i8 }
%union.anon.149 = type { ptr }
%union.anon.150 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.132, %union.anon.133, [48 x i8], %union.anon.134, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.136, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { i64 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { i32, ptr }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.138, i32, i32, i32, i16, i16, %union.anon.140, i32, %union.anon.141, %union.anon.142, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.138 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.131, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.131 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file568 = internal constant [52 x i8] c"ip6t_rpfilter.file=net/ipv6/netfilter/ip6t_rpfilter\00", section ".modinfo", align 1
@__UNIQUE_ID_license569 = internal constant [26 x i8] c"ip6t_rpfilter.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author570 = internal constant [53 x i8] c"ip6t_rpfilter.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description571 = internal constant [66 x i8] c"ip6t_rpfilter.description=Xtables: IPv6 reverse path filter match\00", section ".modinfo", align 1
@rpfilter_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"rpfilter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @rpfilter_mt, ptr @rpfilter_check, ptr null, ptr null, ptr null, i32 1, i32 0, i32 1, i16 0, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_rpfilter__572_149_rpfilter_mt_init6 = internal global ptr @rpfilter_mt_init, section ".initcall6.init", align 4
@__exitcall_rpfilter_mt_exit = internal global ptr @rpfilter_mt_exit, section ".exitcall.exit", align 4
@rpfilter_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rpfilter_check = private unnamed_addr constant [15 x i8] c"rpfilter_check\00", align 1
@rpfilter_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.rpfilter_check, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ip6t_rpfilter: unknown options\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/ipv6/netfilter/ip6t_rpfilter.c\00", [61 x i8] zeroinitializer }, align 32
@rpfilter_check._entry_ptr = internal global ptr @rpfilter_check._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@rpfilter_check._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rpfilter_check._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.rpfilter_check, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ip6t_rpfilter: only valid in 'raw' or 'mangle' table, not '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@rpfilter_check._entry_ptr.8 = internal global ptr @rpfilter_check._entry.6, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 115, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 119, i32 25 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 120, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [38 x i8] c"../net/ipv6/netfilter/ip6t_rpfilter.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 121, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author570, ptr @__UNIQUE_ID_description571, ptr @__UNIQUE_ID_file568, ptr @__UNIQUE_ID_license569, ptr @__exitcall_rpfilter_mt_exit, ptr @__initcall__kmod_ip6t_rpfilter__572_149_rpfilter_mt_init6, ptr @rpfilter_check._entry, ptr @rpfilter_check._entry.6, ptr @rpfilter_check._entry_ptr, ptr @rpfilter_check._entry_ptr.8, ptr @rpfilter_mt_exit, ptr @rpfilter_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rpfilter_check._rs.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpfilter_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_match(ptr noundef nonnull @rpfilter_mt_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpfilter_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @rpfilter_mt_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rpfilter_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %fl6.i = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = and i8 %4, 8
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, -24576
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %rpfilter_is_loopback.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

rpfilter_is_loopback.exit:                        ; preds = %entry
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %rpfilter_is_loopback.exit.if.then_crit_edge

rpfilter_is_loopback.exit.if.then_crit_edge:      ; preds = %rpfilter_is_loopback.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %rpfilter_is_loopback.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4 = icmp eq i8 %5, 0
  br label %cleanup

if.end:                                           ; preds = %rpfilter_is_loopback.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr) #6
  %and.i38 = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %cmp = icmp eq i32 %and.i38, 0
  br i1 %cmp, label %if.then10, label %if.end15, !prof !39

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14 = icmp eq i8 %5, 0
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i, align 4
  %in.i41 = getelementptr inbounds %struct.nf_hook_state, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %in.i41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in.i41, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %27 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %28 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 %conv.i.i.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #6
  %29 = getelementptr inbounds i8, ptr %fl6.i, i32 80
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 4294967295, ptr %29, align 8, !annotation !40
  %31 = call ptr @memset(ptr %fl6.i, i32 0, i32 40)
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 1
  %32 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 5
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nexthdr.i, align 2
  %35 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %flowic_proto.i, align 2
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %36 = call ptr @memcpy(ptr %daddr.i, ptr %saddr.i, i32 16)
  %saddr1.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %37 = call ptr @memset(ptr %saddr1.i, i32 0, i32 16)
  %flowlabel.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 3
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i42 = and i32 %39, 268435455
  %40 = ptrtoint ptr %flowlabel.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and.i42, ptr %flowlabel.i, align 8
  %uli.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 4
  %41 = ptrtoint ptr %uli.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %uli.i, align 4
  %daddr2.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %call.i.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %daddr2.i) #6
  %and.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end15.if.end.i_crit_edge, label %if.then.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %42 = call ptr @memcpy(ptr %saddr1.i, ptr %daddr2.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end15.if.end.i_crit_edge
  %lookup_flags.0.i = phi i32 [ 4, %if.then.i ], [ 0, %if.end15.if.end.i_crit_edge ]
  %conv.i = zext i8 %24 to i32
  %and6.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %45, %cond.true.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 2
  %46 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %flowic_mark.i, align 8
  %call.i.i82.i = tail call i32 @__ipv6_addr_type(ptr noundef %saddr.i) #6
  %and.i83.i = and i32 %call.i.i82.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83.i)
  %tobool.i84.not.i = icmp eq i32 %and.i83.i, 0
  br i1 %tobool.i84.not.i, label %if.else12.i, label %if.then10.i

if.then10.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %lookup_flags.0.i, 1
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %47 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ifindex.i, align 4
  %49 = ptrtoint ptr %fl6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %fl6.i, align 8
  br label %if.end26.i

if.else12.i:                                      ; preds = %cond.end.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 15
  %50 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %priv_flags.i.i, align 16
  %and.i85.i = and i64 %51, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i85.i)
  %tobool.i86.not.i = icmp eq i64 %and.i85.i, 0
  br i1 %tobool.i86.not.i, label %lor.lhs.false.i, label %if.else12.i.if.then21.i_crit_edge

if.else12.i.if.then21.i_crit_edge:                ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.else12.i
  %and.i88.i = and i64 %51, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i88.i)
  %tobool.i89.i = icmp ne i64 %and.i88.i, 0
  %and19.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %cmp.i43 = icmp eq i32 %and19.i, 0
  %or.cond.i = or i1 %cmp.i43, %tobool.i89.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %lor.lhs.false.i.if.end26.i_crit_edge

lor.lhs.false.i.if.end26.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.i.if.then21.i_crit_edge, %if.else12.i.if.then21.i_crit_edge
  %ifindex22.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %52 = ptrtoint ptr %ifindex22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ifindex22.i, align 4
  %54 = ptrtoint ptr %fl6.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %fl6.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %lor.lhs.false.i.if.end26.i_crit_edge, %if.then10.i
  %lookup_flags.1.i = phi i32 [ %or.i, %if.then10.i ], [ %lookup_flags.0.i, %if.then21.i ], [ %lookup_flags.0.i, %lor.lhs.false.i.if.end26.i_crit_edge ]
  %call27.i = call ptr @ip6_route_lookup(ptr noundef %20, ptr noundef nonnull %fl6.i, ptr noundef %skb, i32 noundef %lookup_flags.1.i) #6
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %call27.i, i32 0, i32 15
  %55 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool28.not.i = icmp eq i16 %56, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.rpfilter_lookup_reverse6.exit_crit_edge

if.end26.i.rpfilter_lookup_reverse6.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpfilter_lookup_reverse6.exit

if.end30.i:                                       ; preds = %if.end26.i
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %call27.i, i32 0, i32 7
  %57 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rt6i_flags.i, align 4
  %and31.i = and i32 %58, 1049088
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.rpfilter_lookup_reverse6.exit_crit_edge

if.end30.i.rpfilter_lookup_reverse6.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpfilter_lookup_reverse6.exit

if.end34.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %tobool37.not.i = icmp sgt i32 %58, -1
  br i1 %tobool37.not.i, label %if.end42.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %and40.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.i = icmp ne i32 %and40.i, 0
  br label %rpfilter_lookup_reverse6.exit

if.end42.i:                                       ; preds = %if.end34.i
  %rt6i_idev.i = getelementptr inbounds %struct.rt6_info, ptr %call27.i, i32 0, i32 6
  %59 = ptrtoint ptr %rt6i_idev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rt6i_idev.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %cmp44.i = icmp eq ptr %62, %22
  br i1 %cmp44.i, label %if.end42.i.if.then57.i_crit_edge, label %lor.lhs.false46.i

if.end42.i.if.then57.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57.i

lor.lhs.false46.i:                                ; preds = %if.end42.i
  %call49.i = call i32 @l3mdev_master_ifindex_rcu(ptr noundef %62) #6
  %ifindex50.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 17
  %63 = ptrtoint ptr %ifindex50.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ifindex50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call49.i, i32 %64)
  %cmp51.i = icmp ne i32 %call49.i, %64
  %and55.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  %or.cond81.i = and i1 %tobool56.not.i, %cmp51.i
  br i1 %or.cond81.i, label %lor.lhs.false46.i.rpfilter_lookup_reverse6.exit_crit_edge, label %lor.lhs.false46.i.if.then57.i_crit_edge

lor.lhs.false46.i.if.then57.i_crit_edge:          ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57.i

lor.lhs.false46.i.rpfilter_lookup_reverse6.exit_crit_edge: ; preds = %lor.lhs.false46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpfilter_lookup_reverse6.exit

if.then57.i:                                      ; preds = %lor.lhs.false46.i.if.then57.i_crit_edge, %if.end42.i.if.then57.i_crit_edge
  br label %rpfilter_lookup_reverse6.exit

rpfilter_lookup_reverse6.exit:                    ; preds = %if.then57.i, %lor.lhs.false46.i.rpfilter_lookup_reverse6.exit_crit_edge, %if.then38.i, %if.end30.i.rpfilter_lookup_reverse6.exit_crit_edge, %if.end26.i.rpfilter_lookup_reverse6.exit_crit_edge
  %ret.0.off0.i = phi i1 [ false, %if.end26.i.rpfilter_lookup_reverse6.exit_crit_edge ], [ false, %if.end30.i.rpfilter_lookup_reverse6.exit_crit_edge ], [ %tobool41.i, %if.then38.i ], [ true, %if.then57.i ], [ false, %lor.lhs.false46.i.rpfilter_lookup_reverse6.exit_crit_edge ]
  call void @dst_release(ptr noundef %call27.i) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #6
  %.lobit = lshr exact i8 %5, 3
  %65 = zext i1 %ret.0.off0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %65)
  %tobool24 = icmp ne i8 %.lobit, %65
  br label %cleanup

cleanup:                                          ; preds = %rpfilter_lookup_reverse6.exit, %if.then10, %if.then
  %retval.0 = phi i1 [ %tobool4, %if.then ], [ %tobool14, %if.then10 ], [ %tobool24, %rpfilter_lookup_reverse6.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpfilter_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %tobool.not = icmp ult i8 %3, 16
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @rpfilter_check._rs, ptr noundef nonnull @__func__.rpfilter_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %table = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 1
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %call8 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(4) @.str.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @rpfilter_check._rs.5, ptr noundef nonnull @__func__.rpfilter_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end17 ], [ -22, %if.then11.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__UNIQUE_ID_file568, !1, !"__UNIQUE_ID_file568", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_license569, !1, !"__UNIQUE_ID_license569", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author570, !4, !"__UNIQUE_ID_author570", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 17, i32 1}
!5 = !{ptr @__UNIQUE_ID_description571, !6, !"__UNIQUE_ID_description571", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 18, i32 1}
!7 = !{ptr @__initcall__kmod_ip6t_rpfilter__572_149_rpfilter_mt_init6, !8, !"__initcall__kmod_ip6t_rpfilter__572_149_rpfilter_mt_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 149, i32 1}
!9 = !{ptr @__exitcall_rpfilter_mt_exit, !10, !"__exitcall_rpfilter_mt_exit", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 150, i32 1}
!11 = !{ptr @rpfilter_mt_reg, !12, !"rpfilter_mt_reg", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 129, i32 24}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 115, i32 3}
!15 = !{ptr @rpfilter_check._rs, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @__func__.rpfilter_check, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rpfilter_check._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @rpfilter_check._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 119, i32 25}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 120, i32 25}
!25 = !{ptr @rpfilter_check._rs.5, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../net/ipv6/netfilter/ip6t_rpfilter.c", i32 121, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rpfilter_check._entry.6, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @rpfilter_check._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"auto-init"}
