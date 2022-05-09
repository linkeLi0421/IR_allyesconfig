; ModuleID = '/llk/IR_all_yes/net/batman-adv/gateway_common.c_pt.bc'
source_filename = "../net/batman-adv/gateway_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.batadv_tvlv_gateway_data = type { i32, i32 }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.atomic_t = type { i32 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_algo_ops = type { %struct.hlist_node, ptr, %struct.batadv_algo_iface_ops, %struct.batadv_algo_neigh_ops, %struct.batadv_algo_orig_ops, %struct.batadv_algo_gw_ops }
%struct.batadv_algo_iface_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batadv_algo_neigh_ops = type { ptr, ptr, ptr, ptr }
%struct.batadv_algo_orig_ops = type { ptr }
%struct.batadv_algo_gw_ops = type { ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbit\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kbit\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid throughput speed for %s: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@batadv_parse_throughput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013batman_adv: %s: Invalid throughput speed for %s: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"batadv_parse_throughput\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/gateway_common.c\00", [32 x i8] zeroinitializer }, align 32
@batadv_parse_throughput._entry_ptr = internal global ptr @batadv_parse_throughput._entry, section ".printk_index", align 4
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Throughput speed for %s too large: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@batadv_parse_throughput._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013batman_adv: %s: Throughput speed for %s too large: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@batadv_parse_throughput._entry_ptr.9 = internal global ptr @batadv_parse_throughput._entry.7, section ".printk_index", align 4
@batadv_parse_throughput._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@batadv_parse_throughput._entry_ptr.11 = internal global ptr @batadv_parse_throughput._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Changing gateway bandwidth from: '%u.%u/%u.%u MBit' to: '%u.%u/%u.%u MBit'\0A\00", [52 x i8] zeroinitializer }, align 32
@batadv_gw_bandwidth_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016batman_adv: %s: Changing gateway bandwidth from: '%u.%u/%u.%u MBit' to: '%u.%u/%u.%u MBit'\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"batadv_gw_bandwidth_set\00", [40 x i8] zeroinitializer }, align 32
@batadv_gw_bandwidth_set._entry_ptr = internal global ptr @batadv_gw_bandwidth_set._entry, section ".printk_index", align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"download gateway speed\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"upload gateway speed\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 47, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 50, i32 28 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 57, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 67, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 82, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 197, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 113, i32 47 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [35 x i8] c"../net/batman-adv/gateway_common.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 121, i32 12 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @batadv_gw_bandwidth_set._entry, ptr @batadv_gw_bandwidth_set._entry_ptr, ptr @batadv_parse_throughput._entry, ptr @batadv_parse_throughput._entry.10, ptr @batadv_parse_throughput._entry.7, ptr @batadv_parse_throughput._entry_ptr, ptr @batadv_parse_throughput._entry_ptr.11, ptr @batadv_parse_throughput._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_parse_throughput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_parse_throughput._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_parse_throughput._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_gw_bandwidth_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_parse_throughput(ptr noundef %net_dev, ptr noundef %buff, ptr noundef %description, ptr nocapture noundef writeonly %throughput) local_unnamed_addr #0 align 64 {
entry:
  %lthroughput = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lthroughput) #6
  %0 = ptrtoint ptr %lthroughput to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lthroughput, align 8, !annotation !38
  %call = tail call i32 @strlen(ptr noundef %buff) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp ugt i32 %call, 4
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buff, i32 %call
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -4
  %call3 = tail call i32 @strncasecmp(ptr noundef %add.ptr2, ptr noundef nonnull @.str, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  %call6 = tail call i32 @strncasecmp(ptr noundef %add.ptr2, ptr noundef nonnull @.str.1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  %brmerge = select i1 %cmp7, i1 true, i1 %cmp4
  br i1 %brmerge, label %if.then9, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = zext i1 %cmp4 to i32
  %1 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %add.ptr2, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %bw_unit_type.1 = phi i32 [ %spec.select, %if.then9 ], [ 0, %entry.if.end11_crit_edge ], [ 0, %if.then.if.end11_crit_edge ]
  %call.i = call i32 @kstrtoull(ptr noundef %buff, i32 noundef 10, ptr noundef nonnull %lthroughput) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end27, label %do.body

do.body:                                          ; preds = %if.end11
  %log_level = getelementptr i8, ptr %net_dev, i32 2360
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #6
  %2 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.body.if.end20_crit_edge, label %if.then18

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %call19 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.2, ptr noundef %description, ptr noundef %buff) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body.if.end20_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %net_dev, ptr noundef %description, ptr noundef %buff) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bw_unit_type.1)
  %cond = icmp eq i32 %bw_unit_type.1, 1
  %4 = ptrtoint ptr %lthroughput to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lthroughput, align 8
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp8(i64 1844674407370955161, i64 %5)
  %cmp28 = icmp ugt i64 %5, 1844674407370955161
  br i1 %cmp28, label %do.body30, label %if.end54

do.body30:                                        ; preds = %sw.bb
  %log_level36 = getelementptr i8, ptr %net_dev, i32 2360
  %call.i.i113 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level36, i32 noundef 4) #6
  %6 = ptrtoint ptr %log_level36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %log_level36, align 4
  %and38 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body30.if.end42_crit_edge, label %if.then40

do.body30.if.end42_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i115 = getelementptr i8, ptr %net_dev, i32 2304
  %call41 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i115, ptr noundef nonnull @.str.6, ptr noundef %description, ptr noundef %buff) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %do.body30.if.end42_crit_edge
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %net_dev, ptr noundef %description, ptr noundef %buff) #10
  br label %cleanup

if.end54:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul nuw i64 %5, 10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %8 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %5, i32 0) #11, !srcloc !39
  %asmresult.i.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %8, 1
  %9 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %5, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !40
  %asmresult10.i.i.i = extractvalue { i64, i32 } %9, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end54
  %storemerge = phi i64 [ %div1581.i.i, %sw.default ], [ %mul, %if.end54 ]
  %10 = ptrtoint ptr %lthroughput to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %storemerge, ptr %lthroughput, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %storemerge)
  %cmp57 = icmp ugt i64 %storemerge, 4294967295
  br i1 %cmp57, label %do.body59, label %if.end83

do.body59:                                        ; preds = %sw.epilog
  %log_level65 = getelementptr i8, ptr %net_dev, i32 2360
  %call.i.i114 = call zeroext i1 @__kasan_check_read(ptr noundef %log_level65, i32 noundef 4) #6
  %11 = ptrtoint ptr %log_level65 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %log_level65, align 4
  %and67 = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.body59.if.end71_crit_edge, label %if.then69

do.body59.if.end71_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then69:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i116 = getelementptr i8, ptr %net_dev, i32 2304
  %call70 = call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i116, ptr noundef nonnull @.str.6, ptr noundef %description, ptr noundef %buff) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %do.body59.if.end71_crit_edge
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %net_dev, ptr noundef %description, ptr noundef %buff) #10
  br label %cleanup

if.end83:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i64 %storemerge to i32
  %13 = ptrtoint ptr %throughput to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %throughput, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end71, %if.end42, %if.end20
  %retval.0 = phi i1 [ false, %if.end20 ], [ false, %if.end42 ], [ false, %if.end71 ], [ true, %if.end83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lthroughput) #6
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_debug_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_tvlv_container_update(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  %gw = alloca %struct.batadv_tvlv_gateway_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gw) #6
  %mode = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mode, align 4
  %trunc = trunc i32 %1 to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge16
    i8 2, label %sw.bb3
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %gw, i32 0, i32 1
  %bandwidth_down = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 6
  %call.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bandwidth_down, i32 noundef 4) #6
  %4 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bandwidth_down, align 4
  %bandwidth_up = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 7
  %call.i.i15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bandwidth_up, i32 noundef 4) #6
  %6 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bandwidth_up, align 4
  %8 = ptrtoint ptr %gw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %gw, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %3, align 4
  call void @batadv_tvlv_container_register(ptr noundef %bat_priv, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %gw, i16 noundef zeroext 8) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gw) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_container_register(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_gw_bandwidth_set(ptr noundef %net_dev, ptr noundef %buff, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %down_new = alloca i32, align 4
  %up_new = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %down_new) #6
  %0 = ptrtoint ptr %down_new to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %down_new, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %up_new) #6
  %1 = ptrtoint ptr %up_new to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %up_new, align 4
  %bandwidth_down = getelementptr i8, ptr %net_dev, i32 3200
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bandwidth_down, i32 noundef 4) #6
  %2 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bandwidth_down, align 4
  %bandwidth_up = getelementptr i8, ptr %net_dev, i32 3204
  %call.i.i72 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bandwidth_up, i32 noundef 4) #6
  %4 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bandwidth_up, align 4
  %call.i = tail call ptr @strchr(ptr noundef %buff, i32 noundef 47) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.i:                                         ; preds = %entry
  %call1.i = call zeroext i1 @batadv_parse_throughput(ptr noundef %net_dev, ptr noundef %buff, ptr noundef nonnull @.str.15, ptr noundef nonnull %down_new) #6
  br i1 %call1.i, label %if.end.i.if.end_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.thread.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call.i, align 1
  %call120.i = call zeroext i1 @batadv_parse_throughput(ptr noundef %net_dev, ptr noundef %buff, ptr noundef nonnull @.str.15, ptr noundef nonnull %down_new) #6
  br i1 %call120.i, label %if.then6.i, label %if.end.thread.i.cleanup_crit_edge

if.end.thread.i.cleanup_crit_edge:                ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.thread.i
  %add.ptr.i76 = getelementptr i8, ptr %call.i, i32 1
  %call7.i = call zeroext i1 @batadv_parse_throughput(ptr noundef %net_dev, ptr noundef %add.ptr.i76, ptr noundef nonnull @.str.16, ptr noundef nonnull %up_new) #6
  br i1 %call7.i, label %if.then6.i.if.end_crit_edge, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %if.then6.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %7 = ptrtoint ptr %down_new to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %down_new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %spec.store.select = select i1 %tobool5.not, i32 1, i32 %8
  %9 = ptrtoint ptr %down_new to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.store.select, ptr %down_new, align 4
  %10 = ptrtoint ptr %up_new to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %up_new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %down_new to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %down_new, align 4
  %div = udiv i32 %13, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %14 = icmp ult i32 %13, 5
  %spec.store.select80 = select i1 %14, i32 1, i32 %div
  %15 = ptrtoint ptr %up_new to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.store.select80, ptr %up_new, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.end.if.end13_crit_edge
  %16 = ptrtoint ptr %down_new to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %down_new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %17)
  %cmp = icmp eq i32 %3, %17
  br i1 %cmp, label %land.lhs.true, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end13
  %18 = ptrtoint ptr %up_new to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %up_new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %19)
  %cmp14 = icmp eq i32 %5, %19
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end13.if.end16_crit_edge
  tail call void @batadv_gw_reselect(ptr noundef %add.ptr.i) #6
  %log_level = getelementptr i8, ptr %net_dev, i32 2360
  %call.i.i73 = tail call zeroext i1 @__kasan_check_read(ptr noundef %log_level, i32 noundef 4) #6
  %20 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %log_level, align 4
  %and = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %.frozen = freeze i32 %3
  %.pre = udiv i32 %.frozen, 10
  %22 = mul i32 %.pre, 10
  %.pre81.decomposed = sub i32 %.frozen, %22
  %.frozen86 = freeze i32 %5
  %.pre82 = udiv i32 %.frozen86, 10
  %23 = mul i32 %.pre82, 10
  %.pre83.decomposed = sub i32 %.frozen86, %23
  %.frozen87 = freeze i32 %17
  %.pre84 = udiv i32 %.frozen87, 10
  %24 = mul i32 %.pre84, 10
  %.pre85.decomposed = sub i32 %.frozen87, %24
  br i1 %tobool20.not, label %if.end16.if.end30_crit_edge, label %if.then21

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %up_new to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %up_new, align 4
  %.frozen88 = freeze i32 %26
  %div27 = udiv i32 %.frozen88, 10
  %27 = mul i32 %div27, 10
  %rem28.decomposed = sub i32 %.frozen88, %27
  %call29 = tail call i32 (ptr, ptr, ...) @batadv_debug_log(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12, i32 noundef %.pre, i32 noundef %.pre81.decomposed, i32 noundef %.pre82, i32 noundef %.pre83.decomposed, i32 noundef %.pre84, i32 noundef %.pre85.decomposed, i32 noundef %div27, i32 noundef %rem28.decomposed) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.end16.if.end30_crit_edge
  %28 = ptrtoint ptr %up_new to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %up_new, align 4
  %.frozen89 = freeze i32 %29
  %div40 = udiv i32 %.frozen89, 10
  %30 = mul i32 %div40, 10
  %rem41.decomposed = sub i32 %.frozen89, %30
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %net_dev, i32 noundef %.pre, i32 noundef %.pre81.decomposed, i32 noundef %.pre82, i32 noundef %.pre83.decomposed, i32 noundef %.pre84, i32 noundef %.pre85.decomposed, i32 noundef %div40, i32 noundef %rem41.decomposed) #10
  %call.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_down, i32 noundef 4) #6
  %31 = ptrtoint ptr %bandwidth_down to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %17, ptr %bandwidth_down, align 4
  %call.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bandwidth_up, i32 noundef 4) #6
  %32 = ptrtoint ptr %bandwidth_up to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %29, ptr %bandwidth_up, align 4
  tail call void @batadv_gw_tvlv_container_update(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %land.lhs.true.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.end.thread.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end30 ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then6.i.cleanup_crit_edge ], [ -22, %if.end.thread.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %up_new) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %down_new) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_reselect(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_init(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_ops = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 30
  %0 = ptrtoint ptr %algo_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_ops, align 4
  %gw = getelementptr inbounds %struct.batadv_algo_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gw, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %bat_priv) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sel_class = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sel_class, i32 noundef 4) #6
  %4 = ptrtoint ptr %sel_class to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %sel_class, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @batadv_tvlv_handler_register(ptr noundef %bat_priv, ptr noundef nonnull @batadv_gw_tvlv_ogm_handler_v1, ptr noundef null, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_register(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @batadv_gw_tvlv_ogm_handler_v1(ptr noundef %bat_priv, ptr noundef %orig, i8 noundef zeroext %flags, ptr nocapture noundef readonly %tvlv_value, i16 noundef zeroext %tvlv_value_len) #0 align 64 {
entry:
  %gateway = alloca %struct.batadv_tvlv_gateway_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gateway) #6
  %0 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %gateway, i32 0, i32 1
  %1 = and i8 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %tvlv_value_len)
  %cmp = icmp ult i16 %tvlv_value_len, 8
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end17.sink.split_crit_edge, label %if.else

entry.if.end17.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.else:                                          ; preds = %entry
  %2 = ptrtoint ptr %tvlv_value to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %tvlv_value, align 2
  %4 = ptrtoint ptr %gateway to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gateway, align 4
  %bandwidth_up5 = getelementptr inbounds %struct.batadv_tvlv_gateway_data, ptr %tvlv_value, i32 0, i32 1
  %5 = ptrtoint ptr %bandwidth_up5 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %bandwidth_up5, align 2
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp12 = icmp eq i32 %6, 0
  %or.cond29 = select i1 %cmp8, i1 true, i1 %cmp12
  br i1 %or.cond29, label %if.else.if.end17.sink.split_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %entry.if.end17.sink.split_crit_edge
  %8 = ptrtoint ptr %gateway to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %gateway, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %0, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  call void @batadv_gw_node_update(ptr noundef %bat_priv, ptr noundef %orig, ptr noundef nonnull %gateway) #6
  %10 = ptrtoint ptr %gateway to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gateway, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp19.not = icmp eq i32 %11, 0
  br i1 %cmp19.not, label %if.end17.if.end24_crit_edge, label %land.lhs.true

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end17
  %mode = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 35, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %mode, i32 noundef 4) #6
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp21 = icmp eq i32 %13, 1
  br i1 %cmp21, label %if.then23, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @batadv_gw_check_election(ptr noundef %bat_priv, ptr noundef %orig) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gateway) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_gw_free(ptr noundef %bat_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  tail call void @batadv_tvlv_handler_unregister(ptr noundef %bat_priv, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_tvlv_handler_unregister(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_node_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_gw_check_election(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/gateway_common.c", i32 47, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/batman-adv/gateway_common.c", i32 50, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/batman-adv/gateway_common.c", i32 57, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @batadv_parse_throughput._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @batadv_parse_throughput._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/batman-adv/gateway_common.c", i32 67, i32 4}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @batadv_parse_throughput._entry.7, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @batadv_parse_throughput._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @batadv_parse_throughput._entry.10, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../net/batman-adv/gateway_common.c", i32 82, i32 3}
!18 = !{ptr @batadv_parse_throughput._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/batman-adv/gateway_common.c", i32 197, i32 2}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @batadv_gw_bandwidth_set._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @batadv_gw_bandwidth_set._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/batman-adv/gateway_common.c", i32 113, i32 47}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/batman-adv/gateway_common.c", i32 121, i32 12}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 1291683, i64 1291710, i64 1291732, i64 1291760}
!40 = !{i64 1292091, i64 1292118, i64 1292151, i64 1292172, i64 1292199, i64 1292225}
