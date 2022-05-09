; ModuleID = '/llk/IR_all_yes/net/dsa/tag_dsa.c_pt.bc'
source_filename = "../net/dsa/tag_dsa.c"
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
%struct.dsa_bridge = type { ptr, i32, i8, %struct.refcount_struct }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
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

@__UNIQUE_ID_alias499 = internal constant [24 x i8] c"tag_dsa.alias=dsa_tag-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias500 = internal constant [24 x i8] c"tag_dsa.alias=dsa_tag-4\00", section ".modinfo", align 1
@__initcall__kmod_tag_dsa__501_393_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@dsa_tag_drivers = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dsa_tag_driver_dsa_netdev_ops, ptr @dsa_tag_driver_edsa_netdev_ops], [24 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file502 = internal constant [29 x i8] c"tag_dsa.file=net/dsa/tag_dsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license503 = internal constant [20 x i8] c"tag_dsa.license=GPL\00", section ".modinfo", align 1
@dsa_tag_driver_dsa_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @dsa_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_tag_driver_edsa_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @edsa_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @dsa_xmit, ptr @dsa_rcv, ptr null, ptr null, ptr null, i32 4, i32 0, ptr @.str, i32 3, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsa\00", [28 x i8] zeroinitializer }, align 32
@edsa_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @edsa_xmit, ptr @edsa_rcv, ptr null, ptr null, ptr null, i32 8, i32 0, ptr @.str.1, i32 4, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edsa\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"dsa_tag_drivers\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 384, i32 31 }
@___asan_gen_.5 = private unnamed_addr constant [30 x i8] c"dsa_tag_driver_dsa_netdev_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 338, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"dsa_tag_driver_edsa_netdev_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 380, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"dsa_netdev_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 330, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 331, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"edsa_netdev_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 372, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [21 x i8] c"../net/dsa/tag_dsa.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 373, i32 12 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_file502, ptr @__UNIQUE_ID_license503, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_dsa__501_393_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @dsa_tag_drivers, ptr @dsa_tag_driver_dsa_netdev_ops, ptr @dsa_tag_driver_edsa_netdev_ops, ptr @dsa_netdev_ops, ptr @.str, ptr @edsa_netdev_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_dsa_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_edsa_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edsa_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_tag_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @dsa_tag_drivers, i32 noundef 2, ptr noundef null) #4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsa_tag_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @dsa_tag_drivers, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dsa_xmit(ptr noundef returned %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dsa_xmit_ll(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext 0)
  ret ptr %skb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dsa_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp3.i = icmp ult i32 %1, 4
  br i1 %cmp3.i, label %if.end.i.return_crit_edge, label %pskb_may_pull.exit, !prof !33

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #4
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.return_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !33

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pskb_may_pull.exit.return_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call fastcc ptr @dsa_rcv_ll(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext 0)
  br label %return

return:                                           ; preds = %if.end, %pskb_may_pull.exit.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ null, %pskb_may_pull.exit.return_crit_edge ], [ null, %if.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dsa_xmit_ll(ptr noundef returned %skb, ptr nocapture noundef readonly %dev, i8 noundef zeroext %extra) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %offload_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark, align 2
  %3 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.dsa_port_bridge_num_get.exit_crit_edge, label %cond.true.i

if.then.dsa_port_bridge_num_get.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_port_bridge_num_get.exit

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %num.i = getelementptr inbounds %struct.dsa_bridge, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num.i, align 4
  br label %dsa_port_bridge_num_get.exit

dsa_port_bridge_num_get.exit:                     ; preds = %cond.true.i, %if.then.dsa_port_bridge_num_get.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %if.then.dsa_port_bridge_num_get.exit_crit_edge ]
  %ds = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ds, align 4
  %dst2 = getelementptr inbounds %struct.dsa_switch, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dst2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst2, align 4
  %last_switch = getelementptr inbounds %struct.dsa_switch_tree, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %last_switch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_switch, align 4
  %add = add i32 %13, %cond.i
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ds3 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds3, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %index5 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %index5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index5, align 4
  %.tr = trunc i32 %19 to i8
  %phi.cast98 = shl i8 %.tr, 3
  br label %if.end

if.end:                                           ; preds = %if.else, %dsa_port_bridge_num_get.exit
  %cmd.0 = phi i32 [ 192, %dsa_port_bridge_num_get.exit ], [ 64, %if.else ]
  %tag_port.0 = phi i8 [ 0, %dsa_port_bridge_num_get.exit ], [ %phi.cast98, %if.else ]
  %tag_dev.0.in = phi i32 [ %add, %dsa_port_bridge_num_get.exit ], [ %17, %if.else ]
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %21)
  %cmp = icmp eq i16 %21, -32512
  br i1 %cmp, label %if.then9, label %if.else38

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extra)
  %tobool10.not = icmp eq i8 %extra, 0
  br i1 %tobool10.not, label %if.then9.if.end15_crit_edge, label %if.then11

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %conv12 = zext i8 %extra to i32
  %call13 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv12) #4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %conv12
  %24 = call ptr @memmove(ptr %23, ptr %add.ptr.i, i32 12)
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then9.if.end15_crit_edge
  %conv17.pre-phi = phi i32 [ %conv12, %if.then11 ], [ 0, %if.then9.if.end15_crit_edge ]
  %data.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i99, align 4
  %add.ptr.i100 = getelementptr i8, ptr %26, i32 12
  %add.ptr = getelementptr i8, ptr %add.ptr.i100, i32 %conv17.pre-phi
  %or = or i32 %tag_dev.0.in, %cmd.0
  %27 = trunc i32 %or to i8
  %conv20 = or i8 %27, 32
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv20, ptr %add.ptr, align 1
  %arrayidx24 = getelementptr i8, ptr %add.ptr, i32 1
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %tag_port.0, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %add.ptr, i32 2
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx25, align 1
  %32 = and i8 %31, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool27.not = icmp eq i8 %32, 0
  br i1 %tobool27.not, label %if.end15.if.end66_crit_edge, label %if.then28

if.end15.if.end66_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then28:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %33 = or i8 %tag_port.0, 1
  %34 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx24, align 1
  %35 = and i8 %31, -17
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx25, align 1
  br label %if.end66

if.else38:                                        ; preds = %if.end
  %bridge.i101 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %37 = ptrtoint ptr %bridge.i101 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bridge.i101, align 4
  %tobool.not.i102 = icmp eq ptr %38, null
  br i1 %tobool.not.i102, label %if.else38.dsa_port_bridge_dev_get.exit_crit_edge, label %cond.true.i103

if.else38.dsa_port_bridge_dev_get.exit_crit_edge: ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_port_bridge_dev_get.exit

cond.true.i103:                                   ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %phi.cmp = icmp eq ptr %40, null
  %phi.sel = select i1 %phi.cmp, i32 0, i32 4095
  br label %dsa_port_bridge_dev_get.exit

dsa_port_bridge_dev_get.exit:                     ; preds = %cond.true.i103, %if.else38.dsa_port_bridge_dev_get.exit_crit_edge
  %cond.i104 = phi i32 [ %phi.sel, %cond.true.i103 ], [ 0, %if.else38.dsa_port_bridge_dev_get.exit_crit_edge ]
  %conv42 = zext i8 %extra to i32
  %add43 = add nuw nsw i32 %conv42, 4
  %call44 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %add43) #4
  %data.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data.i105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i105, align 4
  %add.ptr.i106 = getelementptr i8, ptr %42, i32 %add43
  %43 = call ptr @memmove(ptr %42, ptr %add.ptr.i106, i32 12)
  %44 = load ptr, ptr %data.i105, align 4
  %add.ptr.i108 = getelementptr i8, ptr %44, i32 12
  %add.ptr49 = getelementptr i8, ptr %add.ptr.i108, i32 %conv42
  %or52 = or i32 %tag_dev.0.in, %cmd.0
  %conv53 = trunc i32 %or52 to i8
  %45 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv53, ptr %add.ptr49, align 1
  %arrayidx58 = getelementptr i8, ptr %add.ptr49, i32 1
  %46 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %tag_port.0, ptr %arrayidx58, align 1
  %47 = lshr i32 %cond.i104, 8
  %conv60 = trunc i32 %47 to i8
  %arrayidx61 = getelementptr i8, ptr %add.ptr49, i32 2
  %48 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv60, ptr %arrayidx61, align 1
  %conv64 = trunc i32 %cond.i104 to i8
  %arrayidx65 = getelementptr i8, ptr %add.ptr49, i32 3
  %49 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv64, ptr %arrayidx65, align 1
  br label %if.end66

if.end66:                                         ; preds = %dsa_port_bridge_dev_get.exit, %if.then28, %if.end15.if.end66_crit_edge
  ret ptr %skb
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dsa_rcv_ll(ptr noundef %skb, ptr nocapture noundef readonly %dev, i8 noundef zeroext %extra) unnamed_addr #2 align 64 {
entry:
  %new_header = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -2
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 1
  %4 = lshr i8 %3, 6
  %5 = zext i8 %4 to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 3, label %sw.epilog16
    i32 0, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %arrayidx5 = getelementptr i8, ptr %1, i32 -1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5, align 1
  %9 = and i8 %8, 6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 1
  %12 = lshr i8 %11, 4
  %13 = and i8 %12, 1
  %or117 = or i8 %13, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %or117)
  %14 = icmp ult i8 %or117, 6
  br i1 %14, label %switch.hole_check, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb4
  %switch.shifted = lshr i8 61, %or117
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast = trunc i8 %or117 to i6
  %switch.downshift = lshr i6 15, %switch.cast
  %16 = and i6 %switch.downshift, 1
  %17 = sext i6 %16 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %switch.masked = icmp ne i6 %16, 0
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5, align 1
  %20 = lshr i8 %19, 3
  %21 = zext i8 %20 to i32
  br label %if.else

sw.epilog16:                                      ; preds = %entry
  %arrayidx1 = getelementptr i8, ptr %1, i32 -1
  %22 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1, align 1
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  %25 = lshr i8 %23, 3
  %26 = zext i8 %25 to i32
  br i1 %tobool.not, label %sw.epilog16.if.else_crit_edge, label %if.end

sw.epilog16.if.else_crit_edge:                    ; preds = %sw.epilog16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.else:                                          ; preds = %sw.epilog16.if.else_crit_edge, %switch.lookup
  %27 = phi i32 [ %21, %switch.lookup ], [ %26, %sw.epilog16.if.else_crit_edge ]
  %arrayidx20132 = phi ptr [ %arrayidx5, %switch.lookup ], [ %arrayidx1, %sw.epilog16.if.else_crit_edge ]
  %trap.0.off0130 = phi i1 [ %switch.masked, %switch.lookup ], [ false, %sw.epilog16.if.else_crit_edge ]
  %28 = and i8 %3, 31
  %and19 = zext i8 %28 to i32
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %29 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn22.i = load ptr, ptr %ports.i, align 4
  %cmp.not23.i = icmp eq ptr %.pn22.i, %ports.i
  br i1 %cmp.not23.i, label %if.else.if.end.thread_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.end.thread_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn22.i, %if.else.for.body.i_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn24.i, i32 -432
  %34 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %and19)
  %cmp3.i = icmp eq i32 %37, %and19
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index4.i = getelementptr i8, ptr %.pn24.i, i32 -428
  %38 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %27)
  %cmp5.i = icmp eq i32 %39, %27
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i = getelementptr i8, ptr %.pn24.i, i32 -424
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp7.i = icmp eq i32 %41, 3
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  %dp.0.le.i = getelementptr i8, ptr %.pn24.i, i32 -448
  %42 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dp.0.le.i, align 4
  br label %if.end.thread

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %44 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn24.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.if.end.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.if.end.thread_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.thread

if.end:                                           ; preds = %sw.epilog16
  %dsa_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %45 = ptrtoint ptr %dsa_ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dsa_ptr, align 4
  %dst = getelementptr inbounds %struct.dsa_port, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst, align 4
  %lags.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %lags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lags.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %50, i32 %26
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %53 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %53, align 8
  %tobool27.not = icmp eq ptr %52, null
  br i1 %tobool27.not, label %if.end.cleanup_crit_edge, label %if.then31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.thread:                                    ; preds = %for.inc.i.if.end.thread_crit_edge, %if.then.i, %if.else.if.end.thread_crit_edge
  %retval.0.i = phi ptr [ %43, %if.then.i ], [ null, %if.else.if.end.thread_crit_edge ], [ null, %for.inc.i.if.end.thread_crit_edge ]
  %55 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %retval.0.i, ptr %55, align 8
  %tobool27.not138 = icmp eq ptr %retval.0.i, null
  br i1 %tobool27.not138, label %if.end.thread.cleanup_crit_edge, label %if.else32

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %offload_fwd_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %57 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark, align 2
  %bf.set = or i32 %bf.load, 1048576
  store i32 %bf.set, ptr %offload_fwd_mark, align 2
  br label %if.end36

if.else32:                                        ; preds = %if.end.thread
  br i1 %trap.0.off0130, label %if.else32.if.end36_crit_edge, label %if.then34

if.else32.if.end36_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then34:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #6
  %dp.i.i = getelementptr i8, ptr %retval.0.i, i32 2312
  %58 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dp.i.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %61, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %62 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else32.if.end36_crit_edge, %if.then31
  %arrayidx20131139146 = phi ptr [ %arrayidx20132, %if.else32.if.end36_crit_edge ], [ %arrayidx20132, %if.then34 ], [ %arrayidx1, %if.then31 ]
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i, align 1
  %65 = and i8 %64, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool40.not = icmp eq i8 %65, 0
  br i1 %tobool40.not, label %if.else77, label %if.then41

if.then41:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_header) #4
  %66 = getelementptr inbounds [4 x i8], ptr %new_header, i32 0, i32 1
  %67 = getelementptr inbounds [4 x i8], ptr %new_header, i32 0, i32 2
  %68 = getelementptr inbounds [4 x i8], ptr %new_header, i32 0, i32 3
  %69 = ptrtoint ptr %new_header to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -127, ptr %new_header, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %66, align 1
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %1, align 1
  %73 = and i8 %72, -17
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %67, align 2
  %arrayidx49 = getelementptr i8, ptr %1, i32 1
  %75 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx49, align 1
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %68, align 1
  %78 = ptrtoint ptr %arrayidx20131139146 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx20131139146, align 1
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool54.not = icmp eq i8 %80, 0
  br i1 %tobool54.not, label %if.then41.if.end60_crit_edge, label %if.then55

if.then41.if.end60_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then55:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %81 = or i8 %72, 16
  %82 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %67, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.then41.if.end60_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %83 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load61 = load i16, ptr %ip_summed, align 8
  %84 = and i16 %bf.load61, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %84)
  %cmp = icmp eq i16 %84, 1024
  br i1 %cmp, label %if.then65, label %if.end60.if.end71_crit_edge

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %85 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %call66 = call i32 @csum_partial(ptr noundef %67, i32 noundef 2, i32 noundef 0) #4
  %add.i = add i32 %call66, %87
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call66)
  %cmp.i = icmp ult i32 %add.i, %call66
  %conv.i = zext i1 %cmp.i to i32
  %call69 = call i32 @csum_partial(ptr noundef %1, i32 noundef 2, i32 noundef 0) #4
  %neg.i = xor i32 %call69, -1
  %add1.i = add i32 %add.i, %neg.i
  %add.i.i = add i32 %add1.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add1.i.i, ptr %85, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.end60.if.end71_crit_edge
  %89 = ptrtoint ptr %new_header to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %new_header, align 4
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extra)
  %tobool73.not = icmp eq i8 %extra, 0
  br i1 %tobool73.not, label %if.end71.if.end76_crit_edge, label %if.then74

if.end71.if.end76_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  %conv75 = zext i8 %extra to i32
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %93, i32 -14
  %idx.neg.i = sub nsw i32 0, %conv75
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i119, i32 %idx.neg.i
  %94 = call ptr @memmove(ptr %add.ptr.i119, ptr %add.ptr3.i, i32 12)
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end71.if.end76_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_header) #4
  br label %cleanup

if.else77:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %call78 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 4) #4
  %conv79 = zext i8 %extra to i32
  %95 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %96, i32 -14
  %idx.neg.i122 = sub nuw nsw i32 -4, %conv79
  %add.ptr3.i123 = getelementptr i8, ptr %add.ptr.i121, i32 %idx.neg.i122
  %97 = call ptr @memmove(ptr %add.ptr.i121, ptr %add.ptr3.i123, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.else77, %if.end76, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.bb4.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %skb, %if.else77 ], [ %skb, %if.end76 ], [ null, %if.end.thread.cleanup_crit_edge ], [ null, %switch.hole_check.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @edsa_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dsa_xmit_ll(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext 4)
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -38, ptr %add.ptr.i, align 1
  %arrayidx2 = getelementptr i8, ptr %1, i32 13
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -38, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %1, i32 14
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %1, i32 15
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %skb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @edsa_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp3.i = icmp ult i32 %1, 8
  br i1 %cmp3.i, label %if.end.i.return_crit_edge, label %pskb_may_pull.exit, !prof !33

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #4
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.return_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !33

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pskb_may_pull.exit.return_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 4) #4
  %call4 = tail call fastcc ptr @dsa_rcv_ll(ptr noundef %skb, ptr noundef %dev, i8 noundef zeroext 4)
  br label %return

return:                                           ; preds = %if.end, %pskb_may_pull.exit.return_crit_edge, %if.end.i.return_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ null, %pskb_may_pull.exit.return_crit_edge ], [ null, %if.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__UNIQUE_ID_alias499, !1, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_dsa.c", i32 339, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias500, !3, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!3 = !{!"../net/dsa/tag_dsa.c", i32 381, i32 1}
!4 = !{ptr @__initcall__kmod_tag_dsa__501_393_dsa_tag_driver_module_init6, !5, !"__initcall__kmod_tag_dsa__501_393_dsa_tag_driver_module_init6", i1 false, i1 false}
!5 = !{!"../net/dsa/tag_dsa.c", i32 393, i32 1}
!6 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !5, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file502, !8, !"__UNIQUE_ID_file502", i1 false, i1 false}
!8 = !{!"../net/dsa/tag_dsa.c", i32 395, i32 1}
!9 = !{ptr @__UNIQUE_ID_license503, !8, !"__UNIQUE_ID_license503", i1 false, i1 false}
!10 = !{ptr @dsa_tag_drivers, !11, !"dsa_tag_drivers", i1 false, i1 false}
!11 = !{!"../net/dsa/tag_dsa.c", i32 384, i32 31}
!12 = !{ptr @dsa_tag_driver_dsa_netdev_ops, !13, !"dsa_tag_driver_dsa_netdev_ops", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_dsa.c", i32 338, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dsa/tag_dsa.c", i32 331, i32 12}
!16 = !{ptr @dsa_netdev_ops, !17, !"dsa_netdev_ops", i1 false, i1 false}
!17 = !{!"../net/dsa/tag_dsa.c", i32 330, i32 36}
!18 = !{ptr @dsa_tag_driver_edsa_netdev_ops, !19, !"dsa_tag_driver_edsa_netdev_ops", i1 false, i1 false}
!19 = !{!"../net/dsa/tag_dsa.c", i32 380, i32 1}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/dsa/tag_dsa.c", i32 373, i32 12}
!22 = !{ptr @edsa_netdev_ops, !23, !"edsa_netdev_ops", i1 false, i1 false}
!23 = !{!"../net/dsa/tag_dsa.c", i32 372, i32 36}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
