; ModuleID = '/llk/IR_all_yes/net/dsa/tag_ocelot.c_pt.bc'
source_filename = "../net/dsa/tag_ocelot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dsa_tag_driver = type { ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dsa_device_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dsa_port = type { %union.anon.129, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.129 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.165, i16, i16, i16 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { [6 x i8], [6 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_alias499 = internal constant [28 x i8] c"tag_ocelot.alias=dsa_tag-15\00", section ".modinfo", align 1
@__UNIQUE_ID_alias500 = internal constant [28 x i8] c"tag_ocelot.alias=dsa_tag-21\00", section ".modinfo", align 1
@__initcall__kmod_tag_ocelot__501_214_dsa_tag_driver_module_init6 = internal global ptr @dsa_tag_driver_module_init, section ".initcall6.init", align 4
@ocelot_tag_driver_array = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dsa_tag_driver_ocelot_netdev_ops, ptr @dsa_tag_driver_seville_netdev_ops], [24 x i8] zeroinitializer }, align 32
@__exitcall_dsa_tag_driver_module_exit = internal global ptr @dsa_tag_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file502 = internal constant [35 x i8] c"tag_ocelot.file=net/dsa/tag_ocelot\00", section ".modinfo", align 1
@__UNIQUE_ID_license503 = internal constant [26 x i8] c"tag_ocelot.license=GPL v2\00", section ".modinfo", align 1
@dsa_tag_driver_ocelot_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @ocelot_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@dsa_tag_driver_seville_netdev_ops = internal global { %struct.dsa_tag_driver, [16 x i8] } { %struct.dsa_tag_driver { ptr @seville_netdev_ops, %struct.list_head zeroinitializer, ptr null }, [16 x i8] zeroinitializer }, align 32
@ocelot_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @ocelot_xmit, ptr @ocelot_rcv, ptr null, ptr null, ptr null, i32 20, i32 0, ptr @.str, i32 15, i8 1 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ocelot\00", [25 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@seville_netdev_ops = internal constant { %struct.dsa_device_ops, [56 x i8] } { %struct.dsa_device_ops { ptr @seville_xmit, ptr @ocelot_rcv, ptr null, ptr null, ptr null, i32 20, i32 0, ptr @.str.4, i32 21, i8 1 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seville\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"ocelot_tag_driver_array\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 209, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [33 x i8] c"dsa_tag_driver_ocelot_netdev_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 194, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [34 x i8] c"dsa_tag_driver_seville_netdev_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 206, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"ocelot_netdev_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 185, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 186, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 695, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 723, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"seville_netdev_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 197, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [24 x i8] c"../net/dsa/tag_ocelot.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 198, i32 12 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias499, ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_file502, ptr @__UNIQUE_ID_license503, ptr @__exitcall_dsa_tag_driver_module_exit, ptr @__initcall__kmod_tag_ocelot__501_214_dsa_tag_driver_module_init6, ptr @dsa_tag_driver_module_exit, ptr @ocelot_tag_driver_array, ptr @dsa_tag_driver_ocelot_netdev_ops, ptr @dsa_tag_driver_seville_netdev_ops, ptr @ocelot_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @seville_netdev_ops, ptr @.str.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_tag_driver_array to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_ocelot_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsa_tag_driver_seville_netdev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seville_netdev_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dsa_tag_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_tag_drivers_register(ptr noundef nonnull @ocelot_tag_driver_array, i32 noundef 2, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dsa_tag_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsa_tag_drivers_unregister(ptr noundef nonnull @ocelot_tag_driver_array, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_tag_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocelot_xmit(ptr noundef returned %skb, ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  %dest.addr.i = alloca i64, align 8
  %injection = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %injection) #6
  %2 = ptrtoint ptr %injection to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %injection, align 4, !annotation !41
  call fastcc void @ocelot_xmit_common(ptr noundef %skb, ptr noundef %netdev, i32 noundef -2004877302, ptr noundef nonnull %injection)
  %3 = ptrtoint ptr %injection to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %injection, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest.addr.i)
  %7 = ptrtoint ptr %dest.addr.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl, ptr %dest.addr.i, align 8
  %call.i = call i32 @packing(ptr noundef %4, ptr noundef nonnull %dest.addr.i, i32 noundef 67, i32 noundef 56, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %injection) #6
  ret ptr %skb
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ocelot_rcv(ptr noundef %skb, ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  %src_port = alloca i64, align 8
  %qos_class = alloca i64, align 8
  %vlan_tci = alloca i64, align 8
  %tag_type = alloca i64, align 8
  %rew_val = alloca i64, align 8
  %dummy_vlan_tci = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_port) #6
  %0 = ptrtoint ptr %src_port to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %src_port, align 8, !annotation !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qos_class) #6
  %1 = ptrtoint ptr %qos_class to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %qos_class, align 8, !annotation !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vlan_tci) #6
  %2 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %vlan_tci, align 8, !annotation !41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tag_type) #6
  %3 = ptrtoint ptr %tag_type to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %tag_type, align 8, !annotation !41
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rew_val) #6
  %6 = ptrtoint ptr %rew_val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %rew_val, align 8, !annotation !41
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #6
  %call1 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #6
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #6
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %13 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i, align 4
  %sub.i = sub i16 %15, %conv.i
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %16 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %sub.i, ptr %mac_len.i, align 4
  %call4 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #6
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %trunc.i = trunc i16 %bf.lshr.i to i2
  %18 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %entry.skb_postpull_rcsum.exit_crit_edge [
    i2 -2, label %if.then.i
    i2 -1, label %land.lhs.true.i
  ]

entry.skb_postpull_rcsum.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_postpull_rcsum.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %sub.i.i = sub i32 0, %21
  %call2.i = tail call i32 @csum_partial(ptr noundef %5, i32 noundef 20, i32 noundef %sub.i.i) #6
  %sub.i1.i = sub i32 0, %call2.i
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i1.i, ptr %19, align 8
  br label %skb_postpull_rcsum.exit

land.lhs.true.i:                                  ; preds = %entry
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 8
  %conv.i.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i2.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i)
  %cmp13.i = icmp slt i32 %sub.i2.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge

land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_postpull_rcsum.exit

if.then15.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear18.i = and i16 %bf.load.i, -1537
  %30 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %bf.clear18.i, ptr %ip_summed.i, align 8
  br label %skb_postpull_rcsum.exit

skb_postpull_rcsum.exit:                          ; preds = %if.then15.i, %land.lhs.true.i.skb_postpull_rcsum.exit_crit_edge, %if.then.i, %entry.skb_postpull_rcsum.exit_crit_edge
  %call.i = call i32 @packing(ptr noundef %8, ptr noundef nonnull %src_port, i32 noundef 46, i32 noundef 43, i32 noundef 16, i32 noundef 1, i8 noundef zeroext 0) #6
  %call.i57 = call i32 @packing(ptr noundef %8, ptr noundef nonnull %qos_class, i32 noundef 19, i32 noundef 17, i32 noundef 16, i32 noundef 1, i8 noundef zeroext 0) #6
  %call.i58 = call i32 @packing(ptr noundef %8, ptr noundef nonnull %tag_type, i32 noundef 16, i32 noundef 16, i32 noundef 16, i32 noundef 1, i8 noundef zeroext 0) #6
  %call.i59 = call i32 @packing(ptr noundef %8, ptr noundef nonnull %vlan_tci, i32 noundef 15, i32 noundef 0, i32 noundef 16, i32 noundef 1, i8 noundef zeroext 0) #6
  %call.i60 = call i32 @packing(ptr noundef %8, ptr noundef nonnull %rew_val, i32 noundef 116, i32 noundef 85, i32 noundef 16, i32 noundef 1, i8 noundef zeroext 0) #6
  %31 = ptrtoint ptr %src_port to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %src_port, align 8
  %conv = trunc i64 %32 to i32
  %dsa_ptr.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 75
  %33 = ptrtoint ptr %dsa_ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dsa_ptr.i, align 4
  %dst1.i = getelementptr inbounds %struct.dsa_port, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn2.i = load ptr, ptr %ports.i, align 4
  %cmp.not3.i = icmp eq ptr %.pn2.i, %ports.i
  br i1 %cmp.not3.i, label %skb_postpull_rcsum.exit.dsa_master_find_slave.exit.thread_crit_edge, label %skb_postpull_rcsum.exit.for.body.i_crit_edge

skb_postpull_rcsum.exit.for.body.i_crit_edge:     ; preds = %skb_postpull_rcsum.exit
  br label %for.body.i

skb_postpull_rcsum.exit.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %skb_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_master_find_slave.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %skb_postpull_rcsum.exit.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn2.i, %skb_postpull_rcsum.exit.for.body.i_crit_edge ]
  %ds.i = getelementptr i8, ptr %.pn4.i, i32 -432
  %38 = ptrtoint ptr %ds.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ds.i, align 4
  %index.i = getelementptr inbounds %struct.dsa_switch, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp3.i = icmp eq i32 %41, 0
  br i1 %cmp3.i, label %land.lhs.true.i61, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i61:                                ; preds = %for.body.i
  %index4.i = getelementptr i8, ptr %.pn4.i, i32 -428
  %42 = ptrtoint ptr %index4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv)
  %cmp5.i = icmp eq i32 %43, %conv
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i61.for.inc.i_crit_edge

land.lhs.true.i61.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i61
  %type.i = getelementptr i8, ptr %.pn4.i, i32 -424
  %44 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp7.i = icmp eq i32 %45, 3
  br i1 %cmp7.i, label %dsa_master_find_slave.exit, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i61.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %46 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dsa_master_find_slave.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_master_find_slave.exit.thread

dsa_master_find_slave.exit.thread:                ; preds = %for.inc.i.dsa_master_find_slave.exit.thread_crit_edge, %skb_postpull_rcsum.exit.dsa_master_find_slave.exit.thread_crit_edge
  %47 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %47, align 8
  br label %cleanup

dsa_master_find_slave.exit:                       ; preds = %land.lhs.true6.i
  %dp.0.le.i = getelementptr i8, ptr %.pn4.i, i32 -448
  %49 = ptrtoint ptr %dp.0.le.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dp.0.le.i, align 4
  %51 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %51, align 8
  %tobool.not = icmp eq ptr %50, null
  br i1 %tobool.not, label %dsa_master_find_slave.exit.cleanup_crit_edge, label %if.end

dsa_master_find_slave.exit.cleanup_crit_edge:     ; preds = %dsa_master_find_slave.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dsa_master_find_slave.exit
  %dp.i.i = getelementptr i8, ptr %50, i32 2312
  %53 = ptrtoint ptr %dp.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dp.i.i, align 4
  %bridge.i = getelementptr inbounds %struct.dsa_port, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bridge.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %57 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %bf.load.i63 = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.shl.i = select i1 %tobool.not.i, i32 0, i32 1048576
  %bf.clear.i = and i32 %bf.load.i63, -1048577
  %bf.set.i = or i32 %bf.clear.i, %bf.shl.i
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  %58 = ptrtoint ptr %qos_class to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %qos_class, align 8
  %conv6 = trunc i64 %59 to i32
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %60 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv6, ptr %priority, align 4
  %61 = ptrtoint ptr %rew_val to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rew_val, align 8
  %conv7 = trunc i64 %62 to i32
  %tstamp_lo = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %63 = ptrtoint ptr %tstamp_lo to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv7, ptr %tstamp_lo, align 8
  %64 = load ptr, ptr %dp.i.i, align 4
  %65 = ptrtoint ptr %tag_type to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tag_type, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %tobool9.not = icmp eq i64 %66, 0
  %conv10 = select i1 %tobool9.not, i16 -32512, i16 -30552
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %64, i32 0, i32 4
  %67 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load.i64 = load i16, ptr %vlan_filtering_is_global.i, align 4
  %70 = and i16 %bf.load.i64, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool.not.i65 = icmp eq i16 %70, 0
  br i1 %tobool.not.i65, label %dsa_port_is_vlan_filtering.exit, label %if.then.i66

if.then.i66:                                      ; preds = %if.end
  %71 = and i16 %bf.load.i64, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool6.i.not = icmp eq i16 %71, 0
  br i1 %tobool6.i.not, label %if.then.i66.cleanup_crit_edge, label %if.then.i66.land.lhs.true_crit_edge

if.then.i66.land.lhs.true_crit_edge:              ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then.i66.cleanup_crit_edge:                    ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dsa_port_is_vlan_filtering.exit:                  ; preds = %if.end
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %64, i32 0, i32 11
  %72 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br i1 %tobool10.i, label %dsa_port_is_vlan_filtering.exit.land.lhs.true_crit_edge, label %dsa_port_is_vlan_filtering.exit.cleanup_crit_edge

dsa_port_is_vlan_filtering.exit.cleanup_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dsa_port_is_vlan_filtering.exit.land.lhs.true_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %dsa_port_is_vlan_filtering.exit.land.lhs.true_crit_edge, %if.then.i66.land.lhs.true_crit_edge
  %73 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %head.i, align 8
  %75 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %mac_header.i, align 2
  %conv.i.i68 = zext i16 %76 to i32
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 %conv.i.i68
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %conv10)
  %cmp = icmp eq i16 %78, %conv10
  br i1 %cmp, label %if.then17, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy_vlan_tci) #6
  %79 = ptrtoint ptr %dummy_vlan_tci to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -1, ptr %dummy_vlan_tci, align 2, !annotation !41
  %call.i69 = call ptr @skb_push(ptr noundef %skb, i32 noundef 14) #6
  %80 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i, align 8
  %81 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %81)
  %cmp.i.i.i = icmp eq i16 %81, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then17.skb_push_rcsum.exit_crit_edge

if.then17.skb_push_rcsum.exit_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_push_rcsum.exit

if.then.i.i.i:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data, align 4
  %84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %call.i.i.i = call i32 @csum_partial(ptr noundef %83, i32 noundef 14, i32 noundef 0) #6
  %add.i.i.i.i.i = add i32 %call.i.i.i, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add1.i.i.i.i.i, ptr %84, align 8
  br label %skb_push_rcsum.exit

skb_push_rcsum.exit:                              ; preds = %if.then.i.i.i, %if.then17.skb_push_rcsum.exit_crit_edge
  %call19 = call i32 @__skb_vlan_pop(ptr noundef %skb, ptr noundef nonnull %dummy_vlan_tci) #6
  %call20 = call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef 14) #6
  %88 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %vlan_tci, align 8
  %conv21 = trunc i64 %89 to i16
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %90 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv10, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %91 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv21, ptr %vlan_tci2.i, align 2
  %92 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %bf.load.i71 = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.set.i72 = or i32 %bf.load.i71, -2147483648
  store i32 %bf.set.i72, ptr %offload_fwd_mark.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy_vlan_tci) #6
  br label %cleanup

cleanup:                                          ; preds = %skb_push_rcsum.exit, %land.lhs.true.cleanup_crit_edge, %dsa_port_is_vlan_filtering.exit.cleanup_crit_edge, %if.then.i66.cleanup_crit_edge, %dsa_master_find_slave.exit.cleanup_crit_edge, %dsa_master_find_slave.exit.thread
  %retval.0 = phi ptr [ null, %dsa_master_find_slave.exit.cleanup_crit_edge ], [ %skb, %skb_push_rcsum.exit ], [ %skb, %land.lhs.true.cleanup_crit_edge ], [ %skb, %dsa_port_is_vlan_filtering.exit.cleanup_crit_edge ], [ null, %dsa_master_find_slave.exit.thread ], [ %skb, %if.then.i66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rew_val) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tag_type) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vlan_tci) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qos_class) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_port) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocelot_xmit_common(ptr noundef %skb, ptr nocapture noundef readonly %netdev, i32 noundef %ifh_prefix, ptr nocapture noundef writeonly %ifh) unnamed_addr #2 align 64 {
entry:
  %rew_op.addr.i = alloca i64, align 8
  %tag_type.addr.i = alloca i64, align 8
  %vlan_tci.addr.i = alloca i64, align 8
  %qos_class.addr.i = alloca i64, align 8
  %src.addr.i = alloca i64, align 8
  %bypass.addr.i = alloca i64, align 8
  %proto.i = alloca i16, align 2
  %tci.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  %ds1 = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds1, align 4
  %bridge.i.i = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %bridge.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge.i.i, align 4
  %tobool.not.i27.i = icmp eq ptr %5, null
  br i1 %tobool.not.i27.i, label %dsa_port_bridge_dev_get.exit.thread.i, label %dsa_port_bridge_dev_get.exit.i

dsa_port_bridge_dev_get.exit.thread.i:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tci.i) #6
  br label %ocelot_xmit_get_vlan_info.exit

dsa_port_bridge_dev_get.exit.i:                   ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #6
  %8 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %proto.i, align 2, !annotation !41
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tci.i) #6
  %9 = ptrtoint ptr %tci.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %tci.i, align 2, !annotation !41
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %dsa_port_bridge_dev_get.exit.i.ocelot_xmit_get_vlan_info.exit_crit_edge, label %lor.lhs.false.i

dsa_port_bridge_dev_get.exit.i.ocelot_xmit_get_vlan_info.exit_crit_edge: ; preds = %dsa_port_bridge_dev_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_xmit_get_vlan_info.exit

lor.lhs.false.i:                                  ; preds = %dsa_port_bridge_dev_get.exit.i
  %call1.i = tail call zeroext i1 @br_vlan_enabled(ptr noundef nonnull %7) #6
  br i1 %call1.i, label %if.end.i, label %lor.lhs.false.i.ocelot_xmit_get_vlan_info.exit_crit_edge

lor.lhs.false.i.ocelot_xmit_get_vlan_info.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ocelot_xmit_get_vlan_info.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %12 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv.i.i
  %call3.i = call i32 @br_vlan_get_proto(ptr noundef nonnull %7, ptr noundef nonnull %proto.i) #6
  %h_vlan_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %h_vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %h_vlan_proto.i, align 2
  %16 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %proto.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp.i = icmp eq i16 %15, %17
  br i1 %cmp.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 @__skb_vlan_pop(ptr noundef %skb, ptr noundef nonnull %tci.i) #6
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  %18 = call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %if.else.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.else.i.rcu_read_lock.exit.i_crit_edge
  %call9.i = call i32 @br_vlan_get_pvid_rcu(ptr noundef nonnull %7, ptr noundef nonnull %tci.i) #6
  %call.i28.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i28.i, label %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i31.i

rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i31.i:                              ; preds = %rcu_read_lock.exit.i
  %call1.i29.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call1.i29.i, 0
  br i1 %tobool.not.i30.i, label %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i33.i

land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i33.i:                             ; preds = %land.lhs.true.i31.i
  %.b4.i32.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32.i, label %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i34.i

land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i34.i:                                    ; preds = %land.lhs.true2.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i34.i, %land.lhs.true2.i33.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i31.i.rcu_read_unlock.exit.i_crit_edge, %rcu_read_lock.exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !43
  %22 = call i32 @llvm.read_register.i32(metadata !31) #6
  %and.i.i.i.i.i35.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i35.i to ptr
  %preempt_count.i.i.i.i36.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i36.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i36.i, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %if.end11.i

if.end11.i:                                       ; preds = %rcu_read_unlock.exit.i, %if.then6.i
  %26 = ptrtoint ptr %tci.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %storemerge26.in.i = load i16, ptr %tci.i, align 2
  %storemerge26.i = zext i16 %storemerge26.in.i to i64
  %27 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %28)
  %cmp13.not.i = icmp ne i16 %28, -32512
  %29 = zext i1 %cmp13.not.i to i64
  br label %ocelot_xmit_get_vlan_info.exit

ocelot_xmit_get_vlan_info.exit:                   ; preds = %if.end11.i, %lor.lhs.false.i.ocelot_xmit_get_vlan_info.exit_crit_edge, %dsa_port_bridge_dev_get.exit.i.ocelot_xmit_get_vlan_info.exit_crit_edge, %dsa_port_bridge_dev_get.exit.thread.i
  %vlan_tci.0 = phi i64 [ %storemerge26.i, %if.end11.i ], [ 0, %lor.lhs.false.i.ocelot_xmit_get_vlan_info.exit_crit_edge ], [ 0, %dsa_port_bridge_dev_get.exit.i.ocelot_xmit_get_vlan_info.exit_crit_edge ], [ 0, %dsa_port_bridge_dev_get.exit.thread.i ]
  %storemerge.i = phi i64 [ %29, %if.end11.i ], [ 0, %lor.lhs.false.i.ocelot_xmit_get_vlan_info.exit_crit_edge ], [ 0, %dsa_port_bridge_dev_get.exit.i.ocelot_xmit_get_vlan_info.exit_crit_edge ], [ 0, %dsa_port_bridge_dev_get.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tci.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i) #6
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 140
  %30 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not = icmp eq i16 %31, 0
  %priority4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %32 = ptrtoint ptr %priority4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %priority4, align 4
  br i1 %tobool.not, label %ocelot_xmit_get_vlan_info.exit.cond.end_crit_edge, label %cond.true

ocelot_xmit_get_vlan_info.exit.cond.end_crit_edge: ; preds = %ocelot_xmit_get_vlan_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %ocelot_xmit_get_vlan_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = and i32 %33, 15
  %arrayidx.i = getelementptr %struct.net_device, ptr %netdev, i32 0, i32 142, i32 %and.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv.i27 = zext i8 %35 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %ocelot_xmit_get_vlan_info.exit.cond.end_crit_edge
  %cond = phi i32 [ %conv.i27, %cond.true ], [ %33, %ocelot_xmit_get_vlan_info.exit.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  %call5 = call ptr @skb_push(ptr noundef %skb, i32 noundef 16) #6
  %call6 = call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #6
  %36 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %ifh_prefix, ptr %call6, align 4
  %37 = call ptr @memset(ptr %call5, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bypass.addr.i)
  %38 = ptrtoint ptr %bypass.addr.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1, ptr %bypass.addr.i, align 8
  %call.i = call i32 @packing(ptr noundef %call5, ptr noundef nonnull %bypass.addr.i, i32 noundef 127, i32 noundef 127, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bypass.addr.i)
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 18
  %39 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_ports, align 4
  %conv7 = zext i32 %40 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src.addr.i)
  %41 = ptrtoint ptr %src.addr.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv7, ptr %src.addr.i, align 8
  %call.i28 = call i32 @packing(ptr noundef %call5, ptr noundef nonnull %src.addr.i, i32 noundef 46, i32 noundef 43, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qos_class.addr.i)
  %42 = ptrtoint ptr %qos_class.addr.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv, ptr %qos_class.addr.i, align 8
  %call.i29 = call i32 @packing(ptr noundef %call5, ptr noundef nonnull %qos_class.addr.i, i32 noundef 19, i32 noundef 17, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qos_class.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vlan_tci.addr.i)
  %43 = ptrtoint ptr %vlan_tci.addr.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %vlan_tci.0, ptr %vlan_tci.addr.i, align 8
  %call.i30 = call i32 @packing(ptr noundef %call5, ptr noundef nonnull %vlan_tci.addr.i, i32 noundef 15, i32 noundef 0, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vlan_tci.addr.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tag_type.addr.i)
  %44 = ptrtoint ptr %tag_type.addr.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %storemerge.i, ptr %tag_type.addr.i, align 8
  %call.i31 = call i32 @packing(ptr noundef %call5, ptr noundef nonnull %tag_type.addr.i, i32 noundef 16, i32 noundef 16, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tag_type.addr.i)
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %45 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cb.i, align 8
  %ptp_cmd4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %47 = ptrtoint ptr %ptp_cmd4.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ptp_cmd4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %cmp.i32 = icmp ne i8 %48, 3
  %tobool.not.i33 = icmp eq ptr %46, null
  %or.cond.i = select i1 %cmp.i32, i1 true, i1 %tobool.not.i33
  br i1 %or.cond.i, label %if.else.i35, label %if.then.i34

if.then.i34:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %ts_id.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 13
  %49 = ptrtoint ptr %ts_id.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ts_id.i, align 1
  %conv9.i = zext i8 %50 to i32
  %shl.i = shl nuw nsw i32 %conv9.i, 3
  %or.i = or i32 %shl.i, 3
  br label %if.then

if.else.i35:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %48)
  %cmp11.i = icmp eq i8 %48, 5
  br i1 %cmp11.i, label %if.else.i35.if.then_crit_edge, label %if.else.i35.if.end_crit_edge

if.else.i35.if.end_crit_edge:                     ; preds = %if.else.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.i35.if.then_crit_edge:                    ; preds = %if.else.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.else.i35.if.then_crit_edge, %if.then.i34
  %rew_op.0.i.ph = phi i32 [ %or.i, %if.then.i34 ], [ 5, %if.else.i35.if.then_crit_edge ]
  %conv10 = zext i32 %rew_op.0.i.ph to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rew_op.addr.i)
  %51 = ptrtoint ptr %rew_op.addr.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv10, ptr %rew_op.addr.i, align 8
  %call.i36 = call i32 @packing(ptr noundef %call5, ptr noundef nonnull %rew_op.addr.i, i32 noundef 125, i32 noundef 117, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rew_op.addr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else.i35.if.end_crit_edge
  %52 = ptrtoint ptr %ifh to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5, ptr %ifh, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_vlan_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_proto(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_vlan_pop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_get_pvid_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @seville_xmit(ptr noundef returned %skb, ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  %dest.addr.i = alloca i64, align 8
  %injection = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dp.i = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %injection) #6
  %2 = ptrtoint ptr %injection to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %injection, align 4, !annotation !41
  call fastcc void @ocelot_xmit_common(ptr noundef %skb, ptr noundef %netdev, i32 noundef -2004877307, ptr noundef nonnull %injection)
  %3 = ptrtoint ptr %injection to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %injection, align 4
  %index = getelementptr inbounds %struct.dsa_port, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %sh_prom = zext i32 %6 to i64
  %shl = shl nuw i64 1, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dest.addr.i)
  %7 = ptrtoint ptr %dest.addr.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl, ptr %dest.addr.i, align 8
  %call.i = call i32 @packing(ptr noundef %4, ptr noundef nonnull %dest.addr.i, i32 noundef 67, i32 noundef 57, i32 noundef 16, i32 noundef 0, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dest.addr.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %injection) #6
  ret ptr %skb
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_alias499, !1, !"__UNIQUE_ID_alias499", i1 false, i1 false}
!1 = !{!"../net/dsa/tag_ocelot.c", i32 195, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias500, !3, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!3 = !{!"../net/dsa/tag_ocelot.c", i32 207, i32 1}
!4 = !{ptr @__initcall__kmod_tag_ocelot__501_214_dsa_tag_driver_module_init6, !5, !"__initcall__kmod_tag_ocelot__501_214_dsa_tag_driver_module_init6", i1 false, i1 false}
!5 = !{!"../net/dsa/tag_ocelot.c", i32 214, i32 1}
!6 = !{ptr @__exitcall_dsa_tag_driver_module_exit, !5, !"__exitcall_dsa_tag_driver_module_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file502, !8, !"__UNIQUE_ID_file502", i1 false, i1 false}
!8 = !{!"../net/dsa/tag_ocelot.c", i32 216, i32 1}
!9 = !{ptr @__UNIQUE_ID_license503, !8, !"__UNIQUE_ID_license503", i1 false, i1 false}
!10 = !{ptr @ocelot_tag_driver_array, !11, !"ocelot_tag_driver_array", i1 false, i1 false}
!11 = !{!"../net/dsa/tag_ocelot.c", i32 209, i32 31}
!12 = !{ptr @dsa_tag_driver_ocelot_netdev_ops, !13, !"dsa_tag_driver_ocelot_netdev_ops", i1 false, i1 false}
!13 = !{!"../net/dsa/tag_ocelot.c", i32 194, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dsa/tag_ocelot.c", i32 186, i32 12}
!16 = !{ptr @ocelot_netdev_ops, !17, !"ocelot_netdev_ops", i1 false, i1 false}
!17 = !{!"../net/dsa/tag_ocelot.c", i32 185, i32 36}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dsa_tag_driver_seville_netdev_ops, !26, !"dsa_tag_driver_seville_netdev_ops", i1 false, i1 false}
!26 = !{!"../net/dsa/tag_ocelot.c", i32 206, i32 1}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/dsa/tag_ocelot.c", i32 198, i32 12}
!29 = !{ptr @seville_netdev_ops, !30, !"seville_netdev_ops", i1 false, i1 false}
!30 = !{!"../net/dsa/tag_ocelot.c", i32 197, i32 36}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i64 2149270785}
!43 = !{i64 2149271051}
