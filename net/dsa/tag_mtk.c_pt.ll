; ModuleID = '/llk/IR_all_yes/net/dsa/tag_mtk.c_pt.bc'
source_filename = "../net/dsa/tag_mtk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dsa_tag_driver = type { ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.144, %union.anon.145, [48 x i8], %union.anon.146, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.148, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.144 = type { ptr }
%union.anon.145 = type { i64 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, ptr }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.150, i32, i32, i32, i16, i16, %union.anon.152, i32, %union.anon.153, %union.anon.154, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.150 = type { i32 }
%union.anon.152 = type { i32 }
%union.anon.153 = type { i32 }
%union.anon.154 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dsa_port = type { %union.anon.129, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.129 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.118 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.118 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__UNIQUE_ID_file499 = internal constant [29 x i8] c"tag_mtk.file=net/dsa/tag_mtk\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [20 x i8] c"tag_mtk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias501 = internal constant [24 x i8] c"tag_mtk.alias=dsa_tag-9\00", section ".modinfo", align 1
@__initcall__kmod_tag_mtk__502_104_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@dsa_tag_driver_array = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @dsa_tag_driver_mtk_netdev_ops], [28 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@dsa_tag_driver_mtk_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @mtk_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@mtk_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @mtk_tag_xmit, ptr @mtk_tag_rcv, ptr null, ptr null, ptr null, i32 4, i32 0, ptr @.str, i32 9, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtk\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"dsa_tag_driver_array\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [30 x i8] c"dsa_tag_driver_mtk_netdev_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 104, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"mtk_netdev_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 93, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [21 x i8] c"../net/dsa/tag_mtk.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 94, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias501, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_license500, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_mtk__502_104_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @dsa_tag_driver_array, ptr @dsa_tag_driver_mtk_netdev_ops, ptr @mtk_netdev_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_array to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_mtk_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_tag_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 1, ptr noundef null) #3
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsa_tag_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_tag_xmit(ptr noundef returned %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.then [
    i16 -32512, label %entry.sw.epilog.thread_crit_edge
    i16 -30552, label %sw.bb1
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.thread

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb1, %entry.sw.epilog.thread_crit_edge
  %xmit_tpid.0.ph = phi i8 [ 1, %entry.sw.epilog.thread_crit_edge ], [ 2, %sw.bb1 ]
  %data.i1822 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i1822 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i1822, align 4
  %add.ptr.i1923 = getelementptr i8, ptr %6, i32 12
  %7 = ptrtoint ptr %add.ptr.i1923 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %xmit_tpid.0.ph, ptr %add.ptr.i1923, align 1
  %index24 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index24, align 4
  %shl25 = shl nuw i32 1, %9
  %10 = trunc i32 %shl25 to i8
  %conv426 = and i8 %10, 63
  %arrayidx527 = getelementptr i8, ptr %6, i32 13
  %11 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv426, ptr %arrayidx527, align 1
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %14 = call ptr @memmove(ptr %13, ptr %add.ptr.i, i32 12)
  %15 = load ptr, ptr %data.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %add.ptr.i19, align 1
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %18
  %19 = trunc i32 %shl to i8
  %conv4 = and i8 %19, 63
  %arrayidx5 = getelementptr i8, ptr %15, i32 13
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv4, ptr %arrayidx5, align 1
  %arrayidx8 = getelementptr i8, ptr %15, i32 14
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %15, i32 15
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.thread
  ret ptr %skb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_tag_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !23

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp3.i = icmp ult i32 %1, 4
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !24

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #3
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !24

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -2
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %call4 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 4) #3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 -14
  %add.ptr3.i = getelementptr i8, ptr %9, i32 -18
  %10 = call ptr @memmove(ptr %add.ptr.i19, ptr %add.ptr3.i, i32 12)
  %11 = and i16 %7, 7
  %and = zext i16 %11 to i32
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %12 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn2.i = load ptr, ptr %ports.i, align 4
  %cmp.not3.i = icmp eq ptr %.pn2.i, %ports.i
  br i1 %cmp.not3.i, label %if.end.dsa_master_find_slave.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %if.end.for.body.i_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn4.i, i32 -432
  %17 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3.i20 = icmp eq i32 %20, 0
  br i1 %cmp3.i20, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index4.i = getelementptr i8, ptr %.pn4.i, i32 -428
  %21 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %and)
  %cmp5.i = icmp eq i32 %22, %and
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i = getelementptr i8, ptr %.pn4.i, i32 -424
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp7.i = icmp eq i32 %24, 3
  br i1 %cmp7.i, label %dsa_master_find_slave.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %25 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread

dsa_master_find_slave.exit.thread:                ; preds = %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, %if.end.dsa_master_find_slave.exit.thread_crit_edge
  %26 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %26, align 8
  br label %cleanup

dsa_master_find_slave.exit:                       ; preds = %land.lhs.true6.i
  %dp.0.le.i = getelementptr i8, ptr %.pn4.i, i32 -448
  %28 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dp.0.le.i, align 4
  %30 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %30, align 8
  %tobool6.not = icmp eq ptr %29, null
  br i1 %tobool6.not, label %dsa_master_find_slave.exit.cleanup_crit_edge, label %if.end8

dsa_master_find_slave.exit.cleanup_crit_edge:     ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #5
  %dp.i.i = getelementptr i8, ptr %29, i32 2312
  %32 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dp.i.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %36 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %dsa_master_find_slave.exit.cleanup_crit_edge, %dsa_master_find_slave.exit.thread, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %if.end8 ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.thread ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__UNIQUE_ID_file499, !1, !"__UNIQUE_ID_file499", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_mtk.c", i32 101, i32 1}
!2 = !{ptr @__UNIQUE_ID_license500, !1, !"__UNIQUE_ID_license500", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias501, !4, !"__UNIQUE_ID_alias501", i1 false, i1 false}
!4 = !{!"../net/dsa/tag_mtk.c", i32 102, i32 1}
!5 = !{ptr @__initcall__kmod_tag_mtk__502_104_dsa_tag_driver_module_init6, !6, !"__initcall__kmod_tag_mtk__502_104_dsa_tag_driver_module_init6", i1 false, i1 false}
!6 = !{!"../net/dsa/tag_mtk.c", i32 104, i32 1}
!7 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !6, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!8 = !{ptr @dsa_tag_driver_array, !6, !"dsa_tag_driver_array", i1 false, i1 false}
!9 = !{ptr @dsa_tag_driver_mtk_netdev_ops, !6, !"dsa_tag_driver_mtk_netdev_ops", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dsa/tag_mtk.c", i32 94, i32 11}
!12 = !{ptr @mtk_netdev_ops, !13, !"mtk_netdev_ops", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_mtk.c", i32 93, i32 36}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{!"branch_weights", i32 1, i32 2000}
