; ModuleID = '/llk/IR_all_yes/net/dsa/tag_xrs700x.c_pt.bc'
source_filename = "../net/dsa/tag_xrs700x.c"
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
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__UNIQUE_ID_file499 = internal constant [37 x i8] c"tag_xrs700x.file=net/dsa/tag_xrs700x\00", section ".modinfo", align 1
@__UNIQUE_ID_license500 = internal constant [24 x i8] c"tag_xrs700x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias501 = internal constant [29 x i8] c"tag_xrs700x.alias=dsa_tag-19\00", section ".modinfo", align 1
@__initcall__kmod_tag_xrs700x__502_64_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@dsa_tag_driver_array = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @dsa_tag_driver_xrs700x_netdev_ops], [28 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@dsa_tag_driver_xrs700x_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @xrs700x_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@xrs700x_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @xrs700x_xmit, ptr @xrs700x_rcv, ptr null, ptr null, ptr null, i32 0, i32 1, ptr @.str, i32 19, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xrs700x\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"dsa_tag_driver_array\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [34 x i8] c"dsa_tag_driver_xrs700x_netdev_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 64, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"xrs700x_netdev_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 53, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [25 x i8] c"../net/dsa/tag_xrs700x.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 54, i32 10 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias501, ptr @__UNIQUE_ID_file499, ptr @__UNIQUE_ID_license500, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_xrs700x__502_64_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @dsa_tag_driver_array, ptr @dsa_tag_driver_xrs700x_netdev_ops, ptr @xrs700x_netdev_ops, ptr @.str], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_array to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_xrs700x_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xrs700x_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_tag_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 1, ptr noundef null) #4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsa_tag_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xrs700x_xmit(ptr noundef returned %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %call1 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %3
  %conv = trunc i32 %shl to i8
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %call1, align 1
  %hsr_dev = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %hsr_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hsr_dev, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then:                                          ; preds = %entry
  %ds = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds, align 4
  %dst = getelementptr inbounds %struct.dsa_switch, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst, align 4
  %ports = getelementptr inbounds %struct.dsa_switch_tree, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn43 = load ptr, ptr %ports, align 4
  %cmp.not47 = icmp eq ptr %.pn43, %ports
  br i1 %cmp.not47, label %if.then.if.end29_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %12 = phi ptr [ %26, %for.inc.for.body_crit_edge ], [ %8, %if.then.for.body_crit_edge ]
  %.pn48 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn43, %if.then.for.body_crit_edge ]
  %ds6 = getelementptr i8, ptr %.pn48, i32 -432
  %13 = ptrtoint ptr %ds6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ds6, align 4
  %cmp8 = icmp eq ptr %14, %12
  br i1 %cmp8, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %partner.049 = getelementptr i8, ptr %.pn48, i32 -448
  %hsr_dev10 = getelementptr i8, ptr %.pn48, i32 -4
  %15 = ptrtoint ptr %hsr_dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hsr_dev10, align 4
  %17 = ptrtoint ptr %hsr_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hsr_dev, align 4
  %cmp12 = icmp ne ptr %16, %18
  %cmp15.not = icmp eq ptr %partner.049, %1
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %land.lhs.true.for.inc_crit_edge, label %if.then17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %index18 = getelementptr i8, ptr %.pn48, i32 -428
  %19 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index18, align 4
  %shl19 = shl nuw i32 1, %20
  %21 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call1, align 1
  %23 = trunc i32 %shl19 to i8
  %conv22 = or i8 %22, %23
  store i8 %conv22, ptr %call1, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn48, align 4
  %25 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ds, align 4
  %dst3 = getelementptr inbounds %struct.dsa_switch, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dst3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst3, align 4
  %ports4 = getelementptr inbounds %struct.dsa_switch_tree, ptr %28, i32 0, i32 1
  %cmp.not = icmp eq ptr %.pn, %ports4
  br i1 %cmp.not, label %for.inc.if.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29:                                         ; preds = %for.inc.if.end29_crit_edge, %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  ret ptr %skb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xrs700x_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %iszero = icmp eq i8 %3, 0
  br i1 %iszero, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i8 @llvm.cttz.i8(i8 %3, i1 true), !range !23
  %5 = zext i8 %4 to i32
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %6 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn2.i = load ptr, ptr %ports.i, align 4
  %cmp.not3.i = icmp eq ptr %.pn2.i, %ports.i
  br i1 %cmp.not3.i, label %if.end.dsa_master_find_slave.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_master_find_slave.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %if.end.for.body.i_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn4.i, i32 -432
  %11 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.i = icmp eq i32 %14, 0
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index4.i = getelementptr i8, ptr %.pn4.i, i32 -428
  %15 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %5)
  %cmp5.i = icmp eq i32 %16, %5
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i = getelementptr i8, ptr %.pn4.i, i32 -424
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp7.i = icmp eq i32 %18, 3
  br i1 %cmp7.i, label %dsa_master_find_slave.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dsa_master_find_slave.exit.thread

dsa_master_find_slave.exit.thread:                ; preds = %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, %if.end.dsa_master_find_slave.exit.thread_crit_edge
  %20 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %20, align 8
  br label %cleanup

dsa_master_find_slave.exit:                       ; preds = %land.lhs.true6.i
  %dp.0.le.i = getelementptr i8, ptr %.pn4.i, i32 -448
  %22 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dp.0.le.i, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %24, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %dsa_master_find_slave.exit.cleanup_crit_edge, label %if.end4

dsa_master_find_slave.exit.cleanup_crit_edge:     ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %dsa_master_find_slave.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i18.not = icmp eq i32 %27, 0
  br i1 %cmp.not.i18.not, label %if.end4.if.end9_crit_edge, label %pskb_trim_rcsum.exit, !prof !24

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

pskb_trim_rcsum.exit:                             ; preds = %if.end4
  %sub5 = add i32 %27, -1
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %sub5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %pskb_trim_rcsum.exit.if.end9_crit_edge, label %pskb_trim_rcsum.exit.cleanup_crit_edge

pskb_trim_rcsum.exit.cleanup_crit_edge:           ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

pskb_trim_rcsum.exit.if.end9_crit_edge:           ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.end9:                                          ; preds = %pskb_trim_rcsum.exit.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %24, align 8
  %dp.i.i = getelementptr i8, ptr %29, i32 2312
  %30 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dp.i.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %34 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %pskb_trim_rcsum.exit.cleanup_crit_edge, %dsa_master_find_slave.exit.cleanup_crit_edge, %dsa_master_find_slave.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %if.end9 ], [ null, %entry.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.cleanup_crit_edge ], [ null, %pskb_trim_rcsum.exit.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__UNIQUE_ID_file499, !1, !"__UNIQUE_ID_file499", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_xrs700x.c", i32 61, i32 1}
!2 = !{ptr @__UNIQUE_ID_license500, !1, !"__UNIQUE_ID_license500", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias501, !4, !"__UNIQUE_ID_alias501", i1 false, i1 false}
!4 = !{!"../net/dsa/tag_xrs700x.c", i32 62, i32 1}
!5 = !{ptr @__initcall__kmod_tag_xrs700x__502_64_dsa_tag_driver_module_init6, !6, !"__initcall__kmod_tag_xrs700x__502_64_dsa_tag_driver_module_init6", i1 false, i1 false}
!6 = !{!"../net/dsa/tag_xrs700x.c", i32 64, i32 1}
!7 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !6, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!8 = !{ptr @dsa_tag_driver_array, !6, !"dsa_tag_driver_array", i1 false, i1 false}
!9 = !{ptr @dsa_tag_driver_xrs700x_netdev_ops, !6, !"dsa_tag_driver_xrs700x_netdev_ops", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dsa/tag_xrs700x.c", i32 54, i32 10}
!12 = !{ptr @xrs700x_netdev_ops, !13, !"xrs700x_netdev_ops", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_xrs700x.c", i32 53, i32 36}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 9}
!24 = !{!"branch_weights", i32 2000, i32 1}
