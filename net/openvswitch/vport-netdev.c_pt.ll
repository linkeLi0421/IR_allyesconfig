; ModuleID = '/llk/IR_all_yes/net/openvswitch/vport-netdev.c_pt.bc'
source_filename = "../net/openvswitch/vport-netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ovs_netdev_link\22, \22a\22\09"
module asm "\09.weak\09__crc_ovs_netdev_link\09\09\09\09"
module asm "\09.long\09__crc_ovs_netdev_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ovs_netdev_link:\09\09\09\09\09"
module asm "\09.asciz \09\22ovs_netdev_link\22\09\09\09\09\09"
module asm "__kstrtabns_ovs_netdev_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ovs_netdev_tunnel_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_ovs_netdev_tunnel_destroy\09\09\09\09"
module asm "\09.long\09__crc_ovs_netdev_tunnel_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ovs_netdev_tunnel_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ovs_netdev_tunnel_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ovs_netdev_tunnel_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vport_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.vport = type { ptr, ptr, ptr, ptr, i16, %struct.hlist_node, %struct.hlist_node, ptr, %struct.list_head, %struct.callback_head }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.datapath = type { %struct.callback_head, %struct.list_head, %struct.flow_table, ptr, ptr, %struct.possible_net_t, i32, i32, %struct.dp_meter_table, ptr }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.dp_meter_table = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.149 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.120, [48 x i8], %union.anon.121, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.123, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, ptr }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.125, i32, i32, i32, i16, i16, %union.anon.127, i32, %union.anon.128, %union.anon.129, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.125 = type { i32 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.178 }
%union.anon.178 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.150, i16, i8, i8, i32, i16, i16 }
%union.anon.150 = type { %struct.anon.152 }
%struct.anon.152 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }

@__kstrtab_ovs_netdev_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_ovs_netdev_link = external dso_local constant [0 x i8], align 1
@__ksymtab_ovs_netdev_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ovs_netdev_link to i32), ptr @__kstrtab_ovs_netdev_link, ptr @__kstrtabns_ovs_netdev_link }, section "___ksymtab_gpl+ovs_netdev_link", align 4
@ovs_netdev_detach_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/openvswitch/vport-netdev.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_ovs_netdev_tunnel_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ovs_netdev_tunnel_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ovs_netdev_tunnel_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ovs_netdev_tunnel_destroy to i32), ptr @__kstrtab_ovs_netdev_tunnel_destroy, ptr @__kstrtabns_ovs_netdev_tunnel_destroy }, section "___ksymtab_gpl+ovs_netdev_tunnel_destroy", align 4
@ovs_netdev_get_vport.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ovs_netdev_vport_ops = internal global { %struct.vport_ops, [60 x i8] } { %struct.vport_ops { i32 1, ptr @netdev_create, ptr @netdev_destroy, ptr null, ptr null, ptr @dev_queue_xmit, ptr null, %struct.list_head zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/openvswitch/datapath.h\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 65534]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 146, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 189, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"ovs_netdev_vport_ops\00", align 1
@___asan_gen_.16 = private constant [34 x i8] c"../net/openvswitch/vport-netdev.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 194, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"../net/openvswitch/datapath.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 219, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 1810, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_ovs_netdev_link, ptr @__ksymtab_ovs_netdev_tunnel_destroy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ovs_netdev_vport_ops, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_netdev_vport_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_netdev_link(ptr noundef %vport, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dp = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 2
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 4
  %net.i = getelementptr inbounds %struct.datapath, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %call1 = tail call ptr @dev_get_by_name(ptr noundef %3, ptr noundef %name) #4
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %vport, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.error_free_vport_crit_edge, label %if.end

entry.error_free_vport_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_free_vport

if.end:                                           ; preds = %entry
  %dev_tracker = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 1
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 119
  %call.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %dev_tracker, i32 noundef 3264) #4
  %5 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vport, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.error_put_crit_edge

if.end.error_put_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_put

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 32
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 16
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %lor.lhs.false.error_putthread-pre-split_crit_edge [
    i16 1, label %lor.lhs.false.lor.lhs.false13_crit_edge
    i16 -2, label %lor.lhs.false.lor.lhs.false13_crit_edge65
  ]

lor.lhs.false.lor.lhs.false13_crit_edge65:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false13

lor.lhs.false.lor.lhs.false13_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false13

lor.lhs.false.error_putthread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_putthread-pre-split

lor.lhs.false13:                                  ; preds = %lor.lhs.false.lor.lhs.false13_crit_edge, %lor.lhs.false.lor.lhs.false13_crit_edge65
  %call15 = tail call i32 @ovs_is_internal_dev(ptr noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false13.error_putthread-pre-split_crit_edge

lor.lhs.false13.error_putthread-pre-split_crit_edge: ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_putthread-pre-split

if.end18:                                         ; preds = %lor.lhs.false13
  tail call void @rtnl_lock() #4
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport, align 4
  %14 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dp, align 4
  %call.i.i = tail call i32 @lockdep_ovsl_is_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end18.get_dpdev.exit_crit_edge, !prof !27

if.end18.get_dpdev.exit_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %get_dpdev.exit

do.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 219, i32 noundef 9, ptr noundef null) #4
  br label %get_dpdev.exit

get_dpdev.exit:                                   ; preds = %do.end.i.i, %if.end18.get_dpdev.exit_crit_edge
  %call21.i.i = tail call ptr @ovs_lookup_vport(ptr noundef %15, i16 noundef zeroext 0) #4
  %16 = ptrtoint ptr %call21.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call21.i.i, align 4
  %call22 = tail call i32 @netdev_master_upper_dev_link(ptr noundef %13, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %get_dpdev.exit.error_unlock_crit_edge

get_dpdev.exit.error_unlock_crit_edge:            ; preds = %get_dpdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_unlock

if.end25:                                         ; preds = %get_dpdev.exit
  %18 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vport, align 4
  %call27 = tail call i32 @netdev_rx_handler_register(ptr noundef %19, ptr noundef nonnull @netdev_frame_hook, ptr noundef %vport) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %20 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vport, align 4
  br i1 %tobool28.not, label %if.end30, label %error_master_upper_dev_unlink

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dev_disable_lro(ptr noundef %21) #4
  %22 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vport, align 4
  %call33 = tail call i32 @dev_set_promiscuity(ptr noundef %23, i32 noundef 1) #4
  %24 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vport, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %priv_flags, align 16
  %or = or i64 %27, 1024
  store i64 %or, ptr %priv_flags, align 16
  tail call void @rtnl_unlock() #4
  br label %cleanup

error_master_upper_dev_unlink:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dp, align 4
  %call37 = tail call fastcc ptr @get_dpdev(ptr noundef %29)
  tail call void @netdev_upper_dev_unlink(ptr noundef %21, ptr noundef %call37) #4
  br label %error_unlock

error_unlock:                                     ; preds = %error_master_upper_dev_unlink, %get_dpdev.exit.error_unlock_crit_edge
  %err.0 = phi i32 [ %call22, %get_dpdev.exit.error_unlock_crit_edge ], [ %call27, %error_master_upper_dev_unlink ]
  tail call void @rtnl_unlock() #4
  br label %error_putthread-pre-split

error_putthread-pre-split:                        ; preds = %error_unlock, %lor.lhs.false13.error_putthread-pre-split_crit_edge, %lor.lhs.false.error_putthread-pre-split_crit_edge
  %err.1.ph = phi i32 [ -22, %lor.lhs.false13.error_putthread-pre-split_crit_edge ], [ -22, %lor.lhs.false.error_putthread-pre-split_crit_edge ], [ %err.0, %error_unlock ]
  %30 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load ptr, ptr %vport, align 4
  br label %error_put

error_put:                                        ; preds = %error_putthread-pre-split, %if.end.error_put_crit_edge
  %31 = phi ptr [ %.pr, %error_putthread-pre-split ], [ %6, %if.end.error_put_crit_edge ]
  %err.1 = phi i32 [ %err.1.ph, %error_putthread-pre-split ], [ -22, %if.end.error_put_crit_edge ]
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %error_put.error_free_vport_crit_edge, label %do.body1.i.i

error_put.error_free_vport_crit_edge:             ; preds = %error_put
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_free_vport

do.body1.i.i:                                     ; preds = %error_put
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 119
  %call.i.i64 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !28
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i.i = add i32 %44, -1
  store i32 %add13.i.i, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !29
  %and.i.i.i.i = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !27

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #4, !srcloc !30
  br label %error_free_vport

error_free_vport:                                 ; preds = %dev_put.exit.i, %error_put.error_free_vport_crit_edge, %entry.error_free_vport_crit_edge
  %err.2 = phi i32 [ -19, %entry.error_free_vport_crit_edge ], [ %err.1, %error_put.error_free_vport_crit_edge ], [ %err.1, %dev_put.exit.i ]
  tail call void @ovs_vport_free(ptr noundef %vport) #4
  %46 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error_free_vport, %if.end30
  %retval.0 = phi ptr [ %46, %error_free_vport ], [ %vport, %if.end30 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_is_internal_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_master_upper_dev_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_dpdev(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @lockdep_ovsl_is_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.ovs_vport_ovsl.exit_crit_edge, !prof !27

entry.ovs_vport_ovsl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %ovs_vport_ovsl.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 219, i32 noundef 9, ptr noundef null) #4
  br label %ovs_vport_ovsl.exit

ovs_vport_ovsl.exit:                              ; preds = %do.end.i, %entry.ovs_vport_ovsl.exit_crit_edge
  %call21.i = tail call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext 0) #4
  %0 = ptrtoint ptr %call21.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call21.i, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netdev_frame_hook(ptr nocapture noundef readonly %pskb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i.i = and i64 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.error.i_crit_edge, label %if.then.i.i, !prof !27

if.end.error.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.then.i.i:                                      ; preds = %if.end
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 95
  %8 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call3.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call3.i.i, label %if.then.i.i.ovs_netdev_get_vport.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.ovs_netdev_get_vport.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ovs_netdev_get_vport.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %call4.i.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.ovs_netdev_get_vport.exit.i_crit_edge

lor.lhs.false.i.i.ovs_netdev_get_vport.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ovs_netdev_get_vport.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.ovs_netdev_get_vport.exit.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.ovs_netdev_get_vport.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ovs_netdev_get_vport.exit.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b15.i.i = load i1, ptr @ovs_netdev_get_vport.__warned, align 1
  br i1 %.b15.i.i, label %land.lhs.true8.i.i.ovs_netdev_get_vport.exit.i_crit_edge, label %if.then10.i.i

land.lhs.true8.i.i.ovs_netdev_get_vport.exit.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ovs_netdev_get_vport.exit.i

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ovs_netdev_get_vport.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.2) #4
  br label %ovs_netdev_get_vport.exit.i

ovs_netdev_get_vport.exit.i:                      ; preds = %if.then10.i.i, %land.lhs.true8.i.i.ovs_netdev_get_vport.exit.i_crit_edge, %land.lhs.true.i.i.ovs_netdev_get_vport.exit.i_crit_edge, %lor.lhs.false.i.i.ovs_netdev_get_vport.exit.i_crit_edge, %if.then.i.i.ovs_netdev_get_vport.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %ovs_netdev_get_vport.exit.i.error.i_crit_edge, label %if.end.i, !prof !27

ovs_netdev_get_vport.exit.i.error.i_crit_edge:    ; preds = %ovs_netdev_get_vport.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i

if.end.i:                                         ; preds = %ovs_netdev_get_vport.exit.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i40.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i40.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i41.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

land.lhs.true.i41.i:                              ; preds = %if.end.i
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not.i.i = icmp eq i16 %15, 0
  br i1 %cmp.not.i.i, label %land.lhs.true.i41.i.if.end12.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i41.i.if.end12.i_crit_edge:         ; preds = %land.lhs.true.i41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i41.i
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 8
  %16 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gso_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.i.i = icmp eq i32 %17, 0
  br i1 %cmp4.i.i, label %skb_warn_if_lro.exit.i, label %land.lhs.true3.i.i.if.end12.i_crit_edge, !prof !27

land.lhs.true3.i.i.if.end12.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

skb_warn_if_lro.exit.i:                           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__skb_warn_lro_forwarding(ptr noundef %1) #4
  br label %error.i

if.end12.i:                                       ; preds = %land.lhs.true3.i.i.if.end12.i_crit_edge, %land.lhs.true.i41.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %users.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i.i, i32 noundef 4) #4
  %18 = ptrtoint ptr %users.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %users.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.not.i.i = icmp eq i32 %19, 1
  br i1 %cmp.i.not.i.i, label %skb_share_check.exit.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end12.i
  %call7.i.i = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #4
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %skb_share_check.exit.thread.i, label %skb_share_check.exit.thread55.i, !prof !27

skb_share_check.exit.thread55.i:                  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @consume_skb(ptr noundef %1) #4
  br label %if.end24.i

skb_share_check.exit.thread.i:                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #4
  br label %cleanup

skb_share_check.exit.i:                           ; preds = %if.end12.i
  %tobool14.not.i = icmp eq ptr %1, null
  br i1 %tobool14.not.i, label %skb_share_check.exit.i.cleanup_crit_edge, label %skb_share_check.exit.i.if.end24.i_crit_edge, !prof !27

skb_share_check.exit.i.if.end24.i_crit_edge:      ; preds = %skb_share_check.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i

skb_share_check.exit.i.cleanup_crit_edge:         ; preds = %skb_share_check.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24.i:                                       ; preds = %skb_share_check.exit.i.if.end24.i_crit_edge, %skb_share_check.exit.thread55.i
  %skb.addr.0.i58.i = phi ptr [ %call7.i.i, %skb_share_check.exit.thread55.i ], [ %1, %skb_share_check.exit.i.if.end24.i_crit_edge ]
  %20 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i58.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp.i = icmp eq i16 %24, 1
  br i1 %cmp.i, label %if.then26.i, label %if.end24.i.if.end28.i_crit_edge

if.end24.i.if.end28.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end24.i
  %call.i.i = tail call ptr @skb_push(ptr noundef nonnull %skb.addr.0.i58.i, i32 noundef 14) #4
  %ip_summed.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i58.i, i32 0, i32 15
  %25 = ptrtoint ptr %ip_summed.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i.i.i.i = load i16, ptr %ip_summed.i.i.i.i, align 8
  %26 = and i16 %bf.load.i.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %26)
  %cmp.i.i.i.i = icmp eq i16 %26, 1024
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.then26.i.if.end28.i_crit_edge

if.then26.i.if.end28.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.then.i.i.i.i:                                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i58.i, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i58.i, i32 0, i32 15, i32 0, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %call.i.i.i.i = tail call i32 @csum_partial(ptr noundef %28, i32 noundef 14, i32 noundef 0) #4
  %add.i.i.i.i.i.i = add i32 %call.i.i.i.i, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i.i, i32 %call.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i.i, %call.i.i.i.i
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  %add1.i.i.i.i.i.i = add i32 %add.i.i.i.i.i.i, %conv.i.i.i.i.i.i
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add1.i.i.i.i.i.i, ptr %29, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then.i.i.i.i, %if.then26.i.if.end28.i_crit_edge, %if.end24.i.if.end28.i_crit_edge
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i58.i, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end28.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end28.i.skb_dst.exit.i.i.i_crit_edge:          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end28.i
  %call.i.i.i44.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i44.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i44.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, !prof !27

land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #4
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %if.end28.i.skb_dst.exit.i.i.i_crit_edge
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %33, align 8
  %and25.i.i.i.i = and i32 %37, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and25.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %skb_dst.exit.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i

skb_dst.exit.i.i.i.if.end.i.i_crit_edge:          ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %skb_dst.exit.i.i.i
  %38 = inttoptr i32 %and25.i.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags.i.i.i, align 4
  %41 = and i16 %40, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool1.not.i.i.i = icmp eq i16 %41, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i45.i

land.lhs.true.i.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true.i45.i:                              ; preds = %land.lhs.true.i.i.i
  %type.i.i = getelementptr inbounds %struct.metadata_dst, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i, label %if.then.i46.i, label %land.lhs.true.i45.i.if.end.i.i_crit_edge

land.lhs.true.i45.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i46.i:                                    ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #6
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %38, i32 0, i32 2
  br label %skb_tunnel_info.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i45.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.i.if.end.i.i_crit_edge, %skb_dst.exit.i.i.i.if.end.i.i_crit_edge
  %and.i.i47.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i47.i)
  %tobool.not.i27.i.i = icmp eq i32 %and.i.i47.i, 0
  br i1 %tobool.not.i27.i.i, label %if.end.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i29.i.i

if.end.i.i.skb_dst.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i.i

land.lhs.true.i29.i.i:                            ; preds = %if.end.i.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i28.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i28.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i29.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i29.i.i.skb_dst.exit.i.i_crit_edge: ; preds = %land.lhs.true.i29.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i29.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !27

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #4
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i29.i.i.skb_dst.exit.i.i_crit_edge, %if.end.i.i.skb_dst.exit.i.i_crit_edge
  %44 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %33, align 8
  %and25.i.i.i = and i32 %45, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool2.not.i.i, label %skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge, label %land.lhs.true3.i48.i

skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_tunnel_info.exit.i

land.lhs.true3.i48.i:                             ; preds = %skb_dst.exit.i.i
  %46 = inttoptr i32 %and25.i.i.i to ptr
  %lwtstate.i.i = getelementptr inbounds %struct.dst_entry, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %lwtstate.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lwtstate.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %48, null
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i48.i.skb_tunnel_info.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i48.i.skb_tunnel_info.exit.i_crit_edge: ; preds = %land.lhs.true3.i48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_tunnel_info.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i48.i
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 4
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %50, label %land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge [
    i16 2, label %land.lhs.true5.i.i.if.then15.i.i_crit_edge
    i16 4, label %land.lhs.true5.i.i.if.then15.i.i_crit_edge4
  ]

land.lhs.true5.i.i.if.then15.i.i_crit_edge4:      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i.i

land.lhs.true5.i.i.if.then15.i.i_crit_edge:       ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15.i.i

land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_tunnel_info.exit.i

if.then15.i.i:                                    ; preds = %land.lhs.true5.i.i.if.then15.i.i_crit_edge, %land.lhs.true5.i.i.if.then15.i.i_crit_edge4
  %data.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %48, i32 0, i32 7
  br label %skb_tunnel_info.exit.i

skb_tunnel_info.exit.i:                           ; preds = %if.then15.i.i, %land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge, %land.lhs.true3.i48.i.skb_tunnel_info.exit.i_crit_edge, %skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge, %if.then.i46.i
  %retval.0.i49.i = phi ptr [ %u.i.i, %if.then.i46.i ], [ %data.i.i.i, %if.then15.i.i ], [ null, %land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge ], [ null, %land.lhs.true3.i48.i.skb_tunnel_info.exit.i_crit_edge ], [ null, %skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge ]
  %call30.i = tail call i32 @ovs_vport_receive(ptr noundef nonnull %9, ptr noundef nonnull %skb.addr.0.i58.i, ptr noundef %retval.0.i49.i) #4
  br label %cleanup

error.i:                                          ; preds = %skb_warn_if_lro.exit.i, %ovs_netdev_get_vport.exit.i.error.i_crit_edge, %if.end.error.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %error.i, %skb_tunnel_info.exit.i, %skb_share_check.exit.i.cleanup_crit_edge, %skb_share_check.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 0, %skb_share_check.exit.thread.i ], [ 0, %skb_share_check.exit.i.cleanup_crit_edge ], [ 0, %skb_tunnel_info.exit.i ], [ 0, %error.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_disable_lro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_promiscuity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_netdev_detach_dev(ptr nocapture noundef readonly %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @ovs_netdev_detach_dev.__already_done, align 1
  br i1 %.b49, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !31

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ovs_netdev_detach_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 146) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and = and i64 %3, -1025
  store i64 %and, ptr %priv_flags, align 16
  %4 = load ptr, ptr %vport, align 4
  tail call void @netdev_rx_handler_unregister(ptr noundef %4) #4
  %5 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vport, align 4
  %call40 = tail call ptr @netdev_master_upper_dev_get(ptr noundef %6) #4
  tail call void @netdev_upper_dev_unlink(ptr noundef %6, ptr noundef %call40) #4
  %7 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vport, align 4
  %call42 = tail call i32 @dev_set_promiscuity(ptr noundef %8, i32 noundef -1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_netdev_tunnel_destroy(ptr noundef %vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #4
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ovs_netdev_detach_dev(ptr noundef %vport)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport, align 4
  %reg_state = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 121
  %6 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @rtnl_delete_link(ptr noundef %5) #4
  %7 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %vport, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %8 = phi ptr [ %.pr, %if.then2 ], [ %5, %if.end.if.end5_crit_edge ]
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end5.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.end5.dev_put_track.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.end5
  %dev_tracker = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 1
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #4
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !28
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 118
  %10 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, %12
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add13.i.i = add i32 %21, -1
  store i32 %add13.i.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !29
  %and.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !27

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #4, !srcloc !30
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.end5.dev_put_track.exit_crit_edge
  %23 = ptrtoint ptr %vport to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %vport, align 4
  tail call void @rtnl_unlock() #4
  %rcu = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 9
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @vport_netdev_free) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_delete_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vport_netdev_free(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -48
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_put_track.exit_crit_edge, label %do.body1.i.i

entry.dev_put_track.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %entry
  %dev_tracker = getelementptr i8, ptr %rcu, i32 -44
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !28
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i.i = add i32 %14, -1
  store i32 %add13.i.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !29
  %and.i.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !27

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #4, !srcloc !30
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %entry.dev_put_track.exit_crit_edge
  tail call void @ovs_vport_free(ptr noundef %add.ptr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_netdev_get_vport(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.then, !prof !27

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %entry
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler_data, align 4
  %call3 = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call3, label %if.then.return_crit_edge, label %lor.lhs.false

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %if.then
  %call4 = tail call i32 @rcu_read_lock_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true8

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @ovs_netdev_get_vport.__warned, align 1
  br i1 %.b15, label %land.lhs.true8.return_crit_edge, label %if.then10

land.lhs.true8.return_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ovs_netdev_get_vport.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.2) #4
  br label %return

return:                                           ; preds = %if.then10, %land.lhs.true8.return_crit_edge, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.then10 ], [ %3, %land.lhs.true8.return_crit_edge ], [ %3, %land.lhs.true.return_crit_edge ], [ %3, %lor.lhs.false.return_crit_edge ], [ %3, %if.then.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_netdev_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr getelementptr inbounds (%struct.vport_ops, ptr @ovs_netdev_vport_ops, i32 0, i32 6), align 4
  %call = tail call i32 @__ovs_vport_ops_register(ptr noundef nonnull @ovs_netdev_vport_ops) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ovs_vport_ops_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_netdev_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ovs_vport_ops_unregister(ptr noundef nonnull @ovs_netdev_vport_ops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_ops_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_ovsl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_lookup_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_vport_receive(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_warn_lro_forwarding(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @netdev_create(ptr noundef %parms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovs_vport_alloc(i32 noundef 0, ptr noundef nonnull @ovs_netdev_vport_ops, ptr noundef %parms) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parms, align 4
  %call2 = tail call ptr @ovs_netdev_link(ptr noundef %call, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_destroy(ptr noundef %vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #4
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ovs_netdev_detach_dev(ptr noundef %vport)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #4
  %rcu = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 9
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @vport_netdev_free) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_vport_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_ovs_netdev_link, !1, !"__ksymtab_ovs_netdev_link", i1 false, i1 false}
!1 = !{!"../net/openvswitch/vport-netdev.c", i32 123, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/openvswitch/vport-netdev.c", i32 146, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_ovs_netdev_tunnel_destroy, !7, !"__ksymtab_ovs_netdev_tunnel_destroy", i1 false, i1 false}
!7 = !{!"../net/openvswitch/vport-netdev.c", i32 182, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/openvswitch/vport-netdev.c", i32 189, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/openvswitch/datapath.h", i32 219, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!15 = !{ptr @ovs_netdev_vport_ops, !16, !"ovs_netdev_vport_ops", i1 false, i1 false}
!16 = !{!"../net/openvswitch/vport-netdev.c", i32 194, i32 25}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 745843, i64 745904}
!29 = !{i64 748575}
!30 = !{i64 748860}
!31 = !{!"branch_weights", i32 2000, i32 1}
