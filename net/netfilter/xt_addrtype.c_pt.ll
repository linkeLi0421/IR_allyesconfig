; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_addrtype.c_pt.bc'
source_filename = "../net/netfilter/xt_addrtype.c"
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
%struct.xt_action_param = type { %union.anon.193, %union.anon.194, ptr, i32, i16, i8 }
%union.anon.193 = type { ptr }
%union.anon.194 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.176, %union.anon.177, [48 x i8], %union.anon.178, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.180, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.176 = type { ptr }
%union.anon.177 = type { i64 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, ptr }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.182, i32, i32, i32, i16, i16, %union.anon.184, i32, %union.anon.185, %union.anon.186, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.182 = type { i32 }
%union.anon.184 = type { i32 }
%union.anon.185 = type { i32 }
%union.anon.186 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_addrtype_info = type { i16, i16, i32, i32 }
%struct.xt_addrtype_info_v1 = type { i16, i16, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.175, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%union.anon.175 = type { ptr }
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
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }

@__UNIQUE_ID_file679 = internal constant [43 x i8] c"xt_addrtype.file=net/netfilter/xt_addrtype\00", section ".modinfo", align 1
@__UNIQUE_ID_license680 = internal constant [24 x i8] c"xt_addrtype.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author681 = internal constant [53 x i8] c"xt_addrtype.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description682 = internal constant [52 x i8] c"xt_addrtype.description=Xtables: address type match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias683 = internal constant [31 x i8] c"xt_addrtype.alias=ipt_addrtype\00", section ".modinfo", align 1
@__UNIQUE_ID_alias684 = internal constant [32 x i8] c"xt_addrtype.alias=ip6t_addrtype\00", section ".modinfo", align 1
@addrtype_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"addrtype\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @addrtype_mt_v0, ptr null, ptr null, ptr null, ptr null, i32 12, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"addrtype\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @addrtype_mt_v1, ptr @addrtype_mt_checkentry_v1, ptr null, ptr null, ptr null, i32 8, i32 0, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_addrtype__685_231_addrtype_mt_init6 = internal global ptr @addrtype_mt_init, section ".initcall6.init", align 4
@__exitcall_addrtype_mt_exit = internal global ptr @addrtype_mt_exit, section ".exitcall.exit", align 4
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"both incoming and outgoing interface limitation cannot be selected\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"output interface limitation not valid in PREROUTING and INPUT\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"input interface limitation not valid in POSTROUTING and OUTPUT\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ipv6 BLACKHOLE matching not supported\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ipv6 PROHIBIT (THROW, NAT ..) matching not supported\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ipv6 does not support BROADCAST matching\00", [55 x i8] zeroinitializer }, align 32
@addrtype_mt_checkentry_v1._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.addrtype_mt_checkentry_v1 = private unnamed_addr constant [26 x i8] c"addrtype_mt_checkentry_v1\00", align 1
@addrtype_mt_checkentry_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.addrtype_mt_checkentry_v1, ptr @.str.8, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016xt_addrtype: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/netfilter/xt_addrtype.c\00", [36 x i8] zeroinitializer }, align 32
@addrtype_mt_checkentry_v1._entry_ptr = internal global ptr @addrtype_mt_checkentry_v1._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 158, i32 23 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 168, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 175, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 182, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 186, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 190, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [31 x i8] c"../net/netfilter/xt_addrtype.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 197, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias683, ptr @__UNIQUE_ID_alias684, ptr @__UNIQUE_ID_author681, ptr @__UNIQUE_ID_description682, ptr @__UNIQUE_ID_file679, ptr @__UNIQUE_ID_license680, ptr @__exitcall_addrtype_mt_exit, ptr @__initcall__kmod_xt_addrtype__685_231_addrtype_mt_init6, ptr @addrtype_mt_checkentry_v1._entry, ptr @addrtype_mt_checkentry_v1._entry_ptr, ptr @addrtype_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @addrtype_mt_checkentry_v1._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addrtype_mt_checkentry_v1._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addrtype_mt_checkentry_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @addrtype_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_matches(ptr noundef nonnull @addrtype_mt_reg, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @addrtype_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @addrtype_mt_reg, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @addrtype_mt_v0(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %4 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %saddr, align 4
  %conv.i = zext i16 %12 to i32
  %call.i = tail call i32 @inet_dev_addr_type(ptr noundef %3, ptr noundef null, i32 noundef %14) #5
  %shl.i = shl nuw i32 1, %call.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %invert_source = getelementptr inbounds %struct.xt_addrtype_info, ptr %6, i32 0, i32 2
  %15 = ptrtoint ptr %invert_source to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %invert_source, align 4
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp ne i32 %17, 0
  %tobool6 = xor i1 %tobool.i, %18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0.off0 = phi i1 [ %tobool6, %if.then ], [ true, %entry.if.end_crit_edge ]
  %dest = getelementptr inbounds %struct.xt_addrtype_info, ptr %6, i32 0, i32 1
  %19 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool7.not = icmp eq i16 %20, 0
  br i1 %tobool7.not, label %if.end.if.end18_crit_edge, label %if.then8

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %daddr, align 4
  %conv.i33 = zext i16 %20 to i32
  %call.i34 = tail call i32 @inet_dev_addr_type(ptr noundef %3, ptr noundef null, i32 noundef %22) #5
  %23 = lshr i32 %conv.i33, %call.i34
  %invert_dest = getelementptr inbounds %struct.xt_addrtype_info, ptr %6, i32 0, i32 3
  %24 = ptrtoint ptr %invert_dest to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %invert_dest, align 4
  %xor12 = xor i32 %25, %23
  %conv14 = zext i1 %ret.0.off0 to i32
  %and15 = and i32 %xor12, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16 = icmp ne i32 %and15, 0
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.end.if.end18_crit_edge
  %ret.1.off0 = phi i1 [ %tobool16, %if.then8 ], [ %ret.0.off0, %if.end.if.end18_crit_edge ]
  ret i1 %ret.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @addrtype_mt_v1(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %4 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %flags = getelementptr inbounds %struct.xt_addrtype_info_v1, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 2
  br label %if.end7.sink.split

if.else:                                          ; preds = %entry
  %and3 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 3
  br label %if.end7.sink.split

if.end7.sink.split:                               ; preds = %if.then5, %if.then
  %out.i.sink = phi ptr [ %out.i, %if.then5 ], [ %in.i, %if.then ]
  %9 = ptrtoint ptr %out.i.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out.i.sink, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %if.else.if.end7_crit_edge
  %dev.0 = phi ptr [ null, %if.else.if.end7_crit_edge ], [ %10, %if.end7.sink.split ]
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp = icmp eq i8 %12, 10
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  br i1 %tobool.not.i, label %if.then10.land.lhs.true.i_crit_edge, label %if.end.i

if.then10.land.lhs.true.i_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end.i:                                         ; preds = %if.then10
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %call2.i = tail call fastcc zeroext i1 @match_type6(ptr noundef %3, ptr noundef %dev.0, ptr noundef %saddr.i, i16 noundef zeroext %18) #5
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp ne i32 %21, 0
  %tobool6.i = xor i1 %call2.i, %22
  br i1 %tobool6.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i.land.lhs.true.i_crit_edge, %if.then10.land.lhs.true.i_crit_edge
  %dest.i = getelementptr inbounds %struct.xt_addrtype_info_v1, ptr %6, i32 0, i32 1
  %23 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dest.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool10.not.i = icmp eq i16 %24, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then11.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %call13.i = tail call fastcc zeroext i1 @match_type6(ptr noundef %3, ptr noundef %dev.0, ptr noundef %daddr.i, i16 noundef zeroext %24) #5
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end7
  br i1 %tobool.not.i, label %if.end12.land.lhs.true_crit_edge, label %if.end25

if.end12.land.lhs.true_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end25:                                         ; preds = %if.end12
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %saddr, align 4
  %conv.i = zext i16 %18 to i32
  %call.i = tail call i32 @inet_dev_addr_type(ptr noundef %3, ptr noundef %dev.0, i32 noundef %26) #5
  %shl.i = shl nuw i32 1, %call.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %29 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp ne i32 %29, 0
  %tobool24 = xor i1 %tobool.i, %30
  br i1 %tobool24, label %if.end25.land.lhs.true_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25.land.lhs.true_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end25.land.lhs.true_crit_edge, %if.end12.land.lhs.true_crit_edge
  %dest = getelementptr inbounds %struct.xt_addrtype_info_v1, ptr %6, i32 0, i32 1
  %31 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool29.not = icmp eq i16 %32, 0
  br i1 %tobool29.not, label %land.lhs.true.cleanup_crit_edge, label %if.then30

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daddr, align 4
  %conv.i77 = zext i16 %32 to i32
  %call.i78 = tail call i32 @inet_dev_addr_type(ptr noundef %3, ptr noundef %dev.0, i32 noundef %34) #5
  %shl.i79 = shl nuw i32 1, %call.i78
  %and.i80 = and i32 %shl.i79, %conv.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.i81 = icmp ne i32 %and.i80, 0
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then30, %if.then11.i
  %call13.i.sink = phi i1 [ %call13.i, %if.then11.i ], [ %tobool.i81, %if.then30 ]
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %38 = icmp ne i32 %37, 0
  %tobool23.i = xor i1 %call13.i.sink, %38
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end25.cleanup_crit_edge ], [ true, %land.lhs.true.i.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ %tobool23.i, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @addrtype_mt_checkentry_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %flags = getelementptr inbounds %struct.xt_addrtype_info_v1, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %.not = icmp eq i32 %4, 12
  br i1 %.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %hook_mask = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 5
  %5 = ptrtoint ptr %hook_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hook_mask, align 4
  %and4 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %brmerge = select i1 %tobool5.not, i1 true, i1 %tobool3.not
  br i1 %brmerge, label %if.end11, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end11:                                         ; preds = %if.end
  %and13 = and i32 %6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %brmerge66 = select i1 %tobool14.not, i1 true, i1 %tobool.not
  br i1 %brmerge66, label %if.end20, label %if.end11.err_crit_edge

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end20:                                         ; preds = %if.end11
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp = icmp eq i8 %8, 10
  br i1 %cmp, label %if.then22, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.end20
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  %dest = getelementptr inbounds %struct.xt_addrtype_info_v1, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dest, align 2
  %or65 = or i16 %12, %10
  %or = zext i16 %or65 to i32
  %and25 = and i32 %or, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then22.err_crit_edge

if.then22.err_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %or65)
  %cmp34 = icmp ugt i16 %or65, 255
  br i1 %cmp34, label %if.end28.err_crit_edge, label %if.end37

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end37:                                         ; preds = %if.end28
  %and43 = and i32 %or, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end37.cleanup_crit_edge, label %if.end37.err_crit_edge

if.end37.err_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err:                                              ; preds = %if.end37.err_crit_edge, %if.end28.err_crit_edge, %if.then22.err_crit_edge, %if.end11.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  %errmsg.0 = phi ptr [ @.str, %entry.err_crit_edge ], [ @.str.3, %if.then22.err_crit_edge ], [ @.str.4, %if.end28.err_crit_edge ], [ @.str.5, %if.end37.err_crit_edge ], [ @.str.1, %if.end.err_crit_edge ], [ @.str.2, %if.end11.err_crit_edge ]
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @addrtype_mt_checkentry_v1._rs, ptr noundef nonnull @__func__.addrtype_mt_checkentry_v1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool48.not = icmp eq i32 %call, 0
  br i1 %tobool48.not, label %err.cleanup_crit_edge, label %do.end

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %errmsg.0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %err.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %err.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dev_addr_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @match_type6(ptr noundef %net, ptr noundef %dev, ptr noundef %addr, i16 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %flow.i = alloca %struct.flowi6, align 8
  %rt.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %addr) #5
  %and.i = and i32 %call.i, 65535
  %conv = zext i16 %mask to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and1 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %and7 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond36 = select i1 %tobool5.not, i1 %tobool8.not, i1 false
  br i1 %or.cond36, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %and12 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not = icmp eq i32 %and.i, 0
  %or.cond37 = select i1 %tobool13.not, i1 true, i1 %cmp.not
  br i1 %or.cond37, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %and19 = and i32 %conv, 148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.cleanup_crit_edge, label %if.then21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %flow.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt.i) #5
  %0 = ptrtoint ptr %rt.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rt.i, align 4, !annotation !46
  %1 = call ptr @memset(ptr %flow.i, i32 0, i32 88)
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %flow.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %daddr.i, ptr %addr, i32 16)
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.then21.if.end7.i_crit_edge, label %if.then.i

if.then21.if.end7.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then21
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex.i, align 4
  %5 = ptrtoint ptr %flow.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flow.i, align 8
  %6 = and i16 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not.i = icmp eq i16 %6, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then3.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @ipv6_chk_addr(ptr noundef %net, ptr noundef %addr, ptr noundef nonnull %dev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 0, i32 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.then.i.if.end7.i_crit_edge, %if.then21.if.end7.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then.i.if.end7.i_crit_edge ], [ %spec.select.i, %if.then3.i ], [ 0, %if.then21.if.end7.i_crit_edge ]
  %call.i43.i = call i32 @__nf_ip6_route(ptr noundef %net, ptr noundef nonnull %rt.i, ptr noundef nonnull %flow.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool10.not.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end7.i.match_lookup_rt6.exit_crit_edge

if.end7.i.match_lookup_rt6.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %match_lookup_rt6.exit

if.end12.i:                                       ; preds = %if.end7.i
  %7 = ptrtoint ptr %rt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rt.i, align 4
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rt6i_flags.i, align 4
  %and13.i = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %spec.select40.i = select i1 %tobool14.not.i, i32 %ret.0.i, i32 128
  %or.i = or i32 %spec.select40.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not48.i = icmp slt i32 %10, 0
  %11 = select i1 %tobool.not.i, i1 %tobool21.not48.i, i1 false
  %ret.2.i = select i1 %11, i32 %or.i, i32 %spec.select40.i
  %and.i.i = and i32 %10, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %if.end12.i.ipv6_anycast_destination.exit.thread.i_crit_edge

if.end12.i.ipv6_anycast_destination.exit.thread.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipv6_anycast_destination.exit.thread.i

lor.rhs.i.i:                                      ; preds = %if.end12.i
  %plen.i.i = getelementptr inbounds %struct.rt6_info, ptr %8, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %plen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 127
  %and2.i.i = and i32 %10, 2097154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool3.not.i.i, i1 false
  br i1 %or.cond.i.i, label %ipv6_anycast_destination.exit.i, label %lor.rhs.i.i.ipv6_anycast_destination.exit.thread46.i_crit_edge

lor.rhs.i.i.ipv6_anycast_destination.exit.thread46.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipv6_anycast_destination.exit.thread46.i

ipv6_anycast_destination.exit.i:                  ; preds = %lor.rhs.i.i
  %rt6i_dst.i.i = getelementptr inbounds %struct.rt6_info, ptr %8, i32 0, i32 3
  %14 = ptrtoint ptr %rt6i_dst.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rt6i_dst.i.i, align 4
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %xor.i.i.i = xor i32 %17, %15
  %arrayidx4.i.i.i = getelementptr %struct.rt6_info, ptr %8, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %21, %19
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.rt6_info, ptr %8, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11.i.i.i, align 4
  %xor12.i.i.i = xor i32 %25, %23
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.rt6_info, ptr %8, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %26 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %29, %27
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %ipv6_anycast_destination.exit.i.ipv6_anycast_destination.exit.thread.i_crit_edge, label %ipv6_anycast_destination.exit.i.ipv6_anycast_destination.exit.thread46.i_crit_edge

ipv6_anycast_destination.exit.i.ipv6_anycast_destination.exit.thread46.i_crit_edge: ; preds = %ipv6_anycast_destination.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipv6_anycast_destination.exit.thread46.i

ipv6_anycast_destination.exit.i.ipv6_anycast_destination.exit.thread.i_crit_edge: ; preds = %ipv6_anycast_destination.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipv6_anycast_destination.exit.thread.i

ipv6_anycast_destination.exit.thread.i:           ; preds = %ipv6_anycast_destination.exit.i.ipv6_anycast_destination.exit.thread.i_crit_edge, %if.end12.i.ipv6_anycast_destination.exit.thread.i_crit_edge
  %or2645.i = or i32 %ret.2.i, 16
  br label %ipv6_anycast_destination.exit.thread46.i

ipv6_anycast_destination.exit.thread46.i:         ; preds = %ipv6_anycast_destination.exit.thread.i, %ipv6_anycast_destination.exit.i.ipv6_anycast_destination.exit.thread46.i_crit_edge, %lor.rhs.i.i.ipv6_anycast_destination.exit.thread46.i_crit_edge
  %30 = phi i32 [ %or2645.i, %ipv6_anycast_destination.exit.thread.i ], [ %ret.2.i, %ipv6_anycast_destination.exit.i.ipv6_anycast_destination.exit.thread46.i_crit_edge ], [ %ret.2.i, %lor.rhs.i.i.ipv6_anycast_destination.exit.thread46.i_crit_edge ]
  call void @dst_release(ptr noundef %8) #5
  br label %match_lookup_rt6.exit

match_lookup_rt6.exit:                            ; preds = %ipv6_anycast_destination.exit.thread46.i, %if.end7.i.match_lookup_rt6.exit_crit_edge
  %retval.0.i = phi i32 [ %30, %ipv6_anycast_destination.exit.thread46.i ], [ 128, %if.end7.i.match_lookup_rt6.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt.i) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %flow.i) #5
  %and24 = and i32 %retval.0.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25 = icmp ne i32 %and24, 0
  br label %cleanup

cleanup:                                          ; preds = %match_lookup_rt6.exit, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool25, %match_lookup_rt6.exit ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ true, %if.end17.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_ip6_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_file679, !1, !"__UNIQUE_ID_file679", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_addrtype.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_license680, !1, !"__UNIQUE_ID_license680", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author681, !4, !"__UNIQUE_ID_author681", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_addrtype.c", i32 27, i32 1}
!5 = !{ptr @__UNIQUE_ID_description682, !6, !"__UNIQUE_ID_description682", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_addrtype.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias683, !8, !"__UNIQUE_ID_alias683", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_addrtype.c", i32 29, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias684, !10, !"__UNIQUE_ID_alias684", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_addrtype.c", i32 30, i32 1}
!11 = !{ptr @__initcall__kmod_xt_addrtype__685_231_addrtype_mt_init6, !12, !"__initcall__kmod_xt_addrtype__685_231_addrtype_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_addrtype.c", i32 231, i32 1}
!13 = !{ptr @__exitcall_addrtype_mt_exit, !14, !"__exitcall_addrtype_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_addrtype.c", i32 232, i32 1}
!15 = !{ptr @addrtype_mt_reg, !16, !"addrtype_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_addrtype.c", i32 201, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_addrtype.c", i32 158, i32 23}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_addrtype.c", i32 168, i32 12}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_addrtype.c", i32 175, i32 12}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/netfilter/xt_addrtype.c", i32 182, i32 13}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_addrtype.c", i32 186, i32 13}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/netfilter/xt_addrtype.c", i32 190, i32 13}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_addrtype.c", i32 197, i32 2}
!31 = !{ptr @addrtype_mt_checkentry_v1._rs, !30, !"_rs", i1 false, i1 false}
!32 = !{ptr @__func__.addrtype_mt_checkentry_v1, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @addrtype_mt_checkentry_v1._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @addrtype_mt_checkentry_v1._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
