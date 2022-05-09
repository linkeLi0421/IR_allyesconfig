; ModuleID = '/llk/IR_all_yes/net/sched/sch_frag.c_pt.bc'
source_filename = "../net/sched/sch_frag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sch_frag_xmit_hook\22, \22a\22\09"
module asm "\09.weak\09__crc_sch_frag_xmit_hook\09\09\09\09"
module asm "\09.long\09__crc_sch_frag_xmit_hook\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sch_frag_xmit_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22sch_frag_xmit_hook\22\09\09\09\09\09"
module asm "__kstrtabns_sch_frag_xmit_hook:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sch_frag_data = type { i32, %struct.qdisc_skb_cb, i16, i16, i16, i32, [18 x i8], ptr }
%struct.qdisc_skb_cb = type { %struct.anon.153, [20 x i8] }
%struct.anon.153 = type { i32, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.99, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.99 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.132, %union.anon.133, [48 x i8], %union.anon.134, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.136, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { i64 }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { i32, ptr }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.138, i32, i32, i32, i16, i16, %union.anon.140, i32, %union.anon.141, %union.anon.142, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.138 = type { i32 }
%union.anon.140 = type { i32 }
%union.anon.141 = type { i32 }
%union.anon.142 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.131, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.131 = type { ptr }
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
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__kstrtab_sch_frag_xmit_hook = external dso_local constant [0 x i8], align 1
@__kstrtabns_sch_frag_xmit_hook = external dso_local constant [0 x i8], align 1
@__ksymtab_sch_frag_xmit_hook = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sch_frag_xmit_hook to i32), ptr @__kstrtab_sch_frag_xmit_hook, ptr @__kstrtabns_sch_frag_xmit_hook }, section "___ksymtab_gpl+sch_frag_xmit_hook", align 4
@__pcpu_unique_sch_frag_data_storage = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@sch_frag_data_storage = weak dso_local global %struct.sch_frag_data zeroinitializer, section ".data..percpu", align 4
@sch_fragment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014L2 header too long to fragment\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sch_fragment\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/sch_frag.c\00", [43 x i8] zeroinitializer }, align 32
@sch_fragment._entry_ptr = internal global ptr @sch_fragment._entry, section ".printk_index", align 4
@sch_frag_dst_ops = internal global %struct.dst_ops { i16 0, i32 0, ptr null, ptr null, ptr null, ptr @sch_frag_dst_get_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [56 x i8] undef }, align 128
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@sch_fragment._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Fail frag %s: eth=%x, MRU=%d, MTU=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@sch_fragment._entry_ptr.5 = internal global ptr @sch_fragment._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 90, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private constant [24 x i8] c"../net/sched/sch_frag.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 127, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 598, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 1043, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 231, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 4963, i32 10 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_sch_frag_xmit_hook, ptr @sch_fragment._entry, ptr @sch_fragment._entry.3, ptr @sch_fragment._entry_ptr, ptr @sch_fragment._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_fragment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_fragment._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sch_frag_xmit_hook(ptr noundef %skb, ptr noundef %xmit) #0 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i80.i = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  %sch_frag_rt.i = alloca %struct.rtable, align 4
  %sch_frag_rt21.i = alloca %struct.rt6_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %mru1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %0 = ptrtoint ptr %mru1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mru1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %conv = zext i16 %1 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 19
  %7 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hard_header_len, align 2
  %conv3 = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv3, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp = icmp ugt i32 %3, %add
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %13 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %14 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp sgt i32 %sub.ptr.sub.i.i, 18
  br i1 %cmp.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.then
  %call1.i = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body.i.err.i_crit_edge, label %do.end.i

do.body.i.err.i_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %err.i

if.end7.i:                                        ; preds = %if.then
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %17 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %19 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %20 to i32
  %21 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %if.end7.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end7.i.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.end7.i.if.then.i.i.i.i_crit_edge34
  ]

if.end7.i.if.then.i.i.i.i_crit_edge34:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

if.end7.i.if.then.i.i.i.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

if.end7.i.skb_protocol.exit.i_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.end7.i.if.then.i.i.i.i_crit_edge, %if.end7.i.if.then.i.i.i.i_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %20)
  %cmp.i.i.i.i = icmp ult i16 %20, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !35

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %if.else.i

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %22 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  %23 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !36
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %22, align 2, !annotation !36
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %27 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %29 = add i32 %vlan_depth.1.i.i.i.i, %28
  %sub.i1.i.i.i.i.i = sub i32 %26, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !37

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %31, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !35
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %32 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !35
  br i1 %32, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !35

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  br label %if.else.i

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %34, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge35
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge35: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge35
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.end7.i.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %18, %if.end7.i.skb_protocol.exit.i_crit_edge ], [ %34, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.2.i.i.i.i)
  %cmp9.i = icmp eq i16 %retval.2.i.i.i.i, 2048
  br i1 %cmp9.i, label %if.then11.i, label %skb_protocol.exit.i.if.else.i_crit_edge

skb_protocol.exit.i.if.else.i_crit_edge:          ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then11.i:                                      ; preds = %skb_protocol.exit.i
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %sch_frag_rt.i) #9
  %36 = call ptr @memset(ptr %sch_frag_rt.i, i32 0, i32 124)
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %39 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i.i, align 4
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %48, ptrtoint (ptr @sch_frag_data_storage to i32)
  %49 = inttoptr i32 %add.i.i to ptr
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %49, align 4
  %cb.i.i = getelementptr inbounds %struct.sch_frag_data, ptr %49, i32 0, i32 1
  %54 = call ptr @memcpy(ptr %cb.i.i, ptr %cb1.i, i32 28)
  %xmit4.i.i = getelementptr inbounds %struct.sch_frag_data, ptr %49, i32 0, i32 7
  %55 = ptrtoint ptr %xmit4.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %xmit, ptr %xmit4.i.i, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %56, align 8
  %inner_protocol.i.i = getelementptr inbounds %struct.sch_frag_data, ptr %49, i32 0, i32 2
  %59 = ptrtoint ptr %inner_protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %inner_protocol.i.i, align 4
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %60 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then11.i.sch_frag_prepare_frag.exit.i_crit_edge, label %if.then.i.i

if.then11.i.sch_frag_prepare_frag.exit.i_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_frag_prepare_frag.exit.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %61 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vlan_tci.i.i, align 2
  %63 = or i16 %62, 4096
  br label %sch_frag_prepare_frag.exit.i

sch_frag_prepare_frag.exit.i:                     ; preds = %if.then.i.i, %if.then11.i.sch_frag_prepare_frag.exit.i_crit_edge
  %.sink.i.i = phi i16 [ %63, %if.then.i.i ], [ 0, %if.then11.i.sch_frag_prepare_frag.exit.i_crit_edge ]
  %64 = getelementptr inbounds %struct.sch_frag_data, ptr %49, i32 0, i32 3
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %.sink.i.i, ptr %64, align 2
  %conv.i.i.i75.i = zext i16 %40 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i.i75.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %66 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vlan_proto.i.i, align 8
  %vlan_proto8.i.i = getelementptr inbounds %struct.sch_frag_data, ptr %49, i32 0, i32 4
  %68 = ptrtoint ptr %vlan_proto8.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %vlan_proto8.i.i, align 4
  %l2_len.i.i = getelementptr inbounds %struct.sch_frag_data, ptr %49, i32 0, i32 5
  %69 = ptrtoint ptr %l2_len.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub.ptr.sub.i.i.i, ptr %l2_len.i.i, align 4
  %l2_data.i.i = getelementptr inbounds %struct.sch_frag_data, ptr %49, i32 0, i32 6
  %70 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i, align 4
  %72 = call ptr @memcpy(ptr %l2_data.i.i, ptr %71, i32 %sub.ptr.sub.i.i.i)
  %73 = call ptr @memset(ptr %cb1.i, i32 0, i32 24)
  %call11.i.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #9
  call void @dst_init(ptr noundef nonnull %sch_frag_rt.i, ptr noundef nonnull @sch_frag_dst_ops, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 8) #9
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %4, align 8
  %76 = ptrtoint ptr %sch_frag_rt.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %sch_frag_rt.i, align 4
  %77 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %50, align 8
  %call.i.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i76.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i76.i, label %land.rhs.i.i, label %sch_frag_prepare_frag.exit.i.skb_dst_set_noref.exit.i_crit_edge

sch_frag_prepare_frag.exit.i.skb_dst_set_noref.exit.i_crit_edge: ; preds = %sch_frag_prepare_frag.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_set_noref.exit.i

land.rhs.i.i:                                     ; preds = %sch_frag_prepare_frag.exit.i
  %call1.i.i = call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst_set_noref.exit.i_crit_edge, !prof !35

land.rhs.i.i.skb_dst_set_noref.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_set_noref.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1043, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst_set_noref.exit.i

skb_dst_set_noref.exit.i:                         ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst_set_noref.exit.i_crit_edge, %sch_frag_prepare_frag.exit.i.skb_dst_set_noref.exit.i_crit_edge
  %79 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %bf.load.i77.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i77.i, 4096
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  %80 = ptrtoint ptr %sch_frag_rt.i to i32
  %or31.i.i = or i32 %80, 1
  %81 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or31.i.i, ptr %50, align 8
  %frag_max_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %82 = ptrtoint ptr %frag_max_size.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %1, ptr %frag_max_size.i, align 2
  %83 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %call14.i = call i32 @ip_do_fragment(ptr noundef %10, ptr noundef %85, ptr noundef %skb, ptr noundef nonnull @sch_frag_xmit) #9
  %and.i.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i78.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i78.i, label %if.then.i79.i, label %skb_dst_set_noref.exit.i.refdst_drop.exit.i_crit_edge

skb_dst_set_noref.exit.i.refdst_drop.exit.i_crit_edge: ; preds = %skb_dst_set_noref.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refdst_drop.exit.i

if.then.i79.i:                                    ; preds = %skb_dst_set_noref.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i.i = and i32 %78, -2
  %86 = inttoptr i32 %and1.i.i to ptr
  call void @dst_release(ptr noundef %86) #9
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i79.i, %skb_dst_set_noref.exit.i.refdst_drop.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %sch_frag_rt.i) #9
  br label %if.end

if.else.i:                                        ; preds = %skb_protocol.exit.i.if.else.i_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i
  %87 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %protocol.i.i.i, align 8
  %89 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i83.i = zext i16 %90 to i32
  %91 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %88, label %if.else.i.skb_protocol.exit120.i_crit_edge [
    i16 -30552, label %if.else.i.if.then.i.i.i85.i_crit_edge
    i16 -32512, label %if.else.i.if.then.i.i.i85.i_crit_edge36
  ]

if.else.i.if.then.i.i.i85.i_crit_edge36:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i85.i

if.else.i.if.then.i.i.i85.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i85.i

if.else.i.skb_protocol.exit120.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit120.i

if.then.i.i.i85.i:                                ; preds = %if.else.i.if.then.i.i.i85.i_crit_edge, %if.else.i.if.then.i.i.i85.i_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i.i.i84.i = icmp eq i16 %90, 0
  br i1 %tobool.not.i.i.i84.i, label %if.then.i.i.i85.i.if.end26.i.i.i96.i_crit_edge, label %if.then1.i.i.i87.i

if.then.i.i.i85.i.if.end26.i.i.i96.i_crit_edge:   ; preds = %if.then.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i96.i

if.then1.i.i.i87.i:                               ; preds = %if.then.i.i.i85.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %90)
  %cmp.i.i.i86.i = icmp ult i16 %90, 4
  br i1 %cmp.i.i.i86.i, label %do.end.i.i.i88.i, label %if.end25.i.i.i90.i, !prof !35

do.end.i.i.i88.i:                                 ; preds = %if.then1.i.i.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %do.body32.i

if.end25.i.i.i90.i:                               ; preds = %if.then1.i.i.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i89.i = add nsw i32 %conv.i.i.i83.i, -4
  br label %if.end26.i.i.i96.i

if.end26.i.i.i96.i:                               ; preds = %if.end25.i.i.i90.i, %if.then.i.i.i85.i.if.end26.i.i.i96.i_crit_edge
  %vlan_depth.0.i.i.i91.i = phi i32 [ %sub.i.i.i89.i, %if.end25.i.i.i90.i ], [ 14, %if.then.i.i.i85.i.if.end26.i.i.i96.i_crit_edge ]
  %92 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i80.i, i32 0, i32 1
  %data_len.i.i.i.i.i93.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i94.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i101.i

do.body27.i.i.i101.i:                             ; preds = %do.body27.backedge.i.i.i118.i, %if.end26.i.i.i96.i
  %vlan_depth.1.i.i.i97.i = phi i32 [ %vlan_depth.0.i.i.i91.i, %if.end26.i.i.i96.i ], [ %add.i.i.i117.i, %do.body27.backedge.i.i.i118.i ]
  %parse_depth.0.i.i.i98.i = phi i32 [ 8, %if.end26.i.i.i96.i ], [ %dec.i.i.i111.i, %do.body27.backedge.i.i.i118.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i80.i) #9
  %93 = ptrtoint ptr %vhdr.i.i.i80.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -1, ptr %vhdr.i.i.i80.i, align 2, !annotation !36
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %92, align 2, !annotation !36
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  %97 = ptrtoint ptr %data_len.i.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_len.i.i.i.i.i93.i, align 8
  %99 = add i32 %vlan_depth.1.i.i.i97.i, %98
  %sub.i1.i.i.i.i99.i = sub i32 %96, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i99.i)
  %cmp.i.i.i.i.i100.i = icmp sgt i32 %sub.i1.i.i.i.i99.i, 3
  br i1 %cmp.i.i.i.i.i100.i, label %if.then.i.i.i.i.i103.i, label %if.end.i.i.i.i.i104.i, !prof !37

if.then.i.i.i.i.i103.i:                           ; preds = %do.body27.i.i.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i102.i = getelementptr i8, ptr %101, i32 %vlan_depth.1.i.i.i97.i
  br label %skb_header_pointer.exit.i.i.i113.i

if.end.i.i.i.i.i104.i:                            ; preds = %do.body27.i.i.i101.i
  br i1 %tobool2.not.i.i.i.i.i94.i, label %if.end.i.i.i.i.i104.i.cleanup.thread.i.i.i114.i_crit_edge, label %lor.lhs.false.i.i.i.i.i108.i

if.end.i.i.i.i.i104.i.cleanup.thread.i.i.i114.i_crit_edge: ; preds = %if.end.i.i.i.i.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i114.i

lor.lhs.false.i.i.i.i.i108.i:                     ; preds = %if.end.i.i.i.i.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i105.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i97.i, ptr noundef nonnull %vhdr.i.i.i80.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i105.i)
  %cmp3.i.i.i.i.i106.i = icmp slt i32 %call.i.i.i.i.i105.i, 0
  %spec.select.i.i.i.i.i107.i = select i1 %cmp3.i.i.i.i.i106.i, ptr null, ptr %vhdr.i.i.i80.i, !prof !35
  br label %skb_header_pointer.exit.i.i.i113.i

skb_header_pointer.exit.i.i.i113.i:               ; preds = %lor.lhs.false.i.i.i.i.i108.i, %if.then.i.i.i.i.i103.i
  %retval.0.i.i.i.i.i109.i = phi ptr [ %add.ptr.i.i.i.i.i102.i, %if.then.i.i.i.i.i103.i ], [ %spec.select.i.i.i.i.i107.i, %lor.lhs.false.i.i.i.i.i108.i ]
  %tobool29.not.i.i.i110.i = icmp eq ptr %retval.0.i.i.i.i.i109.i, null
  %dec.i.i.i111.i = add nsw i32 %parse_depth.0.i.i.i98.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i111.i)
  %tobool30.not.i.i.i112.i = icmp eq i32 %dec.i.i.i111.i, 0
  %102 = select i1 %tobool29.not.i.i.i110.i, i1 true, i1 %tobool30.not.i.i.i112.i, !prof !35
  br i1 %102, label %skb_header_pointer.exit.i.i.i113.i.cleanup.thread.i.i.i114.i_crit_edge, label %do.cond42.i.i.i116.i, !prof !35

skb_header_pointer.exit.i.i.i113.i.cleanup.thread.i.i.i114.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i114.i

cleanup.thread.i.i.i114.i:                        ; preds = %skb_header_pointer.exit.i.i.i113.i.cleanup.thread.i.i.i114.i_crit_edge, %if.end.i.i.i.i.i104.i.cleanup.thread.i.i.i114.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i80.i) #9
  br label %do.body32.i

do.cond42.i.i.i116.i:                             ; preds = %skb_header_pointer.exit.i.i.i113.i
  %h_vlan_encapsulated_proto.i.i.i115.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i109.i, i32 0, i32 1
  %103 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i115.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i115.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i80.i) #9
  %105 = zext i16 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %104, label %do.cond42.i.i.i116.i.skb_protocol.exit120.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i116.i.do.body27.backedge.i.i.i118.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i116.i.do.body27.backedge.i.i.i118.i_crit_edge37
  ]

do.cond42.i.i.i116.i.do.body27.backedge.i.i.i118.i_crit_edge37: ; preds = %do.cond42.i.i.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i118.i

do.cond42.i.i.i116.i.do.body27.backedge.i.i.i118.i_crit_edge: ; preds = %do.cond42.i.i.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i118.i

do.cond42.i.i.i116.i.skb_protocol.exit120.i_crit_edge: ; preds = %do.cond42.i.i.i116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit120.i

do.body27.backedge.i.i.i118.i:                    ; preds = %do.cond42.i.i.i116.i.do.body27.backedge.i.i.i118.i_crit_edge, %do.cond42.i.i.i116.i.do.body27.backedge.i.i.i118.i_crit_edge37
  %add.i.i.i117.i = add nsw i32 %vlan_depth.1.i.i.i97.i, 4
  br label %do.body27.i.i.i101.i

skb_protocol.exit120.i:                           ; preds = %do.cond42.i.i.i116.i.skb_protocol.exit120.i_crit_edge, %if.else.i.skb_protocol.exit120.i_crit_edge
  %retval.2.i.i.i119.i = phi i16 [ %88, %if.else.i.skb_protocol.exit120.i_crit_edge ], [ %104, %do.cond42.i.i.i116.i.skb_protocol.exit120.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.2.i.i.i119.i)
  %cmp17.i = icmp eq i16 %retval.2.i.i.i119.i, -31011
  br i1 %cmp17.i, label %if.then19.i, label %skb_protocol.exit120.i.do.body32.i_crit_edge

skb_protocol.exit120.i.do.body32.i_crit_edge:     ; preds = %skb_protocol.exit120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.i

if.then19.i:                                      ; preds = %skb_protocol.exit120.i
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %sch_frag_rt21.i) #9
  %106 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %head.i.i.i, align 8
  %108 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %network_header.i.i.i, align 4
  %110 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i.i, align 4
  %112 = call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i.i124.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i124.i to ptr
  %cpu.i125.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %cpu.i125.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cpu.i125.i, align 4
  %arrayidx.i126.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %115
  %116 = ptrtoint ptr %arrayidx.i126.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i126.i, align 4
  %add.i127.i = add i32 %117, ptrtoint (ptr @sch_frag_data_storage to i32)
  %118 = inttoptr i32 %add.i127.i to ptr
  %119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %118, align 4
  %cb.i128.i = getelementptr inbounds %struct.sch_frag_data, ptr %118, i32 0, i32 1
  %123 = call ptr @memcpy(ptr %cb.i128.i, ptr %cb1.i, i32 28)
  %xmit4.i130.i = getelementptr inbounds %struct.sch_frag_data, ptr %118, i32 0, i32 7
  %124 = ptrtoint ptr %xmit4.i130.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %xmit, ptr %xmit4.i130.i, align 4
  %125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %125, align 8
  %inner_protocol.i131.i = getelementptr inbounds %struct.sch_frag_data, ptr %118, i32 0, i32 2
  %128 = ptrtoint ptr %inner_protocol.i131.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %inner_protocol.i131.i, align 4
  %vlan_present.i132.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %129 = ptrtoint ptr %vlan_present.i132.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %bf.load.i133.i = load i32, ptr %vlan_present.i132.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i133.i)
  %tobool.not.i134.i = icmp sgt i32 %bf.load.i133.i, -1
  br i1 %tobool.not.i134.i, label %if.then19.i.sch_frag_prepare_frag.exit148.i_crit_edge, label %if.then.i136.i

if.then19.i.sch_frag_prepare_frag.exit148.i_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_frag_prepare_frag.exit148.i

if.then.i136.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_tci.i135.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %130 = ptrtoint ptr %vlan_tci.i135.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vlan_tci.i135.i, align 2
  %132 = or i16 %131, 4096
  br label %sch_frag_prepare_frag.exit148.i

sch_frag_prepare_frag.exit148.i:                  ; preds = %if.then.i136.i, %if.then19.i.sch_frag_prepare_frag.exit148.i_crit_edge
  %.sink.i137.i = phi i16 [ %132, %if.then.i136.i ], [ 0, %if.then19.i.sch_frag_prepare_frag.exit148.i_crit_edge ]
  %133 = getelementptr inbounds %struct.sch_frag_data, ptr %118, i32 0, i32 3
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %.sink.i137.i, ptr %133, align 2
  %conv.i.i.i138.i = zext i16 %109 to i32
  %add.ptr.i.i.i139.i = getelementptr i8, ptr %107, i32 %conv.i.i.i138.i
  %sub.ptr.lhs.cast.i.i140.i = ptrtoint ptr %add.ptr.i.i.i139.i to i32
  %sub.ptr.rhs.cast.i.i141.i = ptrtoint ptr %111 to i32
  %sub.ptr.sub.i.i142.i = sub i32 %sub.ptr.lhs.cast.i.i140.i, %sub.ptr.rhs.cast.i.i141.i
  %vlan_proto.i143.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %135 = ptrtoint ptr %vlan_proto.i143.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %vlan_proto.i143.i, align 8
  %vlan_proto8.i144.i = getelementptr inbounds %struct.sch_frag_data, ptr %118, i32 0, i32 4
  %137 = ptrtoint ptr %vlan_proto8.i144.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %vlan_proto8.i144.i, align 4
  %l2_len.i145.i = getelementptr inbounds %struct.sch_frag_data, ptr %118, i32 0, i32 5
  %138 = ptrtoint ptr %l2_len.i145.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub.ptr.sub.i.i142.i, ptr %l2_len.i145.i, align 4
  %l2_data.i146.i = getelementptr inbounds %struct.sch_frag_data, ptr %118, i32 0, i32 6
  %139 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i.i, align 4
  %141 = call ptr @memcpy(ptr %l2_data.i146.i, ptr %140, i32 %sub.ptr.sub.i.i142.i)
  %142 = call ptr @memset(ptr %cb1.i, i32 0, i32 24)
  %call11.i147.i = call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i142.i) #9
  %143 = call ptr @memset(ptr %sch_frag_rt21.i, i32 0, i32 160)
  call void @dst_init(ptr noundef nonnull %sch_frag_rt21.i, ptr noundef nonnull @sch_frag_dst_ops, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 8) #9
  %144 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %4, align 8
  %146 = ptrtoint ptr %sch_frag_rt21.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %sch_frag_rt21.i, align 4
  %147 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %119, align 8
  %call.i149.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149.i)
  %tobool.not.i150.i = icmp eq i32 %call.i149.i, 0
  br i1 %tobool.not.i150.i, label %land.rhs.i153.i, label %sch_frag_prepare_frag.exit148.i.skb_dst_set_noref.exit161.i_crit_edge

sch_frag_prepare_frag.exit148.i.skb_dst_set_noref.exit161.i_crit_edge: ; preds = %sch_frag_prepare_frag.exit148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_set_noref.exit161.i

land.rhs.i153.i:                                  ; preds = %sch_frag_prepare_frag.exit148.i
  %call1.i151.i = call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151.i)
  %tobool2.not.i152.i = icmp eq i32 %call1.i151.i, 0
  br i1 %tobool2.not.i152.i, label %do.end.i154.i, label %land.rhs.i153.i.skb_dst_set_noref.exit161.i_crit_edge, !prof !35

land.rhs.i153.i.skb_dst_set_noref.exit161.i_crit_edge: ; preds = %land.rhs.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_set_noref.exit161.i

do.end.i154.i:                                    ; preds = %land.rhs.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1043, i32 noundef 9, ptr noundef null) #9
  br label %skb_dst_set_noref.exit161.i

skb_dst_set_noref.exit161.i:                      ; preds = %do.end.i154.i, %land.rhs.i153.i.skb_dst_set_noref.exit161.i_crit_edge, %sch_frag_prepare_frag.exit148.i.skb_dst_set_noref.exit161.i_crit_edge
  %149 = ptrtoint ptr %vlan_present.i132.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %bf.load.i156.i = load i32, ptr %vlan_present.i132.i, align 2
  %bf.set.i159.i = or i32 %bf.load.i156.i, 4096
  store i32 %bf.set.i159.i, ptr %vlan_present.i132.i, align 2
  %150 = ptrtoint ptr %sch_frag_rt21.i to i32
  %or31.i160.i = or i32 %150, 1
  %151 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %or31.i160.i, ptr %119, align 8
  %frag_max_size29.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %152 = ptrtoint ptr %frag_max_size29.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %1, ptr %frag_max_size29.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %153 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_fragment.i = getelementptr inbounds %struct.ipv6_stub, ptr %153, i32 0, i32 21
  %154 = ptrtoint ptr %ipv6_fragment.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ipv6_fragment.i, align 4
  %156 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %call30.i = call i32 %155(ptr noundef %10, ptr noundef %158, ptr noundef %skb, ptr noundef nonnull @sch_frag_xmit) #9
  %and.i162.i = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162.i)
  %tobool.not.i163.i = icmp eq i32 %and.i162.i, 0
  br i1 %tobool.not.i163.i, label %if.then.i165.i, label %skb_dst_set_noref.exit161.i.refdst_drop.exit166.i_crit_edge

skb_dst_set_noref.exit161.i.refdst_drop.exit166.i_crit_edge: ; preds = %skb_dst_set_noref.exit161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refdst_drop.exit166.i

if.then.i165.i:                                   ; preds = %skb_dst_set_noref.exit161.i
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i164.i = and i32 %148, -2
  %159 = inttoptr i32 %and1.i164.i to ptr
  call void @dst_release(ptr noundef %159) #9
  br label %refdst_drop.exit166.i

refdst_drop.exit166.i:                            ; preds = %if.then.i165.i, %skb_dst_set_noref.exit161.i.refdst_drop.exit166.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %sch_frag_rt21.i) #9
  br label %if.end

do.body32.i:                                      ; preds = %skb_protocol.exit120.i.do.body32.i_crit_edge, %cleanup.thread.i.i.i114.i, %do.end.i.i.i88.i
  %call33.i = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %do.body32.i.err.i_crit_edge, label %do.end38.i

do.body32.i.err.i_crit_edge:                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err.i

do.end38.i:                                       ; preds = %do.body32.i
  %160 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %4, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i167.i = icmp eq i8 %163, 0
  br i1 %tobool.not.i167.i, label %do.end38.i.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

do.end38.i.netdev_name.exit.i_crit_edge:          ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i168.i = call ptr @strchr(ptr noundef %161, i32 noundef 37) #9
  %tobool2.not.i169.i = icmp eq ptr %call.i168.i, null
  %spec.select.i.i = select i1 %tobool2.not.i169.i, ptr %161, ptr @.str.9
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %do.end38.i.netdev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ @.str.9, %do.end38.i.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %164 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %protocol.i.i.i, align 8
  %166 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i16 = zext i16 %167 to i32
  %168 = zext i16 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %168, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %165, label %netdev_name.exit.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %netdev_name.exit.i.if.then.i.i.i_crit_edge
    i16 -32512, label %netdev_name.exit.i.if.then.i.i.i_crit_edge38
  ]

netdev_name.exit.i.if.then.i.i.i_crit_edge38:     ; preds = %netdev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

netdev_name.exit.i.if.then.i.i.i_crit_edge:       ; preds = %netdev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

netdev_name.exit.i.skb_protocol.exit_crit_edge:   ; preds = %netdev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %netdev_name.exit.i.if.then.i.i.i_crit_edge, %netdev_name.exit.i.if.then.i.i.i_crit_edge38
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %tobool.not.i.i.i = icmp eq i16 %167, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %167)
  %cmp.i.i.i = icmp ult i16 %167, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !35

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %skb_protocol.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add nsw i32 %conv.i.i.i16, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %169 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  %170 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !36
  %171 = ptrtoint ptr %169 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -1, ptr %169, align 2, !annotation !36
  %172 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %len, align 4
  %174 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %176 = add i32 %vlan_depth.1.i.i.i, %175
  %sub.i1.i.i.i.i = sub i32 %173, %176
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !37

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %177 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %178, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !35
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %179 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !35
  br i1 %179, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !35

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  br label %skb_protocol.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %180 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #9
  %182 = zext i16 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %181, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge39
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge39: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge39
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %netdev_name.exit.i.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ 0, %do.end.i.i.i ], [ %165, %netdev_name.exit.i.skb_protocol.exit_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ %181, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %conv42.i = zext i16 %retval.2.i.i.i to i32
  %183 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %4, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %184, i32 0, i32 20
  %185 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mtu.i, align 4
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i, i32 noundef %conv42.i, i32 noundef %conv, i32 noundef %186) #12
  br label %err.i

err.i:                                            ; preds = %skb_protocol.exit, %do.body32.i.err.i_crit_edge, %do.end.i, %do.body.i.err.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call7 = tail call i32 %xmit(ptr noundef %skb) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %err.i, %refdst_drop.exit166.i, %refdst_drop.exit.i
  %err.0 = phi i32 [ %call7, %if.else ], [ -1, %err.i ], [ %call14.i, %refdst_drop.exit.i ], [ %call30.i, %refdst_drop.exit166.i ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_do_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sch_frag_xmit(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @sch_frag_data_storage to i32)
  %6 = inttoptr i32 %add to ptr
  %l2_len = getelementptr inbounds %struct.sch_frag_data, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %l2_len, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %9 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %13, 65535
  %shr.i.i = ashr i32 %13, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %8)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %8
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %sub.ptr.sub.i.i.i) #9
  %add.i.i = add i32 %18, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp = icmp slt i32 %call4.i.i, 0
  br i1 %cmp, label %if.then, label %skb_cow_head.exit.if.end_crit_edge

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %21 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %22, align 8
  %and.i40 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool6.not.i = icmp eq i32 %and.i40, 0
  br i1 %tobool6.not.i, label %skb_dst.exit.i, label %if.end.__skb_dst_copy.exit_crit_edge

if.end.__skb_dst_copy.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_dst_copy.exit

skb_dst.exit.i:                                   ; preds = %if.end
  %and25.i.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i13.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i13.i, label %skb_dst.exit.i.__skb_dst_copy.exit_crit_edge, label %if.then.i.i

skb_dst.exit.i.__skb_dst_copy.exit_crit_edge:     ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_dst_copy.exit

if.then.i.i:                                      ; preds = %skb_dst.exit.i
  %24 = inttoptr i32 %and25.i.i to ptr
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %24, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #9, !srcloc !39
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %do.end10.i.i.i, label %atomic_inc_not_zero.exit.thread.i.i.i

atomic_inc_not_zero.exit.thread.i.i.i:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  br label %__skb_dst_copy.exit

do.end10.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 231, i32 noundef 9, ptr noundef null) #9
  br label %__skb_dst_copy.exit

__skb_dst_copy.exit:                              ; preds = %do.end10.i.i.i, %atomic_inc_not_zero.exit.thread.i.i.i, %skb_dst.exit.i.__skb_dst_copy.exit_crit_edge, %if.end.__skb_dst_copy.exit_crit_edge
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cb = getelementptr inbounds %struct.sch_frag_data, ptr %6, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %cb.i, ptr %cb, i32 28)
  %inner_protocol = getelementptr inbounds %struct.sch_frag_data, ptr %6, i32 0, i32 2
  %27 = ptrtoint ptr %inner_protocol to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %inner_protocol, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %28, ptr %29, align 8
  %vlan_tci = getelementptr inbounds %struct.sch_frag_data, ptr %6, i32 0, i32 3
  %31 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vlan_tci, align 2
  %33 = and i16 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not = icmp eq i16 %33, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %__skb_dst_copy.exit
  call void @__sanitizer_cov_trace_pc() #11
  %vlan_proto = getelementptr inbounds %struct.sch_frag_data, ptr %6, i32 0, i32 4
  %34 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vlan_proto, align 4
  %and7 = and i16 %32, -4097
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %36 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %37 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %and7, ptr %vlan_tci2.i, align 2
  %38 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load.i41 = load i32, ptr %slow_gro.i, align 2
  %bf.set.i42 = or i32 %bf.load.i41, -2147483648
  br label %if.end9

if.else:                                          ; preds = %__skb_dst_copy.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load.i44 = load i32, ptr %slow_gro.i, align 2
  %bf.clear.i = and i32 %bf.load.i44, 2147483647
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %storemerge = phi i32 [ %bf.set.i42, %if.then4 ], [ %bf.clear.i, %if.else ]
  %40 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %storemerge, ptr %slow_gro.i, align 2
  %41 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %l2_len, align 4
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %42) #9
  %43 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i.i, align 4
  %l2_data = getelementptr inbounds %struct.sch_frag_data, ptr %6, i32 0, i32 6
  %45 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %l2_len, align 4
  %47 = call ptr @memcpy(ptr %44, ptr %l2_data, i32 %46)
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %48 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i.i45 = load i16, ptr %ip_summed.i.i, align 8
  %49 = and i16 %bf.load.i.i45, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %49)
  %cmp.i.i = icmp eq i16 %49, 1024
  br i1 %cmp.i.i, label %if.then.i.i46, label %if.end9.skb_postpush_rcsum.exit_crit_edge

if.end9.skb_postpush_rcsum.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_postpush_rcsum.exit

if.then.i.i46:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %l2_len, align 4
  %52 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i.i, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %call.i.i = tail call i32 @csum_partial(ptr noundef %53, i32 noundef %51, i32 noundef 0) #9
  %add.i.i.i.i = add i32 %call.i.i, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add1.i.i.i.i, ptr %54, align 8
  br label %skb_postpush_rcsum.exit

skb_postpush_rcsum.exit:                          ; preds = %if.then.i.i46, %if.end9.skb_postpush_rcsum.exit_crit_edge
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %60 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %62 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %xmit = getelementptr inbounds %struct.sch_frag_data, ptr %6, i32 0, i32 7
  %63 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xmit, align 4
  %call16 = tail call i32 %64(ptr noundef %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %skb_postpush_rcsum.exit, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ %call16, %skb_postpush_rcsum.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sch_frag_dst_get_mtu(ptr nocapture noundef readonly %dst) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_sch_frag_xmit_hook, !1, !"__ksymtab_sch_frag_xmit_hook", i1 false, i1 false}
!1 = !{!"../net/sched/sch_frag.c", i32 152, i32 1}
!2 = !{ptr @__pcpu_unique_sch_frag_data_storage, !3, !"__pcpu_unique_sch_frag_data_storage", i1 false, i1 false}
!3 = !{!"../net/sched/sch_frag.c", i32 21, i32 8}
!4 = !{ptr @sch_frag_data_storage, !3, !"sch_frag_data_storage", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/sched/sch_frag.c", i32 90, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sch_fragment._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @sch_fragment._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sched/sch_frag.c", i32 127, i32 3}
!13 = !{ptr @sch_fragment._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @sch_fragment._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!17 = !{ptr @sch_frag_dst_ops, !18, !"sch_frag_dst_ops", i1 false, i1 false}
!18 = !{!"../net/sched/sch_frag.c", i32 79, i32 23}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/skbuff.h", i32 1043, i32 2}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/net/dst.h", i32 231, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2148504452}
!39 = !{i64 990072, i64 990097, i64 990119, i64 990135, i64 990147, i64 990167, i64 990191, i64 990207, i64 990219}
!40 = !{i64 2148504640}
