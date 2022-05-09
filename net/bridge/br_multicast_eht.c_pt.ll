; ModuleID = '/llk/IR_all_yes/net/bridge/br_multicast_eht.c_pt.bc'
source_filename = "../net/bridge/br_multicast_eht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_bridge_port_group = type { ptr, %struct.net_bridge_port_group_sg_key, [6 x i8], i8, i8, i8, i8, %struct.hlist_head, i32, %struct.timer_list, %struct.timer_list, %struct.hlist_node, %struct.rb_root, %struct.rb_root, %struct.rhash_head, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.net_bridge_port_group_sg_key = type { ptr, %struct.br_ip }
%struct.br_ip = type { %union.anon.146, %union.anon.147, i16, i16 }
%union.anon.146 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.anon.147 = type { %struct.in6_addr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.rhash_head = type { ptr }
%struct.net_bridge_mcast_gc = type { %struct.hlist_node, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_group_eht_set = type { %struct.rb_node, %union.net_bridge_eht_addr, %struct.rb_root, %struct.timer_list, ptr, ptr, %struct.net_bridge_mcast_gc }
%struct.rb_node = type { i32, ptr, ptr }
%union.net_bridge_eht_addr = type { %struct.in6_addr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.145, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%struct.list_head = type { ptr, ptr }
%union.anon.145 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge_group_eht_host = type { %struct.rb_node, %union.net_bridge_eht_addr, %struct.hlist_head, i32, i8, ptr }
%struct.net_bridge_group_eht_set_entry = type { %struct.rb_node, %struct.hlist_node, %union.net_bridge_eht_addr, %struct.timer_list, ptr, ptr, ptr, %struct.net_bridge_mcast_gc }
%struct.net_bridge_group_src = type { %struct.hlist_node, %struct.br_ip, ptr, i8, i8, %struct.timer_list, ptr, %struct.net_bridge_mcast_gc, %struct.callback_head }

@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/bridge/br_multicast_eht.c\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__eht_lookup_create_set.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&eht_set->timer)\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__eht_lookup_create_set_entry.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&set_h->timer)\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.3 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 129, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 369, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [33 x i8] c"../net/bridge/br_multicast_eht.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 323, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_multicast_eht_clean_sets(ptr noundef %pg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eht_set_tree = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 12
  %call1 = tail call ptr @rb_first(ptr noundef %eht_set_tree) #6
  %tobool.not2 = icmp eq ptr %call1, null
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call3 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call1, %entry.while.body_crit_edge ]
  tail call fastcc void @br_multicast_del_eht_set(ptr noundef nonnull %call3)
  %call = tail call ptr @rb_first(ptr noundef %eht_set_tree) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_multicast_del_eht_set(ptr noundef %eht_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %entry_tree = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %eht_set, i32 0, i32 2
  %call12 = tail call ptr @rb_first(ptr noundef %entry_tree) #6
  %tobool.not13 = icmp eq ptr %call12, null
  br i1 %tobool.not13, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call14 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call12, %entry.while.body_crit_edge ]
  tail call fastcc void @__eht_del_set_entry(ptr noundef nonnull %call14)
  %call = tail call ptr @rb_first(ptr noundef %entry_tree) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %pg = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %eht_set, i32 0, i32 4
  %0 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg, align 4
  %eht_set_tree = getelementptr inbounds %struct.net_bridge_port_group, ptr %1, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %eht_set, ptr noundef %eht_set_tree) #6
  %2 = ptrtoint ptr %eht_set to i32
  %3 = ptrtoint ptr %eht_set to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %eht_set, align 4
  %mcast_gc = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %eht_set, i32 0, i32 6
  %br = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %eht_set, i32 0, i32 5
  %4 = ptrtoint ptr %br to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %br, align 4
  %mcast_gc_list = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %mcast_gc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcast_gc_list, align 4
  %8 = ptrtoint ptr %mcast_gc to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %mcast_gc, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %while.end.hlist_add_head.exit_crit_edge, label %do.body12.i

while.end.hlist_add_head.exit_crit_edge:          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %mcast_gc, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %while.end.hlist_add_head.exit_crit_edge
  %10 = ptrtoint ptr %mcast_gc_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %mcast_gc, ptr %mcast_gc_list, align 4
  %pprev34.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %eht_set, i32 0, i32 6, i32 0, i32 1
  %11 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mcast_gc_list, ptr %pprev34.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %12 = load ptr, ptr @system_long_wq, align 4
  %13 = ptrtoint ptr %br to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %br, align 4
  %mcast_gc_work = getelementptr inbounds %struct.net_bridge, ptr %14, i32 0, i32 37
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %mcast_gc_work) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_multicast_eht_handle(ptr nocapture noundef readonly %brmctx, ptr noundef %pg, ptr nocapture noundef readonly %h_addr, ptr nocapture noundef readonly %srcs, i32 noundef %nsrcs, i32 noundef %addr_size, i32 noundef %grec_type) local_unnamed_addr #0 align 64 {
entry:
  %zero_addr.i.i29.i16 = alloca %union.net_bridge_eht_addr, align 4
  %zero_addr.i.i.i17 = alloca %union.net_bridge_eht_addr, align 4
  %zero_addr.i.i29.i = alloca %union.net_bridge_eht_addr, align 4
  %zero_addr.i.i.i = alloca %union.net_bridge_eht_addr, align 4
  %eht_host_addr = alloca %union.net_bridge_eht_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_host_addr) #6
  %4 = call ptr @memset(ptr %eht_host_addr, i32 255, i32 16)
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %addr_size)
  %5 = icmp ugt i32 %addr_size, 15
  %6 = sub i32 16, %addr_size
  %7 = select i1 %5, i32 0, i32 %6
  %8 = getelementptr i8, ptr %eht_host_addr, i32 %addr_size
  %9 = call ptr @memset(ptr %8, i32 0, i32 %7)
  %10 = call ptr @memcpy(ptr %eht_host_addr, ptr %h_addr, i32 %addr_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %addr_size)
  %cmp = icmp eq i32 %addr_size, 4
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %11 = zext i32 %grec_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %grec_type, label %if.then3.out_crit_edge [
    i32 5, label %sw.bb.i
    i32 6, label %sw.bb1.i
    i32 3, label %sw.bb3.i
    i32 1, label %if.then3.sw.bb4.i_crit_edge
    i32 4, label %sw.bb7.i
    i32 2, label %if.then3.sw.bb8.i_crit_edge
  ]

if.then3.sw.bb8.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

if.then3.sw.bb4.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb.i:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @br_multicast_eht_allow(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 4) #6
  br label %out

sw.bb1.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call fastcc zeroext i1 @br_multicast_eht_block(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 4) #6
  br label %out

sw.bb3.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb3.i, %if.then3.sw.bb4.i_crit_edge
  %to_report.0.off0.i = phi i1 [ false, %if.then3.sw.bb4.i_crit_edge ], [ true, %sw.bb3.i ]
  %call.i.i = call fastcc zeroext i1 @__eht_inc_exc(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 4, i8 noundef zeroext 1, i1 noundef zeroext %to_report.0.off0.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr.i.i.i) #6
  %eht_host_tree.i.i.i.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %12 = ptrtoint ptr %eht_host_tree.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.016.i.i.i.i = load ptr, ptr %eht_host_tree.i.i.i.i, align 4
  %tobool.not17.i.i.i.i = icmp eq ptr %node.016.i.i.i.i, null
  br i1 %tobool.not17.i.i.i.i, label %sw.bb4.i.br_multicast_eht_inc.exit.i_crit_edge, label %sw.bb4.i.while.body.i.i.i.i_crit_edge

sw.bb4.i.while.body.i.i.i.i_crit_edge:            ; preds = %sw.bb4.i
  br label %while.body.i.i.i.i

sw.bb4.i.br_multicast_eht_inc.exit.i_crit_edge:   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_inc.exit.i

while.body.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, %sw.bb4.i.while.body.i.i.i.i_crit_edge
  %node.018.i.i.i.i = phi ptr [ %node.0.i.i.i.i, %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %node.016.i.i.i.i, %sw.bb4.i.while.body.i.i.i.i_crit_edge ]
  %h_addr1.i.i.i.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i.i, i32 0, i32 1
  %call.i.i.i.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %eht_host_addr, ptr noundef dereferenceable(16) %h_addr1.i.i.i.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp2.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp2.not.i.i.i.i, label %if.then.i.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.then.i.i.i.i
  %node.1.in.i.i.i.i = phi ptr [ %rb_left.i.i.i.i, %if.then.i.i.i.i ], [ %rb_right.i.i.i.i, %if.then3.i.i.i.i ]
  %13 = ptrtoint ptr %node.1.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i.i.i.i = load ptr, ptr %node.1.in.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %node.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %cleanup.i.i.i.i.br_multicast_eht_inc.exit.i_crit_edge, label %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge

cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i.i

cleanup.i.i.i.i.br_multicast_eht_inc.exit.i_crit_edge: ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_inc.exit.i

if.then.i.i.i:                                    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %filter_mode1.i.i.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %filter_mode1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %filter_mode1.i.i.i, align 4
  br label %br_multicast_eht_inc.exit.i

br_multicast_eht_inc.exit.i:                      ; preds = %if.then.i.i.i, %cleanup.i.i.i.i.br_multicast_eht_inc.exit.i_crit_edge, %sw.bb4.i.br_multicast_eht_inc.exit.i_crit_edge
  %15 = call ptr @memset(ptr %zero_addr.i.i.i, i32 0, i32 16)
  %call2.i.i.i = call fastcc zeroext i1 @br_multicast_del_eht_set_entry(ptr noundef %pg, ptr noundef nonnull %zero_addr.i.i.i, ptr noundef nonnull %eht_host_addr) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr.i.i.i) #6
  br label %out

sw.bb7.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb7.i, %if.then3.sw.bb8.i_crit_edge
  %to_report.1.off0.i = phi i1 [ false, %if.then3.sw.bb8.i_crit_edge ], [ true, %sw.bb7.i ]
  %call.i30.i = call fastcc zeroext i1 @__eht_inc_exc(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 4, i8 noundef zeroext 0, i1 noundef zeroext %to_report.1.off0.i) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr.i.i29.i) #6
  %eht_host_tree.i.i.i31.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %16 = ptrtoint ptr %eht_host_tree.i.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.016.i.i.i32.i = load ptr, ptr %eht_host_tree.i.i.i31.i, align 4
  %tobool.not17.i.i.i33.i = icmp eq ptr %node.016.i.i.i32.i, null
  br i1 %tobool.not17.i.i.i33.i, label %sw.bb8.i.br_multicast_eht_exc.exit.i_crit_edge, label %sw.bb8.i.while.body.i.i.i38.i_crit_edge

sw.bb8.i.while.body.i.i.i38.i_crit_edge:          ; preds = %sw.bb8.i
  br label %while.body.i.i.i38.i

sw.bb8.i.br_multicast_eht_exc.exit.i_crit_edge:   ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_exc.exit.i

while.body.i.i.i38.i:                             ; preds = %cleanup.i.i.i48.i.while.body.i.i.i38.i_crit_edge, %sw.bb8.i.while.body.i.i.i38.i_crit_edge
  %node.018.i.i.i34.i = phi ptr [ %node.0.i.i.i46.i, %cleanup.i.i.i48.i.while.body.i.i.i38.i_crit_edge ], [ %node.016.i.i.i32.i, %sw.bb8.i.while.body.i.i.i38.i_crit_edge ]
  %h_addr1.i.i.i35.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i34.i, i32 0, i32 1
  %call.i.i.i36.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %eht_host_addr, ptr noundef dereferenceable(16) %h_addr1.i.i.i35.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i36.i)
  %cmp.i.i.i37.i = icmp slt i32 %call.i.i.i36.i, 0
  br i1 %cmp.i.i.i37.i, label %if.then.i.i.i40.i, label %if.else.i.i.i42.i

if.then.i.i.i40.i:                                ; preds = %while.body.i.i.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i.i39.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i34.i, i32 0, i32 2
  br label %cleanup.i.i.i48.i

if.else.i.i.i42.i:                                ; preds = %while.body.i.i.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i36.i)
  %cmp2.not.i.i.i41.i = icmp eq i32 %call.i.i.i36.i, 0
  br i1 %cmp2.not.i.i.i41.i, label %if.then.i.i50.i, label %if.then3.i.i.i44.i

if.then3.i.i.i44.i:                               ; preds = %if.else.i.i.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i.i43.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i34.i, i32 0, i32 1
  br label %cleanup.i.i.i48.i

cleanup.i.i.i48.i:                                ; preds = %if.then3.i.i.i44.i, %if.then.i.i.i40.i
  %node.1.in.i.i.i45.i = phi ptr [ %rb_left.i.i.i39.i, %if.then.i.i.i40.i ], [ %rb_right.i.i.i43.i, %if.then3.i.i.i44.i ]
  %17 = ptrtoint ptr %node.1.in.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.0.i.i.i46.i = load ptr, ptr %node.1.in.i.i.i45.i, align 4
  %tobool.not.i.i.i47.i = icmp eq ptr %node.0.i.i.i46.i, null
  br i1 %tobool.not.i.i.i47.i, label %cleanup.i.i.i48.i.br_multicast_eht_exc.exit.i_crit_edge, label %cleanup.i.i.i48.i.while.body.i.i.i38.i_crit_edge

cleanup.i.i.i48.i.while.body.i.i.i38.i_crit_edge: ; preds = %cleanup.i.i.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i38.i

cleanup.i.i.i48.i.br_multicast_eht_exc.exit.i_crit_edge: ; preds = %cleanup.i.i.i48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_exc.exit.i

if.then.i.i50.i:                                  ; preds = %if.else.i.i.i42.i
  call void @__sanitizer_cov_trace_pc() #8
  %filter_mode1.i.i49.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i34.i, i32 0, i32 4
  %18 = ptrtoint ptr %filter_mode1.i.i49.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %filter_mode1.i.i49.i, align 4
  br label %br_multicast_eht_exc.exit.i

br_multicast_eht_exc.exit.i:                      ; preds = %if.then.i.i50.i, %cleanup.i.i.i48.i.br_multicast_eht_exc.exit.i_crit_edge, %sw.bb8.i.br_multicast_eht_exc.exit.i_crit_edge
  %19 = call ptr @memset(ptr %zero_addr.i.i29.i, i32 0, i32 16)
  call fastcc void @br_multicast_create_eht_set_entry(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %zero_addr.i.i29.i, ptr noundef nonnull %eht_host_addr, i32 noundef 0, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr.i.i29.i) #6
  br label %out

if.else:                                          ; preds = %if.end
  %20 = zext i32 %grec_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %grec_type, label %if.else.out_crit_edge [
    i32 5, label %sw.bb.i18
    i32 6, label %sw.bb1.i20
    i32 3, label %sw.bb3.i21
    i32 1, label %if.else.sw.bb4.i27_crit_edge
    i32 4, label %sw.bb7.i47
    i32 2, label %if.else.sw.bb8.i53_crit_edge
  ]

if.else.sw.bb8.i53_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i53

if.else.sw.bb4.i27_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i27

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb.i18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @br_multicast_eht_allow(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 16) #6
  br label %out

sw.bb1.i20:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i19 = call fastcc zeroext i1 @br_multicast_eht_block(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 16) #6
  br label %out

sw.bb3.i21:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i27

sw.bb4.i27:                                       ; preds = %sw.bb3.i21, %if.else.sw.bb4.i27_crit_edge
  %to_report.0.off0.i22 = phi i1 [ false, %if.else.sw.bb4.i27_crit_edge ], [ true, %sw.bb3.i21 ]
  %call.i.i23 = call fastcc zeroext i1 @__eht_inc_exc(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 16, i8 noundef zeroext 1, i1 noundef zeroext %to_report.0.off0.i22) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr.i.i.i17) #6
  %eht_host_tree.i.i.i.i24 = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %21 = ptrtoint ptr %eht_host_tree.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %node.016.i.i.i.i25 = load ptr, ptr %eht_host_tree.i.i.i.i24, align 4
  %tobool.not17.i.i.i.i26 = icmp eq ptr %node.016.i.i.i.i25, null
  br i1 %tobool.not17.i.i.i.i26, label %sw.bb4.i27.br_multicast_eht_inc.exit.i46_crit_edge, label %sw.bb4.i27.while.body.i.i.i.i32_crit_edge

sw.bb4.i27.while.body.i.i.i.i32_crit_edge:        ; preds = %sw.bb4.i27
  br label %while.body.i.i.i.i32

sw.bb4.i27.br_multicast_eht_inc.exit.i46_crit_edge: ; preds = %sw.bb4.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_inc.exit.i46

while.body.i.i.i.i32:                             ; preds = %cleanup.i.i.i.i42.while.body.i.i.i.i32_crit_edge, %sw.bb4.i27.while.body.i.i.i.i32_crit_edge
  %node.018.i.i.i.i28 = phi ptr [ %node.0.i.i.i.i40, %cleanup.i.i.i.i42.while.body.i.i.i.i32_crit_edge ], [ %node.016.i.i.i.i25, %sw.bb4.i27.while.body.i.i.i.i32_crit_edge ]
  %h_addr1.i.i.i.i29 = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i.i28, i32 0, i32 1
  %call.i.i.i.i30 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %eht_host_addr, ptr noundef dereferenceable(16) %h_addr1.i.i.i.i29, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i30)
  %cmp.i.i.i.i31 = icmp slt i32 %call.i.i.i.i30, 0
  br i1 %cmp.i.i.i.i31, label %if.then.i.i.i.i34, label %if.else.i.i.i.i36

if.then.i.i.i.i34:                                ; preds = %while.body.i.i.i.i32
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i.i.i33 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i.i28, i32 0, i32 2
  br label %cleanup.i.i.i.i42

if.else.i.i.i.i36:                                ; preds = %while.body.i.i.i.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i30)
  %cmp2.not.i.i.i.i35 = icmp eq i32 %call.i.i.i.i30, 0
  br i1 %cmp2.not.i.i.i.i35, label %if.then.i.i.i44, label %if.then3.i.i.i.i38

if.then3.i.i.i.i38:                               ; preds = %if.else.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i.i.i37 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i.i28, i32 0, i32 1
  br label %cleanup.i.i.i.i42

cleanup.i.i.i.i42:                                ; preds = %if.then3.i.i.i.i38, %if.then.i.i.i.i34
  %node.1.in.i.i.i.i39 = phi ptr [ %rb_left.i.i.i.i33, %if.then.i.i.i.i34 ], [ %rb_right.i.i.i.i37, %if.then3.i.i.i.i38 ]
  %22 = ptrtoint ptr %node.1.in.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.0.i.i.i.i40 = load ptr, ptr %node.1.in.i.i.i.i39, align 4
  %tobool.not.i.i.i.i41 = icmp eq ptr %node.0.i.i.i.i40, null
  br i1 %tobool.not.i.i.i.i41, label %cleanup.i.i.i.i42.br_multicast_eht_inc.exit.i46_crit_edge, label %cleanup.i.i.i.i42.while.body.i.i.i.i32_crit_edge

cleanup.i.i.i.i42.while.body.i.i.i.i32_crit_edge: ; preds = %cleanup.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i.i32

cleanup.i.i.i.i42.br_multicast_eht_inc.exit.i46_crit_edge: ; preds = %cleanup.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_inc.exit.i46

if.then.i.i.i44:                                  ; preds = %if.else.i.i.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  %filter_mode1.i.i.i43 = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i.i28, i32 0, i32 4
  %23 = ptrtoint ptr %filter_mode1.i.i.i43 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %filter_mode1.i.i.i43, align 4
  br label %br_multicast_eht_inc.exit.i46

br_multicast_eht_inc.exit.i46:                    ; preds = %if.then.i.i.i44, %cleanup.i.i.i.i42.br_multicast_eht_inc.exit.i46_crit_edge, %sw.bb4.i27.br_multicast_eht_inc.exit.i46_crit_edge
  %24 = call ptr @memset(ptr %zero_addr.i.i.i17, i32 0, i32 16)
  %call2.i.i.i45 = call fastcc zeroext i1 @br_multicast_del_eht_set_entry(ptr noundef %pg, ptr noundef nonnull %zero_addr.i.i.i17, ptr noundef nonnull %eht_host_addr) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr.i.i.i17) #6
  br label %out

sw.bb7.i47:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i53

sw.bb8.i53:                                       ; preds = %sw.bb7.i47, %if.else.sw.bb8.i53_crit_edge
  %to_report.1.off0.i48 = phi i1 [ false, %if.else.sw.bb8.i53_crit_edge ], [ true, %sw.bb7.i47 ]
  %call.i30.i49 = call fastcc zeroext i1 @__eht_inc_exc(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_host_addr, ptr noundef %srcs, i32 noundef %nsrcs, i32 noundef 16, i8 noundef zeroext 0, i1 noundef zeroext %to_report.1.off0.i48) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr.i.i29.i16) #6
  %eht_host_tree.i.i.i31.i50 = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %25 = ptrtoint ptr %eht_host_tree.i.i.i31.i50 to i32
  call void @__asan_load4_noabort(i32 %25)
  %node.016.i.i.i32.i51 = load ptr, ptr %eht_host_tree.i.i.i31.i50, align 4
  %tobool.not17.i.i.i33.i52 = icmp eq ptr %node.016.i.i.i32.i51, null
  br i1 %tobool.not17.i.i.i33.i52, label %sw.bb8.i53.br_multicast_eht_exc.exit.i71_crit_edge, label %sw.bb8.i53.while.body.i.i.i38.i58_crit_edge

sw.bb8.i53.while.body.i.i.i38.i58_crit_edge:      ; preds = %sw.bb8.i53
  br label %while.body.i.i.i38.i58

sw.bb8.i53.br_multicast_eht_exc.exit.i71_crit_edge: ; preds = %sw.bb8.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_exc.exit.i71

while.body.i.i.i38.i58:                           ; preds = %cleanup.i.i.i48.i68.while.body.i.i.i38.i58_crit_edge, %sw.bb8.i53.while.body.i.i.i38.i58_crit_edge
  %node.018.i.i.i34.i54 = phi ptr [ %node.0.i.i.i46.i66, %cleanup.i.i.i48.i68.while.body.i.i.i38.i58_crit_edge ], [ %node.016.i.i.i32.i51, %sw.bb8.i53.while.body.i.i.i38.i58_crit_edge ]
  %h_addr1.i.i.i35.i55 = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i34.i54, i32 0, i32 1
  %call.i.i.i36.i56 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %eht_host_addr, ptr noundef dereferenceable(16) %h_addr1.i.i.i35.i55, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i36.i56)
  %cmp.i.i.i37.i57 = icmp slt i32 %call.i.i.i36.i56, 0
  br i1 %cmp.i.i.i37.i57, label %if.then.i.i.i40.i60, label %if.else.i.i.i42.i62

if.then.i.i.i40.i60:                              ; preds = %while.body.i.i.i38.i58
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i.i39.i59 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i34.i54, i32 0, i32 2
  br label %cleanup.i.i.i48.i68

if.else.i.i.i42.i62:                              ; preds = %while.body.i.i.i38.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i36.i56)
  %cmp2.not.i.i.i41.i61 = icmp eq i32 %call.i.i.i36.i56, 0
  br i1 %cmp2.not.i.i.i41.i61, label %if.then.i.i50.i70, label %if.then3.i.i.i44.i64

if.then3.i.i.i44.i64:                             ; preds = %if.else.i.i.i42.i62
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i.i43.i63 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i.i34.i54, i32 0, i32 1
  br label %cleanup.i.i.i48.i68

cleanup.i.i.i48.i68:                              ; preds = %if.then3.i.i.i44.i64, %if.then.i.i.i40.i60
  %node.1.in.i.i.i45.i65 = phi ptr [ %rb_left.i.i.i39.i59, %if.then.i.i.i40.i60 ], [ %rb_right.i.i.i43.i63, %if.then3.i.i.i44.i64 ]
  %26 = ptrtoint ptr %node.1.in.i.i.i45.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %node.0.i.i.i46.i66 = load ptr, ptr %node.1.in.i.i.i45.i65, align 4
  %tobool.not.i.i.i47.i67 = icmp eq ptr %node.0.i.i.i46.i66, null
  br i1 %tobool.not.i.i.i47.i67, label %cleanup.i.i.i48.i68.br_multicast_eht_exc.exit.i71_crit_edge, label %cleanup.i.i.i48.i68.while.body.i.i.i38.i58_crit_edge

cleanup.i.i.i48.i68.while.body.i.i.i38.i58_crit_edge: ; preds = %cleanup.i.i.i48.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i38.i58

cleanup.i.i.i48.i68.br_multicast_eht_exc.exit.i71_crit_edge: ; preds = %cleanup.i.i.i48.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_exc.exit.i71

if.then.i.i50.i70:                                ; preds = %if.else.i.i.i42.i62
  call void @__sanitizer_cov_trace_pc() #8
  %filter_mode1.i.i49.i69 = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i.i34.i54, i32 0, i32 4
  %27 = ptrtoint ptr %filter_mode1.i.i49.i69 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %filter_mode1.i.i49.i69, align 4
  br label %br_multicast_eht_exc.exit.i71

br_multicast_eht_exc.exit.i71:                    ; preds = %if.then.i.i50.i70, %cleanup.i.i.i48.i68.br_multicast_eht_exc.exit.i71_crit_edge, %sw.bb8.i53.br_multicast_eht_exc.exit.i71_crit_edge
  %28 = call ptr @memset(ptr %zero_addr.i.i29.i16, i32 0, i32 16)
  call fastcc void @br_multicast_create_eht_set_entry(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %zero_addr.i.i29.i16, ptr noundef nonnull %eht_host_addr, i32 noundef 0, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr.i.i29.i16) #6
  br label %out

out:                                              ; preds = %br_multicast_eht_exc.exit.i71, %br_multicast_eht_inc.exit.i46, %sw.bb1.i20, %sw.bb.i18, %if.else.out_crit_edge, %br_multicast_eht_exc.exit.i, %br_multicast_eht_inc.exit.i, %sw.bb1.i, %sw.bb.i, %if.then3.out_crit_edge, %entry.out_crit_edge
  %changed.0.shrunk = phi i1 [ false, %entry.out_crit_edge ], [ false, %if.then3.out_crit_edge ], [ %call.i30.i, %br_multicast_eht_exc.exit.i ], [ %call.i.i, %br_multicast_eht_inc.exit.i ], [ %call2.i, %sw.bb1.i ], [ false, %sw.bb.i ], [ false, %if.else.out_crit_edge ], [ %call.i30.i49, %br_multicast_eht_exc.exit.i71 ], [ %call.i.i23, %br_multicast_eht_inc.exit.i46 ], [ %call2.i19, %sw.bb1.i20 ], [ false, %sw.bb.i18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_host_addr) #6
  ret i1 %changed.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_multicast_eht_set_hosts_limit(ptr nocapture noundef %p, i32 noundef %eht_hosts_limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %eht_hosts_limit)
  %tobool.not = icmp eq i32 %eht_hosts_limit, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %multicast_lock = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock_bh(ptr noundef %multicast_lock) #6
  %multicast_eht_hosts_limit = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 26
  %2 = ptrtoint ptr %multicast_eht_hosts_limit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %eht_hosts_limit, ptr %multicast_eht_hosts_limit, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %multicast_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__eht_del_set_entry(ptr noundef %set_h) unnamed_addr #0 align 64 {
entry:
  %zero_addr = alloca %union.net_bridge_eht_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %h_parent = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 6
  %0 = ptrtoint ptr %h_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h_parent, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr) #6
  %eht_set = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 5
  %2 = ptrtoint ptr %eht_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eht_set, align 4
  %entry_tree = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %3, i32 0, i32 2
  tail call void @rb_erase(ptr noundef %set_h, ptr noundef %entry_tree) #6
  %4 = ptrtoint ptr %set_h to i32
  %5 = ptrtoint ptr %set_h to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %set_h, align 4
  %host_list = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 1
  %pprev.i.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init.exit_crit_edge, label %if.then.i

entry.hlist_del_init.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %host_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_list, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %7, align 4
  %tobool.not.i3.i = icmp eq ptr %9, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %12 = ptrtoint ptr %host_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %host_list, align 4
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %entry.hlist_del_init.exit_crit_edge
  %14 = call ptr @memset(ptr %zero_addr, i32 0, i32 16)
  %h_addr = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %h_addr, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %hlist_del_init.exit.if.end_crit_edge, label %if.then

hlist_del_init.exit.if.end_crit_edge:             ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %num_entries = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_entries, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %num_entries, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %hlist_del_init.exit.if.end_crit_edge
  %mcast_gc = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 7
  %br = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 4
  %17 = ptrtoint ptr %br to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %br, align 4
  %mcast_gc_list = getelementptr inbounds %struct.net_bridge, ptr %18, i32 0, i32 35
  %19 = ptrtoint ptr %mcast_gc_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcast_gc_list, align 4
  %21 = ptrtoint ptr %mcast_gc to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %mcast_gc, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end.hlist_add_head.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %mcast_gc, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end.hlist_add_head.exit_crit_edge
  %23 = ptrtoint ptr %mcast_gc_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %mcast_gc, ptr %mcast_gc_list, align 4
  %pprev34.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h, i32 0, i32 7, i32 0, i32 1
  %24 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %mcast_gc_list, ptr %pprev34.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %25 = load ptr, ptr @system_long_wq, align 4
  %26 = ptrtoint ptr %br to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %br, align 4
  %mcast_gc_work = getelementptr inbounds %struct.net_bridge, ptr %27, i32 0, i32 37
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %mcast_gc_work) #6
  %set_entries = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %set_entries to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %set_entries, align 4
  %tobool.not.i20.not = icmp eq ptr %29, null
  br i1 %tobool.not.i20.not, label %if.then7, label %hlist_add_head.exit.if.end8_crit_edge

hlist_add_head.exit.if.end8_crit_edge:            ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %hlist_add_head.exit
  %30 = ptrtoint ptr %set_entries to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %set_entries, align 4
  %tobool.not.i.not.i21 = icmp eq ptr %31, null
  br i1 %tobool.not.i.not.i21, label %if.then7.__eht_destroy_host.exit_crit_edge, label %do.end.i, !prof !17

if.then7.__eht_destroy_host.exit_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_destroy_host.exit

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #6
  br label %__eht_destroy_host.exit

__eht_destroy_host.exit:                          ; preds = %do.end.i, %if.then7.__eht_destroy_host.exit_crit_edge
  %pg.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %pg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pg.i, align 4
  %key.i.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %key.i.i, align 4
  %multicast_eht_hosts_cnt.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %multicast_eht_hosts_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %multicast_eht_hosts_cnt.i.i, align 4
  %dec.i.i = add i32 %37, -1
  store i32 %dec.i.i, ptr %multicast_eht_hosts_cnt.i.i, align 4
  %38 = load ptr, ptr %pg.i, align 4
  %eht_host_tree.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %38, i32 0, i32 13
  tail call void @rb_erase(ptr noundef %1, ptr noundef %eht_host_tree.i) #6
  %39 = ptrtoint ptr %1 to i32
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %1, align 4
  tail call void @kfree(ptr noundef %1) #6
  br label %if.end8

if.end8:                                          ; preds = %__eht_destroy_host.exit, %hlist_add_head.exit.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_multicast_eht_allow(ptr nocapture noundef readonly %brmctx, ptr noundef %pg, ptr nocapture noundef readonly %h_addr, ptr nocapture noundef readonly %srcs, i32 noundef %nsrcs, i32 noundef %addr_size) unnamed_addr #0 align 64 {
entry:
  %eht_src_addr.i1 = alloca %union.net_bridge_eht_addr, align 4
  %src_ip.i = alloca %struct.br_ip, align 4
  %eht_src_addr.i = alloca %union.net_bridge_eht_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eht_host_tree.i.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %0 = ptrtoint ptr %eht_host_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.016.i.i = load ptr, ptr %eht_host_tree.i.i, align 4
  %tobool.not17.i.i = icmp eq ptr %node.016.i.i, null
  br i1 %tobool.not17.i.i, label %entry.sw.bb_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %node.018.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.016.i.i, %entry.while.body.i.i_crit_edge ]
  %h_addr1.i.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i, i32 0, i32 1
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %h_addr, ptr noundef dereferenceable(16) %h_addr1.i.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp2.not.i.i, label %br_multicast_eht_host_filter_mode.exit, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %1 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.sw.bb_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

cleanup.i.i.sw.bb_crit_edge:                      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

br_multicast_eht_host_filter_mode.exit:           ; preds = %if.else.i.i
  %filter_mode.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %filter_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filter_mode.i, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %3, label %br_multicast_eht_host_filter_mode.exit.sw.epilog_crit_edge [
    i8 1, label %br_multicast_eht_host_filter_mode.exit.sw.bb_crit_edge
    i8 0, label %sw.bb1
  ]

br_multicast_eht_host_filter_mode.exit.sw.bb_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

br_multicast_eht_host_filter_mode.exit.sw.epilog_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %br_multicast_eht_host_filter_mode.exit.sw.bb_crit_edge, %cleanup.i.i.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_src_addr.i) #6
  %5 = call ptr @memset(ptr %eht_src_addr.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsrcs)
  %cmp4.not.i = icmp eq i32 %nsrcs, 0
  br i1 %cmp4.not.i, label %sw.bb.__eht_create_set_entries.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.__eht_create_set_entries.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %src_idx.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %mul.i = mul i32 %src_idx.05.i, %addr_size
  %add.ptr.i = getelementptr i8, ptr %srcs, i32 %mul.i
  %6 = call ptr @memcpy(ptr %eht_src_addr.i, ptr %add.ptr.i, i32 %addr_size)
  call fastcc void @br_multicast_create_eht_set_entry(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_src_addr.i, ptr noundef %h_addr, i32 noundef 1, i1 noundef zeroext false) #6
  %inc.i = add nuw i32 %src_idx.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nsrcs
  br i1 %exitcond.not.i, label %for.body.i.__eht_create_set_entries.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.__eht_create_set_entries.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit

__eht_create_set_entries.exit:                    ; preds = %for.body.i.__eht_create_set_entries.exit_crit_edge, %sw.bb.__eht_create_set_entries.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_src_addr.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %br_multicast_eht_host_filter_mode.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_src_addr.i1) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %src_ip.i) #6
  %7 = call ptr @memset(ptr %eht_src_addr.i1, i32 0, i32 16)
  %8 = call ptr @memset(ptr %src_ip.i, i32 0, i32 36)
  %proto.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1, i32 1, i32 2
  %9 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %proto.i, align 4
  %proto1.i = getelementptr inbounds %struct.br_ip, ptr %src_ip.i, i32 0, i32 2
  %11 = ptrtoint ptr %proto1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %proto1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsrcs)
  %cmp20.not.i = icmp eq i32 %nsrcs, 0
  br i1 %cmp20.not.i, label %sw.bb1.__eht_del_set_entries.exit_crit_edge, label %sw.bb1.for.body.i4_crit_edge

sw.bb1.for.body.i4_crit_edge:                     ; preds = %sw.bb1
  br label %for.body.i4

sw.bb1.__eht_del_set_entries.exit_crit_edge:      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_del_set_entries.exit

for.body.i4:                                      ; preds = %for.inc.i.for.body.i4_crit_edge, %sw.bb1.for.body.i4_crit_edge
  %src_idx.022.i = phi i32 [ %inc.i6, %for.inc.i.for.body.i4_crit_edge ], [ 0, %sw.bb1.for.body.i4_crit_edge ]
  %mul.i2 = mul i32 %src_idx.022.i, %addr_size
  %add.ptr.i3 = getelementptr i8, ptr %srcs, i32 %mul.i2
  %12 = call ptr @memcpy(ptr %eht_src_addr.i1, ptr %add.ptr.i3, i32 %addr_size)
  %call.i = call fastcc zeroext i1 @br_multicast_del_eht_set_entry(ptr noundef %pg, ptr noundef nonnull %eht_src_addr.i1, ptr noundef %h_addr) #6
  br i1 %call.i, label %if.end.i5, label %for.body.i4.for.inc.i_crit_edge

for.body.i4.for.inc.i_crit_edge:                  ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i5:                                        ; preds = %for.body.i4
  %13 = call ptr @memcpy(ptr %src_ip.i, ptr %add.ptr.i3, i32 %addr_size)
  %call4.i = call ptr @br_multicast_find_group_src(ptr noundef %pg, ptr noundef nonnull %src_ip.i) #6
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i5.for.inc.i_crit_edge, label %if.end6.i

if.end.i5.for.inc.i_crit_edge:                    ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  call void @br_multicast_del_group_src(ptr noundef nonnull %call4.i, i1 noundef zeroext true) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %if.end.i5.for.inc.i_crit_edge, %for.body.i4.for.inc.i_crit_edge
  %inc.i6 = add nuw i32 %src_idx.022.i, 1
  %exitcond.not.i7 = icmp eq i32 %inc.i6, %nsrcs
  br i1 %exitcond.not.i7, label %for.inc.i.__eht_del_set_entries.exit_crit_edge, label %for.inc.i.for.body.i4_crit_edge

for.inc.i.for.body.i4_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i4

for.inc.i.__eht_del_set_entries.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_del_set_entries.exit

__eht_del_set_entries.exit:                       ; preds = %for.inc.i.__eht_del_set_entries.exit_crit_edge, %sw.bb1.__eht_del_set_entries.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %src_ip.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_src_addr.i1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %__eht_del_set_entries.exit, %__eht_create_set_entries.exit, %br_multicast_eht_host_filter_mode.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @br_multicast_eht_block(ptr nocapture noundef readonly %brmctx, ptr noundef %pg, ptr nocapture noundef readonly %h_addr, ptr nocapture noundef readonly %srcs, i32 noundef %nsrcs, i32 noundef %addr_size) unnamed_addr #0 align 64 {
entry:
  %eht_src_addr.i11 = alloca %union.net_bridge_eht_addr, align 4
  %eht_src_addr.i = alloca %union.net_bridge_eht_addr, align 4
  %src_ip.i = alloca %struct.br_ip, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eht_host_tree.i.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %0 = ptrtoint ptr %eht_host_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.016.i.i = load ptr, ptr %eht_host_tree.i.i, align 4
  %tobool.not17.i.i = icmp eq ptr %node.016.i.i, null
  br i1 %tobool.not17.i.i, label %entry.sw.bb_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %node.018.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.016.i.i, %entry.while.body.i.i_crit_edge ]
  %h_addr1.i.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i, i32 0, i32 1
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %h_addr, ptr noundef dereferenceable(16) %h_addr1.i.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp2.not.i.i, label %br_multicast_eht_host_filter_mode.exit, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %1 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.sw.bb_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

cleanup.i.i.sw.bb_crit_edge:                      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

br_multicast_eht_host_filter_mode.exit:           ; preds = %if.else.i.i
  %filter_mode.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %filter_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filter_mode.i, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %3, label %br_multicast_eht_host_filter_mode.exit.sw.epilog_crit_edge [
    i8 1, label %br_multicast_eht_host_filter_mode.exit.sw.bb_crit_edge
    i8 0, label %sw.bb2
  ]

br_multicast_eht_host_filter_mode.exit.sw.bb_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

br_multicast_eht_host_filter_mode.exit.sw.epilog_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %br_multicast_eht_host_filter_mode.exit.sw.bb_crit_edge, %cleanup.i.i.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_src_addr.i) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %src_ip.i) #6
  %5 = call ptr @memset(ptr %eht_src_addr.i, i32 0, i32 16)
  %6 = call ptr @memset(ptr %src_ip.i, i32 0, i32 36)
  %proto.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1, i32 1, i32 2
  %7 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %proto.i, align 4
  %proto1.i = getelementptr inbounds %struct.br_ip, ptr %src_ip.i, i32 0, i32 2
  %9 = ptrtoint ptr %proto1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %proto1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsrcs)
  %cmp20.not.i = icmp eq i32 %nsrcs, 0
  br i1 %cmp20.not.i, label %sw.bb.__eht_del_set_entries.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.__eht_del_set_entries.exit_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_del_set_entries.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %src_idx.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %changed.0.off021.i = phi i1 [ %changed.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %sw.bb.for.body.i_crit_edge ]
  %mul.i = mul i32 %src_idx.022.i, %addr_size
  %add.ptr.i = getelementptr i8, ptr %srcs, i32 %mul.i
  %10 = call ptr @memcpy(ptr %eht_src_addr.i, ptr %add.ptr.i, i32 %addr_size)
  %call.i = call fastcc zeroext i1 @br_multicast_del_eht_set_entry(ptr noundef %pg, ptr noundef nonnull %eht_src_addr.i, ptr noundef %h_addr) #6
  br i1 %call.i, label %if.end.i10, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i10:                                       ; preds = %for.body.i
  %11 = call ptr @memcpy(ptr %src_ip.i, ptr %add.ptr.i, i32 %addr_size)
  %call4.i = call ptr @br_multicast_find_group_src(ptr noundef %pg, ptr noundef nonnull %src_ip.i) #6
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i10.for.inc.i_crit_edge, label %if.end6.i

if.end.i10.for.inc.i_crit_edge:                   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end6.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #8
  call void @br_multicast_del_group_src(ptr noundef nonnull %call4.i, i1 noundef zeroext true) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %if.end.i10.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %changed.1.off0.i = phi i1 [ true, %if.end6.i ], [ %changed.0.off021.i, %if.end.i10.for.inc.i_crit_edge ], [ %changed.0.off021.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %src_idx.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nsrcs
  br i1 %exitcond.not.i, label %for.inc.i.__eht_del_set_entries.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.__eht_del_set_entries.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_del_set_entries.exit

__eht_del_set_entries.exit:                       ; preds = %for.inc.i.__eht_del_set_entries.exit_crit_edge, %sw.bb.__eht_del_set_entries.exit_crit_edge
  %changed.0.off0.lcssa.i = phi i1 [ false, %sw.bb.__eht_del_set_entries.exit_crit_edge ], [ %changed.1.off0.i, %for.inc.i.__eht_del_set_entries.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %src_ip.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_src_addr.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %br_multicast_eht_host_filter_mode.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_src_addr.i11) #6
  %12 = call ptr @memset(ptr %eht_src_addr.i11, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsrcs)
  %cmp4.not.i = icmp eq i32 %nsrcs, 0
  br i1 %cmp4.not.i, label %sw.bb2.__eht_create_set_entries.exit_crit_edge, label %sw.bb2.for.body.i16_crit_edge

sw.bb2.for.body.i16_crit_edge:                    ; preds = %sw.bb2
  br label %for.body.i16

sw.bb2.__eht_create_set_entries.exit_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %sw.bb2.for.body.i16_crit_edge
  %src_idx.05.i = phi i32 [ %inc.i14, %for.body.i16.for.body.i16_crit_edge ], [ 0, %sw.bb2.for.body.i16_crit_edge ]
  %mul.i12 = mul i32 %src_idx.05.i, %addr_size
  %add.ptr.i13 = getelementptr i8, ptr %srcs, i32 %mul.i12
  %13 = call ptr @memcpy(ptr %eht_src_addr.i11, ptr %add.ptr.i13, i32 %addr_size)
  call fastcc void @br_multicast_create_eht_set_entry(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_src_addr.i11, ptr noundef %h_addr, i32 noundef 0, i1 noundef zeroext false) #6
  %inc.i14 = add nuw i32 %src_idx.05.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, %nsrcs
  br i1 %exitcond.not.i15, label %for.body.i16.__eht_create_set_entries.exit_crit_edge, label %for.body.i16.for.body.i16_crit_edge

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i16

for.body.i16.__eht_create_set_entries.exit_crit_edge: ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit

__eht_create_set_entries.exit:                    ; preds = %for.body.i16.__eht_create_set_entries.exit_crit_edge, %sw.bb2.__eht_create_set_entries.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_src_addr.i11) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %__eht_create_set_entries.exit, %__eht_del_set_entries.exit, %br_multicast_eht_host_filter_mode.exit.sw.epilog_crit_edge
  %changed.0.off0 = phi i1 [ false, %br_multicast_eht_host_filter_mode.exit.sw.epilog_crit_edge ], [ false, %__eht_create_set_entries.exit ], [ %changed.0.off0.lcssa.i, %__eht_del_set_entries.exit ]
  ret i1 %changed.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_multicast_create_eht_set_entry(ptr nocapture noundef readonly %brmctx, ptr noundef %pg, ptr nocapture noundef readonly %src_addr, ptr nocapture noundef readonly %h_addr, i32 noundef %filter_mode, i1 noundef zeroext %allow_zero_src) unnamed_addr #0 align 64 {
entry:
  %zero_addr = alloca %union.net_bridge_eht_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zero_addr) #6
  %4 = call ptr @memset(ptr %zero_addr, i32 0, i32 16)
  br i1 %allow_zero_src, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %src_addr, ptr noundef nonnull dereferenceable(16) %zero_addr, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %eht_set_tree.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 12
  %5 = ptrtoint ptr %eht_set_tree.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eht_set_tree.i, align 4
  %tobool.not47.i = icmp eq ptr %6, null
  br i1 %tobool.not47.i, label %if.end.while.end.i_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %7 = phi ptr [ %9, %cleanup.i.while.body.i_crit_edge ], [ %6, %if.end.while.body.i_crit_edge ]
  %src_addr1.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %7, i32 0, i32 1
  %call.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %src_addr, ptr noundef dereferenceable(16) %src_addr1.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.else.i.if.end6_crit_edge, label %if.then3.i

if.else.i.if.end6_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %link.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %8 = ptrtoint ptr %link.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link.2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.le.i = ptrtoint ptr %7 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end.while.end.i_crit_edge ]
  %link.0.lcssa.i = phi ptr [ %link.2.i, %while.cond.while.end_crit_edge.i ], [ %eht_set_tree.i, %if.end.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 100) #11
  %tobool8.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not.i, label %while.end.i.cleanup_crit_edge, label %if.end10.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %src_addr11.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %call7.i.i.i, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %src_addr11.i, ptr %src_addr, i32 16)
  %destroy.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %destroy.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @br_multicast_destroy_eht_set, ptr %destroy.i, align 8
  %pg12.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %pg12.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pg, ptr %pg12.i, align 8
  %14 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %key, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %br13.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %call7.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %br13.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %br13.i, align 4
  %entry_tree.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %entry_tree.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %entry_tree.i, align 4
  %timer.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @br_multicast_eht_set_expired, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__eht_lookup_create_set.__key) #6
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rb_left.i.i, align 8
  %23 = ptrtoint ptr %link.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %link.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %eht_set_tree.i) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end10.i, %if.else.i.if.end6_crit_edge
  %retval.2.i.ph = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %7, %if.else.i.if.end6_crit_edge ]
  %conv = trunc i32 %filter_mode to i8
  %eht_host_tree.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %24 = ptrtoint ptr %eht_host_tree.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eht_host_tree.i, align 4
  %tobool.not50.i = icmp eq ptr %25, null
  br i1 %tobool.not50.i, label %if.end6.while.end.i62_crit_edge, label %if.end6.while.body.i48_crit_edge

if.end6.while.body.i48_crit_edge:                 ; preds = %if.end6
  br label %while.body.i48

if.end6.while.end.i62_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i62

while.body.i48:                                   ; preds = %cleanup.i57.while.body.i48_crit_edge, %if.end6.while.body.i48_crit_edge
  %26 = phi ptr [ %28, %cleanup.i57.while.body.i48_crit_edge ], [ %25, %if.end6.while.body.i48_crit_edge ]
  %h_addr1.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %26, i32 0, i32 1
  %call.i46 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %h_addr, ptr noundef dereferenceable(16) %h_addr1.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  br i1 %cmp.i47, label %if.then.i50, label %if.else.i52

if.then.i50:                                      ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i49 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 2
  br label %cleanup.i57

if.else.i52:                                      ; preds = %while.body.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp2.not.i51 = icmp eq i32 %call.i46, 0
  br i1 %cmp2.not.i51, label %if.else.i52.if.end10_crit_edge, label %if.then3.i54

if.else.i52.if.end10_crit_edge:                   ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3.i54:                                     ; preds = %if.else.i52
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i53 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 1
  br label %cleanup.i57

cleanup.i57:                                      ; preds = %if.then3.i54, %if.then.i50
  %link.2.i55 = phi ptr [ %rb_left.i49, %if.then.i50 ], [ %rb_right.i53, %if.then3.i54 ]
  %27 = ptrtoint ptr %link.2.i55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.2.i55, align 4
  %tobool.not.i56 = icmp eq ptr %28, null
  br i1 %tobool.not.i56, label %while.cond.while.end_crit_edge.i59, label %cleanup.i57.while.body.i48_crit_edge

cleanup.i57.while.body.i48_crit_edge:             ; preds = %cleanup.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i48

while.cond.while.end_crit_edge.i59:               ; preds = %cleanup.i57
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.le.i58 = ptrtoint ptr %26 to i32
  br label %while.end.i62

while.end.i62:                                    ; preds = %while.cond.while.end_crit_edge.i59, %if.end6.while.end.i62_crit_edge
  %parent.0.lcssa.i60 = phi i32 [ %phi.cast.le.i58, %while.cond.while.end_crit_edge.i59 ], [ 0, %if.end6.while.end.i62_crit_edge ]
  %link.0.lcssa.i61 = phi ptr [ %link.2.i55, %while.cond.while.end_crit_edge.i59 ], [ %eht_host_tree.i, %if.end6.while.end.i62_crit_edge ]
  %29 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %key, align 4
  %multicast_eht_hosts_cnt.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %multicast_eht_hosts_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %multicast_eht_hosts_cnt.i.i, align 4
  %multicast_eht_hosts_limit.i.i = getelementptr inbounds %struct.net_bridge_port, ptr %30, i32 0, i32 26
  %33 = ptrtoint ptr %multicast_eht_hosts_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %multicast_eht_hosts_limit.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.i.not.i = icmp ult i32 %32, %34
  br i1 %cmp.i.not.i, label %if.end9.i, label %while.end.i62.do.end_crit_edge

while.end.i62.do.end_crit_edge:                   ; preds = %while.end.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end9.i:                                        ; preds = %while.end.i62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 2848, i32 noundef 44) #11
  %tobool11.not.i = icmp eq ptr %call7.i.i.i63, null
  br i1 %tobool11.not.i, label %if.end9.i.do.end_crit_edge, label %if.end13.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %h_addr14.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %call7.i.i.i63, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %h_addr14.i, ptr %h_addr, i32 16)
  %set_entries.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %call7.i.i.i63, i32 0, i32 2
  %37 = ptrtoint ptr %set_entries.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %set_entries.i, align 4
  %pg15.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %call7.i.i.i63, i32 0, i32 5
  %38 = ptrtoint ptr %pg15.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pg, ptr %pg15.i, align 8
  %filter_mode16.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %call7.i.i.i63, i32 0, i32 4
  %39 = ptrtoint ptr %filter_mode16.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %filter_mode16.i, align 4
  %40 = ptrtoint ptr %call7.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %parent.0.lcssa.i60, ptr %call7.i.i.i63, align 8
  %rb_right.i.i64 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i63, i32 0, i32 1
  %41 = ptrtoint ptr %rb_right.i.i64 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %rb_right.i.i64, align 4
  %rb_left.i.i65 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i63, i32 0, i32 2
  %42 = ptrtoint ptr %rb_left.i.i65 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rb_left.i.i65, align 8
  %43 = ptrtoint ptr %link.0.lcssa.i61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i63, ptr %link.0.lcssa.i61, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i63, ptr noundef %eht_host_tree.i) #6
  %44 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %key, align 4
  %multicast_eht_hosts_cnt.i43.i = getelementptr inbounds %struct.net_bridge_port, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %multicast_eht_hosts_cnt.i43.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %multicast_eht_hosts_cnt.i43.i, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %multicast_eht_hosts_cnt.i43.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end13.i, %if.else.i52.if.end10_crit_edge
  %retval.2.i66 = phi ptr [ %call7.i.i.i63, %if.end13.i ], [ %26, %if.else.i52.if.end10_crit_edge ]
  %entry_tree.i67 = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %retval.2.i.ph, i32 0, i32 2
  %48 = ptrtoint ptr %entry_tree.i67 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %entry_tree.i67, align 4
  %tobool.not60.i = icmp eq ptr %49, null
  br i1 %tobool.not60.i, label %if.end10.while.end.i85_crit_edge, label %while.body.lr.ph.i

if.end10.while.end.i85_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i85

while.body.lr.ph.i:                               ; preds = %if.end10
  %h_addr.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %retval.2.i66, i32 0, i32 1
  br label %while.body.i71

while.body.i71:                                   ; preds = %cleanup.i80.while.body.i71_crit_edge, %while.body.lr.ph.i
  %50 = phi ptr [ %49, %while.body.lr.ph.i ], [ %52, %cleanup.i80.while.body.i71_crit_edge ]
  %h_addr1.i68 = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %50, i32 0, i32 2
  %call.i69 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %h_addr.i, ptr noundef dereferenceable(16) %h_addr1.i68, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %if.then.i73, label %if.else.i75

if.then.i73:                                      ; preds = %while.body.i71
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i72 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 2
  br label %cleanup.i80

if.else.i75:                                      ; preds = %while.body.i71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp2.not.i74 = icmp eq i32 %call.i69, 0
  br i1 %cmp2.not.i74, label %if.else.i75.if.end15_crit_edge, label %if.then3.i77

if.else.i75.if.end15_crit_edge:                   ; preds = %if.else.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then3.i77:                                     ; preds = %if.else.i75
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i76 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 1
  br label %cleanup.i80

cleanup.i80:                                      ; preds = %if.then3.i77, %if.then.i73
  %link.2.i78 = phi ptr [ %rb_left.i72, %if.then.i73 ], [ %rb_right.i76, %if.then3.i77 ]
  %51 = ptrtoint ptr %link.2.i78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %link.2.i78, align 4
  %tobool.not.i79 = icmp eq ptr %52, null
  br i1 %tobool.not.i79, label %while.cond.while.end_crit_edge.i82, label %cleanup.i80.while.body.i71_crit_edge

cleanup.i80.while.body.i71_crit_edge:             ; preds = %cleanup.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i71

while.cond.while.end_crit_edge.i82:               ; preds = %cleanup.i80
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.le.i81 = ptrtoint ptr %50 to i32
  br label %while.end.i85

while.end.i85:                                    ; preds = %while.cond.while.end_crit_edge.i82, %if.end10.while.end.i85_crit_edge
  %parent.0.lcssa.i83 = phi i32 [ %phi.cast.le.i81, %while.cond.while.end_crit_edge.i82 ], [ 0, %if.end10.while.end.i85_crit_edge ]
  %link.0.lcssa.i84 = phi ptr [ %link.2.i78, %while.cond.while.end_crit_edge.i82 ], [ %entry_tree.i67, %if.end10.while.end.i85_crit_edge ]
  br i1 %allow_zero_src, label %while.end.i85.if.end10.i87_crit_edge, label %land.lhs.true.i

while.end.i85.if.end10.i87_crit_edge:             ; preds = %while.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i87

land.lhs.true.i:                                  ; preds = %while.end.i85
  %num_entries.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %retval.2.i66, i32 0, i32 3
  %53 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %54)
  %cmp8.i = icmp ugt i32 %54, 31
  br i1 %cmp8.i, label %land.lhs.true.i.fail_set_entry_crit_edge, label %land.lhs.true.i.if.end10.i87_crit_edge

land.lhs.true.i.if.end10.i87_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i87

land.lhs.true.i.fail_set_entry_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_set_entry

if.end10.i87:                                     ; preds = %land.lhs.true.i.if.end10.i87_crit_edge, %while.end.i85.if.end10.i87_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 2848, i32 noundef 108) #11
  %tobool12.not.i = icmp eq ptr %call7.i.i.i86, null
  br i1 %tobool12.not.i, label %if.end10.i87.fail_set_entry_crit_edge, label %if.end14.i

if.end10.i87.fail_set_entry_crit_edge:            ; preds = %if.end10.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_set_entry

if.end14.i:                                       ; preds = %if.end10.i87
  %h_addr15.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 2
  %h_addr16.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %retval.2.i66, i32 0, i32 1
  %56 = call ptr @memcpy(ptr %h_addr15.i, ptr %h_addr16.i, i32 16)
  %destroy.i88 = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %destroy.i88 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @br_multicast_destroy_eht_set_entry, ptr %destroy.i88, align 8
  %eht_set17.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 5
  %58 = ptrtoint ptr %eht_set17.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %retval.2.i.ph, ptr %eht_set17.i, align 8
  %h_parent.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 6
  %59 = ptrtoint ptr %h_parent.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.2.i66, ptr %h_parent.i, align 4
  %br18.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 4
  %60 = ptrtoint ptr %br18.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %3, ptr %br18.i, align 4
  %timer.i89 = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timer.i89, ptr noundef nonnull @br_multicast_eht_set_entry_expired, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__eht_lookup_create_set_entry.__key) #6
  %host_list.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 1
  %set_entries.i90 = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %retval.2.i66, i32 0, i32 2
  %61 = ptrtoint ptr %set_entries.i90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_entries.i90, align 4
  %63 = ptrtoint ptr %host_list.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %62, ptr %host_list.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %if.end14.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end14.i.hlist_add_head.exit.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %host_list.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end14.i.hlist_add_head.exit.i_crit_edge
  %65 = ptrtoint ptr %set_entries.i90 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %host_list.i, ptr %set_entries.i90, align 4
  %pprev34.i.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %call7.i.i.i86, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %set_entries.i90, ptr %pprev34.i.i, align 8
  %67 = ptrtoint ptr %call7.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %parent.0.lcssa.i83, ptr %call7.i.i.i86, align 8
  %rb_right.i.i91 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i86, i32 0, i32 1
  %68 = ptrtoint ptr %rb_right.i.i91 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %rb_right.i.i91, align 4
  %rb_left.i.i92 = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i86, i32 0, i32 2
  %69 = ptrtoint ptr %rb_left.i.i92 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rb_left.i.i92, align 8
  %70 = ptrtoint ptr %link.0.lcssa.i84 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i.i86, ptr %link.0.lcssa.i84, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i86, ptr noundef %entry_tree.i67) #6
  br i1 %allow_zero_src, label %hlist_add_head.exit.i.if.end15_crit_edge, label %if.then23.i

hlist_add_head.exit.i.if.end15_crit_edge:         ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then23.i:                                      ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %num_entries24.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %retval.2.i66, i32 0, i32 3
  %71 = ptrtoint ptr %num_entries24.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_entries24.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %num_entries24.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then23.i, %hlist_add_head.exit.i.if.end15_crit_edge, %if.else.i75.if.end15_crit_edge
  %retval.2.i93.ph = phi ptr [ %call7.i.i.i86, %hlist_add_head.exit.i.if.end15_crit_edge ], [ %call7.i.i.i86, %if.then23.i ], [ %50, %if.else.i75.if.end15_crit_edge ]
  %timer = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %retval.2.i93.ph, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %multicast_membership_interval.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 9
  %74 = ptrtoint ptr %multicast_membership_interval.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %multicast_membership_interval.i, align 4
  %add = add i32 %75, %73
  %call17 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  %timer18 = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %retval.2.i.ph, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %77 = ptrtoint ptr %multicast_membership_interval.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %multicast_membership_interval.i, align 4
  %add20 = add i32 %78, %76
  %call21 = tail call i32 @mod_timer(ptr noundef %timer18, i32 noundef %add20) #6
  br label %cleanup

fail_set_entry:                                   ; preds = %if.end10.i87.fail_set_entry_crit_edge, %land.lhs.true.i.fail_set_entry_crit_edge
  %set_entries = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %retval.2.i66, i32 0, i32 2
  %79 = ptrtoint ptr %set_entries to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %set_entries, align 4
  %tobool.not.i95.not = icmp eq ptr %80, null
  br i1 %tobool.not.i95.not, label %if.then24, label %fail_set_entry.do.end_crit_edge

fail_set_entry.do.end_crit_edge:                  ; preds = %fail_set_entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then24:                                        ; preds = %fail_set_entry
  %81 = ptrtoint ptr %set_entries to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %set_entries, align 4
  %tobool.not.i.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.not.i, label %if.then24.__eht_destroy_host.exit_crit_edge, label %do.end.i, !prof !17

if.then24.__eht_destroy_host.exit_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_destroy_host.exit

do.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef null) #6
  br label %__eht_destroy_host.exit

__eht_destroy_host.exit:                          ; preds = %do.end.i, %if.then24.__eht_destroy_host.exit_crit_edge
  %pg.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %retval.2.i66, i32 0, i32 5
  %83 = ptrtoint ptr %pg.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pg.i, align 4
  %key.i.i97 = getelementptr inbounds %struct.net_bridge_port_group, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %key.i.i97 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %key.i.i97, align 4
  %multicast_eht_hosts_cnt.i.i98 = getelementptr inbounds %struct.net_bridge_port, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %multicast_eht_hosts_cnt.i.i98 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %multicast_eht_hosts_cnt.i.i98, align 4
  %dec.i.i = add i32 %88, -1
  store i32 %dec.i.i, ptr %multicast_eht_hosts_cnt.i.i98, align 4
  %89 = load ptr, ptr %pg.i, align 4
  %eht_host_tree.i99 = getelementptr inbounds %struct.net_bridge_port_group, ptr %89, i32 0, i32 13
  tail call void @rb_erase(ptr noundef %retval.2.i66, ptr noundef %eht_host_tree.i99) #6
  %90 = ptrtoint ptr %retval.2.i66 to i32
  %91 = ptrtoint ptr %retval.2.i66 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %retval.2.i66, align 4
  tail call void @kfree(ptr noundef %retval.2.i66) #6
  br label %do.end

do.end:                                           ; preds = %__eht_destroy_host.exit, %fail_set_entry.do.end_crit_edge, %if.end9.i.do.end_crit_edge, %while.end.i62.do.end_crit_edge
  %entry_tree = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %retval.2.i.ph, i32 0, i32 2
  %92 = ptrtoint ptr %entry_tree to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %entry_tree, align 4
  %cmp = icmp eq ptr %93, null
  br i1 %cmp, label %if.then27, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @br_multicast_del_eht_set(ptr noundef nonnull %retval.2.i.ph)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.end.cleanup_crit_edge, %if.end15, %while.end.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zero_addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_multicast_destroy_eht_set(ptr noundef %gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gc, i32 -88
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp eq i32 %1, %2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !17

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %entry_tree = getelementptr i8, ptr %gc, i32 -60
  %3 = ptrtoint ptr %entry_tree to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %entry_tree, align 4
  %cmp28.not = icmp eq ptr %4, null
  br i1 %cmp28.not, label %if.end.if.end52_crit_edge, label %do.end46, !prof !17

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %if.end.if.end52_crit_edge
  %timer = getelementptr i8, ptr %gc, i32 -56
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_multicast_eht_set_expired(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -32
  %br1 = getelementptr i8, ptr %t, i32 52
  %0 = ptrtoint ptr %br1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br1, align 4
  %multicast_lock = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %multicast_lock) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @br_multicast_del_eht_set(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %if.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %multicast_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_multicast_destroy_eht_set_entry(ptr noundef %gc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %gc, i32 -96
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp eq i32 %1, %2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !17

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %timer = getelementptr i8, ptr %gc, i32 -60
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_multicast_eht_set_entry_expired(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -36
  %br1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %br1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br1, align 4
  %multicast_lock = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 32
  tail call void @_raw_spin_lock(ptr noundef %multicast_lock) #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %eht_set = getelementptr i8, ptr %t, i32 52
  %7 = ptrtoint ptr %eht_set to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eht_set, align 4
  %pg = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pg, align 4
  %src_addr = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %8, i32 0, i32 1
  %h_addr = getelementptr i8, ptr %t, i32 -16
  %call4 = tail call fastcc zeroext i1 @br_multicast_del_eht_set_entry(ptr noundef %10, ptr noundef %src_addr, ptr noundef %h_addr)
  br label %out

out:                                              ; preds = %if.end, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %multicast_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @br_multicast_del_eht_set_entry(ptr nocapture noundef readonly %pg, ptr nocapture noundef readonly %src_addr, ptr nocapture noundef readonly %h_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eht_set_tree.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 12
  %0 = ptrtoint ptr %eht_set_tree.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.016.i = load ptr, ptr %eht_set_tree.i, align 4
  %tobool.not17.i = icmp eq ptr %node.016.i, null
  br i1 %tobool.not17.i, label %entry.out_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.018.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.016.i, %entry.while.body.i_crit_edge ]
  %src_addr1.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %node.018.i, i32 0, i32 1
  %call.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %src_addr, ptr noundef dereferenceable(16) %src_addr1.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %1 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.out_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup.i.out_crit_edge:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.else.i
  %entry_tree.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %node.018.i, i32 0, i32 2
  %2 = ptrtoint ptr %entry_tree.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.016.i12 = load ptr, ptr %entry_tree.i, align 4
  %tobool.not17.i13 = icmp eq ptr %node.016.i12, null
  br i1 %tobool.not17.i13, label %if.end.out_crit_edge, label %if.end.while.body.i17_crit_edge

if.end.while.body.i17_crit_edge:                  ; preds = %if.end
  br label %while.body.i17

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body.i17:                                   ; preds = %cleanup.i27.while.body.i17_crit_edge, %if.end.while.body.i17_crit_edge
  %node.018.i14 = phi ptr [ %node.0.i25, %cleanup.i27.while.body.i17_crit_edge ], [ %node.016.i12, %if.end.while.body.i17_crit_edge ]
  %h_addr1.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %node.018.i14, i32 0, i32 2
  %call.i15 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %h_addr, ptr noundef dereferenceable(16) %h_addr1.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp.i16 = icmp slt i32 %call.i15, 0
  br i1 %cmp.i16, label %if.then.i19, label %if.else.i21

if.then.i19:                                      ; preds = %while.body.i17
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i18 = getelementptr inbounds %struct.rb_node, ptr %node.018.i14, i32 0, i32 2
  br label %cleanup.i27

if.else.i21:                                      ; preds = %while.body.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp2.not.i20 = icmp eq i32 %call.i15, 0
  br i1 %cmp2.not.i20, label %if.end4, label %if.then3.i23

if.then3.i23:                                     ; preds = %if.else.i21
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i22 = getelementptr inbounds %struct.rb_node, ptr %node.018.i14, i32 0, i32 1
  br label %cleanup.i27

cleanup.i27:                                      ; preds = %if.then3.i23, %if.then.i19
  %node.1.in.i24 = phi ptr [ %rb_left.i18, %if.then.i19 ], [ %rb_right.i22, %if.then3.i23 ]
  %3 = ptrtoint ptr %node.1.in.i24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.0.i25 = load ptr, ptr %node.1.in.i24, align 4
  %tobool.not.i26 = icmp eq ptr %node.0.i25, null
  br i1 %tobool.not.i26, label %cleanup.i27.out_crit_edge, label %cleanup.i27.while.body.i17_crit_edge

cleanup.i27.while.body.i17_crit_edge:             ; preds = %cleanup.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i17

cleanup.i27.out_crit_edge:                        ; preds = %cleanup.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end4:                                          ; preds = %if.else.i21
  tail call fastcc void @__eht_del_set_entry(ptr noundef nonnull %node.018.i14)
  %4 = ptrtoint ptr %entry_tree.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %entry_tree.i, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then5, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @br_multicast_del_eht_set(ptr noundef nonnull %node.018.i)
  br label %out

out:                                              ; preds = %if.then5, %if.end4.out_crit_edge, %cleanup.i27.out_crit_edge, %if.end.out_crit_edge, %cleanup.i.out_crit_edge, %entry.out_crit_edge
  %set_deleted.0.off0 = phi i1 [ true, %if.then5 ], [ false, %if.end4.out_crit_edge ], [ false, %entry.out_crit_edge ], [ false, %if.end.out_crit_edge ], [ false, %cleanup.i27.out_crit_edge ], [ false, %cleanup.i.out_crit_edge ]
  ret i1 %set_deleted.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_multicast_find_group_src(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_del_group_src(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__eht_inc_exc(ptr nocapture noundef readonly %brmctx, ptr noundef %pg, ptr nocapture noundef readonly %h_addr, ptr nocapture noundef readonly %srcs, i32 noundef %nsrcs, i32 noundef %addr_size, i8 noundef zeroext %filter_mode, i1 noundef zeroext %to_report) unnamed_addr #0 align 64 {
entry:
  %eht_src_addr.i108 = alloca %union.net_bridge_eht_addr, align 4
  %eht_src_addr.i = alloca %union.net_bridge_eht_addr, align 4
  %eht_src_addr = alloca %union.net_bridge_eht_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_src_addr) #6
  %eht_host_tree.i.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 13
  %0 = ptrtoint ptr %eht_host_tree.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.016.i.i = load ptr, ptr %eht_host_tree.i.i, align 4
  %tobool.not17.i.i = icmp eq ptr %node.016.i.i, null
  br i1 %tobool.not17.i.i, label %br_multicast_eht_host_filter_mode.exit.thread, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %node.018.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.016.i.i, %entry.while.body.i.i_crit_edge ]
  %h_addr1.i.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i, i32 0, i32 1
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %h_addr, ptr noundef dereferenceable(16) %h_addr1.i.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp2.not.i.i, label %if.end.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %1 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.br_multicast_eht_host_filter_mode.exit_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

cleanup.i.i.br_multicast_eht_host_filter_mode.exit_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_eht_host_filter_mode.exit

if.end.i:                                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %filter_mode.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %filter_mode.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %filter_mode.i, align 4
  %conv.i = zext i8 %3 to i32
  br label %br_multicast_eht_host_filter_mode.exit

br_multicast_eht_host_filter_mode.exit:           ; preds = %if.end.i, %cleanup.i.i.br_multicast_eht_host_filter_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ 1, %cleanup.i.i.br_multicast_eht_host_filter_mode.exit_crit_edge ]
  %conv = zext i8 %filter_mode to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv)
  %cmp.not = icmp ne i32 %retval.0.i, %conv
  %spec.select = or i1 %cmp.not, %to_report
  %4 = call ptr @memset(ptr %eht_src_addr, i32 0, i32 16)
  br i1 %spec.select, label %br_multicast_eht_host_filter_mode.exit.while.body.i.i74_crit_edge, label %br_multicast_eht_host_filter_mode.exit.if.end44.critedge_crit_edge

br_multicast_eht_host_filter_mode.exit.if.end44.critedge_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.critedge

br_multicast_eht_host_filter_mode.exit.while.body.i.i74_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit
  br label %while.body.i.i74

br_multicast_eht_host_filter_mode.exit.thread:    ; preds = %entry
  %conv118 = zext i8 %filter_mode to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %filter_mode)
  %cmp.not119 = icmp ne i8 %filter_mode, 1
  %spec.select120 = or i1 %cmp.not119, %to_report
  %5 = call ptr @memset(ptr %eht_src_addr, i32 0, i32 16)
  br i1 %spec.select120, label %br_multicast_eht_host_filter_mode.exit.thread.br_multicast_del_eht_host.exit_crit_edge, label %br_multicast_eht_host_filter_mode.exit.thread.if.end44.critedge_crit_edge

br_multicast_eht_host_filter_mode.exit.thread.if.end44.critedge_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.critedge

br_multicast_eht_host_filter_mode.exit.thread.br_multicast_del_eht_host.exit_crit_edge: ; preds = %br_multicast_eht_host_filter_mode.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_del_eht_host.exit

while.body.i.i74:                                 ; preds = %cleanup.i.i84.while.body.i.i74_crit_edge, %br_multicast_eht_host_filter_mode.exit.while.body.i.i74_crit_edge
  %node.018.i.i70 = phi ptr [ %node.0.i.i82, %cleanup.i.i84.while.body.i.i74_crit_edge ], [ %node.016.i.i, %br_multicast_eht_host_filter_mode.exit.while.body.i.i74_crit_edge ]
  %h_addr1.i.i71 = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i70, i32 0, i32 1
  %call.i.i72 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %h_addr, ptr noundef dereferenceable(16) %h_addr1.i.i71, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp.i.i73 = icmp slt i32 %call.i.i72, 0
  br i1 %cmp.i.i73, label %if.then.i.i76, label %if.else.i.i78

if.then.i.i76:                                    ; preds = %while.body.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i75 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i70, i32 0, i32 2
  br label %cleanup.i.i84

if.else.i.i78:                                    ; preds = %while.body.i.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %cmp2.not.i.i77 = icmp eq i32 %call.i.i72, 0
  br i1 %cmp2.not.i.i77, label %if.end.i85, label %if.then3.i.i80

if.then3.i.i80:                                   ; preds = %if.else.i.i78
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i79 = getelementptr inbounds %struct.rb_node, ptr %node.018.i.i70, i32 0, i32 1
  br label %cleanup.i.i84

cleanup.i.i84:                                    ; preds = %if.then3.i.i80, %if.then.i.i76
  %node.1.in.i.i81 = phi ptr [ %rb_left.i.i75, %if.then.i.i76 ], [ %rb_right.i.i79, %if.then3.i.i80 ]
  %6 = ptrtoint ptr %node.1.in.i.i81 to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.0.i.i82 = load ptr, ptr %node.1.in.i.i81, align 4
  %tobool.not.i.i83 = icmp eq ptr %node.0.i.i82, null
  br i1 %tobool.not.i.i83, label %cleanup.i.i84.br_multicast_del_eht_host.exit_crit_edge, label %cleanup.i.i84.while.body.i.i74_crit_edge

cleanup.i.i84.while.body.i.i74_crit_edge:         ; preds = %cleanup.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i74

cleanup.i.i84.br_multicast_del_eht_host.exit_crit_edge: ; preds = %cleanup.i.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_del_eht_host.exit

if.end.i85:                                       ; preds = %if.else.i.i78
  %set_entries.i = getelementptr inbounds %struct.net_bridge_group_eht_host, ptr %node.018.i.i70, i32 0, i32 2
  %7 = ptrtoint ptr %set_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_entries.i, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  %add.ptr.i = getelementptr i8, ptr %8, i32 -12
  %tobool4.not3741.i = icmp eq ptr %add.ptr.i, null
  %tobool4.not37.i = or i1 %tobool2.not.i, %tobool4.not3741.i
  br i1 %tobool4.not37.i, label %if.end.i85.br_multicast_del_eht_host.exit_crit_edge, label %if.end.i85.land.rhs.i_crit_edge

if.end.i85.land.rhs.i_crit_edge:                  ; preds = %if.end.i85
  br label %land.rhs.i

if.end.i85.br_multicast_del_eht_host.exit_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_del_eht_host.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %if.end.i85.land.rhs.i_crit_edge
  %set_h.038.i = phi ptr [ %add.ptr17.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %if.end.i85.land.rhs.i_crit_edge ]
  %host_list.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h.038.i, i32 0, i32 1
  %9 = ptrtoint ptr %host_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_list.i, align 4
  %eht_set.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h.038.i, i32 0, i32 5
  %11 = ptrtoint ptr %eht_set.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eht_set.i, align 4
  %pg7.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %pg7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pg7.i, align 4
  %src_addr.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %12, i32 0, i32 1
  %h_addr9.i = getelementptr inbounds %struct.net_bridge_group_eht_set_entry, ptr %set_h.038.i, i32 0, i32 2
  %call10.i = tail call fastcc zeroext i1 @br_multicast_del_eht_set_entry(ptr noundef %14, ptr noundef %src_addr.i, ptr noundef %h_addr9.i) #6
  %tobool13.not.i = icmp eq ptr %10, null
  %add.ptr17.i = getelementptr i8, ptr %10, i32 -12
  %tobool4.not44.i = icmp eq ptr %add.ptr17.i, null
  %tobool4.not.i = or i1 %tobool13.not.i, %tobool4.not44.i
  br i1 %tobool4.not.i, label %land.rhs.i.br_multicast_del_eht_host.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

land.rhs.i.br_multicast_del_eht_host.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_del_eht_host.exit

br_multicast_del_eht_host.exit:                   ; preds = %land.rhs.i.br_multicast_del_eht_host.exit_crit_edge, %if.end.i85.br_multicast_del_eht_host.exit_crit_edge, %cleanup.i.i84.br_multicast_del_eht_host.exit_crit_edge, %br_multicast_eht_host_filter_mode.exit.thread.br_multicast_del_eht_host.exit_crit_edge
  %conv121124 = phi i32 [ %conv, %if.end.i85.br_multicast_del_eht_host.exit_crit_edge ], [ %conv118, %br_multicast_eht_host_filter_mode.exit.thread.br_multicast_del_eht_host.exit_crit_edge ], [ %conv, %land.rhs.i.br_multicast_del_eht_host.exit_crit_edge ], [ %conv, %cleanup.i.i84.br_multicast_del_eht_host.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_src_addr.i) #6
  %15 = call ptr @memset(ptr %eht_src_addr.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsrcs)
  %cmp4.not.i = icmp eq i32 %nsrcs, 0
  br i1 %cmp4.not.i, label %br_multicast_del_eht_host.exit.__eht_create_set_entries.exit_crit_edge, label %br_multicast_del_eht_host.exit.for.body.i_crit_edge

br_multicast_del_eht_host.exit.for.body.i_crit_edge: ; preds = %br_multicast_del_eht_host.exit
  br label %for.body.i

br_multicast_del_eht_host.exit.__eht_create_set_entries.exit_crit_edge: ; preds = %br_multicast_del_eht_host.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %br_multicast_del_eht_host.exit.for.body.i_crit_edge
  %src_idx.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %br_multicast_del_eht_host.exit.for.body.i_crit_edge ]
  %mul.i = mul i32 %src_idx.05.i, %addr_size
  %add.ptr.i86 = getelementptr i8, ptr %srcs, i32 %mul.i
  %16 = call ptr @memcpy(ptr %eht_src_addr.i, ptr %add.ptr.i86, i32 %addr_size)
  call fastcc void @br_multicast_create_eht_set_entry(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_src_addr.i, ptr noundef %h_addr, i32 noundef %conv121124, i1 noundef zeroext false) #6
  %inc.i = add nuw i32 %src_idx.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nsrcs
  br i1 %exitcond.not.i, label %for.body.i.__eht_create_set_entries.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.__eht_create_set_entries.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit

__eht_create_set_entries.exit:                    ; preds = %for.body.i.__eht_create_set_entries.exit_crit_edge, %br_multicast_del_eht_host.exit.__eht_create_set_entries.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_src_addr.i) #6
  %src_list = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 7
  %17 = ptrtoint ptr %src_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_list, align 4
  %tobool12.not134 = icmp eq ptr %18, null
  br i1 %tobool12.not134, label %__eht_create_set_entries.exit.for.end_crit_edge, label %land.rhs.lr.ph

__eht_create_set_entries.exit.for.end_crit_edge:  ; preds = %__eht_create_set_entries.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %__eht_create_set_entries.exit
  %eht_set_tree.i = getelementptr inbounds %struct.net_bridge_port_group, ptr %pg, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %filter_mode)
  %cmp22.not = icmp ne i8 %filter_mode, 1
  %to_report.not = xor i1 %to_report, true
  %multicast_last_member_interval.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 8
  %multicast_last_member_count.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %brmctx, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %changed.0137 = phi i8 [ 0, %land.rhs.lr.ph ], [ %changed.1, %for.inc.land.rhs_crit_edge ]
  %src_ent.0135 = phi ptr [ %18, %land.rhs.lr.ph ], [ %20, %for.inc.land.rhs_crit_edge ]
  %19 = ptrtoint ptr %src_ent.0135 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src_ent.0135, align 4
  %addr = getelementptr inbounds %struct.net_bridge_group_src, ptr %src_ent.0135, i32 0, i32 1
  %proto.i = getelementptr inbounds %struct.net_bridge_group_src, ptr %src_ent.0135, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %proto.i, align 4
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %22, label %land.rhs.br_multicast_ip_src_to_eht_addr.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

land.rhs.br_multicast_ip_src_to_eht_addr.exit_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %br_multicast_ip_src_to_eht_addr.exit

sw.bb.i:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 4
  %26 = ptrtoint ptr %eht_src_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %eht_src_addr, align 4
  br label %br_multicast_ip_src_to_eht_addr.exit

sw.bb2.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call ptr @memcpy(ptr %eht_src_addr, ptr %addr, i32 16)
  br label %br_multicast_ip_src_to_eht_addr.exit

br_multicast_ip_src_to_eht_addr.exit:             ; preds = %sw.bb2.i, %sw.bb.i, %land.rhs.br_multicast_ip_src_to_eht_addr.exit_crit_edge
  %28 = ptrtoint ptr %eht_set_tree.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %node.016.i = load ptr, ptr %eht_set_tree.i, align 4
  %tobool.not17.i = icmp eq ptr %node.016.i, null
  br i1 %tobool.not17.i, label %br_multicast_ip_src_to_eht_addr.exit.if.then17_crit_edge, label %br_multicast_ip_src_to_eht_addr.exit.while.body.i_crit_edge

br_multicast_ip_src_to_eht_addr.exit.while.body.i_crit_edge: ; preds = %br_multicast_ip_src_to_eht_addr.exit
  br label %while.body.i

br_multicast_ip_src_to_eht_addr.exit.if.then17_crit_edge: ; preds = %br_multicast_ip_src_to_eht_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %br_multicast_ip_src_to_eht_addr.exit.while.body.i_crit_edge
  %node.018.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.016.i, %br_multicast_ip_src_to_eht_addr.exit.while.body.i_crit_edge ]
  %src_addr1.i = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %node.018.i, i32 0, i32 1
  %call.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %eht_src_addr, ptr noundef dereferenceable(16) %src_addr1.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.end18, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.018.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %29 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.then17_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup.i.if.then17_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %cleanup.i.if.then17_crit_edge, %br_multicast_ip_src_to_eht_addr.exit.if.then17_crit_edge
  tail call void @br_multicast_del_group_src(ptr noundef nonnull %src_ent.0135, i1 noundef zeroext true) #6
  br label %for.inc

if.end18:                                         ; preds = %if.else.i
  %flags = getelementptr inbounds %struct.net_bridge_group_src, ptr %src_ent.0135, i32 0, i32 3
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags, align 4
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not = icmp eq i8 %32, 0
  %or.cond.not = or i1 %cmp22.not, %tobool20.not
  %brmerge = or i1 %or.cond.not, %to_report.not
  br i1 %brmerge, label %if.end18.for.inc_crit_edge, label %if.end18.while.body.i94_crit_edge

if.end18.while.body.i94_crit_edge:                ; preds = %if.end18
  br label %while.body.i94

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body.i94:                                   ; preds = %cleanup.i104.while.body.i94_crit_edge, %if.end18.while.body.i94_crit_edge
  %node.018.i90 = phi ptr [ %node.0.i102, %cleanup.i104.while.body.i94_crit_edge ], [ %node.016.i, %if.end18.while.body.i94_crit_edge ]
  %src_addr1.i91 = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %node.018.i90, i32 0, i32 1
  %call.i92 = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %eht_src_addr, ptr noundef dereferenceable(16) %src_addr1.i91, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  br i1 %cmp.i93, label %if.then.i96, label %if.else.i98

if.then.i96:                                      ; preds = %while.body.i94
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i95 = getelementptr inbounds %struct.rb_node, ptr %node.018.i90, i32 0, i32 2
  br label %cleanup.i104

if.else.i98:                                      ; preds = %while.body.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp2.not.i97 = icmp eq i32 %call.i92, 0
  br i1 %cmp2.not.i97, label %if.end31, label %if.then3.i100

if.then3.i100:                                    ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i99 = getelementptr inbounds %struct.rb_node, ptr %node.018.i90, i32 0, i32 1
  br label %cleanup.i104

cleanup.i104:                                     ; preds = %if.then3.i100, %if.then.i96
  %node.1.in.i101 = phi ptr [ %rb_left.i95, %if.then.i96 ], [ %rb_right.i99, %if.then3.i100 ]
  %33 = ptrtoint ptr %node.1.in.i101 to i32
  call void @__asan_load4_noabort(i32 %33)
  %node.0.i102 = load ptr, ptr %node.1.in.i101, align 4
  %tobool.not.i103 = icmp eq ptr %node.0.i102, null
  br i1 %tobool.not.i103, label %cleanup.i104.for.inc_crit_edge, label %cleanup.i104.while.body.i94_crit_edge

cleanup.i104.while.body.i94_crit_edge:            ; preds = %cleanup.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i94

cleanup.i104.for.inc_crit_edge:                   ; preds = %cleanup.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %if.else.i98
  call void @__sanitizer_cov_trace_pc() #8
  %timer = getelementptr inbounds %struct.net_bridge_group_eht_set, ptr %node.018.i90, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %multicast_last_member_interval.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %multicast_last_member_interval.i, align 4
  %37 = ptrtoint ptr %multicast_last_member_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %multicast_last_member_count.i, align 4
  %mul.i107 = mul i32 %38, %36
  %add = add i32 %mul.i107, %34
  %call33 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %cleanup.i104.for.inc_crit_edge, %if.end18.for.inc_crit_edge, %if.then17
  %changed.1 = phi i8 [ %changed.0137, %if.end31 ], [ %changed.0137, %if.end18.for.inc_crit_edge ], [ 1, %if.then17 ], [ %changed.0137, %cleanup.i104.for.inc_crit_edge ]
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %__eht_create_set_entries.exit.for.end_crit_edge
  %changed.0.lcssa = phi i8 [ 0, %__eht_create_set_entries.exit.for.end_crit_edge ], [ %changed.1, %for.inc.for.end_crit_edge ]
  %39 = and i8 %changed.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %extract.t = icmp ne i8 %39, 0
  br label %if.end44

if.end44.critedge:                                ; preds = %br_multicast_eht_host_filter_mode.exit.thread.if.end44.critedge_crit_edge, %br_multicast_eht_host_filter_mode.exit.if.end44.critedge_crit_edge
  %conv122 = phi i32 [ 1, %br_multicast_eht_host_filter_mode.exit.thread.if.end44.critedge_crit_edge ], [ %retval.0.i, %br_multicast_eht_host_filter_mode.exit.if.end44.critedge_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %eht_src_addr.i108) #6
  %40 = call ptr @memset(ptr %eht_src_addr.i108, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsrcs)
  %cmp4.not.i109 = icmp eq i32 %nsrcs, 0
  br i1 %cmp4.not.i109, label %if.end44.critedge.__eht_create_set_entries.exit116_crit_edge, label %if.end44.critedge.for.body.i115_crit_edge

if.end44.critedge.for.body.i115_crit_edge:        ; preds = %if.end44.critedge
  br label %for.body.i115

if.end44.critedge.__eht_create_set_entries.exit116_crit_edge: ; preds = %if.end44.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit116

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %if.end44.critedge.for.body.i115_crit_edge
  %src_idx.05.i110 = phi i32 [ %inc.i113, %for.body.i115.for.body.i115_crit_edge ], [ 0, %if.end44.critedge.for.body.i115_crit_edge ]
  %mul.i111 = mul i32 %src_idx.05.i110, %addr_size
  %add.ptr.i112 = getelementptr i8, ptr %srcs, i32 %mul.i111
  %41 = call ptr @memcpy(ptr %eht_src_addr.i108, ptr %add.ptr.i112, i32 %addr_size)
  call fastcc void @br_multicast_create_eht_set_entry(ptr noundef %brmctx, ptr noundef %pg, ptr noundef nonnull %eht_src_addr.i108, ptr noundef %h_addr, i32 noundef %conv122, i1 noundef zeroext false) #6
  %inc.i113 = add nuw i32 %src_idx.05.i110, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, %nsrcs
  br i1 %exitcond.not.i114, label %for.body.i115.__eht_create_set_entries.exit116_crit_edge, label %for.body.i115.for.body.i115_crit_edge

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i115

for.body.i115.__eht_create_set_entries.exit116_crit_edge: ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %__eht_create_set_entries.exit116

__eht_create_set_entries.exit116:                 ; preds = %for.body.i115.__eht_create_set_entries.exit116_crit_edge, %if.end44.critedge.__eht_create_set_entries.exit116_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_src_addr.i108) #6
  br label %if.end44

if.end44:                                         ; preds = %__eht_create_set_entries.exit116, %for.end
  %changed.2.off0 = phi i1 [ %extract.t, %for.end ], [ false, %__eht_create_set_entries.exit116 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %eht_src_addr) #6
  ret i1 %changed.2.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br_multicast_eht.c", i32 129, i32 2}
!2 = !{ptr @__eht_lookup_create_set.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/bridge/br_multicast_eht.c", i32 369, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__eht_lookup_create_set_entry.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/bridge/br_multicast_eht.c", i32 323, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
