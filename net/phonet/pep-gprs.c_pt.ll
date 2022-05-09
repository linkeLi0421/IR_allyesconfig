; ModuleID = '/llk/IR_all_yes/net/phonet/pep-gprs.c_pt.bc'
source_filename = "../net/phonet/pep-gprs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.125, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.125 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.139 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.gprs_dev = type { ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@gprs_attach.ifname = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gprs%d\00", [25 x i8] zeroinitializer }, align 32
@gprs_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: attached\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gprs_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/phonet/pep-gprs.c\00", [42 x i8] zeroinitializer }, align 32
@gprs_attach._entry_ptr = internal global ptr @gprs_attach._entry, section ".printk_index", align 4
@gprs_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: detached\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gprs_detach\00", [20 x i8] zeroinitializer }, align 32
@gprs_detach._entry_ptr = internal global ptr @gprs_detach._entry, section ".printk_index", align 4
@gprs_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @gprs_open, ptr @gprs_close, ptr @gprs_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@gprs_xmit.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pn_pep\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gprs_xmit\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: TX error (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 239, i32 20 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 282, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 303, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"gprs_netdev_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 207, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [25 x i8] c"../net/phonet/pep-gprs.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 193, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @gprs_attach._entry, ptr @gprs_attach._entry_ptr, ptr @gprs_detach._entry, ptr @gprs_detach._entry_ptr, ptr @gprs_attach.ifname, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gprs_netdev_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprs_attach.ifname to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprs_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprs_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprs_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gprs_attach(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp eq i16 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !29

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 20, ptr noundef nonnull @gprs_attach.ifname, i8 noundef zeroext 0, ptr noundef nonnull @gprs_setup, i32 noundef 1, i32 noundef 1) #6
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sk, ptr %add.ptr.i, align 4
  %dev8 = getelementptr i8, ptr %call, i32 2320
  %3 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dev8, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %call9 = tail call i32 @register_netdev(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @free_netdev(ptr noundef nonnull %call) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #6
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %6 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk_user_data, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end21, label %if.end12.out_rel_crit_edge, !prof !30

if.end12.out_rel_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rel

if.end21:                                         ; preds = %if.end12
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  %conv22 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv22
  %and = and i32 %shl, 1152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %lor.rhs, label %if.end21.out_rel_crit_edge, !prof !30

if.end21.out_rel_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rel

lor.rhs:                                          ; preds = %if.end21
  %10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end33, label %lor.rhs.out_rel_crit_edge, !prof !30

lor.rhs.out_rel_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_rel

if.end33:                                         ; preds = %lor.rhs
  %13 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %sk_user_data, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %14 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_state_change, align 4
  %old_state_change = getelementptr i8, ptr %call, i32 2308
  %16 = ptrtoint ptr %old_state_change to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %old_state_change, align 4
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %17 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_data_ready, align 8
  %old_data_ready = getelementptr i8, ptr %call, i32 2312
  %19 = ptrtoint ptr %old_data_ready to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %old_data_ready, align 4
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %20 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_write_space, align 4
  %old_write_space = getelementptr i8, ptr %call, i32 2316
  %22 = ptrtoint ptr %old_write_space to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %old_write_space, align 4
  store ptr @gprs_state_change, ptr %sk_state_change, align 4
  store ptr @gprs_data_ready, ptr %sk_data_ready, align 8
  store ptr @gprs_write_space, ptr %sk_write_space, align 4
  tail call void @release_sock(ptr noundef %sk) #6
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end33.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !29

if.end33.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end33
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !30

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end33.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end33.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #6
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %call) #9
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 17
  %25 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex, align 4
  br label %cleanup

out_rel:                                          ; preds = %lor.rhs.out_rel_crit_edge, %if.end21.out_rel_crit_edge, %if.end12.out_rel_crit_edge
  %err.0 = phi i32 [ -16, %if.end12.out_rel_crit_edge ], [ -22, %lor.rhs.out_rel_crit_edge ], [ -22, %if.end21.out_rel_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #6
  tail call void @unregister_netdev(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out_rel, %sock_hold.exit, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ %err.0, %out_rel ], [ %26, %sock_hold.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gprs_setup(ptr nocapture noundef writeonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 64, ptr %features, align 16
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 821, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 144, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1400, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %4 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 576, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %5 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65530, ptr %max_mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %8 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %tx_queue_len, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gprs_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %10 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gprs_state_change(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp eq i8 %3, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2 = getelementptr inbounds %struct.gprs_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  tail call void @netif_carrier_off(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gprs_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  %buf.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %call5 = call ptr @pep_read(ptr noundef %sk) #6
  %cmp.not6 = icmp eq ptr %call5, null
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.gprs_dev, ptr %1, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %gprs_recv.exit.while.body_crit_edge, %while.body.lr.ph
  %call7 = phi ptr [ %call5, %while.body.lr.ph ], [ %call, %gprs_recv.exit.while.body_crit_edge ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void %3(ptr noundef nonnull %call7) #6
  %4 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %destructor.i, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %while.body
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !30

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #6
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !33
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 6
  %13 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %skb_header_pointer.exit.i.i, label %lor.lhs.false.i.i.i.i, !prof !30

lor.lhs.false.i.i.i.i:                            ; preds = %skb_orphan.exit
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %call7, i32 noundef 0, ptr noundef nonnull %buf.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.gprs_type_trans.exit.thread.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.gprs_type_trans.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gprs_type_trans.exit.thread.i

skb_header_pointer.exit.i.i:                      ; preds = %skb_orphan.exit
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.gprs_type_trans.exit.thread.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

skb_header_pointer.exit.i.i.gprs_type_trans.exit.thread.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gprs_type_trans.exit.thread.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i11.i.i = phi ptr [ %18, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %buf.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i.i11.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %retval.0.i.i11.i.i, align 1
  %21 = lshr i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %switch.selectcmp4.i.i = icmp eq i8 %21, 4
  br i1 %switch.selectcmp4.i.i, label %gprs_type_trans.exit.thread11.i, label %gprs_type_trans.exit.i

gprs_type_trans.exit.thread11.i:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #6
  br label %if.end.i

gprs_type_trans.exit.thread.i:                    ; preds = %skb_header_pointer.exit.i.i.gprs_type_trans.exit.thread.i_crit_edge, %lor.lhs.false.i.i.i.i.gprs_type_trans.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #6
  br label %if.then43.i

gprs_type_trans.exit.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %switch.selectcmp.i.i = icmp eq i8 %21, 6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #6
  br i1 %switch.selectcmp.i.i, label %gprs_type_trans.exit.i.if.end.i_crit_edge, label %gprs_type_trans.exit.i.if.then43.i_crit_edge

gprs_type_trans.exit.i.if.then43.i_crit_edge:     ; preds = %gprs_type_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

gprs_type_trans.exit.i.if.end.i_crit_edge:        ; preds = %gprs_type_trans.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %gprs_type_trans.exit.i.if.end.i_crit_edge, %gprs_type_trans.exit.thread11.i
  %retval.0.i14.i = phi i16 [ 2048, %gprs_type_trans.exit.thread11.i ], [ -31011, %gprs_type_trans.exit.i.if.end.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %and.i = and i32 %sub.ptr.sub.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i4 = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i4, label %if.end.i.if.end30.i_crit_edge, label %if.then4.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then4.i:                                       ; preds = %if.end.i
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef %11, i32 noundef 0, i32 noundef 2592) #6
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.then4.i.if.then43.i_crit_edge, label %if.end8.i

if.then4.i.if.then43.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

if.end8.i:                                        ; preds = %if.then4.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7, ptr %frag_list.i, align 8
  %29 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i.i.i, align 4
  %len10.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %len10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len10.i, align 4
  %add.i = add i32 %32, %30
  store i32 %add.i, ptr %len10.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i, align 8
  %add12.i = add i32 %34, %add.i
  store i32 %add12.i, ptr %data_len.i, align 8
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 20
  %35 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %truesize.i, align 8
  %add14.i = add i32 %36, %add.i
  store i32 %add14.i, ptr %truesize.i, align 8
  %end.i2.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 17
  %37 = ptrtoint ptr %end.i2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %end.i2.i, align 4
  %frag_list16.i = getelementptr inbounds %struct.skb_shared_info, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %frag_list16.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %fs.020.i = load ptr, ptr %frag_list16.i, align 8
  %tobool17.not21.i = icmp eq ptr %fs.020.i, null
  br i1 %tobool17.not21.i, label %if.end8.i.cleanup.thread.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.cleanup.thread.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %fs.023.i = phi ptr [ %fs.0.i, %for.body.i.for.body.i_crit_edge ], [ %fs.020.i, %if.end8.i.for.body.i_crit_edge ]
  %flen.022.i = phi i32 [ %add19.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %len18.i = getelementptr inbounds %struct.sk_buff, ptr %fs.023.i, i32 0, i32 6
  %40 = ptrtoint ptr %len18.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len18.i, align 4
  %add19.i = add i32 %41, %flen.022.i
  %42 = ptrtoint ptr %fs.023.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %fs.0.i = load ptr, ptr %fs.023.i, align 8
  %tobool17.not.i = icmp eq ptr %fs.0.i, null
  br i1 %tobool17.not.i, label %for.body.i.cleanup.thread.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %for.body.i.cleanup.thread.i_crit_edge, %if.end8.i.cleanup.thread.i_crit_edge
  %flen.0.lcssa.i = phi i32 [ 0, %if.end8.i.cleanup.thread.i_crit_edge ], [ %add19.i, %for.body.i.cleanup.thread.i_crit_edge ]
  %43 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %fs.020.i, ptr %call7, align 8
  %44 = ptrtoint ptr %frag_list16.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %frag_list16.i, align 8
  %45 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i.i.i, align 4
  %sub.i = sub i32 %46, %flen.0.lcssa.i
  store i32 %sub.i, ptr %len.i.i.i.i, align 4
  %47 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub25.i = sub i32 %48, %flen.0.lcssa.i
  store i32 %sub25.i, ptr %data_len.i.i.i.i, align 8
  %truesize26.i = getelementptr inbounds %struct.sk_buff, ptr %call7, i32 0, i32 20
  %49 = ptrtoint ptr %truesize26.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %truesize26.i, align 8
  %sub27.i = sub i32 %50, %flen.0.lcssa.i
  store i32 %sub27.i, ptr %truesize26.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %cleanup.thread.i, %if.end.i.if.end30.i_crit_edge
  %skb.addr.1.i = phi ptr [ %call7, %if.end.i.if.end30.i_crit_edge ], [ %call.i.i, %cleanup.thread.i ]
  %protocol31.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 15, i32 0, i32 18
  %51 = ptrtoint ptr %protocol31.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %retval.0.i14.i, ptr %protocol31.i, align 8
  %data.i4.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 19
  %52 = ptrtoint ptr %data.i4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i4.i, align 4
  %head.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 18
  %54 = ptrtoint ptr %head.i5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i5.i, align 8
  %sub.ptr.lhs.cast.i6.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i7.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i8.i = sub i32 %sub.ptr.lhs.cast.i6.i, %sub.ptr.rhs.cast.i7.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i8.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 15, i32 0, i32 21
  %56 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %57 = getelementptr inbounds %struct.anon.44, ptr %skb.addr.1.i, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %11, ptr %57, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 8
  %and32.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end30.i.if.then43.i_crit_edge, label %drop.thread.i, !prof !29

if.end30.i.if.then43.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i

drop.thread.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %stats.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36
  %61 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %62, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %len37.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i, i32 0, i32 6
  %63 = ptrtoint ptr %len37.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len37.i, align 4
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 2
  %65 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_bytes.i, align 8
  %add39.i = add i32 %66, %64
  store i32 %add39.i, ptr %rx_bytes.i, align 8
  %call40.i = call i32 @netif_rx(ptr noundef nonnull %skb.addr.1.i) #6
  br label %gprs_recv.exit

if.then43.i:                                      ; preds = %if.end30.i.if.then43.i_crit_edge, %if.then4.i.if.then43.i_crit_edge, %gprs_type_trans.exit.i.if.then43.i_crit_edge, %gprs_type_trans.exit.thread.i
  %skb.addr.2.i = phi ptr [ %call7, %gprs_type_trans.exit.i.if.then43.i_crit_edge ], [ %skb.addr.1.i, %if.end30.i.if.then43.i_crit_edge ], [ %call7, %gprs_type_trans.exit.thread.i ], [ %call7, %if.then4.i.if.then43.i_crit_edge ]
  call void @consume_skb(ptr noundef nonnull %skb.addr.2.i) #6
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 6
  %67 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_dropped.i, align 8
  %inc45.i = add i32 %68, 1
  store i32 %inc45.i, ptr %rx_dropped.i, align 8
  br label %gprs_recv.exit

gprs_recv.exit:                                   ; preds = %if.then43.i, %drop.thread.i
  %call = call ptr @pep_read(ptr noundef %sk) #6
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %gprs_recv.exit.while.end_crit_edge, label %gprs_recv.exit.while.body_crit_edge

gprs_recv.exit.while.body_crit_edge:              ; preds = %gprs_recv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

gprs_recv.exit.while.end_crit_edge:               ; preds = %gprs_recv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %gprs_recv.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gprs_write_space(ptr nocapture noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %dev = getelementptr inbounds %struct.gprs_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @pep_writeable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gprs_detach(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %dev1 = getelementptr inbounds %struct.gprs_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #6
  %4 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sk_user_data, align 4
  %old_state_change = getelementptr inbounds %struct.gprs_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %old_state_change to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %old_state_change, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %7 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sk_state_change, align 4
  %old_data_ready = getelementptr inbounds %struct.gprs_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %old_data_ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_data_ready, align 4
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %10 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sk_data_ready, align 8
  %old_write_space = getelementptr inbounds %struct.gprs_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %old_write_space to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %old_write_space, align 4
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %13 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %sk_write_space, align 4
  tail call void @release_sock(ptr noundef %sk) #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %3) #9
  tail call void @unregister_netdev(ptr noundef %3) #6
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #6
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @sk_free(ptr noundef %sk) #6
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gprs_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev1.i = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @pep_writeable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.gprs_writeable.exit_crit_edge, label %if.then.i

entry.gprs_writeable.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %gprs_writeable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %5) #6
  br label %gprs_writeable.exit

gprs_writeable.exit:                              ; preds = %if.then.i, %entry.gprs_writeable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gprs_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gprs_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.default [
    i16 2048, label %entry.sw.epilog_crit_edge
    i16 -31011, label %entry.sw.epilog_crit_edge43
  ]

entry.sw.epilog_crit_edge43:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge43
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6(ptr noundef %skb) #6
  %7 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %destructor.i, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %sw.epilog
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !30

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  tail call void @skb_set_owner_w(ptr noundef %skb, ptr noundef %1) #6
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len2, align 4
  %call3 = tail call i32 @pep_write(ptr noundef %1, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %skb_orphan.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gprs_xmit.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gprs_xmit, %land.lhs.true)) #6
          to label %do.end [label %land.lhs.true], !srcloc !37

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %if.then10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @gprs_xmit.descriptor, ptr noundef nonnull @.str.7, ptr noundef %dev, i32 noundef %call3) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true.do.end_crit_edge, %do.body
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %15 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_aborted_errors, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx_aborted_errors, align 8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  br label %if.end16

if.else:                                          ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %17 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_packets, align 4
  %inc14 = add i32 %18, 1
  store i32 %inc14, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %do.end
  %tx_bytes.sink42 = phi ptr [ %tx_bytes, %if.else ], [ %tx_errors, %do.end ]
  %.sink41 = phi i32 [ %14, %if.else ], [ 1, %do.end ]
  %19 = ptrtoint ptr %tx_bytes.sink42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_bytes.sink42, align 4
  %add = add i32 %20, %.sink41
  store i32 %add, ptr %tx_bytes.sink42, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %call17 = tail call i32 @pep_writeable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge, %sw.default
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pep_writeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pep_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pep_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @gprs_attach.ifname, !1, !"ifname", i1 false, i1 false}
!1 = !{!"../net/phonet/pep-gprs.c", i32 239, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/phonet/pep-gprs.c", i32 282, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gprs_attach._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gprs_attach._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/phonet/pep-gprs.c", i32 303, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gprs_detach._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @gprs_detach._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @gprs_netdev_ops, !14, !"gprs_netdev_ops", i1 false, i1 false}
!14 = !{!"../net/phonet/pep-gprs.c", i32 207, i32 36}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/phonet/pep-gprs.c", i32 193, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gprs_xmit.descriptor, !16, !"descriptor", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2148215479, i64 2148215511, i64 2148215540, i64 2148215574, i64 2148215605, i64 2148215628}
!32 = !{i64 2154959366, i64 2154959854, i64 2154959403, i64 2154959459, i64 2154959493, i64 2154959517, i64 2154959558, i64 2154959579, i64 2154959607, i64 2154959641}
!33 = !{!"auto-init"}
!34 = !{i64 2148303480}
!35 = !{i64 2148217944, i64 2148217976, i64 2148218005, i64 2148218039, i64 2148218070, i64 2148218093}
!36 = !{i64 2149810083}
!37 = !{i64 2148695764, i64 2148695769, i64 2148695782, i64 2148695826, i64 2148695860, i64 2148695881}
