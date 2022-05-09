; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sparx5 = type { ptr, ptr, i32, i32, [332 x ptr], i32, %struct.mutex, [65 x ptr], i32, i32, i32, ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, [6 x i8], ptr, [3 x i32], [3 x i32], [3 x i32], [4096 x [3 x i32]], %struct.list_head, %struct.mutex, %struct.delayed_work, ptr, i8, i32, i32, %struct.sparx5_rx, %struct.sparx5_tx }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sparx5_rx = type { ptr, ptr, [64 x [15 x ptr]], i32, i32, i32, %struct.napi_struct, i32, ptr, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sparx5_tx = type { ptr, ptr, %struct.list_head, i32, i32, i64, i64 }
%struct.sparx5_port = type { ptr, ptr, ptr, ptr, %struct.sparx5_port_config, %struct.phylink_config, ptr, %struct.phylink_pcs, i16, i16, i16, i8, i8, i8, i8, i32, i32, i32, [9 x i32], i8, %struct.hrtimer }
%struct.sparx5_port_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }

@sparx5_port_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sparx5_port_open, ptr @sparx5_port_stop, ptr @sparx5_port_xmit_impl, ptr null, ptr null, ptr null, ptr @sparx5_set_rx_mode, ptr @sparx5_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sparx5_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sparx5_get_port_parent_id, ptr @sparx5_port_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sparx5_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@sparx5_register_netdevs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"port: %02u: netdev registration failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sparx5_register_netdevs\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sparx5_register_netdevs._entry_ptr = internal global ptr @sparx5_register_netdevs._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failed\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.sparx5_port_open = private unnamed_addr constant [17 x i8] c"sparx5_port_open\00", align 1
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p%d\00", [28 x i8] zeroinitializer }, align 32
@__func__.sparx5_port_stop = private unnamed_addr constant [17 x i8] c"sparx5_port_stop\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"sparx5_port_netdev_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 182, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 232, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 85, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 99, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [57 x i8] c"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 142, i32 27 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @sparx5_register_netdevs._entry, ptr @sparx5_register_netdevs._entry_ptr, ptr @sparx5_port_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_port_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sparx5_register_netdevs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sparx5_netdevice_check(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @sparx5_port_netdev_ops
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %2 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sparx5_create_netdev(ptr noundef %sparx5, i32 noundef %portno) local_unnamed_addr #1 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %1, i32 noundef 208, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %add.ptr.i, align 8
  %sparx56 = getelementptr i8, ptr %call, i32 2308
  %6 = ptrtoint ptr %sparx56 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sparx5, ptr %sparx56, align 4
  %conv = trunc i32 %portno to i16
  %portno7 = getelementptr i8, ptr %call, i32 2396
  %7 = ptrtoint ptr %portno7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %portno7, align 4
  %arrayidx.i.i = getelementptr i8, ptr %call, i32 2436
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %or.i.i = or i8 %9, 1
  store i8 %or.i.i, ptr %arrayidx.i.i, align 1
  %arrayidx.i70.i = getelementptr i8, ptr %call, i32 2439
  %10 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i70.i, align 1
  %or.i71.i = or i8 %11, 1
  store i8 %or.i71.i, ptr %arrayidx.i70.i, align 1
  %conv.mask = and i32 %portno, 65535
  %conv.i = zext i32 %conv.mask to i64
  %and.i.i = shl nuw nsw i64 %conv.i, 5
  %12 = and i64 %conv.i, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i, label %if.end.if.end.i.i_crit_edge, label %if.then.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i64 %and.i.i to i8
  %arrayidx.i72.i = getelementptr i8, ptr %call, i32 2452
  %13 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i72.i, align 1
  %or.i73.i = or i8 %14, %conv.i.i
  store i8 %or.i73.i, ptr %arrayidx.i72.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.if.end.i.i_crit_edge
  %and15.i.i = and i64 %and.i.i, 7936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i.i)
  %tobool16.not.i.i = icmp eq i64 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end.i.i.sparx5_set_port_ifh.exit_crit_edge, label %if.then17.i.i

if.end.i.i.sparx5_set_port_ifh.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sparx5_set_port_ifh.exit

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr19.i.i = lshr exact i64 %and15.i.i, 8
  %conv20.i.i = trunc i64 %shr19.i.i to i8
  %arrayidx23.i.i = getelementptr i8, ptr %call, i32 2451
  %15 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23.i.i, align 1
  %or25.i.i = or i8 %16, %conv20.i.i
  store i8 %or25.i.i, ptr %arrayidx23.i.i, align 1
  br label %sparx5_set_port_ifh.exit

sparx5_set_port_ifh.exit:                         ; preds = %if.then17.i.i, %if.end.i.i.sparx5_set_port_ifh.exit_crit_edge
  %arrayidx23.i75.i = getelementptr i8, ptr %call, i32 2450
  %17 = ptrtoint ptr %arrayidx23.i75.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx23.i75.i, align 1
  %or.i83.i = or i8 %18, 70
  store i8 %or.i83.i, ptr %arrayidx23.i75.i, align 1
  %arrayidx23.i86.i = getelementptr i8, ptr %call, i32 2449
  %19 = ptrtoint ptr %arrayidx23.i86.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx23.i86.i, align 1
  %or25.i87.i = or i8 %20, 16
  store i8 %or25.i87.i, ptr %arrayidx23.i86.i, align 1
  %arrayidx.i89.i = getelementptr i8, ptr %call, i32 2448
  %21 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i89.i, align 1
  %or.i90.i = or i8 %22, -8
  store i8 %or.i90.i, ptr %arrayidx.i89.i, align 1
  %arrayidx.i93.i = getelementptr i8, ptr %call, i32 2447
  %23 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i93.i, align 1
  %or.i94.i = or i8 %24, 8
  store i8 %or.i94.i, ptr %arrayidx.i93.i, align 1
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %25 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sparx5_port_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %26 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sparx5_ethtool_ops, ptr %ethtool_ops, align 16
  %base_mac = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 19
  %add = add i32 %portno, 1
  %27 = ptrtoint ptr %base_mac to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %base_mac, align 1
  %conv.i.i26 = zext i8 %28 to i64
  %arrayidx.1.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %30 to i64
  %31 = shl nuw nsw i64 %conv.i.i26, 16
  %32 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %32, %31
  %arrayidx.2.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 19, i32 2
  %33 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %34 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 19, i32 3
  %35 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %36 to i64
  %arrayidx.4.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 19, i32 4
  %37 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %38 to i64
  %39 = shl nuw nsw i64 %or.2.i.i, 24
  %40 = shl nuw nsw i64 %conv.3.i.i, 16
  %41 = shl nuw nsw i64 %conv.4.i.i, 8
  %42 = or i64 %41, %40
  %shl.5.i.i = or i64 %42, %39
  %arrayidx.5.i.i = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 19, i32 5
  %43 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %44 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #8
  %45 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %46 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %47 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %48 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %49 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %conv.i27 = zext i32 %add to i64
  %add.i = add i64 %or.5.i.i, %conv.i27
  %conv.i3.i = trunc i64 %add.i to i8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i3.i, ptr %49, align 1
  %shr.i.i = lshr i64 %add.i, 8
  %conv.1.i4.i = trunc i64 %shr.i.i to i8
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.1.i4.i, ptr %48, align 1
  %shr.1.i.i = lshr i64 %add.i, 16
  %conv.2.i6.i = trunc i64 %shr.1.i.i to i8
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.2.i6.i, ptr %47, align 1
  %shr.2.i.i = lshr i64 %add.i, 24
  %conv.3.i8.i = trunc i64 %shr.2.i.i to i8
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.3.i8.i, ptr %46, align 1
  %shr.3.i.i = lshr i64 %add.i, 32
  %conv.4.i10.i = trunc i64 %shr.3.i.i to i8
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.4.i10.i, ptr %45, align 1
  %shr.4.i.i = lshr i64 %add.i, 40
  %conv.5.i12.i = trunc i64 %shr.4.i.i to i8
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.5.i12.i, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %sparx5_set_port_ifh.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %sparx5_set_port_ifh.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sparx5_register_netdevs(ptr nocapture noundef readonly %sparx5) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %portno.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %portno.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @register_netdev(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sparx5, ptr %sparx5, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %portno.019) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @sparx5_port_inj_timer_setup(ptr noundef %7) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %portno.019, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_port_inj_timer_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_destroy_netdevs(ptr nocapture noundef readonly %sparx5) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %portno.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %portno.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %phylink = getelementptr inbounds %struct.sparx5_port, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtnl_lock() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call = tail call i32 @sparx5_port_stop(ptr noundef %5)
  %6 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phylink, align 8
  tail call void @phylink_disconnect_phy(ptr noundef %7) #8
  tail call void @rtnl_unlock() #8
  %8 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phylink, align 8
  tail call void @phylink_destroy(ptr noundef %9) #8
  %10 = ptrtoint ptr %phylink to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %phylink, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %portno.012, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_port_stop(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @sparx5_port_enable(ptr noundef %add.ptr.i, i1 noundef zeroext false) #8
  %phylink = getelementptr i8, ptr %ndev, i32 2384
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 8
  tail call void @phylink_stop(ptr noundef %1) #8
  %2 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phylink, align 8
  tail call void @phylink_disconnect_phy(ptr noundef %3) #8
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %power_down = getelementptr i8, ptr %ndev, i32 2341
  %6 = ptrtoint ptr %power_down to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %power_down, align 1
  %serdes_reset = getelementptr i8, ptr %ndev, i32 2343
  %7 = ptrtoint ptr %serdes_reset to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %serdes_reset, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conf = getelementptr i8, ptr %ndev, i32 2320
  %sparx5 = getelementptr i8, ptr %ndev, i32 2308
  %9 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sparx5, align 4
  %call6 = tail call i32 @sparx5_serdes_set(ptr noundef %10, ptr noundef %add.ptr.i, ptr noundef %conf) #8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %serdes = getelementptr i8, ptr %ndev, i32 2316
  %11 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %serdes, align 4
  %call7 = tail call i32 @phy_power_off(ptr noundef %12) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %err.0 = phi i32 [ %call6, %if.then4 ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool8.not = icmp eq i32 %err.0, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sparx5_port_stop) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_disconnect_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sparx5_unregister_netdevs(ptr nocapture noundef readonly %sparx5) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %portno.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sparx5, ptr %sparx5, i32 0, i32 7, i32 %portno.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @unregister_netdev(ptr noundef %3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %portno.07, 1
  %exitcond.not = icmp eq i32 %inc, 65
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_port_open(ptr noundef %ndev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @sparx5_port_enable(ptr noundef %add.ptr.i, i1 noundef zeroext true) #8
  %phylink = getelementptr i8, ptr %ndev, i32 2384
  %0 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phylink, align 8
  %of_node = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call i32 @phylink_of_phy_connect(ptr noundef %1, ptr noundef %3, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %phylink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phylink, align 8
  tail call void @phylink_start(ptr noundef %5) #8
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %power_down = getelementptr i8, ptr %ndev, i32 2341
  %8 = ptrtoint ptr %power_down to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %power_down, align 1
  %serdes_reset = getelementptr i8, ptr %ndev, i32 2343
  %9 = ptrtoint ptr %serdes_reset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %serdes_reset, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conf = getelementptr i8, ptr %ndev, i32 2320
  %sparx5 = getelementptr i8, ptr %ndev, i32 2308
  %11 = ptrtoint ptr %sparx5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sparx5, align 4
  %call9 = tail call i32 @sparx5_serdes_set(ptr noundef %12, ptr noundef %add.ptr.i, ptr noundef %conf) #8
  br label %if.end11

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %serdes = getelementptr i8, ptr %ndev, i32 2316
  %13 = ptrtoint ptr %serdes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %serdes, align 4
  %call10 = tail call i32 @phy_power_on(ptr noundef %14) #8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %err.0 = phi i32 [ %call9, %if.then7 ], [ %call10, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool12.not = icmp eq i32 %err.0, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sparx5_port_open) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %err.0, %if.then13 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_port_xmit_impl(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sparx5_set_rx_mode(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %portno = getelementptr i8, ptr %dev, i32 2396
  %2 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %portno, align 4
  %conv = zext i16 %3 to i32
  %bridge_mask = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 21
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %bridge_mask, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mc.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %call.i = tail call i32 @__hw_addr_sync_dev(ptr noundef %mc.i, ptr noundef %dev, ptr noundef nonnull @sparx5_mc_sync, ptr noundef nonnull @sparx5_mc_unsync) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_set_mac_address(ptr noundef %dev, ptr noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %pvid = getelementptr i8, ptr %dev, i32 2398
  %9 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pvid, align 2
  %call3 = tail call i32 @sparx5_mact_forget(ptr noundef %1, ptr noundef %8, i16 noundef zeroext %10) #8
  %11 = ptrtoint ptr %pvid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pvid, align 2
  %call7 = tail call i32 @sparx5_mact_learn(ptr noundef %1, i32 noundef 72, ptr noundef %sa_data, i16 noundef zeroext %12) #8
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_get_stats64(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sparx5_get_port_parent_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ppid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sparx51 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %sparx51 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sparx51, align 4
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %2 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %id_len, align 1
  %base_mac = getelementptr inbounds %struct.sparx5, ptr %1, i32 0, i32 19
  %3 = call ptr @memcpy(ptr %ppid, ptr %base_mac, i32 6)
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sparx5_port_get_phys_port_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buf, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %portno = getelementptr i8, ptr %dev, i32 2396
  %0 = ptrtoint ptr %portno to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %portno, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.7, i32 noundef %conv)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp ult i32 %call1, %len
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sparx5_port_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_of_phy_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_serdes_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mc_sync(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mc_unsync(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mact_forget(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sparx5_mact_learn(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c", i32 232, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sparx5_register_netdevs._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sparx5_register_netdevs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @sparx5_port_netdev_ops, !9, !"sparx5_port_netdev_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c", i32 182, i32 36}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c", i32 85, i32 20}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c", i32 99, i32 21}
!14 = !{ptr @__func__.sparx5_port_open, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c", i32 99, i32 36}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c", i32 142, i32 27}
!18 = !{ptr @__func__.sparx5_port_stop, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/microchip/sparx5/sparx5_netdev.c", i32 122, i32 36}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
