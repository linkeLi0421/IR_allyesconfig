; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_netlink.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.49 }
%union.anon.49 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
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
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipoib_neigh_table = type { ptr, %struct.atomic_t, %struct.completion, %struct.completion }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.ib_wc = type { %union.anon.159, i32, i32, i32, i32, ptr, %union.anon.160, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.165, ptr, i32 }
%union.anon.165 = type { i64 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ipoib_cm_dev_priv = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.list_head, %struct.list_head, [4 x %struct.ib_wc], [16 x %struct.ib_sge], %struct.ib_recv_wr, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.ipoib_ethtool_st = type { i16, i16 }

@ipoib_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 7264, ptr null, ptr @ipoib_setup_common, i8 1, i32 3, ptr @ipoib_policy, ptr null, ptr @ipoib_new_child_link, ptr @ipoib_changelink, ptr @ipoib_del_child_link, ptr @ipoib_get_size, ptr @ipoib_fill_info, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__UNIQUE_ID_alias520 = internal constant [31 x i8] c"ib_ipoib.alias=rtnl-link-ipoib\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipoib\00", [26 x i8] zeroinitializer }, align 32
@ipoib_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.49 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@ipoib_new_child_link._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ipoib_new_child_link = private unnamed_addr constant [21 x i8] c"ipoib_new_child_link\00", align 1
@ipoib_new_child_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.ipoib_new_child_link, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: child creation disallowed for child devices\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/ulp/ipoib/ipoib_netlink.c\00", [51 x i8] zeroinitializer }, align 32
@ipoib_new_child_link._entry_ptr = internal global ptr @ipoib_new_child_link._entry, section ".printk_index", align 4
@ipoib_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ipoib_new_child_link._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.ipoib_new_child_link, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: no pkey specified, using parent pkey\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_new_child_link._entry_ptr.6 = internal global ptr @ipoib_new_child_link._entry.4, section ".printk_index", align 4
@ipoib_new_child_link._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_new_child_link._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.ipoib_new_child_link, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: failed to initialize pkey device\0A\00", [56 x i8] zeroinitializer }, align 32
@ipoib_new_child_link._entry_ptr.10 = internal global ptr @ipoib_new_child_link._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"datagram\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"connected\0A\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 165, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"ipoib_policy\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 39, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 115, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 120, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 127, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 77, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [48 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 79, i32 30 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias520, ptr @ipoib_netlink_fini, ptr @ipoib_new_child_link._entry, ptr @ipoib_new_child_link._entry.4, ptr @ipoib_new_child_link._entry.8, ptr @ipoib_new_child_link._entry_ptr, ptr @ipoib_new_child_link._entry_ptr.10, ptr @ipoib_new_child_link._entry_ptr.6, ptr @.str, ptr @ipoib_policy, ptr @ipoib_new_child_link._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @ipoib_new_child_link._rs.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_new_child_link._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_new_child_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_new_child_link._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_new_child_link._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_new_child_link._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ipoib_get_link_ops() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @ipoib_link_ops
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_netlink_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_link_register(ptr noundef nonnull @ipoib_link_ops) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_netlink_fini() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtnl_link_unregister(ptr noundef nonnull @ipoib_link_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_setup_common(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_new_child_link(ptr noundef %src_net, ptr noundef %dev, ptr nocapture noundef readonly %tb, ptr noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %call2 = tail call ptr @__dev_get_by_index(ptr noundef %src_net, i32 noundef %3) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %5)
  %cmp.not = icmp eq i16 %5, 32
  br i1 %cmp.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %add.ptr.i.i106 = getelementptr i8, ptr %call2, i32 2304
  %6 = ptrtoint ptr %add.ptr.i.i106 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i106, align 4
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %if.end20, label %do.body

do.body:                                          ; preds = %if.end6
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_new_child_link._rs, ptr noundef nonnull @__func__.ipoib_new_child_link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev15, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %12) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  %tobool21.not = icmp eq ptr %data, null
  br i1 %tobool21.not, label %if.end20.do.body26_crit_edge, label %lor.lhs.false22

if.end20.do.body26_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

lor.lhs.false22:                                  ; preds = %if.end20
  %arrayidx23 = getelementptr ptr, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %14, null
  br i1 %tobool24.not, label %lor.lhs.false22.do.body26_crit_edge, label %if.else

lor.lhs.false22.do.body26_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body26

do.body26:                                        ; preds = %lor.lhs.false22.do.body26_crit_edge, %if.end20.do.body26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %15 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp27 = icmp sgt i32 %15, 0
  br i1 %cmp27, label %do.end32, label %do.body26.do.end40_crit_edge

do.body26.do.end40_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %dev34 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev34, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %17) #9
  br label %do.end40

do.end40:                                         ; preds = %do.end32, %do.body26.do.end40_crit_edge
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 25
  br label %if.end43

if.else:                                          ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i107 = getelementptr i8, ptr %14, i32 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %do.end40
  %child_pkey.0.in = phi ptr [ %add.ptr.i.i107, %if.else ], [ %pkey, %do.end40 ]
  %18 = ptrtoint ptr %child_pkey.0.in to i32
  call void @__asan_load2_noabort(i32 %18)
  %child_pkey.0 = load i16, ptr %child_pkey.0.in, align 2
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 23
  %19 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 24
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port, align 4
  %conv44 = zext i8 %22 to i32
  %call47 = tail call i32 @ipoib_intf_init(ptr noundef %20, i32 noundef %conv44, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end65, label %do.body50

do.body50:                                        ; preds = %if.end43
  %call51 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_new_child_link._rs.7, ptr noundef nonnull @__func__.ipoib_new_child_link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %do.end56

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %dev58 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev58, align 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %24) #9
  br label %cleanup

if.end65:                                         ; preds = %if.end43
  %add.ptr.i.i108 = getelementptr i8, ptr %dev, i32 2304
  %25 = ptrtoint ptr %add.ptr.i.i108 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i108, align 4
  %call67 = tail call i32 @__ipoib_vlan_add(ptr noundef %7, ptr noundef %26, i16 noundef zeroext %child_pkey.0, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp ne i32 %call67, 0
  %brmerge = or i1 %tobool21.not, %tobool68.not
  br i1 %brmerge, label %if.end65.cleanup_crit_edge, label %if.then72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72:                                        ; preds = %if.end65
  %call73 = tail call i32 @ipoib_changelink(ptr noundef %dev, ptr noundef %tb, ptr noundef nonnull %data, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then72.cleanup_crit_edge, label %if.then75

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.then72.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end56, %do.body50.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %if.then75 ], [ -22, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %call47, %do.end56 ], [ %call47, %do.body50.cleanup_crit_edge ], [ %call67, %if.end65.cleanup_crit_edge ], [ 0, %if.then72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_changelink(ptr noundef %dev, ptr nocapture noundef readnone %tb, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i.i, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.then.out_err_crit_edge [
    i16 0, label %if.then.if.end11_crit_edge
    i16 1, label %if.then8
  ]

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then.out_err_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then.if.end11_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.then8 ], [ @.str.11, %if.then.if.end11_crit_edge ]
  %call9 = tail call i32 @ipoib_set_mode(ptr noundef %dev, ptr noundef nonnull %.str.12.sink) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp12 = icmp slt i32 %call9, 0
  br i1 %cmp12, label %if.end11.out_err_crit_edge, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end11.out_err_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end16:                                         ; preds = %if.end11.if.end16_crit_edge, %entry.if.end16_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end11.if.end16_crit_edge ], [ 0, %entry.if.end16_crit_edge ]
  %arrayidx17 = getelementptr ptr, ptr %data, i32 3
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %if.end16.out_err_crit_edge, label %if.then19

if.end16.out_err_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i32 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i32, align 2
  %conv22 = zext i16 %8 to i32
  tail call void @ipoib_set_umcast(ptr noundef %dev, i32 noundef %conv22) #6
  br label %out_err

out_err:                                          ; preds = %if.then19, %if.end16.out_err_crit_edge, %if.end11.out_err_crit_edge, %if.then.out_err_crit_edge
  %ret.2 = phi i32 [ %call9, %if.end11.out_err_crit_edge ], [ %ret.1, %if.then19 ], [ %ret.1, %if.end16.out_err_crit_edge ], [ -22, %if.then.out_err_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_del_child_link(ptr noundef %dev, ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %parent = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipoib_get_size(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_fill_info(ptr noundef %skb, ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  %tmp.i24 = alloca i16, align 2
  %tmp.i22 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pkey, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = trunc i32 %6 to i16
  %8 = lshr i16 %7, 9
  %conv = and i16 %8, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i22) #6
  %9 = ptrtoint ptr %tmp.i22 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %tmp.i22, align 2
  %call.i23 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i22) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool4.not = icmp eq i32 %call.i23, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = trunc i32 %11 to i16
  %13 = lshr i16 %12, 10
  %conv9 = and i16 %13, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i24) #6
  %14 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv9, ptr %tmp.i24, align 2
  %call.i25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i24) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool11.not = icmp eq i32 %call.i25, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.end6.nla_put_failure_crit_edge

if.end6.nla_put_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end6.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_put_failure ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_intf_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipoib_vlan_add(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_set_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_set_umcast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_alias520, !1, !"__UNIQUE_ID_alias520", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 193, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 165, i32 11}
!4 = !{ptr @ipoib_link_ops, !5, !"ipoib_link_ops", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 164, i32 29}
!6 = !{ptr @ipoib_policy, !7, !"ipoib_policy", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 39, i32 32}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 115, i32 3}
!10 = !{ptr @ipoib_new_child_link._rs, !9, !"_rs", i1 false, i1 false}
!11 = !{ptr @__func__.ipoib_new_child_link, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ipoib_new_child_link._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @ipoib_new_child_link._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 120, i32 3}
!18 = !{ptr @ipoib_new_child_link._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipoib_new_child_link._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ipoib_new_child_link._rs.7, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 127, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ipoib_new_child_link._entry.8, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ipoib_new_child_link._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 77, i32 30}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_netlink.c", i32 79, i32 30}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
