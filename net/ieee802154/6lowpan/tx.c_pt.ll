; ModuleID = '/llk/IR_all_yes/net/ieee802154/6lowpan/tx.c_pt.bc'
source_filename = "../net/ieee802154/6lowpan/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.124 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.wpan_dev = type { ptr, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i16, i64, %struct.atomic_t, %struct.atomic_t, i8, i8, i8, i8, i8, i8, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.lowpan_addr_info = type { %struct.ieee802154_addr, %struct.ieee802154_addr }
%struct.ieee802154_addr = type { i8, i16, %union.anon.123 }
%union.anon.123 = type { i64 }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.146 }
%union.anon.146 = type { i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@nd_tbl = external dso_local global %struct.neigh_table, align 4
@lowpan_xmit.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ieee802154_6lowpan\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lowpan_xmit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/ieee802154/6lowpan/tx.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"package xmit\0A\00", [18 x i8] zeroinitializer }, align 32
@lowpan_xmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lowpan_xmit.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"frame is too big, fragmentation is needed\0A\00", [53 x i8] zeroinitializer }, align 32
@lowpan_skb_priv.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lowpan_xmit_fragmented.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lowpan_xmit_fragmented\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s unable to send FRAG1 packet (tag: %d)\00", [55 x i8] zeroinitializer }, align 32
@lowpan_xmit_fragmented.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s unable to send a FRAGN packet. (tag: %d, offset: %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 256, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 303, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 187, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [31 x i8] c"../net/ieee802154/6lowpan/tx.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 208, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_header_create(ptr nocapture noundef readonly %skb, ptr noundef %ldev, i16 noundef zeroext %type, ptr noundef readonly %daddr, ptr noundef readonly %saddr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %ldev, i32 2808
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ieee802154_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %ieee802154_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ieee802154_ptr, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 32
  br i1 %cmp.i, label %land.rhs.i, label %entry.lowpan_skb_priv.exit_crit_edge

entry.lowpan_skb_priv.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_skb_priv.exit

land.rhs.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @lowpan_skb_priv.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.lowpan_skb_priv.exit_crit_edge, label %if.then.i, !prof !37

land.rhs.i.lowpan_skb_priv.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_skb_priv.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @lowpan_skb_priv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #6
  br label %lowpan_skb_priv.exit

lowpan_skb_priv.exit:                             ; preds = %if.then.i, %land.rhs.i.lowpan_skb_priv.exit_crit_edge, %entry.lowpan_skb_priv.exit_crit_edge
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 -32
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %tobool.not = icmp eq ptr %daddr, null
  br i1 %tobool.not, label %lowpan_skb_priv.exit.cleanup_crit_edge, label %if.end

lowpan_skb_priv.exit.cleanup_crit_edge:           ; preds = %lowpan_skb_priv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lowpan_skb_priv.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %type)
  %cmp.not = icmp eq i16 %type, -31011
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pan_id = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pan_id, align 8
  %saddr6 = getelementptr i8, ptr %9, i32 -16
  %pan_id7 = getelementptr i8, ptr %9, i32 -14
  %16 = ptrtoint ptr %pan_id7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %pan_id7, align 2
  %pan_id11 = getelementptr i8, ptr %9, i32 -30
  %17 = ptrtoint ptr %pan_id11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %15, ptr %pan_id11, align 2
  %broadcast = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 99
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %daddr, ptr noundef dereferenceable(8) %broadcast, i32 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %18 = getelementptr i8, ptr %9, i32 -24
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %18, align 8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %add.ptr.i, align 8
  br label %if.end41

if.else:                                          ; preds = %if.end5
  %daddr17 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call18 = tail call ptr @neigh_lookup(ptr noundef nonnull @nd_tbl, ptr noundef %daddr17, ptr noundef %ldev) #6
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end37, label %if.end25

if.end25:                                         ; preds = %if.else
  %tbl.i = getelementptr inbounds %struct.neighbour, ptr %call18, i32 0, i32 1
  %21 = ptrtoint ptr %tbl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tbl.i, align 4
  %entry_size.i = getelementptr inbounds %struct.neigh_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entry_size.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %call18, i32 %24
  %lock = getelementptr inbounds %struct.neighbour, ptr %call18, i32 0, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #6
  %25 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i96, align 2
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #6
  %phi.cmp = icmp ne ptr %add.ptr.i96, null
  %27 = and i16 %26, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i = icmp eq i16 %27, 0
  %or.cond = select i1 %phi.cmp, i1 %tobool.not.i, i1 false
  br i1 %or.cond, label %if.end37.thread, label %if.end37.thread101

if.end37.thread:                                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %28 = getelementptr i8, ptr %9, i32 -24
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %26, ptr %28, align 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %add.ptr.i, align 8
  br label %if.then39

if.end37.thread101:                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %add.ptr.i, align 8
  %32 = getelementptr i8, ptr %9, i32 -24
  %33 = ptrtoint ptr %daddr to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %daddr, align 1
  %35 = tail call i64 @llvm.bswap.i64(i64 %34) #6
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %32, align 1
  br label %if.then39

if.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %add.ptr.i, align 8
  %38 = getelementptr i8, ptr %9, i32 -24
  %39 = ptrtoint ptr %daddr to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %daddr, align 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #6
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %38, align 1
  br label %if.end41

if.then39:                                        ; preds = %if.end37.thread101, %if.end37.thread
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call18, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #6
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #6, !srcloc !39
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i97, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end41_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.if.end41_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #6
  br label %if.end41

if.then.i97:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @neigh_destroy(ptr noundef nonnull %call18) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then.i97, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end41_crit_edge, %if.end37, %if.then14
  %tobool42.not = icmp eq ptr %saddr, null
  br i1 %tobool42.not, label %if.then43, label %if.else56

if.then43:                                        ; preds = %if.end41
  %short_addr44 = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %short_addr44 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %short_addr44, align 2
  %46 = and i16 %45, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i98 = icmp eq i16 %46, 0
  br i1 %tobool.not.i98, label %if.then46, label %if.else51

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %saddr6 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %saddr6, align 8
  %48 = ptrtoint ptr %short_addr44 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %short_addr44, align 2
  %50 = getelementptr i8, ptr %9, i32 -8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %50, align 8
  br label %cleanup

if.else51:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %saddr6 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %saddr6, align 8
  %extended_addr = getelementptr inbounds %struct.wpan_dev, ptr %3, i32 0, i32 9
  %53 = ptrtoint ptr %extended_addr to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %extended_addr, align 8
  %55 = getelementptr i8, ptr %9, i32 -8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %54, ptr %55, align 8
  br label %cleanup

if.else56:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %saddr6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %saddr6, align 8
  %58 = getelementptr i8, ptr %9, i32 -8
  %59 = ptrtoint ptr %saddr to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %saddr, align 1
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #6
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %58, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else56, %if.else51, %if.then46, %if.end.cleanup_crit_edge, %lowpan_skb_priv.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lowpan_skb_priv.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %if.else51 ], [ 0, %if.else56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lowpan_xmit(ptr noundef %skb, ptr noundef %ldev) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.lowpan_addr_info, align 8
  %wpan_hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wpan_hdr) #6
  %0 = call ptr @memset(ptr %wpan_hdr, i32 255, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_xmit.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_xmit, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_xmit.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %2)
  %cmp = icmp ugt i32 %2, 1280
  br i1 %cmp, label %land.rhs, label %do.end.if.end44_crit_edge

do.end.if.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.rhs:                                         ; preds = %do.end
  %.b161 = load i1, ptr @lowpan_xmit.__already_done, align 1
  br i1 %.b161, label %land.rhs.if.end44_crit_edge, label %if.then18, !prof !37

land.rhs.if.end44_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @lowpan_xmit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 258, i32 noundef 9, ptr noundef null) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then18, %land.rhs.if.end44_crit_edge, %do.end.if.end44_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 21
  %7 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %needed_headroom, align 8
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %conv)
  %cmp53 = icmp ult i32 %sub.ptr.sub.i, %conv
  br i1 %cmp53, label %if.end44.if.then65_crit_edge, label %lor.rhs, !prof !42

if.end44.if.then65_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.rhs:                                          ; preds = %if.end44
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %9 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %lor.rhs.skb_tailroom.exit_crit_edge

lor.rhs.skb_tailroom.exit_crit_edge:              ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i165 = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i166 = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i167 = sub i32 %sub.ptr.lhs.cast.i165, %sub.ptr.rhs.cast.i166
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %lor.rhs.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i167, %cond.false.i ], [ 0, %lor.rhs.skb_tailroom.exit_crit_edge ]
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 22
  %15 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %needed_tailroom, align 2
  %conv56 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv56)
  %cmp57 = icmp slt i32 %cond.i, %conv56
  br i1 %cmp57, label %skb_tailroom.exit.if.then65_crit_edge, label %if.else80, !prof !42

skb_tailroom.exit.if.then65_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

if.then65:                                        ; preds = %skb_tailroom.exit.if.then65_crit_edge, %if.end44.if.then65_crit_edge
  %needed_tailroom68 = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 22
  %17 = ptrtoint ptr %needed_tailroom68 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %needed_tailroom68, align 2
  %conv69 = zext i16 %18 to i32
  %call70 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef %conv, i32 noundef %conv69, i32 noundef 2592) #6
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %cleanup.thread, label %if.then65.if.end85.sink.split_crit_edge, !prof !42

if.then65.if.end85.sink.split_crit_edge:          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85.sink.split

cleanup.thread:                                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup127

if.else80:                                        ; preds = %skb_tailroom.exit
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %19 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.else80.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

if.else80.skb_unshare.exit_crit_edge:             ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %if.else80
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #6
  %22 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %if.then6.i.if.end85.sink.split_crit_edge, !prof !42

if.then6.i.if.end85.sink.split_crit_edge:         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85.sink.split

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup127

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %if.else80.skb_unshare.exit_crit_edge
  %tobool82.not = icmp eq ptr %skb, null
  br i1 %tobool82.not, label %skb_unshare.exit.cleanup127_crit_edge, label %skb_unshare.exit.if.end85_crit_edge

skb_unshare.exit.if.end85_crit_edge:              ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

skb_unshare.exit.cleanup127_crit_edge:            ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

if.end85.sink.split:                              ; preds = %if.then6.i.if.end85.sink.split_crit_edge, %if.then65.if.end85.sink.split_crit_edge
  %skb.addr.1.ph = phi ptr [ %call70, %if.then65.if.end85.sink.split_crit_edge ], [ %call7.i, %if.then6.i.if.end85.sink.split_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %skb_unshare.exit.if.end85_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %skb_unshare.exit.if.end85_crit_edge ], [ %skb.addr.1.ph, %if.end85.sink.split ]
  %priv.i.i = getelementptr i8, ptr %ldev, i32 2808
  %24 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i.i, align 4
  %ieee802154_ptr.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 83
  %26 = ptrtoint ptr %ieee802154_ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ieee802154_ptr.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3
  %28 = call ptr @memset(ptr %cb.i.i, i32 0, i32 40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #6
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 32
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end85.lowpan_skb_priv.exit.i_crit_edge

if.end85.lowpan_skb_priv.exit.i_crit_edge:        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_skb_priv.exit.i

land.rhs.i.i:                                     ; preds = %if.end85
  %.b38.i.i = load i1, ptr @lowpan_skb_priv.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.lowpan_skb_priv.exit.i_crit_edge, label %if.then.i.i, !prof !37

land.rhs.i.i.lowpan_skb_priv.exit.i_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_skb_priv.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @lowpan_skb_priv.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 21, i32 noundef 9, ptr noundef null) #6
  br label %lowpan_skb_priv.exit.i

lowpan_skb_priv.exit.i:                           ; preds = %if.then.i.i, %land.rhs.i.i.lowpan_skb_priv.exit.i_crit_edge, %if.end85.lowpan_skb_priv.exit.i_crit_edge
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 -32
  %35 = call ptr @memcpy(ptr %info.i, ptr %add.ptr.i.i, i32 32)
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %conv.i = trunc i32 %37 to i16
  %saddr.i = getelementptr inbounds %struct.lowpan_addr_info, ptr %info.i, i32 0, i32 1
  %call3.i = call i32 @lowpan_header_compress(ptr noundef nonnull %skb.addr.1, ptr noundef %ldev, ptr noundef nonnull %info.i, ptr noundef %saddr.i) #6
  %conv4.i = and i32 %37, 65535
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 19
  %40 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %41 to i32
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i, align 4
  %conv1.i.i = zext i16 %43 to i32
  %44 = add i32 %37, %conv.i.i
  %45 = add i32 %39, %conv1.i.i
  %add.i = sub i32 %44, %45
  %conv7.i = trunc i32 %add.i to i16
  %type.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %type.i, align 1
  %47 = ptrtoint ptr %info.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %info.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp.i = icmp eq i8 %48, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %lowpan_skb_priv.exit.i.if.else.i168_crit_edge

lowpan_skb_priv.exit.i.if.else.i168_crit_edge:    ; preds = %lowpan_skb_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i168

land.lhs.true.i:                                  ; preds = %lowpan_skb_priv.exit.i
  %49 = getelementptr inbounds %struct.ieee802154_addr, ptr %info.i, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %51)
  %cmp.i32.i = icmp eq i16 %51, -1
  br i1 %cmp.i32.i, label %land.lhs.true.i.lowpan_header.exit_crit_edge, label %land.lhs.true.i.if.else.i168_crit_edge

land.lhs.true.i.if.else.i168_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i168

land.lhs.true.i.lowpan_header.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_header.exit

if.else.i168:                                     ; preds = %land.lhs.true.i.if.else.i168_crit_edge, %lowpan_skb_priv.exit.i.if.else.i168_crit_edge
  %ackreq14.i = getelementptr inbounds %struct.wpan_dev, ptr %27, i32 0, i32 18
  %52 = ptrtoint ptr %ackreq14.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ackreq14.i, align 2, !range !43
  br label %lowpan_header.exit

lowpan_header.exit:                               ; preds = %if.else.i168, %land.lhs.true.i.lowpan_header.exit_crit_edge
  %.sink.i = phi i8 [ %53, %if.else.i168 ], [ 0, %land.lhs.true.i.lowpan_header.exit_crit_edge ]
  %ackreq15.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %ackreq15.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.sink.i, ptr %ackreq15.i, align 2
  %55 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i.i, align 4
  %ieee802154_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 83
  %57 = ptrtoint ptr %ieee802154_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ieee802154_ptr.i.i, align 4
  %header_ops.i.i = getelementptr inbounds %struct.wpan_dev, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %header_ops.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call.i.i = call i32 %62(ptr noundef nonnull %skb.addr.1, ptr noundef %56, ptr noundef nonnull %info.i, ptr noundef %saddr.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp87 = icmp slt i32 %call.i.i, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %lowpan_header.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.1, i32 noundef 0) #6
  br label %cleanup127

if.end90:                                         ; preds = %lowpan_header.exit
  %call91 = call i32 @ieee802154_hdr_peek(ptr noundef nonnull %skb.addr.1, ptr noundef nonnull %wpan_hdr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.1, i32 noundef 0) #6
  br label %cleanup127

if.end95:                                         ; preds = %if.end90
  %call96 = call i32 @ieee802154_max_payload(ptr noundef nonnull %wpan_hdr) #6
  %tail.i169 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 16
  %63 = ptrtoint ptr %tail.i169 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i169, align 8
  %65 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head.i.i.i, align 8
  %67 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %network_header.i.i, align 4
  %conv.i171 = zext i16 %68 to i32
  %add.ptr.i = getelementptr i8, ptr %66, i32 %conv.i171
  %sub.ptr.lhs.cast = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %call96)
  %cmp99.not = icmp sgt i32 %sub.ptr.sub, %call96
  br i1 %cmp99.not, label %if.else106, label %if.then101

if.then101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv.i.i, align 4
  %71 = getelementptr inbounds %struct.anon, ptr %skb.addr.1, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %70, ptr %71, align 8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 36, i32 1
  %73 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 36, i32 3
  %75 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %76, %conv4.i
  store i32 %add, ptr %tx_bytes, align 4
  %call105 = call i32 @dev_queue_xmit(ptr noundef nonnull %skb.addr.1) #6
  br label %cleanup127

if.else106:                                       ; preds = %if.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_xmit.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_xmit, %if.then119)) #6
          to label %do.end122 [label %if.then119], !srcloc !41

if.then119:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_xmit.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.4) #6
  br label %do.end122

do.end122:                                        ; preds = %if.then119, %if.else106
  %call123 = call fastcc i32 @lowpan_xmit_fragmented(ptr noundef nonnull %skb.addr.1, ptr noundef %ldev, ptr noundef nonnull %wpan_hdr, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  %spec.select = select i1 %cmp124, i32 1, i32 %call123
  br label %cleanup127

cleanup127:                                       ; preds = %do.end122, %if.then101, %if.then94, %if.then89, %skb_unshare.exit.cleanup127_crit_edge, %skb_unshare.exit.thread, %cleanup.thread
  %retval.1 = phi i32 [ 1, %if.then89 ], [ 1, %if.then94 ], [ %call105, %if.then101 ], [ %spec.select, %do.end122 ], [ 1, %skb_unshare.exit.cleanup127_crit_edge ], [ 1, %cleanup.thread ], [ 1, %skb_unshare.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wpan_hdr) #6
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_peek(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_xmit_fragmented(ptr noundef %skb, ptr nocapture noundef %ldev, ptr noundef %wpan_hdr, i16 noundef zeroext %dgram_size, i16 noundef zeroext %dgram_offset) unnamed_addr #0 align 64 {
entry:
  %frag_hdr = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %frag_hdr) #6
  %0 = getelementptr inbounds [5 x i8], ptr %frag_hdr, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %frag_hdr, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %frag_hdr, i32 0, i32 4
  %fragment_tag = getelementptr i8, ptr %ldev, i32 2812
  %3 = getelementptr inbounds i8, ptr %frag_hdr, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1
  %5 = ptrtoint ptr %fragment_tag to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fragment_tag, align 4
  %inc = add i16 %6, 1
  store i16 %inc, ptr %fragment_tag, align 4
  %conv = zext i16 %dgram_size to i32
  %7 = lshr i16 %dgram_size, 8
  %8 = trunc i16 %7 to i8
  %9 = and i8 %8, 7
  %conv3 = or i8 %9, -64
  %10 = ptrtoint ptr %frag_hdr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %frag_hdr, align 1
  %conv6 = trunc i16 %dgram_size to i8
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv6, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %6, ptr %1, align 1
  %call8 = tail call i32 @ieee802154_max_payload(ptr noundef %wpan_hdr) #6
  %sub = add i32 %call8, -4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %13 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %transport_header.i, align 2
  %conv.i = zext i16 %14 to i32
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %16 to i32
  %sub.i = sub nsw i32 %conv.i, %conv1.i
  %sub10 = sub i32 %sub, %sub.i
  %and11 = and i32 %sub10, -8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %19 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_len, align 4
  %add = add i32 %and11, %sub.i
  %call18 = call fastcc i32 @lowpan_xmit_fragment(ptr noundef %skb, ptr noundef %wpan_hdr, ptr noundef nonnull %frag_hdr, i32 noundef 4, i32 noundef 0, i32 noundef %add, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.end25, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_xmit_fragmented.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_xmit_fragmented, %if.then23)) #6
          to label %err [label %if.then23], !srcloc !41

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv24 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_xmit_fragmented.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %conv24) #6
  br label %err

if.end25:                                         ; preds = %entry
  %conv13 = zext i16 %20 to i32
  %21 = add nsw i32 %sub.i, %conv13
  %sub15 = sub i32 %18, %21
  %22 = or i8 %9, -32
  %23 = ptrtoint ptr %frag_hdr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %frag_hdr, align 1
  %sub34 = add i32 %call8, -5
  %and35 = and i32 %sub34, -8
  br label %do.body36

do.body36:                                        ; preds = %do.cond70.do.body36_crit_edge, %if.end25
  %skb_unprocessed.0 = phi i32 [ %sub15, %if.end25 ], [ %sub41, %do.cond70.do.body36_crit_edge ]
  %skb_offset.0 = phi i32 [ %sub.i, %if.end25 ], [ %add40, %do.cond70.do.body36_crit_edge ]
  %frag_len.0 = phi i32 [ %and11, %if.end25 ], [ %and35, %do.cond70.do.body36_crit_edge ]
  %dgram_offset.addr.0 = phi i16 [ %dgram_offset, %if.end25 ], [ %conv39, %do.cond70.do.body36_crit_edge ]
  %24 = trunc i32 %frag_len.0 to i16
  %conv39 = add i16 %dgram_offset.addr.0, %24
  %add40 = add i32 %frag_len.0, %skb_offset.0
  %sub41 = sub i32 %skb_unprocessed.0, %frag_len.0
  %25 = tail call i32 @llvm.smin.i32(i32 %and35, i32 %sub41)
  %26 = lshr i16 %conv39, 3
  %conv46 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv46, ptr %2, align 1
  %call49 = call fastcc i32 @lowpan_xmit_fragment(ptr noundef %skb, ptr noundef %wpan_hdr, ptr noundef nonnull %frag_hdr, i32 noundef 5, i32 noundef %add40, i32 noundef %25, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.cond70, label %do.body52

do.body52:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_xmit_fragmented.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_xmit_fragmented, %if.then64)) #6
          to label %err [label %if.then64], !srcloc !41

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %conv65 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_xmit_fragmented.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %conv65, i32 noundef %add40) #6
  br label %err

do.cond70:                                        ; preds = %do.body36
  %cmp = icmp slt i32 %and35, %sub41
  br i1 %cmp, label %do.cond70.do.body36_crit_edge, label %do.end73

do.cond70.do.body36_crit_edge:                    ; preds = %do.cond70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

do.end73:                                         ; preds = %do.cond70
  call void @__sanitizer_cov_trace_pc() #8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 36, i32 1
  %28 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_packets, align 4
  %inc74 = add i32 %29, 1
  store i32 %inc74, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ldev, i32 0, i32 36, i32 3
  %30 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_bytes, align 4
  %add77 = add i32 %31, %conv
  store i32 %add77, ptr %tx_bytes, align 4
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %cleanup

err:                                              ; preds = %if.then64, %do.body52, %if.then23, %do.body
  %rc.0 = phi i32 [ %call18, %if.then23 ], [ %call49, %if.then64 ], [ %call18, %do.body ], [ %call49, %do.body52 ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end73
  %retval.0 = phi i32 [ %rc.0, %err ], [ 0, %do.end73 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %frag_hdr) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_header_compress(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lowpan_xmit_fragment(ptr nocapture noundef readonly %skb, ptr noundef %wpan_hdr, ptr nocapture noundef readonly %frag_hdr, i32 noundef %frag_hdrlen, i32 noundef %offset, i32 noundef %len, i1 noundef zeroext %frag1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, %frag_hdrlen
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %priv.i.i = getelementptr i8, ptr %2, i32 2808
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 4
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %needed_headroom.i, align 8
  %conv.i = zext i16 %6 to i32
  %needed_tailroom.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 22
  %7 = ptrtoint ptr %needed_tailroom.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %needed_tailroom.i, align 2
  %conv2.i = zext i16 %8 to i32
  %add.i = add i32 %add, %conv.i
  %add3.i = add i32 %add.i, %conv2.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add3.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.then.i, !prof !42

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.i:                                        ; preds = %entry
  %9 = getelementptr inbounds %struct.anon, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %9, align 8
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %11 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority.i, align 4
  %priority7.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %13 = ptrtoint ptr %priority7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %priority7.i, align 4
  %14 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %needed_headroom.i, align 8
  %conv9.i = zext i16 %15 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv9.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 %conv9.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %cb.i48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %cb.i.i, ptr %cb.i48.i, i32 40)
  br i1 %frag1, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %head.i49.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i49.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i49.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %26 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mac_header.i.i, align 2
  %conv.i50.i = zext i16 %27 to i32
  %add.ptr.i51.i = getelementptr i8, ptr %25, i32 %conv.i50.i
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %28 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_len.i, align 4
  %conv15.i = zext i16 %29 to i32
  %call.i52.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv15.i) #6
  %30 = call ptr @memcpy(ptr %call.i52.i, ptr %add.ptr.i51.i, i32 %conv15.i)
  br label %lowpan_alloc_frag.exit

if.else.i:                                        ; preds = %if.then.i
  %dest.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %wpan_hdr, i32 0, i32 3
  %source.i = getelementptr inbounds %struct.ieee802154_hdr, ptr %wpan_hdr, i32 0, i32 2
  %ieee802154_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 83
  %31 = ptrtoint ptr %ieee802154_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ieee802154_ptr.i.i, align 4
  %header_ops.i.i = getelementptr inbounds %struct.wpan_dev, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %header_ops.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i53.i = tail call i32 %36(ptr noundef nonnull %call.i.i, ptr noundef %4, ptr noundef %dest.i, ptr noundef %source.i, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %cmp.i = icmp slt i32 %call.i53.i, 0
  br i1 %cmp.i, label %if.then19.i, label %if.else.i.lowpan_alloc_frag.exit_crit_edge

if.else.i.lowpan_alloc_frag.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lowpan_alloc_frag.exit

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #6
  %37 = inttoptr i32 %call.i53.i to ptr
  br label %lowpan_alloc_frag.exit

lowpan_alloc_frag.exit:                           ; preds = %if.then19.i, %if.else.i.lowpan_alloc_frag.exit_crit_edge, %if.then13.i
  %retval.0.i = phi ptr [ %37, %if.then19.i ], [ %call.i.i, %if.then13.i ], [ %call.i.i, %if.else.i.lowpan_alloc_frag.exit_crit_edge ]
  %cmp.i19 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19, label %lowpan_alloc_frag.exit.if.then_crit_edge, label %if.end

lowpan_alloc_frag.exit.if.then_crit_edge:         ; preds = %lowpan_alloc_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lowpan_alloc_frag.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i24 = phi ptr [ %retval.0.i, %lowpan_alloc_frag.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %38 = ptrtoint ptr %retval.0.i24 to i32
  br label %cleanup

if.end:                                           ; preds = %lowpan_alloc_frag.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @skb_put(ptr noundef %retval.0.i, i32 noundef %frag_hdrlen) #6
  %39 = call ptr @memcpy(ptr %call.i, ptr %frag_hdr, i32 %frag_hdrlen)
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i, align 4
  %conv.i20 = zext i16 %43 to i32
  %add.ptr.i = getelementptr i8, ptr %41, i32 %conv.i20
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %offset
  %call.i21 = tail call ptr @skb_put(ptr noundef %retval.0.i, i32 noundef %len) #6
  %44 = call ptr @memcpy(ptr %call.i21, ptr %add.ptr, i32 %len)
  %call7 = tail call i32 @dev_queue_xmit(ptr noundef %retval.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %38, %if.then ], [ %call7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ieee802154/6lowpan/tx.c", i32 256, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @lowpan_xmit.__UNIQUE_ID_ddebug485, !1, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/ieee802154/6lowpan/tx.c", i32 258, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ieee802154/6lowpan/tx.c", i32 303, i32 3}
!10 = !{ptr @lowpan_xmit.__UNIQUE_ID_ddebug486, !9, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/ieee802154/6lowpan/tx.c", i32 21, i32 2}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ieee802154/6lowpan/tx.c", i32 187, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lowpan_xmit_fragmented.__UNIQUE_ID_ddebug481, !16, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/ieee802154/6lowpan/tx.c", i32 208, i32 4}
!21 = !{ptr @lowpan_xmit_fragmented.__UNIQUE_ID_ddebug484, !20, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ieee802154/6lowpan/tx.c", i32 143, i32 18}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ieee802154/6lowpan/tx.c", i32 143, i32 28}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ieee802154/6lowpan/tx.c", i32 152, i32 27}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2148770014}
!39 = !{i64 2148684454, i64 2148684486, i64 2148684515, i64 2148684549, i64 2148684580, i64 2148684603}
!40 = !{i64 2150391103}
!41 = !{i64 2148505057, i64 2148505062, i64 2148505075, i64 2148505119, i64 2148505153, i64 2148505174}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i8 0, i8 2}
