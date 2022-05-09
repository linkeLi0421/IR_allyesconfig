; ModuleID = '/llk/IR_all_yes/net/dsa/tag_ksz.c_pt.bc'
source_filename = "../net/dsa/tag_ksz.c"
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

@__UNIQUE_ID_alias499 = internal constant [25 x i8] c"tag_ksz.alias=dsa_tag-14\00", section ".modinfo", align 1
@__UNIQUE_ID_alias500 = internal constant [24 x i8] c"tag_ksz.alias=dsa_tag-6\00", section ".modinfo", align 1
@__UNIQUE_ID_alias501 = internal constant [24 x i8] c"tag_ksz.alias=dsa_tag-7\00", section ".modinfo", align 1
@__initcall__kmod_tag_ksz__502_202_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@dsa_tag_driver_array = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dsa_tag_driver_ksz8795_netdev_ops, ptr @dsa_tag_driver_ksz9477_netdev_ops, ptr @dsa_tag_driver_ksz9893_netdev_ops], [20 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file503 = internal constant [29 x i8] c"tag_ksz.file=net/dsa/tag_ksz\00", section ".modinfo", align 1
@__UNIQUE_ID_license504 = internal constant [20 x i8] c"tag_ksz.license=GPL\00", section ".modinfo", align 1
@dsa_tag_driver_ksz8795_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @ksz8795_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_tag_driver_ksz9477_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @ksz9477_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_tag_driver_ksz9893_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @ksz9893_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@ksz8795_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @ksz8795_xmit, ptr @ksz8795_rcv, ptr null, ptr null, ptr null, i32 0, i32 1, ptr @.str, i32 14, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ksz8795\00", [24 x i8] zeroinitializer }, align 32
@ksz9477_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @ksz9477_xmit, ptr @ksz9477_rcv, ptr null, ptr null, ptr null, i32 0, i32 2, ptr @.str.1, i32 6, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ksz9477\00", [24 x i8] zeroinitializer }, align 32
@ksz9893_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @ksz9893_xmit, ptr @ksz9477_rcv, ptr null, ptr null, ptr null, i32 0, i32 1, ptr @.str.2, i32 7, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ksz9893\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"dsa_tag_driver_array\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 196, i32 31 }
@___asan_gen_.6 = private unnamed_addr constant [34 x i8] c"dsa_tag_driver_ksz8795_netdev_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 84, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [34 x i8] c"dsa_tag_driver_ksz9477_netdev_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 157, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [34 x i8] c"dsa_tag_driver_ksz9893_netdev_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 193, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"ksz8795_netdev_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 76, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 77, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"ksz9477_netdev_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 149, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 150, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"ksz9893_netdev_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 185, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [21 x i8] c"../net/dsa/tag_ksz.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 186, i32 10 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_alias501, ptr @__UNIQUE_ID_file503, ptr @__UNIQUE_ID_license504, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_ksz__502_202_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @dsa_tag_driver_array, ptr @dsa_tag_driver_ksz8795_netdev_ops, ptr @dsa_tag_driver_ksz9477_netdev_ops, ptr @dsa_tag_driver_ksz9893_netdev_ops, ptr @ksz8795_netdev_ops, ptr @.str, ptr @ksz9477_netdev_ops, ptr @.str.1, ptr @ksz9893_netdev_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_array to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_ksz8795_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_ksz9477_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_ksz9893_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8795_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9893_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_tag_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 3, ptr noundef null) #3
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsa_tag_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @dsa_tag_driver_array, i32 noundef 3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ksz8795_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ip_summed, align 8
  %3 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp = icmp eq i16 %3, 1536
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @skb_checksum_help(ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #3
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
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %9
  %conv5 = trunc i32 %shl to i8
  %10 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %call3, align 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %xor.i = xor i32 %12, 25215488
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i, i32 2
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %15 = and i16 %14, -16
  %and.i = zext i16 %15 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = or i8 %conv5, 64
  %17 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %call3, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true.cleanup_crit_edge ], [ %skb, %if.then7 ], [ %skb, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ksz8795_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %4 = and i8 %3, 7
  %and = zext i8 %4 to i32
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %5 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsa_ptr.i.i, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_port, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn2.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not3.i.i = icmp eq ptr %.pn2.i.i, %ports.i.i
  br i1 %cmp.not3.i.i, label %entry.dsa_master_find_slave.exit.thread.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_master_find_slave.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn4.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn2.i.i, %entry.for.body.i.i_crit_edge ]
  %ds.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -432
  %10 = ptrtoint ptr %ds.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.i.i = icmp eq i32 %13, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index4.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -428
  %14 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and)
  %cmp5.i.i = icmp eq i32 %15, %and
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %type.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -424
  %16 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp7.i.i = icmp eq i32 %17, 3
  br i1 %cmp7.i.i, label %dsa_master_find_slave.exit.i, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %18 = ptrtoint ptr %.pn4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i = load ptr, ptr %.pn4.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_master_find_slave.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.inc.i.i.dsa_master_find_slave.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread.i

dsa_master_find_slave.exit.thread.i:              ; preds = %for.inc.i.i.dsa_master_find_slave.exit.thread.i_crit_edge, %entry.dsa_master_find_slave.exit.thread.i_crit_edge
  %19 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %19, align 8
  br label %ksz_common_rcv.exit

dsa_master_find_slave.exit.i:                     ; preds = %land.lhs.true6.i.i
  %dp.0.le.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -448
  %21 = ptrtoint ptr %dp.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dp.0.le.i.i, align 4
  %23 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %23, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge, label %if.end.i

dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge: ; preds = %dsa_master_find_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ksz_common_rcv.exit

if.end.i:                                         ; preds = %dsa_master_find_slave.exit.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i8.i.not = icmp eq i32 %26, 0
  br i1 %cmp.not.i8.i.not, label %if.end.i.pskb_trim_rcsum.exit.i_crit_edge, label %if.end.i.i, !prof !47

if.end.i.pskb_trim_rcsum.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %pskb_trim_rcsum.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %26, -1
  %call.i.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %sub.i) #3
  br label %pskb_trim_rcsum.exit.i

pskb_trim_rcsum.exit.i:                           ; preds = %if.end.i.i, %if.end.i.pskb_trim_rcsum.exit.i_crit_edge
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 8
  %dp.i.i.i = getelementptr i8, ptr %28, i32 2312
  %29 = ptrtoint ptr %dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dp.i.i.i, align 4
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %30, i32 0, i32 14
  %31 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  %offload_fwd_mark.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %33 = ptrtoint ptr %offload_fwd_mark.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %bf.load.i.i = load i32, ptr %offload_fwd_mark.i.i, align 2
  %bf.shl.i.i = select i1 %tobool.not.i.i, i32 0, i32 1048576
  %bf.clear.i.i = and i32 %bf.load.i.i, -1048577
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %offload_fwd_mark.i.i, align 2
  br label %ksz_common_rcv.exit

ksz_common_rcv.exit:                              ; preds = %pskb_trim_rcsum.exit.i, %dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge, %dsa_master_find_slave.exit.thread.i
  %retval.0.i = phi ptr [ %skb, %pskb_trim_rcsum.exit.i ], [ null, %dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge ], [ null, %dsa_master_find_slave.exit.thread.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ksz9477_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ip_summed, align 8
  %3 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp = icmp eq i16 %3, 1536
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @skb_checksum_help(ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 2) #3
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
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %9
  %conv5 = trunc i32 %shl to i16
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %xor.i = xor i32 %11, 25215488
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i, i32 2
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %14 = and i16 %13, -16
  %and.i = zext i16 %14 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %conv9 = or i16 %conv5, 512
  %val.0 = select i1 %cmp.i, i16 %conv9, i16 %conv5
  %15 = ptrtoint ptr %call3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %val.0, ptr %call3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %if.end ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ksz9477_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %3 to i32
  %and3 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %spec.select.neg = select i1 %tobool.not, i32 -1, i32 -5
  %and = and i32 %conv, 7
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %4 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsa_ptr.i.i, align 4
  %dst1.i.i = getelementptr inbounds %struct.dsa_port, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn2.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not3.i.i = icmp eq ptr %.pn2.i.i, %ports.i.i
  br i1 %cmp.not3.i.i, label %entry.dsa_master_find_slave.exit.thread.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.dsa_master_find_slave.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %.pn4.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn2.i.i, %entry.for.body.i.i_crit_edge ]
  %ds.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -432
  %9 = ptrtoint ptr %ds.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ds.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.dsa_switch, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.i.i = icmp eq i32 %12, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index4.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -428
  %13 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and)
  %cmp5.i.i = icmp eq i32 %14, %and
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %type.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -424
  %15 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp7.i.i = icmp eq i32 %16, 3
  br i1 %cmp7.i.i, label %dsa_master_find_slave.exit.i, label %land.lhs.true6.i.i.for.inc.i.i_crit_edge

land.lhs.true6.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true6.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %17 = ptrtoint ptr %.pn4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i.i = load ptr, ptr %.pn4.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_master_find_slave.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.inc.i.i.dsa_master_find_slave.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread.i

dsa_master_find_slave.exit.thread.i:              ; preds = %for.inc.i.i.dsa_master_find_slave.exit.thread.i_crit_edge, %entry.dsa_master_find_slave.exit.thread.i_crit_edge
  %18 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %18, align 8
  br label %ksz_common_rcv.exit

dsa_master_find_slave.exit.i:                     ; preds = %land.lhs.true6.i.i
  %dp.0.le.i.i = getelementptr i8, ptr %.pn4.i.i, i32 -448
  %20 = ptrtoint ptr %dp.0.le.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dp.0.le.i.i, align 4
  %22 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge, label %if.end.i

dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge: ; preds = %dsa_master_find_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ksz_common_rcv.exit

if.end.i:                                         ; preds = %dsa_master_find_slave.exit.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %25, %spec.select.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub.i)
  %cmp.not.i8.i = icmp ugt i32 %25, %sub.i
  br i1 %cmp.not.i8.i, label %if.end.i.i, label %if.end.i.pskb_trim_rcsum.exit.i_crit_edge, !prof !48

if.end.i.pskb_trim_rcsum.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %pskb_trim_rcsum.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %sub.i) #3
  br label %pskb_trim_rcsum.exit.i

pskb_trim_rcsum.exit.i:                           ; preds = %if.end.i.i, %if.end.i.pskb_trim_rcsum.exit.i_crit_edge
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %22, align 8
  %dp.i.i.i = getelementptr i8, ptr %27, i32 2312
  %28 = ptrtoint ptr %dp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dp.i.i.i, align 4
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  %offload_fwd_mark.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %32 = ptrtoint ptr %offload_fwd_mark.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %bf.load.i.i = load i32, ptr %offload_fwd_mark.i.i, align 2
  %bf.shl.i.i = select i1 %tobool.not.i.i, i32 0, i32 1048576
  %bf.clear.i.i = and i32 %bf.load.i.i, -1048577
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %offload_fwd_mark.i.i, align 2
  br label %ksz_common_rcv.exit

ksz_common_rcv.exit:                              ; preds = %pskb_trim_rcsum.exit.i, %dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge, %dsa_master_find_slave.exit.thread.i
  %retval.0.i = phi ptr [ %skb, %pskb_trim_rcsum.exit.i ], [ null, %dsa_master_find_slave.exit.i.ksz_common_rcv.exit_crit_edge ], [ null, %dsa_master_find_slave.exit.thread.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ksz9893_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ip_summed, align 8
  %3 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp = icmp eq i16 %3, 1536
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @skb_checksum_help(ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #3
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
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %9
  %conv5 = trunc i32 %shl to i8
  %10 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %call3, align 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %xor.i = xor i32 %12, 25215488
  %arrayidx.i = getelementptr i16, ptr %add.ptr.i, i32 2
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %15 = and i16 %14, -16
  %and.i = zext i16 %15 to i32
  %or.i = or i32 %xor.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = or i8 %conv5, 32
  %17 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %call3, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %land.lhs.true.cleanup_crit_edge ], [ %skb, %if.then7 ], [ %skb, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__UNIQUE_ID_alias499, !1, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_ksz.c", i32 85, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias500, !3, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!3 = !{!"../net/dsa/tag_ksz.c", i32 158, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias501, !5, !"__UNIQUE_ID_alias501", i1 false, i1 false}
!5 = !{!"../net/dsa/tag_ksz.c", i32 194, i32 1}
!6 = !{ptr @__initcall__kmod_tag_ksz__502_202_dsa_tag_driver_module_init6, !7, !"__initcall__kmod_tag_ksz__502_202_dsa_tag_driver_module_init6", i1 false, i1 false}
!7 = !{!"../net/dsa/tag_ksz.c", i32 202, i32 1}
!8 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !7, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file503, !10, !"__UNIQUE_ID_file503", i1 false, i1 false}
!10 = !{!"../net/dsa/tag_ksz.c", i32 204, i32 1}
!11 = !{ptr @__UNIQUE_ID_license504, !10, !"__UNIQUE_ID_license504", i1 false, i1 false}
!12 = !{ptr @dsa_tag_driver_array, !13, !"dsa_tag_driver_array", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_ksz.c", i32 196, i32 31}
!14 = !{ptr @dsa_tag_driver_ksz8795_netdev_ops, !15, !"dsa_tag_driver_ksz8795_netdev_ops", i1 false, i1 false}
!15 = !{!"../net/dsa/tag_ksz.c", i32 84, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/dsa/tag_ksz.c", i32 77, i32 10}
!18 = !{ptr @ksz8795_netdev_ops, !19, !"ksz8795_netdev_ops", i1 false, i1 false}
!19 = !{!"../net/dsa/tag_ksz.c", i32 76, i32 36}
!20 = distinct !{null, !21, !"b", i1 false, i1 false}
!21 = !{!"../include/linux/etherdevice.h", i32 86, i32 23}
!22 = distinct !{null, !23, !"m", i1 false, i1 false}
!23 = !{!"../include/linux/etherdevice.h", i32 87, i32 22}
!24 = distinct !{null, !25, !"eth_reserved_addr_base", i1 false, i1 false}
!25 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!26 = !{ptr @dsa_tag_driver_ksz9477_netdev_ops, !27, !"dsa_tag_driver_ksz9477_netdev_ops", i1 false, i1 false}
!27 = !{!"../net/dsa/tag_ksz.c", i32 157, i32 1}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/dsa/tag_ksz.c", i32 150, i32 10}
!30 = !{ptr @ksz9477_netdev_ops, !31, !"ksz9477_netdev_ops", i1 false, i1 false}
!31 = !{!"../net/dsa/tag_ksz.c", i32 149, i32 36}
!32 = !{ptr @dsa_tag_driver_ksz9893_netdev_ops, !33, !"dsa_tag_driver_ksz9893_netdev_ops", i1 false, i1 false}
!33 = !{!"../net/dsa/tag_ksz.c", i32 193, i32 1}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/dsa/tag_ksz.c", i32 186, i32 10}
!36 = !{ptr @ksz9893_netdev_ops, !37, !"ksz9893_netdev_ops", i1 false, i1 false}
!37 = !{!"../net/dsa/tag_ksz.c", i32 185, i32 36}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{!"branch_weights", i32 1, i32 2000}
