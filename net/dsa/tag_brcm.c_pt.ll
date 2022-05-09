; ModuleID = '/llk/IR_all_yes/net/dsa/tag_brcm.c_pt.bc'
source_filename = "../net/dsa/tag_brcm.c"
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

@__UNIQUE_ID_alias499 = internal constant [25 x i8] c"tag_brcm.alias=dsa_tag-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias500 = internal constant [26 x i8] c"tag_brcm.alias=dsa_tag-22\00", section ".modinfo", align 1
@__UNIQUE_ID_alias501 = internal constant [25 x i8] c"tag_brcm.alias=dsa_tag-2\00", section ".modinfo", align 1
@__initcall__kmod_tag_brcm__502_326_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@dsa_tag_driver_array = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dsa_tag_driver_brcm_netdev_ops, ptr @dsa_tag_driver_brcm_legacy_netdev_ops, ptr @dsa_tag_driver_brcm_prepend_netdev_ops], [20 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file503 = internal constant [31 x i8] c"tag_brcm.file=net/dsa/tag_brcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license504 = internal constant [21 x i8] c"tag_brcm.license=GPL\00", section ".modinfo", align 1
@dsa_tag_driver_brcm_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @brcm_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_tag_driver_brcm_legacy_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @brcm_legacy_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_tag_driver_brcm_prepend_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @brcm_prepend_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@brcm_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @brcm_tag_xmit, ptr @brcm_tag_rcv, ptr null, ptr null, ptr null, i32 4, i32 0, ptr @.str, i32 1, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"brcm\00", [27 x i8] zeroinitializer }, align 32
@brcm_legacy_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @brcm_leg_tag_xmit, ptr @brcm_leg_tag_rcv, ptr null, ptr null, ptr null, i32 6, i32 0, ptr @.str.1, i32 22, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"brcm-legacy\00", [20 x i8] zeroinitializer }, align 32
@brcm_prepend_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @brcm_tag_xmit_prepend, ptr @brcm_tag_rcv_prepend, ptr null, ptr null, ptr null, i32 4, i32 0, ptr @.str.2, i32 2, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"brcm-prepend\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"dsa_tag_driver_array\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 314, i32 31 }
@___asan_gen_.6 = private unnamed_addr constant [31 x i8] c"dsa_tag_driver_brcm_netdev_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 206, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [38 x i8] c"dsa_tag_driver_brcm_legacy_netdev_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 283, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [39 x i8] c"dsa_tag_driver_brcm_prepend_netdev_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 310, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"brcm_netdev_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 198, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 199, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"brcm_legacy_netdev_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 275, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 276, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"brcm_prepend_netdev_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 302, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [22 x i8] c"../net/dsa/tag_brcm.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 303, i32 10 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_alias501, ptr @__UNIQUE_ID_file503, ptr @__UNIQUE_ID_license504, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_brcm__502_326_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @dsa_tag_driver_array, ptr @dsa_tag_driver_brcm_netdev_ops, ptr @dsa_tag_driver_brcm_legacy_netdev_ops, ptr @dsa_tag_driver_brcm_prepend_netdev_ops, ptr @brcm_netdev_ops, ptr @.str, ptr @brcm_legacy_netdev_ops, ptr @.str.1, ptr @brcm_prepend_netdev_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_array to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_brcm_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_brcm_legacy_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_brcm_prepend_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_legacy_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_prepend_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
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
define internal ptr @brcm_tag_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i.i, align 8
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end.i_crit_edge, !prof !41

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 64, %5
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge

if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %brcm_tag_xmit_ll.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !42

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !43
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %11, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %__skb_put.exit.i.i, %entry.if.end.i_crit_edge
  %call3.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #3
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = call ptr @memmove(ptr %13, ptr %add.ptr.i.i, i32 12)
  %15 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 12
  %call1.tr.i = trunc i16 %3 to i8
  %16 = shl i8 %call1.tr.i, 2
  %17 = and i8 %16, 28
  %conv7.i = or i8 %17, 32
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7.i, ptr %add.ptr.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %15, i32 13
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %15, i32 14
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx9.i, align 1
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp.i = icmp eq i32 %22, 8
  %spec.store.select.i = zext i1 %cmp.i to i8
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.store.select.i, ptr %arrayidx9.i, align 1
  %24 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i, align 4
  %shl15.i = shl nuw i32 1, %25
  %conv17.i = trunc i32 %shl15.i to i8
  %arrayidx18.i = getelementptr i8, ptr %15, i32 15
  %26 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %27 = load i32, ptr %index.i, align 4
  %.tr.i = trunc i32 %27 to i16
  %28 = shl i16 %.tr.i, 8
  %conv23.i = or i16 %28, %3
  %29 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv23.i, ptr %queue_mapping.i.i, align 8
  br label %brcm_tag_xmit_ll.exit

brcm_tag_xmit_ll.exit:                            ; preds = %if.end.i, %if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge
  %retval.0.i = phi ptr [ %skb, %if.end.i ], [ null, %if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_tag_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @brcm_tag_rcv_ll(ptr noundef %skb, ptr noundef %dev, i32 noundef 2)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -14
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -18
  %2 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr3.i, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brcm_tag_rcv_ll(ptr noundef %skb, ptr nocapture noundef readonly %dev, i32 noundef %offset) unnamed_addr #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp3.i = icmp ult i32 %1, 4
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !41

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 4, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #3
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !41

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %idx.neg = sub i32 0, %offset
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.neg
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %7)
  %tobool3.not = icmp ult i8 %7, 32
  br i1 %tobool3.not, label %if.end11, label %if.end.cleanup_crit_edge, !prof !42

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %arrayidx12 = getelementptr i8, ptr %add.ptr, i32 2
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %tobool15.not = icmp ult i8 %9, 64
  br i1 %tobool15.not, label %if.end23, label %if.end11.cleanup_crit_edge, !prof !42

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %if.end11
  %arrayidx24 = getelementptr i8, ptr %add.ptr, i32 3
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx24, align 1
  %12 = and i8 %11, 31
  %and26 = zext i8 %12 to i32
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %13 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn2.i = load ptr, ptr %ports.i, align 4
  %cmp.not3.i = icmp eq ptr %.pn2.i, %ports.i
  br i1 %cmp.not3.i, label %if.end23.dsa_master_find_slave.exit.thread_crit_edge, label %if.end23.for.body.i_crit_edge

if.end23.for.body.i_crit_edge:                    ; preds = %if.end23
  br label %for.body.i

if.end23.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end23.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %if.end23.for.body.i_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn4.i, i32 -432
  %18 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3.i41 = icmp eq i32 %21, 0
  br i1 %cmp3.i41, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index4.i = getelementptr i8, ptr %.pn4.i, i32 -428
  %22 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %and26)
  %cmp5.i = icmp eq i32 %23, %and26
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i = getelementptr i8, ptr %.pn4.i, i32 -424
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp7.i = icmp eq i32 %25, 3
  br i1 %cmp7.i, label %dsa_master_find_slave.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i42 = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i42, label %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread

dsa_master_find_slave.exit.thread:                ; preds = %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, %if.end23.dsa_master_find_slave.exit.thread_crit_edge
  %27 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %27, align 8
  br label %cleanup

dsa_master_find_slave.exit:                       ; preds = %land.lhs.true6.i
  %dp.0.le.i = getelementptr i8, ptr %.pn4.i, i32 -448
  %29 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dp.0.le.i, align 4
  %31 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %31, align 8
  %tobool28.not = icmp eq ptr %30, null
  br i1 %tobool28.not, label %dsa_master_find_slave.exit.cleanup_crit_edge, label %if.end30

dsa_master_find_slave.exit.cleanup_crit_edge:     ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end30:                                         ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call31 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 4) #3
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %31, align 8
  %dp.i.i = getelementptr i8, ptr %34, i32 2312
  %35 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dp.i.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %39 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %dsa_master_find_slave.exit.cleanup_crit_edge, %dsa_master_find_slave.exit.thread, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %if.end30 ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.thread ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_leg_tag_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %3)
  %cmp.i = icmp ult i32 %3, 66
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i:                                        ; preds = %entry
  %sub.i = sub nuw nsw i32 66, %3
  %call.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !42

do.body3.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !43
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %sub.i
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i, align 4
  %add.i.i = add i32 %9, %sub.i
  store i32 %add.i.i, ptr %len1.i, align 4
  br label %if.end

if.end:                                           ; preds = %__skb_put.exit.i, %entry.if.end_crit_edge
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 6
  %12 = call ptr @memmove(ptr %11, ptr %add.ptr.i, i32 12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -120, ptr %add.ptr, align 1
  %arrayidx3 = getelementptr i8, ptr %13, i32 13
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 116, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %13, i32 14
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr i8, ptr %13, i32 15
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %13, i32 16
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx6, align 1
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  %21 = trunc i32 %20 to i8
  %conv = and i8 %21, 15
  %arrayidx7 = getelementptr i8, ptr %13, i32 17
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %arrayidx7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %if.end ], [ null, %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_leg_tag_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 15
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp3.i = icmp ult i32 %1, 15
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !41

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 15, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #3
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !41

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
  %arrayidx = getelementptr i8, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 15
  %and = zext i8 %8 to i32
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %9 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %13)
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
  %14 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp3.i17 = icmp eq i32 %17, 0
  br i1 %cmp3.i17, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index4.i = getelementptr i8, ptr %.pn4.i, i32 -428
  %18 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and)
  %cmp5.i = icmp eq i32 %19, %and
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %type.i = getelementptr i8, ptr %.pn4.i, i32 -424
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp7.i = icmp eq i32 %21, 3
  br i1 %cmp7.i, label %dsa_master_find_slave.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i18 = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i18, label %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %dsa_master_find_slave.exit.thread

dsa_master_find_slave.exit.thread:                ; preds = %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, %if.end.dsa_master_find_slave.exit.thread_crit_edge
  %23 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 8
  br label %cleanup

dsa_master_find_slave.exit:                       ; preds = %land.lhs.true6.i
  %dp.0.le.i = getelementptr i8, ptr %.pn4.i, i32 -448
  %25 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dp.0.le.i, align 4
  %27 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %27, align 8
  %tobool5.not = icmp eq ptr %26, null
  br i1 %tobool5.not, label %dsa_master_find_slave.exit.cleanup_crit_edge, label %if.end7

dsa_master_find_slave.exit.cleanup_crit_edge:     ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 6) #3
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %27, align 8
  %dp.i.i = getelementptr i8, ptr %30, i32 2312
  %31 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dp.i.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %32, i32 0, i32 14
  %33 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %35 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %37, i32 -14
  %add.ptr3.i = getelementptr i8, ptr %37, i32 -20
  %38 = call ptr @memmove(ptr %add.ptr.i21, ptr %add.ptr3.i, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %dsa_master_find_slave.exit.cleanup_crit_edge, %dsa_master_find_slave.exit.thread, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb, %if.end7 ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.thread ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_tag_xmit_prepend(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i.i, align 4
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %2 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %queue_mapping.i.i, align 8
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end.i_crit_edge, !prof !41

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 64, %5
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge

if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %brcm_tag_xmit_ll.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !42

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #3, !srcloc !43
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %11, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %__skb_put.exit.i.i, %entry.if.end.i_crit_edge
  %call3.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %call1.tr.i = trunc i16 %3 to i8
  %14 = shl i8 %call1.tr.i, 2
  %15 = and i8 %14, 28
  %conv7.i = or i8 %15, 32
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv7.i, ptr %13, align 1
  %arrayidx8.i = getelementptr i8, ptr %13, i32 1
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %13, i32 2
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx9.i, align 1
  %index.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp.i = icmp eq i32 %20, 8
  %spec.store.select.i = zext i1 %cmp.i to i8
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.store.select.i, ptr %arrayidx9.i, align 1
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  %shl15.i = shl nuw i32 1, %23
  %conv17.i = trunc i32 %shl15.i to i8
  %arrayidx18.i = getelementptr i8, ptr %13, i32 3
  %24 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv17.i, ptr %arrayidx18.i, align 1
  %25 = load i32, ptr %index.i, align 4
  %.tr.i = trunc i32 %25 to i16
  %26 = shl i16 %.tr.i, 8
  %conv23.i = or i16 %26, %3
  %27 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv23.i, ptr %queue_mapping.i.i, align 8
  br label %brcm_tag_xmit_ll.exit

brcm_tag_xmit_ll.exit:                            ; preds = %if.end.i, %if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge
  %retval.0.i = phi ptr [ %skb, %if.end.i ], [ null, %if.then.i.i.brcm_tag_xmit_ll.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @brcm_tag_rcv_prepend(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @brcm_tag_rcv_ll(ptr noundef %skb, ptr noundef %dev, i32 noundef 14)
  ret ptr %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_alias499, !1, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_brcm.c", i32 207, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias500, !3, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!3 = !{!"../net/dsa/tag_brcm.c", i32 284, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias501, !5, !"__UNIQUE_ID_alias501", i1 false, i1 false}
!5 = !{!"../net/dsa/tag_brcm.c", i32 311, i32 1}
!6 = !{ptr @__initcall__kmod_tag_brcm__502_326_dsa_tag_driver_module_init6, !7, !"__initcall__kmod_tag_brcm__502_326_dsa_tag_driver_module_init6", i1 false, i1 false}
!7 = !{!"../net/dsa/tag_brcm.c", i32 326, i32 1}
!8 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !7, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file503, !10, !"__UNIQUE_ID_file503", i1 false, i1 false}
!10 = !{!"../net/dsa/tag_brcm.c", i32 328, i32 1}
!11 = !{ptr @__UNIQUE_ID_license504, !10, !"__UNIQUE_ID_license504", i1 false, i1 false}
!12 = !{ptr @dsa_tag_driver_array, !13, !"dsa_tag_driver_array", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_brcm.c", i32 314, i32 31}
!14 = !{ptr @dsa_tag_driver_brcm_netdev_ops, !15, !"dsa_tag_driver_brcm_netdev_ops", i1 false, i1 false}
!15 = !{!"../net/dsa/tag_brcm.c", i32 206, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/dsa/tag_brcm.c", i32 199, i32 10}
!18 = !{ptr @brcm_netdev_ops, !19, !"brcm_netdev_ops", i1 false, i1 false}
!19 = !{!"../net/dsa/tag_brcm.c", i32 198, i32 36}
!20 = !{ptr @dsa_tag_driver_brcm_legacy_netdev_ops, !21, !"dsa_tag_driver_brcm_legacy_netdev_ops", i1 false, i1 false}
!21 = !{!"../net/dsa/tag_brcm.c", i32 283, i32 1}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/dsa/tag_brcm.c", i32 276, i32 10}
!24 = !{ptr @brcm_legacy_netdev_ops, !25, !"brcm_legacy_netdev_ops", i1 false, i1 false}
!25 = !{!"../net/dsa/tag_brcm.c", i32 275, i32 36}
!26 = !{ptr @dsa_tag_driver_brcm_prepend_netdev_ops, !27, !"dsa_tag_driver_brcm_prepend_netdev_ops", i1 false, i1 false}
!27 = !{!"../net/dsa/tag_brcm.c", i32 310, i32 1}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/dsa/tag_brcm.c", i32 303, i32 10}
!30 = !{ptr @brcm_prepend_netdev_ops, !31, !"brcm_prepend_netdev_ops", i1 false, i1 false}
!31 = !{!"../net/dsa/tag_brcm.c", i32 302, i32 36}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2154587878, i64 2154588366, i64 2154587915, i64 2154587971, i64 2154588005, i64 2154588029, i64 2154588070, i64 2154588091, i64 2154588119, i64 2154588153}
