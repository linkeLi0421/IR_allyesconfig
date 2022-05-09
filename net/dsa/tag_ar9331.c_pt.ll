; ModuleID = '/llk/IR_all_yes/net/dsa/tag_ar9331.c_pt.bc'
source_filename = "../net/dsa/tag_ar9331.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dsa_tag_driver = type { ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
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
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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

@__UNIQUE_ID_file514 = internal constant [35 x i8] c"tag_ar9331.file=net/dsa/tag_ar9331\00", section ".modinfo", align 1
@__UNIQUE_ID_license515 = internal constant [26 x i8] c"tag_ar9331.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias516 = internal constant [28 x i8] c"tag_ar9331.alias=dsa_tag-16\00", section ".modinfo", align 1
@__initcall__kmod_tag_ar9331__517_92_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@dsa_tag_driver_array = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @dsa_tag_driver_ar9331_netdev_ops], [28 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@dsa_tag_driver_ar9331_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @ar9331_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@ar9331_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @ar9331_tag_xmit, ptr @ar9331_tag_rcv, ptr null, ptr null, ptr null, i32 2, i32 0, ptr @.str, i32 16, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ar9331\00", [25 x i8] zeroinitializer }, align 32
@ar9331_tag_rcv.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s:%i wrong header version 0x%2x\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.ar9331_tag_rcv = private unnamed_addr constant [15 x i8] c"ar9331_tag_rcv\00", align 1
@ar9331_tag_rcv.__print_once.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s:%i packet should not be from cpu 0x%2x\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [21 x i8] c"dsa_tag_driver_array\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [33 x i8] c"dsa_tag_driver_ar9331_netdev_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 92, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"ar9331_netdev_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 82, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 83, i32 10 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 59, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [24 x i8] c"../net/dsa/tag_ar9331.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 65, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias516, ptr @__UNIQUE_ID_file514, ptr @__UNIQUE_ID_license515, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_ar9331__517_92_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @dsa_tag_driver_array, ptr @dsa_tag_driver_ar9331_netdev_ops, ptr @ar9331_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_array to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_ar9331_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ar9331_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_tag_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 1, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsa_tag_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ar9331_tag_xmit(ptr noundef returned %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #5
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %4 = trunc i32 %3 to i16
  %conv19 = or i16 %4, 16496
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %call1, align 2
  ret ptr %skb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ar9331_tag_rcv(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !31

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp3.i = icmp ult i32 %1, 2
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !32

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 2, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !32

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %conv.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %shr.mask = and i16 %10, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %shr.mask)
  %cmp.not = icmp eq i16 %shr.mask, 16384
  br i1 %cmp.not, label %if.end33, label %do.body26, !prof !31

do.body26:                                        ; preds = %if.end
  %.b93 = load i1, ptr @ar9331_tag_rcv.__print_once, align 1
  br i1 %.b93, label %do.body26.cleanup_crit_edge, label %if.then28

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then28:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ar9331_tag_rcv.__print_once, align 1
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.1, ptr noundef %ndev, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ar9331_tag_rcv, i32 noundef 60, i32 noundef %conv) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %and35 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end51, label %do.body44, !prof !31

do.body44:                                        ; preds = %if.end33
  %.b9192 = load i1, ptr @ar9331_tag_rcv.__print_once.3, align 1
  br i1 %.b9192, label %do.body44.cleanup_crit_edge, label %if.then46

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then46:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ar9331_tag_rcv.__print_once.3, align 1
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.1, ptr noundef %ndev, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ar9331_tag_rcv, i32 noundef 66, i32 noundef %conv) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end33
  %call52 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 2) #5
  %11 = and i16 %10, 15
  %conv72 = zext i16 %11 to i32
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 75
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
  br i1 %cmp.not3.i, label %if.end51.dsa_master_find_slave.exit_crit_edge, label %if.end51.for.body.i_crit_edge

if.end51.for.body.i_crit_edge:                    ; preds = %if.end51
  br label %for.body.i

if.end51.dsa_master_find_slave.exit_crit_edge:    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %dsa_master_find_slave.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end51.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %if.end51.for.body.i_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn4.i, i32 -432
  %17 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3.i94 = icmp eq i32 %20, 0
  br i1 %cmp3.i94, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index4.i = getelementptr i8, ptr %.pn4.i, i32 -428
  %21 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv72)
  %cmp5.i = icmp eq i32 %22, %conv72
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i = getelementptr i8, ptr %.pn4.i, i32 -424
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp7.i = icmp eq i32 %24, 3
  br i1 %cmp7.i, label %if.then.i, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  %dp.0.le.i = getelementptr i8, ptr %.pn4.i, i32 -448
  %25 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dp.0.le.i, align 4
  br label %dsa_master_find_slave.exit

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %27 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_master_find_slave.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.dsa_master_find_slave.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dsa_master_find_slave.exit

dsa_master_find_slave.exit:                       ; preds = %for.inc.i.dsa_master_find_slave.exit_crit_edge, %if.then.i, %if.end51.dsa_master_find_slave.exit_crit_edge
  %retval.0.i95 = phi ptr [ %26, %if.then.i ], [ null, %if.end51.dsa_master_find_slave.exit_crit_edge ], [ null, %for.inc.i.dsa_master_find_slave.exit_crit_edge ]
  %28 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i95, ptr %28, align 8
  %tobool75.not = icmp eq ptr %retval.0.i95, null
  %.skb = select i1 %tobool75.not, ptr null, ptr %skb
  br label %cleanup

cleanup:                                          ; preds = %dsa_master_find_slave.exit, %if.then46, %do.body44.cleanup_crit_edge, %if.then28, %do.body26.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %if.then28 ], [ null, %do.body26.cleanup_crit_edge ], [ null, %if.then46 ], [ null, %do.body44.cleanup_crit_edge ], [ %.skb, %dsa_master_find_slave.exit ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__UNIQUE_ID_file514, !1, !"__UNIQUE_ID_file514", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_ar9331.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_license515, !1, !"__UNIQUE_ID_license515", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias516, !4, !"__UNIQUE_ID_alias516", i1 false, i1 false}
!4 = !{!"../net/dsa/tag_ar9331.c", i32 91, i32 1}
!5 = !{ptr @__initcall__kmod_tag_ar9331__517_92_dsa_tag_driver_module_init6, !6, !"__initcall__kmod_tag_ar9331__517_92_dsa_tag_driver_module_init6", i1 false, i1 false}
!6 = !{!"../net/dsa/tag_ar9331.c", i32 92, i32 1}
!7 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !6, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!8 = !{ptr @dsa_tag_driver_array, !6, !"dsa_tag_driver_array", i1 false, i1 false}
!9 = !{ptr @dsa_tag_driver_ar9331_netdev_ops, !6, !"dsa_tag_driver_ar9331_netdev_ops", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dsa/tag_ar9331.c", i32 83, i32 10}
!12 = !{ptr @ar9331_netdev_ops, !13, !"ar9331_netdev_ops", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_ar9331.c", i32 82, i32 36}
!14 = distinct !{null, !15, !"__print_once", i1 false, i1 false}
!15 = !{!"../net/dsa/tag_ar9331.c", i32 59, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.ar9331_tag_rcv, !15, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__print_once", i1 false, i1 false}
!20 = !{!"../net/dsa/tag_ar9331.c", i32 65, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!"branch_weights", i32 1, i32 2000}
