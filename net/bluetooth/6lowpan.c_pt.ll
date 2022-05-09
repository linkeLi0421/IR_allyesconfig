; ModuleID = '/llk/IR_all_yes/net/bluetooth/6lowpan.c_pt.bc'
source_filename = "../net/bluetooth/6lowpan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.l2cap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lowpan_btle_dev = type { %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.work_struct, %struct.delayed_work }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.138, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.138 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.157 = type { ptr }
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
%struct.set_enable = type { %struct.work_struct, i8 }
%struct.lowpan_peer = type { %struct.list_head, %struct.callback_head, ptr, [6 x i8], %struct.in6_addr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.bdaddr_t = type { [6 x i8] }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.130, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.131, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.132, ptr, %struct.address_space, %struct.list_head, %union.anon.133, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.131 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.132 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.133 = type { ptr }

@lowpan_enable_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lowpan_control_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@listen_chan = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bt_6lowpan_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_bluetooth_6lowpan__656_1277_bt_6lowpan_init6 = internal global ptr @bt_6lowpan_init, section ".initcall6.init", align 4
@__exitcall_bt_6lowpan_exit = internal global ptr @bt_6lowpan_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author657 = internal constant [73 x i8] c"bluetooth_6lowpan.author=Jukka Rissanen <jukka.rissanen@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description658 = internal constant [48 x i8] c"bluetooth_6lowpan.description=Bluetooth 6LoWPAN\00", section ".modinfo", align 1
@__UNIQUE_ID_version659 = internal constant [30 x i8] c"bluetooth_6lowpan.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bluetooth_6lowpan\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file660 = internal constant [55 x i8] c"bluetooth_6lowpan.file=net/bluetooth/bluetooth_6lowpan\00", section ".modinfo", align 1
@__UNIQUE_ID_license661 = internal constant [30 x i8] c"bluetooth_6lowpan.license=GPL\00", section ".modinfo", align 1
@disconnect_devices.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bluetooth/6lowpan.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@bt_6lowpan_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bt_6lowpan_devices, ptr @bt_6lowpan_devices }, [24 x i8] zeroinitializer }, align 32
@disconnect_devices.__UNIQUE_ID_ddebug654 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"disconnect_devices\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unregistering netdev %s %p\0A\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@devices_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@device_event.__UNIQUE_ID_ddebug655 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_event\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unregistered netdev %s %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"devices_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"6lowpan_enable\00", [17 x i8] zeroinitializer }, align 32
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@lowpan_enable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lowpan_enable_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"6lowpan_control\00", [16 x i8] zeroinitializer }, align 32
@lowpan_control_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @lowpan_control_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lowpan_control_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@enable_6lowpan = internal global { i8, [31 x i8] } zeroinitializer, align 32
@lowpan_enable_set.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&set_enable->work)\00", [59 x i8] zeroinitializer }, align 32
@set_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @set_lock, i64 52), ptr getelementptr (i8, ptr @set_lock, i64 52) }, ptr @set_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@disconnect_all_peers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@disconnect_all_peers.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_lock\00", [23 x i8] zeroinitializer }, align 32
@bt_6lowpan_chan_ops = internal constant { %struct.l2cap_ops, [36 x i8] } { %struct.l2cap_ops { ptr @.str.23, ptr @chan_new_conn_cb, ptr @chan_recv_cb, ptr @l2cap_chan_no_teardown, ptr @chan_close_cb, ptr @chan_state_change_cb, ptr @chan_ready_cb, ptr @l2cap_chan_no_defer, ptr @chan_resume_cb, ptr @chan_suspend_cb, ptr @l2cap_chan_no_set_shutdown, ptr @chan_get_sndtimeo_cb, ptr null, ptr @chan_alloc_skb_cb, ptr null }, [36 x i8] zeroinitializer }, align 32
@bt_6lowpan_listen.__UNIQUE_ID_ddebug641 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bt_6lowpan_listen\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chan %p src type %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"psm cannot be added err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"L2CAP 6LoWPAN channel\00", [42 x i8] zeroinitializer }, align 32
@chan_new_conn_cb.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chan_new_conn_cb\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chan %p pchan %p\0A\00", [46 x i8] zeroinitializer }, align 32
@chan_recv_cb.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chan_recv_cb\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"recv pkt %d\0A\00", [19 x i8] zeroinitializer }, align 32
@lookup_peer.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__peer_lookup_conn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@lookup_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@recv_pkt.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recv_pkt\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iphc_decompress failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@recv_pkt.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown packet type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@chan_close_cb.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chan_close_cb\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chan %p conn %p\0A\00", [47 x i8] zeroinitializer }, align 32
@chan_close_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@chan_close_cb.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 -58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dev %p removing %speer %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"last \00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1 \00", [29 x i8] zeroinitializer }, align 32
@chan_close_cb.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.37, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chan %p orig refcnt %u\0A\00", [40 x i8] zeroinitializer }, align 32
@chan_close_cb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&entry->delete_netdev)\00", [55 x i8] zeroinitializer }, align 32
@__peer_lookup_chan.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@peer_del.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peer_del\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"last peer\0A\00", [21 x i8] zeroinitializer }, align 32
@chan_state_change_cb.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chan_state_change_cb\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"chan %p conn %p state %s err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BT_CONNECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT_OPEN\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BT_BOUND\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_LISTEN\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_CONNECT\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT_CONNECT2\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CONFIG\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_DISCONN\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CLOSED\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid state\00", [18 x i8] zeroinitializer }, align 32
@chan_ready_cb.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chan_ready_cb\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chan %p conn %p dev %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bt%d\00", [27 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @bt_dev_init, ptr null, ptr null, ptr null, ptr @bt_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@bt_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.80, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"register_netdev failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@setup_netdev.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setup_netdev\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ifindex %d peer bdaddr %pMR type %d my addr %pMR type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@header_ops = internal constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @header_create, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt_dev_init.qdisc_tx_busylock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bt_dev_init.qdisc_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bt_dev_init.dev_addr_list_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev_addr_list_lock_key\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdisc_xmit_lock_key\00", [43 x i8] zeroinitializer }, align 32
@bt_xmit.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt_xmit\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"xmit %s to %pMR type %u IP %pI6c chan %p\0A\00", [54 x i8] zeroinitializer }, align 32
@bt_xmit.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.61, ptr @.str.3, ptr @.str.63, i8 0, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ERROR: xmit failed (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@setup_header.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setup_header\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dest IP %pI6c\0A\00", [17 x i8] zeroinitializer }, align 32
@setup_header.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str.3, ptr @.str.66, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no such peer\0A\00", [18 x i8] zeroinitializer }, align 32
@peer_lookup_dst.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"peer_lookup_dst\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"peers %d addr %pI6c rt %p\0A\00", [37 x i8] zeroinitializer }, align 32
@peer_lookup_dst.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.69, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gw %pI6c\0A\00", [22 x i8] zeroinitializer }, align 32
@peer_lookup_dst.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@peer_lookup_dst.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.70, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dst addr %pMR dst type %u ip %pI6c\0A\00", [60 x i8] zeroinitializer }, align 32
@peer_lookup_dst.__warned.71 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@nd_tbl = external dso_local global %struct.neigh_table, align 4
@___neigh_lookup_noref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/neighbour.h\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned.75 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___neigh_lookup_noref.__warned.76 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@send_mcast_pkt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send_mcast_pkt.__warned.78 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@send_mcast_pkt.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.62, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_mcast_pkt\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@add_peer_chan.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&dev->notify_peers)->work)\00", [49 x i8] zeroinitializer }, align 32
@add_peer_chan.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&dev->notify_peers)->timer\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iface %s cannot be opened (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@chan_resume_cb.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.3, ptr @.str.86, i8 0, i8 -43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chan_resume_cb\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chan %p resume\0A\00", [16 x i8] zeroinitializer }, align 32
@chan_suspend_cb.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.87, ptr @.str.3, ptr @.str.88, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chan_suspend_cb\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chan %p suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"connect \00", [23 x i8] zeroinitializer }, align 32
@lowpan_control_write.__UNIQUE_ID_ddebug650 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lowpan_control_write\00", [43 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"6LoWPAN connection already exists\0A\00", [61 x i8] zeroinitializer }, align 32
@lowpan_control_write.__UNIQUE_ID_ddebug651 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.90, ptr @.str.3, ptr @.str.92, i8 1, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"conn %p dst %pMR type %d user %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disconnect \00", [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%hhx:%hhx:%hhx:%hhx:%hhx:%hhx %hhu\00", [61 x i8] zeroinitializer }, align 32
@get_l2cap_conn.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_l2cap_conn\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"conn %p dst %pMR type %u\0A\00", [38 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_le.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@bt_6lowpan_connect.__UNIQUE_ID_ddebug638 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt_6lowpan_connect\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chan %p err %d\0A\00", [16 x i8] zeroinitializer }, align 32
@bt_6lowpan_disconnect.__UNIQUE_ID_ddebug639 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.3, ptr @.str.104, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bt_6lowpan_disconnect\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"conn %p dst type %u\0A\00", [43 x i8] zeroinitializer }, align 32
@bt_6lowpan_disconnect.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.3, ptr @.str.105, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"peer %p chan %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%pMR (type %u)\0A\00", [16 x i8] zeroinitializer }, align 32
@switch.table.chan_state_change_cb = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"lowpan_enable_debugfs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 26, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"lowpan_control_debugfs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 27, i32 23 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"listen_chan\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 52, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"bt_6lowpan_dev_notifier\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1245, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1282, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1196, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"bt_6lowpan_devices\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 45, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1211, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 695, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 723, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [13 x i8] c"devices_lock\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1232, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 46, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1251, i32 53 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"lowpan_enable_fops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1255, i32 47 }
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c"lowpan_control_fops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1174, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1079, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"enable_6lowpan\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 48, i32 13 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1066, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [9 x i8] c"set_lock\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 53, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"bt_6lowpan_chan_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 867, i32 31 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 941, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 946, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 868, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 748, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 360, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 312, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 332, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 1810, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 772, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 793, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 795, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 811, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 99, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 821, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 239, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 241, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 243, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 245, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 247, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 249, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 251, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 253, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 255, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant [37 x i8] c"../include/net/bluetooth/bluetooth.h\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 258, i32 9 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 721, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 669, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 553, i32 36 }
@___asan_gen_.314 = private unnamed_addr constant [8 x i8] c"bt_type\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 575, i32 27 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 695, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 703, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [11 x i8] c"header_ops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 558, i32 32 }
@___asan_gen_.329 = private unnamed_addr constant [22 x i8] c"qdisc_tx_busylock_key\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c"qdisc_xmit_lock_key\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [23 x i8] c"dev_addr_list_lock_key\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 548, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 524, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 541, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 387, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 396, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 142, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 165, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 170, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 749, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [27 x i8] c"../include/net/neighbour.h\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 305, i32 33 }
@___asan_gen_.384 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 760, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 481, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 576, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 657, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 586, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 853, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 840, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1099, i32 18 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1120, i32 5 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1124, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1136, i32 18 }
@___asan_gen_.435 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 156, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 960, i32 18 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 982, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1054, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 898, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 909, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 915, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.465 = private constant [27 x i8] c"../net/bluetooth/6lowpan.c\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 1160, i32 18 }
@___asan_gen_.467 = private unnamed_addr constant [34 x i8] c"switch.table.chan_state_change_cb\00", align 1
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author657, ptr @__UNIQUE_ID_description658, ptr @__UNIQUE_ID_file660, ptr @__UNIQUE_ID_license661, ptr @__UNIQUE_ID_version659, ptr @__exitcall_bt_6lowpan_exit, ptr @__initcall__kmod_bluetooth_6lowpan__656_1277_bt_6lowpan_init6, ptr @__modver_attr, ptr @bt_6lowpan_exit, ptr @lowpan_enable_debugfs, ptr @lowpan_control_debugfs, ptr @listen_chan, ptr @bt_6lowpan_dev_notifier, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bt_6lowpan_devices, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @devices_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @lowpan_enable_fops, ptr @.str.14, ptr @lowpan_control_fops, ptr @.str.15, ptr @enable_6lowpan, ptr @lowpan_enable_set.__key, ptr @.str.16, ptr @set_lock, ptr @.str.18, ptr @.str.19, ptr @bt_6lowpan_chan_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @chan_close_cb.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @netdev_ops, ptr @bt_type, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @header_ops, ptr @bt_dev_init.qdisc_tx_busylock_key, ptr @bt_dev_init.qdisc_xmit_lock_key, ptr @bt_dev_init.dev_addr_list_lock_key, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @add_peer_chan.__key, ptr @.str.81, ptr @add_peer_chan.__key.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @switch.table.chan_state_change_cb], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_enable_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_control_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @listen_chan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_6lowpan_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_6lowpan_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_enable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_control_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_6lowpan to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lowpan_enable_set.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_6lowpan_chan_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chan_close_cb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_dev_init.qdisc_tx_busylock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_dev_init.qdisc_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt_dev_init.dev_addr_list_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_peer_chan.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_peer_chan.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chan_state_change_cb to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bt_6lowpan_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = load ptr, ptr @lowpan_enable_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %0) #15
  %1 = load ptr, ptr @lowpan_control_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #15
  %2 = load ptr, ptr @listen_chan, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @l2cap_chan_close(ptr noundef nonnull %2, i32 noundef 0) #15
  %3 = load ptr, ptr @listen_chan, align 4
  tail call void @l2cap_chan_put(ptr noundef %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @disconnect_devices()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @bt_6lowpan_dev_notifier) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_close(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disconnect_devices() unnamed_addr #2 align 64 {
entry:
  %devices = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %devices) #15
  %0 = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1
  %1 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %devices, ptr %devices, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %devices, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !291
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b74 = load i1, ptr @disconnect_devices.__warned, align 1
  br i1 %.b74, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @disconnect_devices.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1196, ptr noundef nonnull @.str.4) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %entry1.086 = load volatile ptr, ptr @bt_6lowpan_devices, align 4
  %cmp.not87 = icmp eq ptr %entry1.086, @bt_6lowpan_devices
  br i1 %cmp.not87, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_add_rcu.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %entry1.088 = phi ptr [ %entry1.0, %list_add_rcu.exit.for.body_crit_edge ], [ %entry1.086, %do.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2592, i32 noundef 172) #18
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %if.end14

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end14:                                         ; preds = %for.body
  %netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.088, i32 0, i32 2
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  %netdev15 = getelementptr inbounds %struct.lowpan_btle_dev, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %netdev15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %netdev15, align 4
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i75 = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %prev.i75, align 4
  %13 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devices, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull %devices, ptr noundef %14) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_rcu.exit_crit_edge

if.end14.list_add_rcu.exit_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call7.i, align 8
  %16 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %devices, ptr %prev.i75, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !292
  %17 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i, ptr %devices, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end14.list_add_rcu.exit_crit_edge
  %19 = ptrtoint ptr %entry1.088 to i32
  call void @__asan_load4_noabort(i32 %19)
  %entry1.0 = load volatile ptr, ptr %entry1.088, align 4
  %cmp.not = icmp eq ptr %entry1.0, @bt_6lowpan_devices
  br i1 %cmp.not, label %list_add_rcu.exit.for.end_crit_edge, label %list_add_rcu.exit.for.body_crit_edge

list_add_rcu.exit.for.body_crit_edge:             ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_add_rcu.exit.for.end_crit_edge:              ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_add_rcu.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i76 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i76, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i79

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i79:                                ; preds = %for.end
  %call1.i77 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %20 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i83 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i84, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %24 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devices, align 4
  %cmp37.not90 = icmp eq ptr %25, %devices
  br i1 %cmp37.not90, label %rcu_read_unlock.exit.for.end60_crit_edge, label %rcu_read_unlock.exit.for.body38_crit_edge

rcu_read_unlock.exit.for.body38_crit_edge:        ; preds = %rcu_read_unlock.exit
  br label %for.body38

rcu_read_unlock.exit.for.end60_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end60

for.body38:                                       ; preds = %do.end52.for.body38_crit_edge, %rcu_read_unlock.exit.for.body38_crit_edge
  %entry1.191 = phi ptr [ %tmp.092, %do.end52.for.body38_crit_edge ], [ %25, %rcu_read_unlock.exit.for.body38_crit_edge ]
  %26 = ptrtoint ptr %entry1.191 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.092 = load ptr, ptr %entry1.191, align 4
  %netdev39 = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.191, i32 0, i32 2
  %27 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev39, align 4
  call void @rtnl_lock() #15
  call void @dev_close(ptr noundef %28) #15
  call void @rtnl_unlock() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disconnect_devices.__UNIQUE_ID_ddebug654, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@disconnect_devices, %if.then47)) #15
          to label %do.end52 [label %if.then47], !srcloc !294

if.then47:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev39, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @disconnect_devices.__UNIQUE_ID_ddebug654, ptr noundef nonnull @.str.6, ptr noundef %30, ptr noundef %30) #15
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %for.body38
  %31 = ptrtoint ptr %netdev39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev39, align 4
  call void @lowpan_unregister_netdev(ptr noundef %32) #15
  call void @kfree(ptr noundef %entry1.191) #15
  %cmp37.not = icmp eq ptr %tmp.092, %devices
  br i1 %cmp37.not, label %do.end52.for.end60_crit_edge, label %do.end52.for.body38_crit_edge

do.end52.for.body38_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body38

do.end52.for.end60_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end60

for.end60:                                        ; preds = %do.end52.for.end60_crit_edge, %rcu_read_unlock.exit.for.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devices) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_6lowpan_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt_debugfs to i32))
  %0 = load ptr, ptr @bt_debugfs, align 4
  %call = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.13, i16 noundef zeroext 420, ptr noundef %0, ptr noundef null, ptr noundef nonnull @lowpan_enable_fops) #15
  store ptr %call, ptr @lowpan_enable_debugfs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bt_debugfs to i32))
  %1 = load ptr, ptr @bt_debugfs, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 420, ptr noundef %1, ptr noundef null, ptr noundef nonnull @lowpan_control_fops) #15
  store ptr %call1, ptr @lowpan_control_debugfs, align 4
  %call2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @bt_6lowpan_dev_notifier) #15
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lowpan_unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 825, i16 %3)
  %cmp.not = icmp eq i16 %3, 825
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cond = icmp eq i32 %event, 6
  %or.cond = and i1 %cond, %cmp.not
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @devices_lock) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb
  %entry1.0.in = phi ptr [ @bt_6lowpan_devices, %sw.bb ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp3.not = icmp eq ptr %entry1.0, @bt_6lowpan_devices
  br i1 %cmp3.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  %netdev5 = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 2
  %5 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev5, align 4
  %cmp6 = icmp eq ptr %6, %1
  br i1 %cmp6, label %do.body, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @device_event.__UNIQUE_ID_ddebug655, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@device_event, %if.then14)) #15
          to label %do.end [label %if.then14], !srcloc !294

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @device_event.__UNIQUE_ID_ddebug655, ptr noundef nonnull @.str.11, ptr noundef %1, ptr noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_enable_fops_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @lowpan_enable_get, ptr noundef nonnull @lowpan_enable_set, ptr noundef nonnull @.str.15) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lowpan_enable_get(ptr nocapture noundef readnone %data, ptr nocapture noundef writeonly %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_6lowpan, align 1, !range !295
  %1 = zext i8 %0 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_enable_set(ptr nocapture noundef readnone %data, i64 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool1 = icmp ne i64 %val, 0
  %flag = getelementptr inbounds %struct.set_enable, ptr %call7.i.i, i32 0, i32 1
  %frombool = zext i1 %tobool1 to i8
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %flag, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #15
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @lowpan_enable_set.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry7 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry7, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @do_enable_set, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_enable_set(ptr noundef %work) #2 align 64 {
entry:
  %peers.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr inbounds %struct.set_enable, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flag, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8, ptr @enable_6lowpan, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.not = icmp eq i8 %2, 1
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %peers.i) #15
  %3 = getelementptr inbounds %struct.list_head, ptr %peers.i, i32 0, i32 1
  %4 = ptrtoint ptr %peers.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %peers.i, ptr %peers.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %peers.i, ptr %3, align 4
  %6 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !291
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b110.i = load i1, ptr @disconnect_all_peers.__warned, align 1
  br i1 %.b110.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @disconnect_all_peers.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1002, ptr noundef nonnull @.str.4) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %entry1.0127.i = load volatile ptr, ptr @bt_6lowpan_devices, align 4
  %cmp.not128.i = icmp eq ptr %entry1.0127.i, @bt_6lowpan_devices
  br i1 %cmp.not128.i, label %do.end.i.for.end61.i_crit_edge, label %do.end.i.do.body10.i_crit_edge

do.end.i.do.body10.i_crit_edge:                   ; preds = %do.end.i
  br label %do.body10.i

do.end.i.for.end61.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end61.i

do.body10.i:                                      ; preds = %for.inc51.i.do.body10.i_crit_edge, %do.end.i.do.body10.i_crit_edge
  %entry1.0129.i = phi ptr [ %entry1.0.i, %for.inc51.i.do.body10.i_crit_edge ], [ %entry1.0127.i, %do.end.i.do.body10.i_crit_edge ]
  %call11.i = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %do.body10.i.do.end21.i_crit_edge

do.body10.i.do.end21.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21.i

land.lhs.true13.i:                                ; preds = %do.body10.i
  %call14.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true13.i.do.end21.i_crit_edge, label %land.lhs.true16.i

land.lhs.true13.i.do.end21.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21.i

land.lhs.true16.i:                                ; preds = %land.lhs.true13.i
  %.b108109.i = load i1, ptr @disconnect_all_peers.__warned.17, align 1
  br i1 %.b108109.i, label %land.lhs.true16.i.do.end21.i_crit_edge, label %if.then18.i

land.lhs.true16.i.do.end21.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end21.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @disconnect_all_peers.__warned.17, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1003, ptr noundef nonnull @.str.4) #15
  br label %do.end21.i

do.end21.i:                                       ; preds = %if.then18.i, %land.lhs.true16.i.do.end21.i_crit_edge, %land.lhs.true13.i.do.end21.i_crit_edge, %do.body10.i.do.end21.i_crit_edge
  %peers27.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0129.i, i32 0, i32 3
  %10 = ptrtoint ptr %peers27.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %peer.0124.i = load volatile ptr, ptr %peers27.i, align 4
  %cmp33.not125.i = icmp eq ptr %peer.0124.i, %peers27.i
  br i1 %cmp33.not125.i, label %do.end21.i.for.inc51.i_crit_edge, label %do.end21.i.for.body34.i_crit_edge

do.end21.i.for.body34.i_crit_edge:                ; preds = %do.end21.i
  br label %for.body34.i

do.end21.i.for.inc51.i_crit_edge:                 ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51.i

for.body34.i:                                     ; preds = %list_add.exit.i.for.body34.i_crit_edge, %do.end21.i.for.body34.i_crit_edge
  %peer.0126.i = phi ptr [ %peer.0.i, %list_add.exit.i.for.body34.i_crit_edge ], [ %peer.0124.i, %do.end21.i.for.body34.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 2592, i32 noundef 44) #18
  %tobool36.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not.i, label %for.body34.i.for.inc51.i_crit_edge, label %if.end38.i

for.body34.i.for.inc51.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51.i

if.end38.i:                                       ; preds = %for.body34.i
  %chan.i = getelementptr inbounds %struct.lowpan_peer, ptr %peer.0126.i, i32 0, i32 2
  %12 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan.i, align 4
  %chan39.i = getelementptr inbounds %struct.lowpan_peer, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %chan39.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %chan39.i, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i111.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i111.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %prev.i111.i, align 4
  %17 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peers.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %peers.i, ptr noundef %18) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end38.i.list_add.exit.i_crit_edge

if.end38.i.list_add.exit.i_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %call7.i.i, align 8
  %21 = ptrtoint ptr %prev.i111.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %peers.i, ptr %prev.i111.i, align 4
  %22 = ptrtoint ptr %peers.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i, ptr %peers.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end38.i.list_add.exit.i_crit_edge
  %23 = ptrtoint ptr %peer.0126.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %peer.0.i = load volatile ptr, ptr %peer.0126.i, align 4
  %cmp33.not.i = icmp eq ptr %peer.0.i, %peers27.i
  br i1 %cmp33.not.i, label %list_add.exit.i.for.inc51.i_crit_edge, label %list_add.exit.i.for.body34.i_crit_edge

list_add.exit.i.for.body34.i_crit_edge:           ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body34.i

list_add.exit.i.for.inc51.i_crit_edge:            ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51.i

for.inc51.i:                                      ; preds = %list_add.exit.i.for.inc51.i_crit_edge, %for.body34.i.for.inc51.i_crit_edge, %do.end21.i.for.inc51.i_crit_edge
  %24 = ptrtoint ptr %entry1.0129.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %entry1.0.i = load volatile ptr, ptr %entry1.0129.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, @bt_6lowpan_devices
  br i1 %cmp.not.i, label %for.inc51.i.for.end61.i_crit_edge, label %for.inc51.i.do.body10.i_crit_edge

for.inc51.i.do.body10.i_crit_edge:                ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body10.i

for.inc51.i.for.end61.i_crit_edge:                ; preds = %for.inc51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end61.i

for.end61.i:                                      ; preds = %for.inc51.i.for.end61.i_crit_edge, %do.end.i.for.end61.i_crit_edge
  %call.i112.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i112.i, label %for.end61.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i115.i

for.end61.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end61.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true.i115.i:                             ; preds = %for.end61.i
  %call1.i113.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i113.i)
  %tobool.not.i114.i = icmp eq i32 %call1.i113.i, 0
  br i1 %tobool.not.i114.i, label %land.lhs.true.i115.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i117.i

land.lhs.true.i115.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i115.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i117.i:                            ; preds = %land.lhs.true.i115.i
  %.b4.i116.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i116.i, label %land.lhs.true2.i117.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i118.i

land.lhs.true2.i117.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i117.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

if.then.i118.i:                                   ; preds = %land.lhs.true2.i117.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i118.i, %land.lhs.true2.i117.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i115.i.rcu_read_unlock.exit.i_crit_edge, %for.end61.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %25 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i119.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i119.i to ptr
  %preempt_count.i.i.i.i120.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i120.i, align 4
  %sub.i.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i120.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @_raw_spin_lock(ptr noundef nonnull @devices_lock) #15
  %29 = ptrtoint ptr %peers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %peers.i, align 4
  %cmp73.not131.i = icmp eq ptr %30, %peers.i
  br i1 %cmp73.not131.i, label %rcu_read_unlock.exit.i.disconnect_all_peers.exit_crit_edge, label %rcu_read_unlock.exit.i.for.body74.i_crit_edge

rcu_read_unlock.exit.i.for.body74.i_crit_edge:    ; preds = %rcu_read_unlock.exit.i
  br label %for.body74.i

rcu_read_unlock.exit.i.disconnect_all_peers.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %disconnect_all_peers.exit

for.body74.i:                                     ; preds = %if.end83.i.for.body74.i_crit_edge, %rcu_read_unlock.exit.i.for.body74.i_crit_edge
  %peer.1132.i = phi ptr [ %tmp_peer.0134.i, %if.end83.i.for.body74.i_crit_edge ], [ %30, %rcu_read_unlock.exit.i.for.body74.i_crit_edge ]
  %31 = ptrtoint ptr %peer.1132.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp_peer.0134.i = load ptr, ptr %peer.1132.i, align 4
  %chan75.i = getelementptr inbounds %struct.lowpan_peer, ptr %peer.1132.i, i32 0, i32 2
  %32 = ptrtoint ptr %chan75.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan75.i, align 4
  call void @l2cap_chan_close(ptr noundef %33, i32 noundef 2) #15
  %call.i.i121.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %peer.1132.i) #15
  br i1 %call.i.i121.i, label %if.end.i.i122.i, label %for.body74.i.list_del_rcu.exit.i_crit_edge

for.body74.i.list_del_rcu.exit.i_crit_edge:       ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_rcu.exit.i

if.end.i.i122.i:                                  ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %peer.1132.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %peer.1132.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %peer.1132.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i122.i, %for.body74.i.list_del_rcu.exit.i_crit_edge
  %prev.i123.i = getelementptr inbounds %struct.list_head, ptr %peer.1132.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i123.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i123.i, align 4
  %tobool78.not.i = icmp eq ptr %peer.1132.i, null
  br i1 %tobool78.not.i, label %list_del_rcu.exit.i.if.end83.i_crit_edge, label %do.end82.i

list_del_rcu.exit.i.if.end83.i_crit_edge:         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end83.i

do.end82.i:                                       ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %rcu.i = getelementptr inbounds %struct.lowpan_peer, ptr %peer.1132.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #15
  br label %if.end83.i

if.end83.i:                                       ; preds = %do.end82.i, %list_del_rcu.exit.i.if.end83.i_crit_edge
  %cmp73.not.i = icmp eq ptr %tmp_peer.0134.i, %peers.i
  br i1 %cmp73.not.i, label %if.end83.i.disconnect_all_peers.exit_crit_edge, label %if.end83.i.for.body74.i_crit_edge

if.end83.i.for.body74.i_crit_edge:                ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body74.i

if.end83.i.disconnect_all_peers.exit_crit_edge:   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %disconnect_all_peers.exit

disconnect_all_peers.exit:                        ; preds = %if.end83.i.disconnect_all_peers.exit_crit_edge, %rcu_read_unlock.exit.i.disconnect_all_peers.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %peers.i) #15
  br label %if.end

if.end:                                           ; preds = %disconnect_all_peers.exit, %lor.lhs.false.if.end_crit_edge
  %41 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flag, align 4, !range !295
  store i8 %42, ptr @enable_6lowpan, align 1
  call void @mutex_lock_nested(ptr noundef nonnull @set_lock, i32 noundef 0) #15
  %43 = load ptr, ptr @listen_chan, align 4
  %tobool8.not = icmp eq ptr %43, null
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @l2cap_chan_close(ptr noundef nonnull %43, i32 noundef 0) #15
  %44 = load ptr, ptr @listen_chan, align 4
  call void @l2cap_chan_put(ptr noundef %44) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  %call = call fastcc ptr @bt_6lowpan_listen()
  store ptr %call, ptr @listen_chan, align 4
  call void @mutex_unlock(ptr noundef nonnull @set_lock) #15
  call void @kfree(ptr noundef %work) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bt_6lowpan_listen() unnamed_addr #2 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %1 = load i8, ptr @enable_6lowpan, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @l2cap_chan_create() #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %call.i) #15
  %chan_type.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 18
  %2 = ptrtoint ptr %chan_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %chan_type.i, align 1
  %mode.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %mode.i, align 2
  %imtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %imtu.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1280, ptr %imtu.i, align 4
  %ops = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 85
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bt_6lowpan_chan_ops, ptr %ops, align 4
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %state, align 4
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %src_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %src_type, align 2
  %nesting = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nesting, i32 noundef 4) #15
  %8 = ptrtoint ptr %nesting to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 2, ptr %nesting, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_6lowpan_listen.__UNIQUE_ID_ddebug641, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bt_6lowpan_listen, %if.then12)) #15
          to label %do.end [label %if.then12], !srcloc !294

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %src_type, align 2
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bt_6lowpan_listen.__UNIQUE_ID_ddebug641, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i, i32 noundef %conv) #15
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end7
  %call15 = call i32 @l2cap_add_psm(ptr noundef nonnull %call.i, ptr noundef nonnull %.compoundliteral, i16 noundef zeroext 8960) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end.cleanup_crit_edge, label %if.then17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @l2cap_chan_put(ptr noundef nonnull %call.i) #15
  call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.22, i32 noundef %call15) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then17 ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_add_psm(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_chan_create() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_set_defaults(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @chan_new_conn_cb(ptr noundef %pchan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @l2cap_chan_create() #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %call.i) #15
  %chan_type.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 18
  %0 = ptrtoint ptr %chan_type.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %chan_type.i, align 1
  %mode.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 17
  %1 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %mode.i, align 2
  %imtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 14
  %2 = ptrtoint ptr %imtu.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1280, ptr %imtu.i, align 4
  %ops = getelementptr inbounds %struct.l2cap_chan, ptr %pchan, i32 0, i32 85
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %ops1 = getelementptr inbounds %struct.l2cap_chan, ptr %call.i, i32 0, i32 85
  %5 = ptrtoint ptr %ops1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ops1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_new_conn_cb.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_new_conn_cb, %if.then6)) #15
          to label %cleanup [label %if.then6], !srcloc !294

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_new_conn_cb.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.25, ptr noundef nonnull %call.i, ptr noundef %pchan) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chan_recv_cb(ptr nocapture noundef readonly %chan, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call = tail call fastcc ptr @lookup_peer(ptr noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %call2 = tail call fastcc ptr @lookup_dev(ptr noundef %3)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %call8 = tail call fastcc i32 @recv_pkt(ptr noundef %skb, ptr noundef nonnull %5, ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %do.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_recv_cb.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_recv_cb, %if.then15)) #15
          to label %cleanup [label %if.then15], !srcloc !294

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_recv_cb.__UNIQUE_ID_ddebug617, ptr noundef nonnull @.str.27, i32 noundef %call8) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ -11, %if.then15 ], [ -11, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_teardown(ptr nocapture noundef %chan, i32 noundef %err) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chan_close_cb(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_close_cb.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_close_cb, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !294

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_close_cb.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.33, ptr noundef %chan, ptr noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end14_crit_edge, label %land.lhs.true

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %land.lhs.true.if.end14_crit_edge, label %if.then8

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then8:                                         ; preds = %land.lhs.true
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %7)
  %cmp.not.i = icmp eq i8 %7, -128
  br i1 %cmp.not.i, label %is_bt_6lowpan.exit, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

is_bt_6lowpan.exit:                               ; preds = %if.then8
  %8 = load i8, ptr @enable_6lowpan, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.not = icmp eq i8 %8, 0
  br i1 %tobool.not.i.not, label %is_bt_6lowpan.exit.cleanup_crit_edge, label %is_bt_6lowpan.exit.if.end14_crit_edge

is_bt_6lowpan.exit.if.end14_crit_edge:            ; preds = %is_bt_6lowpan.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

is_bt_6lowpan.exit.cleanup_crit_edge:             ; preds = %is_bt_6lowpan.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %is_bt_6lowpan.exit.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %remove.0.off0 = phi i1 [ true, %land.lhs.true.if.end14_crit_edge ], [ true, %do.end.if.end14_crit_edge ], [ false, %is_bt_6lowpan.exit.if.end14_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @devices_lock) #15
  %call16 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.end14.for.cond.preheader_crit_edge

if.end14.for.cond.preheader_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true18:                                  ; preds = %if.end14
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.for.cond.preheader_crit_edge, label %land.lhs.true21

land.lhs.true18.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b137 = load i1, ptr @chan_close_cb.__warned, align 1
  br i1 %.b137, label %land.lhs.true21.for.cond.preheader_crit_edge, label %if.then23

land.lhs.true21.for.cond.preheader_crit_edge:     ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @chan_close_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 786, ptr noundef nonnull @.str.4) #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then23, %land.lhs.true21.for.cond.preheader_crit_edge, %land.lhs.true18.for.cond.preheader_crit_edge, %if.end14.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %__peer_lookup_chan.exit.for.cond_crit_edge, %for.cond.preheader
  %entry1.0.in = phi ptr [ %entry1.0, %__peer_lookup_chan.exit.for.cond_crit_edge ], [ @bt_6lowpan_devices, %for.cond.preheader ]
  %9 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %entry1.0 = load volatile ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, @bt_6lowpan_devices
  br i1 %cmp.not, label %for.cond.if.else_crit_edge, label %for.body

for.cond.if.else_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

for.body:                                         ; preds = %for.cond
  %netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 2
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev, align 4
  %call.i = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i145 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i145, label %land.lhs.true.i, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @__peer_lookup_chan.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__peer_lookup_chan.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 111, ptr noundef nonnull @.str.4) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %peers.i = getelementptr i8, ptr %11, i32 2824
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %peer.0.in.i = phi ptr [ %peers.i, %do.end.i ], [ %peer.0.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %peer.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %peer.0.i = load volatile ptr, ptr %peer.0.in.i, align 4
  %cmp.not.i146 = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp.not.i146, label %for.cond.i.__peer_lookup_chan.exit_crit_edge, label %for.body.i

for.cond.i.__peer_lookup_chan.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__peer_lookup_chan.exit

for.body.i:                                       ; preds = %for.cond.i
  %chan10.i = getelementptr inbounds %struct.lowpan_peer, ptr %peer.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %chan10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan10.i, align 4
  %cmp11.i = icmp eq ptr %14, %chan
  br i1 %cmp11.i, label %for.body.i.__peer_lookup_chan.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

for.body.i.__peer_lookup_chan.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__peer_lookup_chan.exit

__peer_lookup_chan.exit:                          ; preds = %for.body.i.__peer_lookup_chan.exit_crit_edge, %for.cond.i.__peer_lookup_chan.exit_crit_edge
  %retval.0.i147 = phi ptr [ %peer.0.i, %for.body.i.__peer_lookup_chan.exit_crit_edge ], [ null, %for.cond.i.__peer_lookup_chan.exit_crit_edge ]
  %tobool34.not = icmp eq ptr %retval.0.i147, null
  br i1 %tobool34.not, label %__peer_lookup_chan.exit.for.cond_crit_edge, label %if.then35

__peer_lookup_chan.exit.for.cond_crit_edge:       ; preds = %__peer_lookup_chan.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then35:                                        ; preds = %__peer_lookup_chan.exit
  %priv.i.le = getelementptr i8, ptr %11, i32 2808
  %call.i.i17.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %retval.0.i147) #15
  br i1 %call.i.i17.i, label %if.end.i.i.i, label %if.then35.if.end.i150_crit_edge

if.then35.if.end.i150_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i150

if.end.i.i.i:                                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i147, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %retval.0.i147 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retval.0.i147, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.end.i.i.i, %if.then35.if.end.i150_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i147, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.lowpan_peer, ptr %retval.0.i147, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #15
  tail call void @module_put(ptr noundef null) #15
  %peer_count.i = getelementptr i8, ptr %11, i32 2832
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %peer_count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !296
  tail call void @llvm.prefetch.p0(ptr %peer_count.i, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %peer_count.i, ptr %peer_count.i, i32 1, ptr elementtype(i32) %peer_count.i) #15, !srcloc !297
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !298
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body5.i, label %if.end.i150.peer_del.exit_crit_edge

if.end.i150.peer_del.exit_crit_edge:              ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #17
  br label %peer_del.exit

do.body5.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @peer_del.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_close_cb, %if.then10.i)) #15
          to label %peer_del.exit [label %if.then10.i], !srcloc !294

if.then10.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @peer_del.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.40) #15
  br label %peer_del.exit

peer_del.exit:                                    ; preds = %if.then10.i, %do.body5.i, %if.end.i150.peer_del.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_close_cb.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_close_cb, %if.then50)) #15
          to label %do.body55 [label %if.then50], !srcloc !294

if.then50:                                        ; preds = %peer_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  %cond = select i1 %cmp.i.i.i, ptr @.str.35, ptr @.str.36
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_close_cb.__UNIQUE_ID_ddebug633, ptr noundef nonnull @.str.34, ptr noundef %priv.i.le, ptr noundef nonnull %cond, ptr noundef nonnull %retval.0.i147) #15
  br label %do.body55

do.body55:                                        ; preds = %if.then50, %peer_del.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_close_cb.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_close_cb, %if.then67)) #15
          to label %for.end [label %if.then67], !srcloc !294

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #17
  %kref = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #15
  %23 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_close_cb.__UNIQUE_ID_ddebug634, ptr noundef nonnull @.str.37, ptr noundef %chan, i32 noundef %24) #15
  br label %for.end

for.end:                                          ; preds = %if.then67, %do.body55
  tail call void @l2cap_chan_put(ptr noundef %chan) #15
  %tobool85.not = icmp ne ptr %priv.i.le, null
  %25 = and i1 %cmp.i.i.i, %tobool85.not
  br i1 %25, label %land.lhs.true86, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true86:                                  ; preds = %for.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %peer_count.i, i32 noundef 4) #15
  %26 = ptrtoint ptr %peer_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %peer_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool88.not = icmp eq i32 %27, 0
  br i1 %tobool88.not, label %if.then89, label %land.lhs.true86.if.else_crit_edge

land.lhs.true86.if.else_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

if.then89:                                        ; preds = %land.lhs.true86
  tail call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  %notify_peers = getelementptr i8, ptr %11, i32 2880
  %call90 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %notify_peers) #15
  %netdev91 = getelementptr i8, ptr %11, i32 2820
  %28 = ptrtoint ptr %netdev91 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev91, align 4
  tail call void @rtnl_lock() #15
  tail call void @dev_close(ptr noundef %29) #15
  tail call void @rtnl_unlock() #15
  br i1 %remove.0.off0, label %do.body94, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body94:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #17
  %delete_netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 5
  tail call void @__init_work(ptr noundef %delete_netdev, i32 noundef 0) #15
  %30 = ptrtoint ptr %delete_netdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %delete_netdev, align 4
  %lockdep_map = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @chan_close_cb.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry98 = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %entry98 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry98, ptr %entry98, align 4
  %prev.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 5, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry98, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 5, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @delete_netdev, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i151 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %delete_netdev) #15
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true86.if.else_crit_edge, %for.end.if.else_crit_edge, %for.cond.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body94, %if.then89.cleanup_crit_edge, %is_bt_6lowpan.exit.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chan_state_change_cb(ptr noundef %chan, i32 noundef %state, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_state_change_cb.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_state_change_cb, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !294

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %switch.tableidx = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 9
  br i1 %2, label %switch.lookup, label %if.then.state_to_string.exit_crit_edge

if.then.state_to_string.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.chan_state_change_cb, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then.state_to_string.exit_crit_edge
  %retval.0.i5 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.52, %if.then.state_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_state_change_cb.__UNIQUE_ID_ddebug635, ptr noundef nonnull @.str.42, ptr noundef %chan, ptr noundef %1, ptr noundef nonnull %retval.0.i5, i32 noundef %err) #15
  br label %do.end

do.end:                                           ; preds = %state_to_string.exit, %entry
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chan_ready_cb(ptr noundef %chan) #4 align 64 {
entry:
  %dev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #15
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call = tail call fastcc ptr @lookup_dev(ptr noundef %1)
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_ready_cb.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_ready_cb, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !294

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_ready_cb.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.54, ptr noundef %chan, ptr noundef %4, ptr noundef %call) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then6:                                         ; preds = %do.end
  %call7 = call fastcc i32 @setup_netdev(ptr noundef %chan, ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @l2cap_chan_del(ptr noundef %chan, i32 noundef -2) #15
  br label %cleanup

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %call11 = tail call zeroext i1 @try_module_get(ptr noundef null) #15
  br i1 %call11, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2848, i32 noundef 44) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end13.add_peer_chan.exit_crit_edge, label %if.end.i

if.end13.add_peer_chan.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %add_peer_chan.exit

if.end.i:                                         ; preds = %if.end13
  %chan1.i = getelementptr inbounds %struct.lowpan_peer, ptr %call7.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %chan1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chan, ptr %chan1.i, align 8
  %peer_addr.i = getelementptr inbounds %struct.lowpan_peer, ptr %call7.i.i.i, i32 0, i32 4
  %9 = call ptr @memset(ptr %peer_addr.i, i32 0, i32 16)
  %lladdr.i = getelementptr inbounds %struct.lowpan_peer, ptr %call7.i.i.i, i32 0, i32 3
  %dst.i = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 6
  tail call void @baswap(ptr noundef %lladdr.i, ptr noundef %dst.i) #15
  %10 = ptrtoint ptr %peer_addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -2, ptr %peer_addr.i, align 4
  %arrayidx2.i.i = getelementptr [16 x i8], ptr %peer_addr.i, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.lowpan_peer, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %arrayidx4.i.i, ptr %lladdr.i, i32 3)
  %arrayidx6.i.i = getelementptr [16 x i8], ptr %peer_addr.i, i32 0, i32 11
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %arrayidx6.i.i, align 1
  %arrayidx8.i.i = getelementptr %struct.lowpan_peer, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -2, ptr %arrayidx8.i.i, align 8
  %arrayidx10.i.i = getelementptr [16 x i8], ptr %peer_addr.i, i32 0, i32 13
  %add.ptr.i.i = getelementptr %struct.lowpan_peer, ptr %call7.i.i.i, i32 0, i32 3, i32 3
  %15 = call ptr @memcpy(ptr %arrayidx10.i.i, ptr %add.ptr.i.i, i32 3)
  tail call void @_raw_spin_lock(ptr noundef nonnull @devices_lock) #15
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %peers.i.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 3
  %18 = ptrtoint ptr %peers.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peers.i.i, align 4
  %call.i.i2.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %peers.i.i, ptr noundef %19) #15
  br i1 %call.i.i2.i.i, label %if.end.i.i.i.i, label %if.end.i.peer_add.exit.i_crit_edge

if.end.i.peer_add.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %peer_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call7.i.i.i, align 8
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %peers.i.i, ptr %prev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !292
  %22 = ptrtoint ptr %peers.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i.i, ptr %peers.i.i, align 4
  %prev37.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %prev37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %prev37.i.i.i.i, align 4
  br label %peer_add.exit.i

peer_add.exit.i:                                  ; preds = %if.end.i.i.i.i, %if.end.i.peer_add.exit.i_crit_edge
  %peer_count.i.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %peer_count.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %peer_count.i.i, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %peer_count.i.i, ptr %peer_count.i.i, i32 1, ptr elementtype(i32) %peer_count.i.i) #15, !srcloc !299
  tail call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  br i1 %tobool5.not, label %do.body7.i, label %peer_add.exit.i.if.end23.i_crit_edge

peer_add.exit.i.if.end23.i_crit_edge:             ; preds = %peer_add.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

do.body7.i:                                       ; preds = %peer_add.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %notify_peers.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 6
  tail call void @__init_work(ptr noundef %notify_peers.i, i32 noundef 0) #15
  %25 = ptrtoint ptr %notify_peers.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %notify_peers.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @add_peer_chan.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry14.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 6, i32 0, i32 1
  %26 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 6, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry14.i, ptr %prev.i1.i, align 4
  %func.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 6, i32 0, i32 2
  %28 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @do_notify_peers, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.83, ptr noundef nonnull @add_peer_chan.__key.82) #15
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.body7.i, %peer_add.exit.i.if.end23.i_crit_edge
  %notify_peers24.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %notify_peers24.i, i32 noundef 10) #15
  br label %add_peer_chan.exit

add_peer_chan.exit:                               ; preds = %if.end23.i, %if.end13.add_peer_chan.exit_crit_edge
  %netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %6, i32 0, i32 2
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev, align 4
  tail call void @rtnl_lock() #15
  %call.i = tail call i32 @dev_open(ptr noundef %31, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %add_peer_chan.exit.ifup.exit_crit_edge

add_peer_chan.exit.ifup.exit_crit_edge:           ; preds = %add_peer_chan.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ifup.exit

if.then.i:                                        ; preds = %add_peer_chan.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.84, ptr noundef %31, i32 noundef %call.i) #15
  br label %ifup.exit

ifup.exit:                                        ; preds = %if.then.i, %add_peer_chan.exit.ifup.exit_crit_edge
  tail call void @rtnl_unlock() #15
  br label %cleanup

cleanup:                                          ; preds = %ifup.exit, %if.end10.cleanup_crit_edge, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_defer(ptr nocapture noundef %chan) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chan_resume_cb(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_resume_cb.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_resume_cb, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !294

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_resume_cb.__UNIQUE_ID_ddebug637, ptr noundef nonnull @.str.86, ptr noundef %chan) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call3 = tail call fastcc ptr @lookup_dev(ptr noundef %1)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %call3, i32 0, i32 2
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chan_suspend_cb(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chan_suspend_cb.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chan_suspend_cb, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !294

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chan_suspend_cb.__UNIQUE_ID_ddebug636, ptr noundef nonnull @.str.88, ptr noundef %chan) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %call3 = tail call fastcc ptr @lookup_dev(ptr noundef %1)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %call3, i32 0, i32 2
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_set_shutdown(ptr nocapture noundef %chan) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @chan_get_sndtimeo_cb(ptr nocapture noundef readnone %chan) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4000
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @chan_alloc_skb_cb(ptr nocapture noundef readnone %chan, i32 noundef %hdr_len, i32 noundef %len, i32 noundef %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %hdr_len, 8
  %add.i = add i32 %add, %len
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.bt_skb_alloc.exit_crit_edge, label %if.then.i

entry.bt_skb_alloc.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %bt_skb_alloc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  br label %bt_skb_alloc.exit

bt_skb_alloc.exit:                                ; preds = %if.then.i, %entry.bt_skb_alloc.exit_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_peer(ptr noundef readnone %conn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !291
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true4

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @lookup_peer.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.for.cond.preheader_crit_edge, label %if.then

land.lhs.true4.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @lookup_peer.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 205, ptr noundef nonnull @.str.4) #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true4.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %__peer_lookup_conn.exit.for.cond_crit_edge, %for.cond.preheader
  %entry1.0.in = phi ptr [ %entry1.0, %__peer_lookup_conn.exit.for.cond_crit_edge ], [ @bt_6lowpan_devices, %for.cond.preheader ]
  %4 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0 = load volatile ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, @bt_6lowpan_devices
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call.i26 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i29, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i29:                                ; preds = %for.body
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i29.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i29.do.end.i_crit_edge:             ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i29
  %.b27.i = load i1, ptr @__peer_lookup_conn.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i30

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i30:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__peer_lookup_conn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 124, ptr noundef nonnull @.str.4) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i30, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i29.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %peers.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %peer.0.in.i = phi ptr [ %peers.i, %do.end.i ], [ %peer.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %peer.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %peer.0.i = load volatile ptr, ptr %peer.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %peer.0.i, %peers.i
  br i1 %cmp.not.i, label %for.cond.i.__peer_lookup_conn.exit_crit_edge, label %for.body.i

for.cond.i.__peer_lookup_conn.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__peer_lookup_conn.exit

for.body.i:                                       ; preds = %for.cond.i
  %chan.i = getelementptr inbounds %struct.lowpan_peer, ptr %peer.0.i, i32 0, i32 2
  %6 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp11.i = icmp eq ptr %9, %conn
  br i1 %cmp11.i, label %for.body.i.__peer_lookup_conn.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

for.body.i.__peer_lookup_conn.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__peer_lookup_conn.exit

__peer_lookup_conn.exit:                          ; preds = %for.body.i.__peer_lookup_conn.exit_crit_edge, %for.cond.i.__peer_lookup_conn.exit_crit_edge
  %retval.0.i = phi ptr [ %peer.0.i, %for.body.i.__peer_lookup_conn.exit_crit_edge ], [ null, %for.cond.i.__peer_lookup_conn.exit_crit_edge ]
  %tobool11.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool11.not, label %__peer_lookup_conn.exit.for.cond_crit_edge, label %__peer_lookup_conn.exit.for.end_crit_edge

__peer_lookup_conn.exit.for.end_crit_edge:        ; preds = %__peer_lookup_conn.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

__peer_lookup_conn.exit.for.cond_crit_edge:       ; preds = %__peer_lookup_conn.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.end:                                          ; preds = %__peer_lookup_conn.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %peer.1 = phi ptr [ %retval.0.i, %__peer_lookup_conn.exit.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i31, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i34

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i34:                                ; preds = %for.end
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %10 = tail call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i38 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %peer.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_dev(ptr nocapture noundef readonly %conn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !291
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true4

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @lookup_dev.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.for.cond.preheader_crit_edge, label %if.then

land.lhs.true4.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @lookup_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 223, ptr noundef nonnull @.str.4) #15
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true4.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %entry1.0.in = phi ptr [ %entry1.0, %for.body.for.cond_crit_edge ], [ @bt_6lowpan_devices, %for.cond.preheader ]
  %4 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %entry1.0 = load volatile ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, @bt_6lowpan_devices
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %hdev10 = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0, i32 0, i32 1
  %9 = ptrtoint ptr %hdev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev10, align 4
  %cmp11 = icmp eq ptr %8, %10
  br i1 %cmp11, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %dev.0 = phi ptr [ null, %for.cond.for.end_crit_edge ], [ %entry1.0, %for.body.for.end_crit_edge ]
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i26, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i29

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i29:                                ; preds = %for.end
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %11 = tail call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i33 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %dev.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_pkt(ptr noundef %skb, ptr noundef %dev, ptr noundef %peer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.drop_crit_edge, label %if.end

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 825, i16 %3)
  %cmp.not = icmp eq i16 %3, 825
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.drop_crit_edge

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

lor.lhs.false:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.drop_crit_edge, label %if.end3

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.end3:                                          ; preds = %lor.lhs.false
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %network_header.i, align 4
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #15
  %11 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #15
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread140, !prof !300

skb_share_check.exit.thread140:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @consume_skb(ptr noundef %skb) #15
  br label %if.end7

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %drop

skb_share_check.exit:                             ; preds = %if.end3
  %tobool5.not = icmp eq ptr %skb, null
  br i1 %tobool5.not, label %skb_share_check.exit.drop_crit_edge, label %skb_share_check.exit.if.end7_crit_edge

skb_share_check.exit.if.end7_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

skb_share_check.exit.drop_crit_edge:              ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.end7:                                          ; preds = %skb_share_check.exit.if.end7_crit_edge, %skb_share_check.exit.thread140
  %skb.addr.0.i143 = phi ptr [ %call7.i, %skb_share_check.exit.thread140 ], [ %skb, %skb_share_check.exit.if.end7_crit_edge ]
  %head.i125 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i143, i32 0, i32 18
  %13 = ptrtoint ptr %head.i125 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i125, align 8
  %network_header.i126 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i143, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i126 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i126, align 4
  %conv.i127 = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv.i127
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %18)
  %cmp.i = icmp eq i8 %18, 65
  br i1 %cmp.i, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %call11 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i143, i32 noundef 1) #15
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i143, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then10.skb_tailroom.exit_crit_edge

if.then10.skb_tailroom.exit_crit_edge:            ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i143, i32 0, i32 17
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i143, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i128 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i129 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i130 = sub i32 %sub.ptr.lhs.cast.i128, %sub.ptr.rhs.cast.i129
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then10.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i130, %cond.false.i ], [ 0, %if.then10.skb_tailroom.exit_crit_edge ]
  %call13 = tail call ptr @skb_copy_expand(ptr noundef nonnull %skb.addr.0.i143, i32 noundef 127, i32 noundef %cond.i, i32 noundef 2592) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %skb_tailroom.exit.drop_crit_edge, label %if.end16

skb_tailroom.exit.drop_crit_edge:                 ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.end16:                                         ; preds = %skb_tailroom.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -31011, ptr %protocol, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 15
  %26 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  %27 = getelementptr inbounds %struct.anon.49, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %27, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 15, i32 0, i32 19
  %add.i = add i16 %conv.i.i, 40
  %33 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add.i, ptr %transport_header.i.i, align 2
  %call.i = tail call ptr @skb_copy(ptr noundef nonnull %call13, i32 noundef 2592) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end16.if.then20_crit_edge, label %give_skb_to_upper.exit

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

give_skb_to_upper.exit:                           ; preds = %if.end16
  %call1.i = tail call i32 @netif_rx_ni(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp18.not = icmp eq i32 %call1.i, 0
  br i1 %cmp18.not, label %if.end21, label %give_skb_to_upper.exit.if.then20_crit_edge

give_skb_to_upper.exit.if.then20_crit_edge:       ; preds = %give_skb_to_upper.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then20

if.then20:                                        ; preds = %give_skb_to_upper.exit.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call13, i32 noundef 0) #15
  br label %drop

if.end21:                                         ; preds = %give_skb_to_upper.exit
  call void @__sanitizer_cov_trace_pc() #17
  %len22 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i143, i32 0, i32 6
  %34 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len22, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %36 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %37, %35
  store i32 %add, ptr %rx_bytes, align 8
  %38 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stats, align 8
  %inc = add i32 %39, 1
  store i32 %inc, ptr %stats, align 8
  tail call void @consume_skb(ptr noundef nonnull %call13) #15
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0.i143) #15
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %40 = and i8 %18, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %40)
  %cmp.i136 = icmp eq i8 %40, 96
  br i1 %cmp.i136, label %if.then26, label %do.body60

if.then26:                                        ; preds = %if.else
  %call27 = tail call ptr @skb_clone(ptr noundef nonnull %skb.addr.0.i143, i32 noundef 2592) #15
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then26.drop_crit_edge, label %if.end30

if.then26.drop_crit_edge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop

if.end30:                                         ; preds = %if.then26
  %41 = getelementptr inbounds %struct.anon.49, ptr %call27, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev, ptr %41, align 8
  %lladdr.i = getelementptr inbounds %struct.lowpan_peer, ptr %peer, i32 0, i32 3
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %43 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_addr.i, align 64
  %call.i137 = tail call i32 @lowpan_header_decompress(ptr noundef nonnull %call27, ptr noundef %dev, ptr noundef %44, ptr noundef %lladdr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp32 = icmp slt i32 %call.i137, 0
  br i1 %cmp32, label %do.body, label %if.end41

do.body:                                          ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @recv_pkt.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@recv_pkt, %if.then39)) #15
          to label %do.end [label %if.then39], !srcloc !294

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @recv_pkt.__UNIQUE_ID_ddebug615, ptr noundef nonnull @.str.29, i32 noundef %call.i137) #15
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body
  tail call void @kfree_skb_reason(ptr noundef nonnull %call27, i32 noundef 0) #15
  br label %drop

if.end41:                                         ; preds = %if.end30
  %protocol42 = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol42 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -31011, ptr %protocol42, align 8
  %pkt_type43 = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 15
  %46 = ptrtoint ptr %pkt_type43 to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load44 = load i16, ptr %pkt_type43, align 8
  %bf.clear45 = and i16 %bf.load44, 8191
  store i16 %bf.clear45, ptr %pkt_type43, align 8
  %call47 = tail call fastcc i32 @give_skb_to_upper(ptr noundef nonnull %call27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %call27, i32 noundef 0) #15
  br label %drop

if.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %len52 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i143, i32 0, i32 6
  %47 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len52, align 4
  %stats53 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes54 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %49 = ptrtoint ptr %rx_bytes54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_bytes54, align 8
  %add55 = add i32 %50, %48
  store i32 %add55, ptr %rx_bytes54, align 8
  %51 = ptrtoint ptr %stats53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stats53, align 8
  %inc58 = add i32 %52, 1
  store i32 %inc58, ptr %stats53, align 8
  tail call void @consume_skb(ptr noundef nonnull %call27) #15
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0.i143) #15
  br label %cleanup

do.body60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @recv_pkt.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@recv_pkt, %if.then72)) #15
          to label %drop [label %if.then72], !srcloc !294

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @recv_pkt.__UNIQUE_ID_ddebug616, ptr noundef nonnull @.str.30) #15
  br label %drop

drop:                                             ; preds = %if.then72, %do.body60, %if.then50, %do.end, %if.then26.drop_crit_edge, %if.then20, %skb_tailroom.exit.drop_crit_edge, %skb_share_check.exit.drop_crit_edge, %skb_share_check.exit.thread, %lor.lhs.false.drop_crit_edge, %if.end.drop_crit_edge, %entry.drop_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %53 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_dropped, align 8
  %inc79 = add i32 %54, 1
  store i32 %inc79, ptr %rx_dropped, align 8
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end51, %if.end21
  %retval.0 = phi i32 [ 1, %drop ], [ 0, %if.end51 ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @give_skb_to_upper(ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call i32 @netif_rx_ni(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_header_decompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delete_netdev(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @lowpan_unregister_netdev(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_netdev(ptr noundef %chan, ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  %addr = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 676, ptr noundef nonnull @.str.55, i8 noundef zeroext 0, ptr noundef nonnull @netdev_setup, i32 noundef 1, i32 noundef 1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %1 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %addr_assign_type, align 4
  %src = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 8
  call void @baswap(ptr noundef nonnull %addr, ptr noundef %src) #15
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %hdev = getelementptr inbounds %struct.hci_conn, ptr %6, i32 0, i32 65
  %7 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdev, align 4
  %dev1 = getelementptr inbounds %struct.hci_dev, ptr %8, i32 0, i32 204
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %parent, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bt_type, ptr %type, align 4
  %priv.i = getelementptr i8, ptr %call, i32 2808
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %priv.i, ptr %dev, align 4
  %netdev5 = getelementptr i8, ptr %call, i32 2820
  %12 = ptrtoint ptr %netdev5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %netdev5, align 4
  %13 = load ptr, ptr %chan, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %hdev8 = getelementptr inbounds %struct.hci_conn, ptr %15, i32 0, i32 65
  %16 = ptrtoint ptr %hdev8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hdev8, align 4
  %18 = load ptr, ptr %dev, align 4
  %hdev9 = getelementptr inbounds %struct.lowpan_btle_dev, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %hdev9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %hdev9, align 4
  %20 = load ptr, ptr %dev, align 4
  %peers = getelementptr inbounds %struct.lowpan_btle_dev, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %peers, ptr %peers, align 4
  %prev.i = getelementptr inbounds %struct.lowpan_btle_dev, ptr %20, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %peers, ptr %prev.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @devices_lock) #15
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %24, align 4
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev.i50, align 4
  %27 = load ptr, ptr %dev, align 4
  %28 = load ptr, ptr @bt_6lowpan_devices, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %27, ptr noundef nonnull @bt_6lowpan_devices, ptr noundef %28) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_rcu.exit_crit_edge

if.end.list_add_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %27, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bt_6lowpan_devices, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !292
  store volatile ptr %27, ptr @bt_6lowpan_devices, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %27, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_add_rcu.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  %call11 = call i32 @lowpan_register_netdev(ptr noundef nonnull %call, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %do.body

if.then12:                                        ; preds = %list_add_rcu.exit
  call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.56, i32 noundef %call11) #15
  call void @_raw_spin_lock(ptr noundef nonnull @devices_lock) #15
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %call.i.i51 = call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #15
  br i1 %call.i.i51, label %if.end.i.i52, label %if.then12.list_del_rcu.exit_crit_edge

if.then12.list_del_rcu.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_rcu.exit

if.end.i.i52:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i52, %if.then12.list_del_rcu.exit_crit_edge
  %prev.i53 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i53, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  call void @free_netdev(ptr noundef nonnull %call) #15
  br label %cleanup

do.body:                                          ; preds = %list_add_rcu.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_netdev.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_netdev, %if.then19)) #15
          to label %do.end [label %if.then19], !srcloc !294

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %ifindex = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 17
  %41 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifindex, align 4
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 6
  %dst_type = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 7
  %43 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dst_type, align 1
  %conv = zext i8 %44 to i32
  %src_type = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 9
  %45 = ptrtoint ptr %src_type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %src_type, align 2
  %conv21 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_netdev.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.58, i32 noundef %42, ptr noundef %dst, i32 noundef %conv, ptr noundef %src, i32 noundef %conv21) #15
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %state = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %state) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_del_rcu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %list_del_rcu.exit ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_del(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @netdev_setup(ptr nocapture noundef writeonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %hard_header_len, align 2
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 22
  %1 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %needed_tailroom, align 2
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4160, ptr %flags, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %3 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %watchdog_timeo, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %4 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1000, ptr %tx_queue_len, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %6 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @header_ops, ptr %header_ops, align 4
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %7 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @baswap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_register_netdev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @header_create(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %netdev, i16 noundef zeroext %type, ptr nocapture noundef readnone %_daddr, ptr nocapture noundef readnone %_saddr, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %type)
  %cmp.not = icmp eq i16 %type, -31011
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_dev_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %qdisc_tx_busylock = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 147
  %0 = ptrtoint ptr %qdisc_tx_busylock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bt_dev_init.qdisc_tx_busylock_key, ptr %qdisc_tx_busylock, align 8
  %dep_map = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.59, ptr noundef nonnull @bt_dev_init.dev_addr_list_lock_key, i32 noundef 0, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %3 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp27.not = icmp eq i32 %4, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx, align 128
  %dep_map5 = getelementptr %struct.netdev_queue, ptr %6, i32 %i.028, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner10 = getelementptr %struct.netdev_queue, ptr %6, i32 %i.028, i32 10, i32 0, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %wait_type_inner10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wait_type_inner10, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map5, ptr noundef nonnull @.str.60, ptr noundef nonnull @bt_dev_init.qdisc_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %inc = add nuw i32 %i.028, 1
  %9 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt_xmit(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  %iv.i = alloca %struct.kvec, align 4
  %addr = alloca %struct.bdaddr_t, align 1
  %addr_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_type) #15
  %1 = ptrtoint ptr %addr_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %addr_type, align 1, !annotation !301
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_unshare.exit_crit_edge, label %skb_cloned.exit.i

entry.skb_unshare.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_unshare.exit

skb_cloned.exit.i:                                ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #15
  %5 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.skb_unshare.exit_crit_edge, label %if.then6.i

skb_cloned.exit.i.skb_unshare.exit_crit_edge:     ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_unshare.exit

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #15
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit.thread, label %skb_unshare.exit.thread78, !prof !300

skb_unshare.exit.thread78:                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @consume_skb(ptr noundef %skb) #15
  br label %if.end

skb_unshare.exit.thread:                          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #15
  br label %cleanup

skb_unshare.exit:                                 ; preds = %skb_cloned.exit.i.skb_unshare.exit_crit_edge, %entry.skb_unshare.exit_crit_edge
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_unshare.exit.cleanup_crit_edge, label %skb_unshare.exit.if.end_crit_edge

skb_unshare.exit.if.end_crit_edge:                ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_unshare.exit.cleanup_crit_edge:               ; preds = %skb_unshare.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %skb_unshare.exit.if.end_crit_edge, %skb_unshare.exit.thread78
  %skb.addr.0.i81 = phi ptr [ %call7.i, %skb_unshare.exit.thread78 ], [ %skb, %skb_unshare.exit.if.end_crit_edge ]
  %call1 = call fastcc i32 @setup_header(ptr noundef nonnull %skb.addr.0.i81, ptr noundef %netdev, ptr noundef nonnull %addr, ptr noundef nonnull %addr_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i81, i32 noundef 0) #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool4.not = icmp eq i32 %call1, 0
  br i1 %tobool4.not, label %if.else26, label %if.then5

if.then5:                                         ; preds = %if.end3
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i81, i32 0, i32 3
  %chan = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i81, i32 0, i32 3, i32 32
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan, align 8
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %if.end28.thread, label %do.body

if.end28.thread:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.0.i81) #15
  br label %do.body31

do.body:                                          ; preds = %if.then5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_xmit.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bt_xmit, %if.then12)) #15
          to label %do.end [label %if.then12], !srcloc !294

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr_type, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bt_xmit.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.62, ptr noundef %netdev, ptr noundef nonnull %addr, i32 noundef %conv, ptr noundef %cb, ptr noundef %12) #15
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #15
  %15 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %14, i32 0, i32 84
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %skb.addr.0.i81, ptr %data.i, align 4
  %data1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i81, i32 0, i32 19
  %17 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data1.i, align 4
  %19 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %iv.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i81, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %15, align 4
  %23 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %21) #15
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  %call.i = call i32 @l2cap_chan_send(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef %25) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %26 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %27, %call.i
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.i = icmp slt i32 %call.i, 0
  br i1 %cmp5.i, label %if.then6.i73, label %if.end.i.send_pkt.exit_crit_edge

if.end.i.send_pkt.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %send_pkt.exit

if.then6.i73:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i73, %if.then.i
  %tx_errors.sink22.i = phi ptr [ %tx_errors.i, %if.then6.i73 ], [ %tx_packets.i, %if.then.i ]
  %retval.0.ph.i = phi i32 [ %call.i, %if.then6.i73 ], [ 0, %if.then.i ]
  %28 = ptrtoint ptr %tx_errors.sink22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_errors.sink22.i, align 4
  %inc8.i = add i32 %29, 1
  store i32 %inc8.i, ptr %tx_errors.sink22.i, align 4
  br label %send_pkt.exit

send_pkt.exit:                                    ; preds = %cleanup.sink.split.i, %if.end.i.send_pkt.exit_crit_edge
  %retval.0.i74 = phi i32 [ 0, %if.end.i.send_pkt.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #15
  br label %if.end28

if.else26:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = tail call fastcc i32 @send_mcast_pkt(ptr noundef nonnull %skb.addr.0.i81, ptr noundef %netdev)
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %send_pkt.exit
  %err.0 = phi i32 [ %retval.0.i74, %send_pkt.exit ], [ %call27, %if.else26 ]
  call void @consume_skb(ptr noundef nonnull %skb.addr.0.i81) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool29.not = icmp eq i32 %err.0, 0
  br i1 %tobool29.not, label %if.end28.if.end47_crit_edge, label %if.end28.do.body31_crit_edge

if.end28.do.body31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body31

if.end28.if.end47_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

do.body31:                                        ; preds = %if.end28.do.body31_crit_edge, %if.end28.thread
  %err.086 = phi i32 [ -2, %if.end28.thread ], [ %err.0, %if.end28.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_xmit.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bt_xmit, %if.then43)) #15
          to label %if.end47 [label %if.then43], !srcloc !294

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bt_xmit.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.63, i32 noundef %err.086) #15
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %do.body31, %if.end28.if.end47_crit_edge
  %err.087 = phi i32 [ %err.086, %if.then43 ], [ 0, %if.end28.if.end47_crit_edge ], [ %err.086, %do.body31 ]
  %err.087.lobit = lshr i32 %err.087, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then2, %skb_unshare.exit.cleanup_crit_edge, %skb_unshare.exit.thread
  %retval.0 = phi i32 [ 1, %if.then2 ], [ %err.087.lobit, %if.end47 ], [ 1, %skb_unshare.exit.cleanup_crit_edge ], [ 1, %skb_unshare.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_type) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_header(ptr noundef %skb, ptr noundef %netdev, ptr nocapture noundef writeonly %peer_addr, ptr nocapture noundef writeonly %peer_addr_type) unnamed_addr #2 align 64 {
entry:
  %ipv6_daddr = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ipv6_daddr) #15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %priv.i = getelementptr i8, ptr %netdev, i32 2808
  %daddr2 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %ipv6_daddr, ptr %daddr2, i32 16)
  %5 = ptrtoint ptr %ipv6_daddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ipv6_daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %6)
  %cmp.i = icmp ugt i32 %6, -16777217
  br i1 %cmp.i, label %entry.if.end35_crit_edge, label %do.body

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_header.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_header, %if.then7)) #15
          to label %do.end [label %if.then7], !srcloc !294

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_header.__UNIQUE_ID_ddebug618, ptr noundef nonnull @.str.65, ptr noundef nonnull %ipv6_daddr) #15
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call8 = call fastcc ptr @peer_lookup_dst(ptr noundef %priv.i, ptr noundef nonnull %ipv6_daddr, ptr noundef %skb)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.body11, label %if.end27

do.body11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_header.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@setup_header, %if.then23)) #15
          to label %cleanup [label %if.then23], !srcloc !294

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_header.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.66) #15
  br label %cleanup

if.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %lladdr = getelementptr inbounds %struct.lowpan_peer, ptr %call8, i32 0, i32 3
  %chan29 = getelementptr inbounds %struct.lowpan_peer, ptr %call8, i32 0, i32 2
  %7 = ptrtoint ptr %chan29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan29, align 4
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %peer_addr, ptr %dst, i32 6)
  %10 = load ptr, ptr %chan29, align 4
  %dst_type = getelementptr inbounds %struct.l2cap_chan, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dst_type, align 1
  %13 = ptrtoint ptr %peer_addr_type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %peer_addr_type, align 1
  %14 = load ptr, ptr %chan29, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end27, %entry.if.end35_crit_edge
  %.sink = phi ptr [ %14, %if.end27 ], [ null, %entry.if.end35_crit_edge ]
  %status.0 = phi i32 [ 1, %if.end27 ], [ 0, %entry.if.end35_crit_edge ]
  %daddr.0 = phi ptr [ %lladdr, %if.end27 ], [ null, %entry.if.end35_crit_edge ]
  %chan34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %15 = ptrtoint ptr %chan34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.sink, ptr %chan34, align 8
  %netdev36 = getelementptr i8, ptr %netdev, i32 2820
  %16 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev36, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %call37 = call i32 @lowpan_header_compress(ptr noundef %skb, ptr noundef %netdev, ptr noundef %daddr.0, ptr noundef %19) #15
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 49
  %20 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end35.cleanup_crit_edge, label %lor.lhs.false.i

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end35
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 %23(ptr noundef %skb, ptr noundef %netdev, i16 noundef zeroext -31011, ptr noundef null, ptr noundef null, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp, i32 %call.i, i32 %status.0
  br label %cleanup

cleanup:                                          ; preds = %dev_hard_header.exit, %lor.lhs.false.i.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then23, %do.body11
  %retval.0 = phi i32 [ -2, %if.then23 ], [ -2, %do.body11 ], [ %status.0, %lor.lhs.false.i.cleanup_crit_edge ], [ %status.0, %if.end35.cleanup_crit_edge ], [ %spec.select, %dev_hard_header.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ipv6_daddr) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_mcast_pkt(ptr noundef %skb, ptr noundef %netdev) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  %iv.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !291
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b99 = load i1, ptr @send_mcast_pkt.__warned, align 1
  br i1 %.b99, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @send_mcast_pkt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 467, ptr noundef nonnull @.str.4) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %entry1.0125 = load volatile ptr, ptr @bt_6lowpan_devices, align 4
  %cmp.not126 = icmp eq ptr %entry1.0125, @bt_6lowpan_devices
  br i1 %cmp.not126, label %do.end.for.end79_crit_edge, label %for.body.lr.ph

do.end.for.end79_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end79

for.body.lr.ph:                                   ; preds = %do.end
  %4 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 5
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 3
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 1
  %peers = getelementptr i8, ptr %netdev, i32 2824
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %entry1.0128 = phi ptr [ %entry1.0125, %for.body.lr.ph ], [ %entry1.0, %cleanup.for.body_crit_edge ]
  %err.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %err.3, %cleanup.for.body_crit_edge ]
  %netdev10 = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.0128, i32 0, i32 2
  %5 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev10, align 4
  %cmp11.not = icmp eq ptr %6, %netdev
  br i1 %cmp11.not, label %if.end13, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %call17 = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.end13.do.end27_crit_edge

if.end13.do.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

land.lhs.true19:                                  ; preds = %if.end13
  %call20 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true19.do.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %.b9798 = load i1, ptr @send_mcast_pkt.__warned.78, align 1
  br i1 %.b9798, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @send_mcast_pkt.__warned.78, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 476, ptr noundef nonnull @.str.4) #15
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true19.do.end27_crit_edge, %if.end13.do.end27_crit_edge
  %7 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %7)
  %pentry.0121 = load volatile ptr, ptr %peers, align 4
  %cmp38.not122 = icmp eq ptr %pentry.0121, %peers
  br i1 %cmp38.not122, label %do.end27.cleanup_crit_edge, label %do.end27.for.body39_crit_edge

do.end27.for.body39_crit_edge:                    ; preds = %do.end27
  br label %for.body39

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body39:                                       ; preds = %for.cond35.for.body39_crit_edge, %do.end27.for.body39_crit_edge
  %pentry.0124 = phi ptr [ %pentry.0, %for.cond35.for.body39_crit_edge ], [ %pentry.0121, %do.end27.for.body39_crit_edge ]
  %err.1123 = phi i32 [ %31, %for.cond35.for.body39_crit_edge ], [ %err.0127, %do.end27.for.body39_crit_edge ]
  %call40 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_mcast_pkt.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_mcast_pkt, %if.then47)) #15
          to label %do.end52 [label %if.then47], !srcloc !294

if.then47:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #17
  %chan = getelementptr inbounds %struct.lowpan_peer, ptr %pentry.0124, i32 0, i32 2
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 6
  %dst_type = getelementptr inbounds %struct.l2cap_chan, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dst_type, align 1
  %conv = zext i8 %11 to i32
  %peer_addr = getelementptr inbounds %struct.lowpan_peer, ptr %pentry.0124, i32 0, i32 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_mcast_pkt.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.62, ptr noundef %netdev, ptr noundef %dst, i32 noundef %conv, ptr noundef %peer_addr, ptr noundef %9) #15
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %for.body39
  %chan53 = getelementptr inbounds %struct.lowpan_peer, ptr %pentry.0124, i32 0, i32 2
  %12 = ptrtoint ptr %chan53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan53, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #15
  %data.i = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 84
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call40, ptr %data.i, align 4
  %data1.i = getelementptr inbounds %struct.sk_buff, ptr %call40, i32 0, i32 19
  %15 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data1.i, align 4
  %17 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %iv.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call40, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %4, align 4
  %21 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %19) #15
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  %call.i100 = call i32 @l2cap_chan_send(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef %23) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp.i = icmp sgt i32 %call.i100, 0
  br i1 %cmp.i, label %send_pkt.exit, label %if.end.i

if.end.i:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp5.i = icmp slt i32 %call.i100, 0
  br i1 %cmp5.i, label %28, label %send_pkt.exit.thread

send_pkt.exit.thread:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #15
  br label %for.cond35

send_pkt.exit:                                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %25, %call.i100
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %26 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_packets.i, align 4
  %inc8.i = add i32 %27, 1
  store i32 %inc8.i, ptr %tx_packets.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #15
  br label %for.cond35

28:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_errors.i, align 4
  %inc8.i118 = add i32 %30, 1
  store i32 %inc8.i118, ptr %tx_errors.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #15
  br label %for.cond35

for.cond35:                                       ; preds = %28, %send_pkt.exit, %send_pkt.exit.thread
  %31 = phi i32 [ %call.i100, %28 ], [ %err.1123, %send_pkt.exit ], [ %err.1123, %send_pkt.exit.thread ]
  call void @kfree_skb_reason(ptr noundef %call40, i32 noundef 0) #15
  %32 = ptrtoint ptr %pentry.0124 to i32
  call void @__asan_load4_noabort(i32 %32)
  %pentry.0 = load volatile ptr, ptr %pentry.0124, align 4
  %cmp38.not = icmp eq ptr %pentry.0, %peers
  br i1 %cmp38.not, label %for.cond35.cleanup_crit_edge, label %for.cond35.for.body39_crit_edge

for.cond35.for.body39_crit_edge:                  ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body39

for.cond35.cleanup_crit_edge:                     ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.cond35.cleanup_crit_edge, %do.end27.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %err.3 = phi i32 [ %err.0127, %for.body.cleanup_crit_edge ], [ %err.0127, %do.end27.cleanup_crit_edge ], [ %31, %for.cond35.cleanup_crit_edge ]
  %33 = ptrtoint ptr %entry1.0128 to i32
  call void @__asan_load4_noabort(i32 %33)
  %entry1.0 = load volatile ptr, ptr %entry1.0128, align 4
  %cmp.not = icmp eq ptr %entry1.0, @bt_6lowpan_devices
  br i1 %cmp.not, label %cleanup.for.end79_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.for.end79_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end79

for.end79:                                        ; preds = %cleanup.for.end79_crit_edge, %do.end.for.end79_crit_edge
  %err.0.lcssa = phi i32 [ 0, %do.end.for.end79_crit_edge ], [ %err.3, %cleanup.for.end79_crit_edge ]
  %call.i103 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i103, label %for.end79.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i106

for.end79.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i106:                               ; preds = %for.end79
  %call1.i104 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104)
  %tobool.not.i105 = icmp eq i32 %call1.i104, 0
  br i1 %tobool.not.i105, label %land.lhs.true.i106.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i108

land.lhs.true.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i108:                              ; preds = %land.lhs.true.i106
  %.b4.i107 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i107, label %land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge, label %if.then.i109

land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i109:                                     ; preds = %land.lhs.true2.i108
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i109, %land.lhs.true2.i108.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i106.rcu_read_unlock.exit_crit_edge, %for.end79.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %34 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i110 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i110 to ptr
  %preempt_count.i.i.i.i111 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i111, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i111, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret i32 %err.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @peer_lookup_dst(ptr noundef %dev, ptr noundef %daddr, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i172 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i172, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i174

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.lhs.true.i174:                               ; preds = %entry
  %call.i173 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool1.not.i = icmp eq i32 %call.i173, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i174.skb_dst.exit_crit_edge

land.lhs.true.i174.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i174
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !300

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1013, i32 noundef 9, ptr noundef null) #15
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i174.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %peer_count = getelementptr inbounds %struct.lowpan_btle_dev, ptr %dev, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %peer_count, i32 noundef 4) #15
  %6 = ptrtoint ptr %peer_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %peer_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @peer_lookup_dst.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@peer_lookup_dst, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !294

if.then:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @peer_lookup_dst.__UNIQUE_ID_ddebug602, ptr noundef nonnull @.str.68, i32 noundef %7, ptr noundef %daddr, ptr noundef %5) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %skb_dst.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool5.not = icmp eq i32 %and25.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.else13

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %gw = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %gw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gw, align 4
  %arrayidx2.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %11, %9
  %arrayidx4.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %13
  %arrayidx7.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  %daddr.gw = select i1 %cmp.i, ptr %daddr, ptr %gw
  br label %do.body19

if.else13:                                        ; preds = %do.end
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rt6i_flags.i, align 4
  %and.i175 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  br i1 %tobool.not.i176, label %if.else.i, label %if.then.i177

if.then.i177:                                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #17
  %rt6i_gateway.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 5
  br label %rt6_nexthop.exit

if.else.i:                                        ; preds = %if.else13
  %and2.i = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i178 = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i178, label %if.else.i.rt6_nexthop.exit_crit_edge, label %if.then6.i, !prof !302

if.else.i.rt6_nexthop.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rt6_nexthop.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %rt6i_dst.i = getelementptr inbounds %struct.rt6_info, ptr %5, i32 0, i32 3
  br label %rt6_nexthop.exit

rt6_nexthop.exit:                                 ; preds = %if.then6.i, %if.else.i.rt6_nexthop.exit_crit_edge, %if.then.i177
  %retval.0.i179 = phi ptr [ %rt6i_gateway.i, %if.then.i177 ], [ %rt6i_dst.i, %if.then6.i ], [ %daddr, %if.else.i.rt6_nexthop.exit_crit_edge ]
  %gw17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %18 = call ptr @memcpy(ptr %gw17, ptr %retval.0.i179, i32 16)
  br label %do.body19

do.body19:                                        ; preds = %rt6_nexthop.exit, %if.then6
  %nexthop.0 = phi ptr [ %retval.0.i179, %rt6_nexthop.exit ], [ %daddr.gw, %if.then6 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @peer_lookup_dst.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@peer_lookup_dst, %if.then31)) #15
          to label %do.end34 [label %if.then31], !srcloc !294

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @peer_lookup_dst.__UNIQUE_ID_ddebug603, ptr noundef nonnull @.str.69, ptr noundef %nexthop.0) #15
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body19
  %19 = tail call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !291
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %do.end34.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end34.rcu_read_lock.exit_crit_edge:            ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end34
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end34.rcu_read_lock.exit_crit_edge
  %call36 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end45_crit_edge

rcu_read_lock.exit.do.end45_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end45

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call38 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true
  %.b165 = load i1, ptr @peer_lookup_dst.__warned, align 1
  br i1 %.b165, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @peer_lookup_dst.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 169, ptr noundef nonnull @.str.4) #15
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %rcu_read_lock.exit.do.end45_crit_edge
  %peers = getelementptr inbounds %struct.lowpan_btle_dev, ptr %dev, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %do.end68.for.cond_crit_edge, %do.end45
  %peer.0.in = phi ptr [ %peers, %do.end45 ], [ %peer.0, %do.end68.for.cond_crit_edge ]
  %23 = ptrtoint ptr %peer.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %peer.0 = load volatile ptr, ptr %peer.0.in, align 4
  %cmp.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp.not, label %for.end, label %do.body52

do.body52:                                        ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @peer_lookup_dst.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@peer_lookup_dst, %if.then64)) #15
          to label %do.end68 [label %if.then64], !srcloc !294

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #17
  %chan = getelementptr inbounds %struct.lowpan_peer, ptr %peer.0, i32 0, i32 2
  %24 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan, align 4
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %25, i32 0, i32 6
  %dst_type = getelementptr inbounds %struct.l2cap_chan, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dst_type, align 1
  %conv = zext i8 %27 to i32
  %peer_addr = getelementptr inbounds %struct.lowpan_peer, ptr %peer.0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @peer_lookup_dst.__UNIQUE_ID_ddebug606, ptr noundef nonnull @.str.70, ptr noundef %dst, i32 noundef %conv, ptr noundef %peer_addr) #15
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  %peer_addr69 = getelementptr inbounds %struct.lowpan_peer, ptr %peer.0, i32 0, i32 4
  %bcmp239 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %peer_addr69, ptr noundef dereferenceable(16) %nexthop.0, i32 16) #19
  %tobool71.not = icmp eq i32 %bcmp239, 0
  br i1 %tobool71.not, label %if.then72, label %do.end68.for.cond_crit_edge

do.end68.for.cond_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then72:                                        ; preds = %do.end68
  %call.i181 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i181, label %if.then72.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i184

if.then72.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i184:                               ; preds = %if.then72
  %call1.i182 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i182)
  %tobool.not.i183 = icmp eq i32 %call1.i182, 0
  br i1 %tobool.not.i183, label %land.lhs.true.i184.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i186

land.lhs.true.i184.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i184
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i186:                              ; preds = %land.lhs.true.i184
  %.b4.i185 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i185, label %land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge, label %if.then.i187

land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i186
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i187:                                     ; preds = %land.lhs.true2.i186
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i187, %land.lhs.true2.i186.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i184.rcu_read_unlock.exit_crit_edge, %if.then72.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %28 = tail call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i188 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i188 to ptr
  %preempt_count.i.i.i.i189 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i189 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i189, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i189, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %netdev = getelementptr inbounds %struct.lowpan_btle_dev, ptr %dev, i32 0, i32 2
  %32 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i.i191 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i191, label %for.end.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

for.end.rcu_read_lock_bh.exit.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %for.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 750, ptr noundef nonnull @.str.72) #15
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %for.end.rcu_read_lock_bh.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31) to i32))
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @nd_tbl, i32 0, i32 31), align 4
  %call.i.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %rcu_read_lock_bh.exit.i.do.end8.i.i.i_crit_edge

rcu_read_lock_bh.exit.i.do.end8.i.i.i_crit_edge:  ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %rcu_read_lock_bh.exit.i
  %call3.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b3.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b3.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 305, ptr noundef nonnull @.str.74) #15
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %rcu_read_lock_bh.exit.i.do.end8.i.i.i_crit_edge
  %hash_rnd.i.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %nexthop.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nexthop.0, align 4
  %37 = ptrtoint ptr %33 to i32
  %xor.i.i.i.i = xor i32 %36, %37
  %38 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hash_rnd.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %xor.i.i.i.i, %39
  %arrayidx2.i.i.i.i = getelementptr i32, ptr %nexthop.0, i32 1
  %40 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr %struct.neigh_hash_table, ptr %34, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx3.i.i.i.i, align 4
  %mul4.i.i.i.i = mul i32 %43, %41
  %add.i.i.i.i = add i32 %mul4.i.i.i.i, %mul.i.i.i.i
  %arrayidx5.i.i.i.i = getelementptr i32, ptr %nexthop.0, i32 2
  %44 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx5.i.i.i.i, align 4
  %arrayidx6.i.i.i.i = getelementptr %struct.neigh_hash_table, ptr %34, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx6.i.i.i.i, align 4
  %mul7.i.i.i.i = mul i32 %47, %45
  %add8.i.i.i.i = add i32 %add.i.i.i.i, %mul7.i.i.i.i
  %arrayidx9.i.i.i.i = getelementptr i32, ptr %nexthop.0, i32 3
  %48 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %arrayidx10.i.i.i.i = getelementptr %struct.neigh_hash_table, ptr %34, i32 0, i32 2, i32 3
  %50 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx10.i.i.i.i, align 4
  %mul11.i.i.i.i = mul i32 %51, %49
  %add12.i.i.i.i = add i32 %add8.i.i.i.i, %mul11.i.i.i.i
  %hash_shift.i.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %34, i32 0, i32 1
  %52 = ptrtoint ptr %hash_shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hash_shift.i.i.i, align 4
  %sub.i.i.i192 = sub i32 32, %53
  %shr.i.i.i = lshr i32 %add12.i.i.i.i, %sub.i.i.i192
  %54 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %34, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %55, i32 %shr.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %call16.i.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i.i)
  %tobool17.not.i.i.i = icmp eq i32 %call16.i.i.i, 0
  br i1 %tobool17.not.i.i.i, label %land.lhs.true18.i.i.i, label %do.end8.i.i.i.do.end26.i.i.i_crit_edge

do.end8.i.i.i.do.end26.i.i.i_crit_edge:           ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26.i.i.i

land.lhs.true18.i.i.i:                            ; preds = %do.end8.i.i.i
  %call19.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %tobool20.not.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %land.lhs.true18.i.i.i.do.end26.i.i.i_crit_edge, label %land.lhs.true21.i.i.i

land.lhs.true18.i.i.i.do.end26.i.i.i_crit_edge:   ; preds = %land.lhs.true18.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26.i.i.i

land.lhs.true21.i.i.i:                            ; preds = %land.lhs.true18.i.i.i
  %.b612.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned.75, align 1
  br i1 %.b612.i.i.i, label %land.lhs.true21.i.i.i.do.end26.i.i.i_crit_edge, label %if.then23.i.i.i

land.lhs.true21.i.i.i.do.end26.i.i.i_crit_edge:   ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end26.i.i.i

if.then23.i.i.i:                                  ; preds = %land.lhs.true21.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @___neigh_lookup_noref.__warned.75, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 310, ptr noundef nonnull @.str.74) #15
  br label %do.end26.i.i.i

do.end26.i.i.i:                                   ; preds = %if.then23.i.i.i, %land.lhs.true21.i.i.i.do.end26.i.i.i_crit_edge, %land.lhs.true18.i.i.i.do.end26.i.i.i_crit_edge, %do.end8.i.i.i.do.end26.i.i.i_crit_edge
  %cmp.not11.i.i.i = icmp eq ptr %57, null
  br i1 %cmp.not11.i.i.i, label %do.end26.i.i.i.if.end.i_crit_edge, label %do.end26.i.i.i.for.body.i.i.i_crit_edge

do.end26.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end26.i.i.i
  br label %for.body.i.i.i

do.end26.i.i.i.if.end.i_crit_edge:                ; preds = %do.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

for.body.i.i.i:                                   ; preds = %do.end49.i.i.i.for.body.i.i.i_crit_edge, %do.end26.i.i.i.for.body.i.i.i_crit_edge
  %n.012.i.i.i = phi ptr [ %77, %do.end49.i.i.i.for.body.i.i.i_crit_edge ], [ %57, %do.end26.i.i.i.for.body.i.i.i_crit_edge ]
  %dev28.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.012.i.i.i, i32 0, i32 25
  %58 = ptrtoint ptr %dev28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev28.i.i.i, align 4
  %cmp29.i.i.i = icmp eq ptr %59, %33
  br i1 %cmp29.i.i.i, label %land.lhs.true30.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

land.lhs.true30.i.i.i:                            ; preds = %for.body.i.i.i
  %primary_key.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %n.012.i.i.i, i32 0, i32 27
  %60 = ptrtoint ptr %primary_key.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %primary_key.i.i.i.i, align 4
  %62 = ptrtoint ptr %nexthop.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nexthop.0, align 4
  %xor.i4.i.i.i = xor i32 %63, %61
  %arrayidx2.i5.i.i.i = getelementptr %struct.neighbour, ptr %n.012.i.i.i, i32 1
  %64 = ptrtoint ptr %arrayidx2.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx2.i5.i.i.i, align 4
  %66 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %xor4.i.i.i.i = xor i32 %67, %65
  %or.i.i.i.i = or i32 %xor4.i.i.i.i, %xor.i4.i.i.i
  %arrayidx5.i7.i.i.i = getelementptr %struct.neighbour, ptr %n.012.i.i.i, i32 1, i32 1
  %68 = ptrtoint ptr %arrayidx5.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx5.i7.i.i.i, align 4
  %70 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx5.i.i.i.i, align 4
  %xor7.i.i.i.i = xor i32 %71, %69
  %or8.i.i.i.i = or i32 %or.i.i.i.i, %xor7.i.i.i.i
  %arrayidx9.i9.i.i.i = getelementptr %struct.neighbour, ptr %n.012.i.i.i, i32 1, i32 2
  %72 = ptrtoint ptr %arrayidx9.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx9.i9.i.i.i, align 4
  %74 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx9.i.i.i.i, align 4
  %xor11.i.i.i.i = xor i32 %75, %73
  %or12.i.i.i.i = or i32 %or8.i.i.i.i, %xor11.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %or12.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i193, label %land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true30.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true30.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %76 = ptrtoint ptr %n.012.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %n.012.i.i.i, align 8
  %call39.i.i.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %call39.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %land.lhs.true41.i.i.i, label %for.inc.i.i.i.do.end49.i.i.i_crit_edge

for.inc.i.i.i.do.end49.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end49.i.i.i

land.lhs.true41.i.i.i:                            ; preds = %for.inc.i.i.i
  %call42.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %call42.i.i.i, 0
  br i1 %tobool43.not.i.i.i, label %land.lhs.true41.i.i.i.do.end49.i.i.i_crit_edge, label %land.lhs.true44.i.i.i

land.lhs.true41.i.i.i.do.end49.i.i.i_crit_edge:   ; preds = %land.lhs.true41.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end49.i.i.i

land.lhs.true44.i.i.i:                            ; preds = %land.lhs.true41.i.i.i
  %.b621.i.i.i = load i1, ptr @___neigh_lookup_noref.__warned.76, align 1
  br i1 %.b621.i.i.i, label %land.lhs.true44.i.i.i.do.end49.i.i.i_crit_edge, label %if.then46.i.i.i

land.lhs.true44.i.i.i.do.end49.i.i.i_crit_edge:   ; preds = %land.lhs.true44.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end49.i.i.i

if.then46.i.i.i:                                  ; preds = %land.lhs.true44.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @___neigh_lookup_noref.__warned.76, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 312, ptr noundef nonnull @.str.74) #15
  br label %do.end49.i.i.i

do.end49.i.i.i:                                   ; preds = %if.then46.i.i.i, %land.lhs.true44.i.i.i.do.end49.i.i.i_crit_edge, %land.lhs.true41.i.i.i.do.end49.i.i.i_crit_edge, %for.inc.i.i.i.do.end49.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq ptr %77, null
  br i1 %cmp.not.i.i.i, label %do.end49.i.i.i.if.end.i_crit_edge, label %do.end49.i.i.i.for.body.i.i.i_crit_edge

do.end49.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

do.end49.i.i.i.if.end.i_crit_edge:                ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i193:                               ; preds = %land.lhs.true30.i.i.i
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %n.012.i.i.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #15
  %78 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i193
  %80 = phi i32 [ %79, %land.lhs.true.i193 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %81 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i4.i = add i32 %80, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #15
  %82 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %84 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %83, i32 %add.i.i.i4.i, ptr elementtype(i32) %refcnt.i) #15, !srcloc !303
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %84, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %84, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %83
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !302

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %85 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %86, 1
  %87 = or i32 %add5.i.i.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %.not.i.i.i.i = icmp sgt i32 %87, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !302

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #15
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %88 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool12.i.i.i.not.i = icmp eq i32 %89, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #15
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %n.012.i.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %refcount_inc_not_zero.exit.i, %do.end49.i.i.i.if.end.i_crit_edge, %do.end26.i.i.i.if.end.i_crit_edge
  %n.0.i = phi ptr [ %spec.select.i, %refcount_inc_not_zero.exit.i ], [ null, %do.end26.i.i.i.if.end.i_crit_edge ], [ null, %do.end49.i.i.i.if.end.i_crit_edge ]
  %call.i5.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i5.i, label %if.end.i.__ipv6_neigh_lookup.exit_crit_edge, label %land.lhs.true.i8.i

if.end.i.__ipv6_neigh_lookup.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ipv6_neigh_lookup.exit

land.lhs.true.i8.i:                               ; preds = %if.end.i
  %call1.i6.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call1.i6.i, 0
  br i1 %tobool.not.i7.i, label %land.lhs.true.i8.i.__ipv6_neigh_lookup.exit_crit_edge, label %land.lhs.true2.i10.i

land.lhs.true.i8.i.__ipv6_neigh_lookup.exit_crit_edge: ; preds = %land.lhs.true.i8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ipv6_neigh_lookup.exit

land.lhs.true2.i10.i:                             ; preds = %land.lhs.true.i8.i
  %.b4.i9.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i9.i, label %land.lhs.true2.i10.i.__ipv6_neigh_lookup.exit_crit_edge, label %if.then.i11.i

land.lhs.true2.i10.i.__ipv6_neigh_lookup.exit_crit_edge: ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__ipv6_neigh_lookup.exit

if.then.i11.i:                                    ; preds = %land.lhs.true2.i10.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 761, ptr noundef nonnull @.str.77) #15
  br label %__ipv6_neigh_lookup.exit

__ipv6_neigh_lookup.exit:                         ; preds = %if.then.i11.i, %land.lhs.true2.i10.i.__ipv6_neigh_lookup.exit_crit_edge, %land.lhs.true.i8.i.__ipv6_neigh_lookup.exit_crit_edge, %if.end.i.__ipv6_neigh_lookup.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  call fastcc void @local_bh_enable() #15
  %tobool84.not = icmp eq ptr %n.0.i, null
  br i1 %tobool84.not, label %__ipv6_neigh_lookup.exit.if.end130_crit_edge, label %do.body86

__ipv6_neigh_lookup.exit.if.end130_crit_edge:     ; preds = %__ipv6_neigh_lookup.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

do.body86:                                        ; preds = %__ipv6_neigh_lookup.exit
  %call87 = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true89, label %do.body86.do.end97_crit_edge

do.body86.do.end97_crit_edge:                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end97

land.lhs.true89:                                  ; preds = %do.body86
  %call90 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true89.do.end97_crit_edge, label %land.lhs.true92

land.lhs.true89.do.end97_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end97

land.lhs.true92:                                  ; preds = %land.lhs.true89
  %.b163164 = load i1, ptr @peer_lookup_dst.__warned.71, align 1
  br i1 %.b163164, label %land.lhs.true92.do.end97_crit_edge, label %if.then94

land.lhs.true92.do.end97_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end97

if.then94:                                        ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @peer_lookup_dst.__warned.71, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 183, ptr noundef nonnull @.str.4) #15
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %land.lhs.true92.do.end97_crit_edge, %land.lhs.true89.do.end97_crit_edge, %do.body86.do.end97_crit_edge
  %ha = getelementptr inbounds %struct.neighbour, ptr %n.0.i, i32 0, i32 18
  br label %for.cond107

for.cond107:                                      ; preds = %for.body112.for.cond107_crit_edge, %do.end97
  %peer.1.in = phi ptr [ %peers, %do.end97 ], [ %peer.1, %for.body112.for.cond107_crit_edge ]
  %90 = ptrtoint ptr %peer.1.in to i32
  call void @__asan_load4_noabort(i32 %90)
  %peer.1 = load volatile ptr, ptr %peer.1.in, align 4
  %cmp110.not = icmp eq ptr %peer.1, %peers
  br i1 %cmp110.not, label %for.end129, label %for.body112

for.body112:                                      ; preds = %for.cond107
  %lladdr = getelementptr inbounds %struct.lowpan_peer, ptr %peer.1, i32 0, i32 3
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %ha, ptr noundef dereferenceable(6) %lladdr, i32 6) #19
  %tobool116.not = icmp eq i32 %bcmp, 0
  br i1 %tobool116.not, label %if.then117, label %for.body112.for.cond107_crit_edge

for.body112.for.cond107_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond107

if.then117:                                       ; preds = %for.body112
  %refcnt.i194 = getelementptr inbounds %struct.neighbour, ptr %n.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i195 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i194, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  call void @llvm.prefetch.p0(ptr %refcnt.i194, i32 1, i32 3, i32 1) #15
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i194, ptr %refcnt.i194, i32 1, ptr elementtype(i32) %refcnt.i194) #15, !srcloc !305
  %asmresult.i.i.i.i.i.i.i196 = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i196)
  %cmp.i.i.i.i197 = icmp eq i32 %asmresult.i.i.i.i.i.i.i196, 1
  br i1 %cmp.i.i.i.i197, label %if.then.i200, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i196)
  %.not.i.i.i.i198 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i196, 0
  br i1 %.not.i.i.i.i198, label %if.end5.i.i.i.i.neigh_release.exit_crit_edge, label %if.then10.i.i.i.i199, !prof !302

if.end5.i.i.i.i.neigh_release.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %neigh_release.exit

if.then10.i.i.i.i199:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i194, i32 noundef 3) #15
  br label %neigh_release.exit

if.then.i200:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !306
  call void @neigh_destroy(ptr noundef nonnull %n.0.i) #15
  br label %neigh_release.exit

neigh_release.exit:                               ; preds = %if.then.i200, %if.then10.i.i.i.i199, %if.end5.i.i.i.i.neigh_release.exit_crit_edge
  %call.i202 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i202, label %neigh_release.exit.rcu_read_unlock.exit213_crit_edge, label %land.lhs.true.i205

neigh_release.exit.rcu_read_unlock.exit213_crit_edge: ; preds = %neigh_release.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit213

land.lhs.true.i205:                               ; preds = %neigh_release.exit
  %call1.i203 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i203)
  %tobool.not.i204 = icmp eq i32 %call1.i203, 0
  br i1 %tobool.not.i204, label %land.lhs.true.i205.rcu_read_unlock.exit213_crit_edge, label %land.lhs.true2.i207

land.lhs.true.i205.rcu_read_unlock.exit213_crit_edge: ; preds = %land.lhs.true.i205
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit213

land.lhs.true2.i207:                              ; preds = %land.lhs.true.i205
  %.b4.i206 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i206, label %land.lhs.true2.i207.rcu_read_unlock.exit213_crit_edge, label %if.then.i208

land.lhs.true2.i207.rcu_read_unlock.exit213_crit_edge: ; preds = %land.lhs.true2.i207
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit213

if.then.i208:                                     ; preds = %land.lhs.true2.i207
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit213

rcu_read_unlock.exit213:                          ; preds = %if.then.i208, %land.lhs.true2.i207.rcu_read_unlock.exit213_crit_edge, %land.lhs.true.i205.rcu_read_unlock.exit213_crit_edge, %neigh_release.exit.rcu_read_unlock.exit213_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %92 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i209 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i209 to ptr
  %preempt_count.i.i.i.i210 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i210, align 4
  %sub.i.i.i211 = add i32 %95, -1
  store volatile i32 %sub.i.i.i211, ptr %preempt_count.i.i.i.i210, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

for.end129:                                       ; preds = %for.cond107
  %refcnt.i214 = getelementptr inbounds %struct.neighbour, ptr %n.0.i, i32 0, i32 6
  %call.i.i.i.i.i.i215 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i214, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !304
  call void @llvm.prefetch.p0(ptr %refcnt.i214, i32 1, i32 3, i32 1) #15
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i214, ptr %refcnt.i214, i32 1, ptr elementtype(i32) %refcnt.i214) #15, !srcloc !305
  %asmresult.i.i.i.i.i.i.i216 = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i216)
  %cmp.i.i.i.i217 = icmp eq i32 %asmresult.i.i.i.i.i.i.i216, 1
  br i1 %cmp.i.i.i.i217, label %if.then.i221, label %if.end5.i.i.i.i219

if.end5.i.i.i.i219:                               ; preds = %for.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i216)
  %.not.i.i.i.i218 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i216, 0
  br i1 %.not.i.i.i.i218, label %if.end5.i.i.i.i219.if.end130_crit_edge, label %if.then10.i.i.i.i220, !prof !302

if.end5.i.i.i.i219.if.end130_crit_edge:           ; preds = %if.end5.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.then10.i.i.i.i220:                             ; preds = %if.end5.i.i.i.i219
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i214, i32 noundef 3) #15
  br label %if.end130

if.then.i221:                                     ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !306
  call void @neigh_destroy(ptr noundef nonnull %n.0.i) #15
  br label %if.end130

if.end130:                                        ; preds = %if.then.i221, %if.then10.i.i.i.i220, %if.end5.i.i.i.i219.if.end130_crit_edge, %__ipv6_neigh_lookup.exit.if.end130_crit_edge
  %call.i224 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i224, label %if.end130.rcu_read_unlock.exit235_crit_edge, label %land.lhs.true.i227

if.end130.rcu_read_unlock.exit235_crit_edge:      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit235

land.lhs.true.i227:                               ; preds = %if.end130
  %call1.i225 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i225)
  %tobool.not.i226 = icmp eq i32 %call1.i225, 0
  br i1 %tobool.not.i226, label %land.lhs.true.i227.rcu_read_unlock.exit235_crit_edge, label %land.lhs.true2.i229

land.lhs.true.i227.rcu_read_unlock.exit235_crit_edge: ; preds = %land.lhs.true.i227
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit235

land.lhs.true2.i229:                              ; preds = %land.lhs.true.i227
  %.b4.i228 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i228, label %land.lhs.true2.i229.rcu_read_unlock.exit235_crit_edge, label %if.then.i230

land.lhs.true2.i229.rcu_read_unlock.exit235_crit_edge: ; preds = %land.lhs.true2.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit235

if.then.i230:                                     ; preds = %land.lhs.true2.i229
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit235

rcu_read_unlock.exit235:                          ; preds = %if.then.i230, %land.lhs.true2.i229.rcu_read_unlock.exit235_crit_edge, %land.lhs.true.i227.rcu_read_unlock.exit235_crit_edge, %if.end130.rcu_read_unlock.exit235_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  %97 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i231 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i231 to ptr
  %preempt_count.i.i.i.i232 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i.i.i232 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i.i.i232, align 4
  %sub.i.i.i233 = add i32 %100, -1
  store volatile i32 %sub.i.i.i233, ptr %preempt_count.i.i.i.i232, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit235, %rcu_read_unlock.exit213, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %peer.0, %rcu_read_unlock.exit ], [ %peer.1, %rcu_read_unlock.exit213 ], [ null, %rcu_read_unlock.exit235 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lowpan_header_compress(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_notify_peers(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr i8, ptr %work, i32 -60
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  tail call void @netdev_notify_peers(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_notify_peers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_control_write(ptr nocapture noundef readnone %fp, ptr noundef %user_buffer, i32 noundef %count, ptr nocapture noundef readnone %position) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %addr = alloca %struct.bdaddr_t, align 1
  %addr_type = alloca i8, align 1
  %conn = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #15
  %0 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 8
  %1 = getelementptr inbounds [32 x i8], ptr %buf, i32 0, i32 11
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %4 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_type) #15
  %5 = ptrtoint ptr %addr_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %addr_type, align 1, !annotation !301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %conn) #15
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %conn, align 4
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.96, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buffer, i32 %2, i32 -1226833920) #20, !srcloc !307
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !302

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #15
  %8 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !308
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !310
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buffer, i32 noundef %2) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #15, !srcloc !309
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !310
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !302

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup72

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %buf, ptr noundef nonnull dereferenceable(8) @.str.89, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %if.then4, label %if.end54

if.then4:                                         ; preds = %if.end
  %call6 = call fastcc i32 @get_l2cap_conn(ptr noundef %0, ptr noundef nonnull %addr, ptr noundef nonnull %addr_type, ptr noundef nonnull %conn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call6)
  %cmp7 = icmp eq i32 %call6, -22
  br i1 %cmp7, label %if.then4.cleanup72_crit_edge, label %if.end9

if.then4.cleanup72_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end9:                                          ; preds = %if.then4
  call void @mutex_lock_nested(ptr noundef nonnull @set_lock, i32 noundef 0) #15
  %13 = load ptr, ptr @listen_chan, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  call void @l2cap_chan_close(ptr noundef nonnull %13, i32 noundef 0) #15
  %14 = load ptr, ptr @listen_chan, align 4
  call void @l2cap_chan_put(ptr noundef %14) #15
  store ptr null, ptr @listen_chan, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @set_lock) #15
  %15 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conn, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.end12.if.end48_crit_edge, label %if.then14

if.end12.if.end48_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then14:                                        ; preds = %if.end12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %20)
  %cmp.not.i = icmp eq i8 %20, -128
  br i1 %cmp.not.i, label %is_bt_6lowpan.exit, label %if.then14.cleanup72_crit_edge

if.then14.cleanup72_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

is_bt_6lowpan.exit:                               ; preds = %if.then14
  %21 = load i8, ptr @enable_6lowpan, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.not = icmp eq i8 %21, 0
  br i1 %tobool.not.i.not, label %is_bt_6lowpan.exit.cleanup72_crit_edge, label %if.end17

is_bt_6lowpan.exit.cleanup72_crit_edge:           ; preds = %is_bt_6lowpan.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end17:                                         ; preds = %is_bt_6lowpan.exit
  %call18 = call fastcc ptr @lookup_peer(ptr noundef nonnull %16)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.body29, label %do.body

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_control_write.__UNIQUE_ID_ddebug650, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_control_write, %if.then26)) #15
          to label %cleanup72 [label %if.then26], !srcloc !294

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_control_write.__UNIQUE_ID_ddebug650, ptr noundef nonnull @.str.91) #15
  br label %cleanup72

do.body29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lowpan_control_write.__UNIQUE_ID_ddebug651, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_control_write, %cleanup.thread111)) #15
          to label %if.end48 [label %cleanup.thread111], !srcloc !294

cleanup.thread111:                                ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dst_type, align 2
  %conv = zext i8 %25 to i32
  %26 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr_type, align 1
  %conv44 = zext i8 %27 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lowpan_control_write.__UNIQUE_ID_ddebug651, ptr noundef nonnull @.str.92, ptr noundef nonnull %16, ptr noundef %dst, i32 noundef %conv, i32 noundef %conv44) #15
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread111, %do.body29, %if.end12.if.end48_crit_edge
  %28 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr_type, align 1
  %call.i.i98 = call ptr @l2cap_chan_create() #15
  %tobool.not.i.i = icmp eq ptr %call.i.i98, null
  br i1 %tobool.not.i.i, label %if.end48.cleanup72_crit_edge, label %if.end.i99

if.end48.cleanup72_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end.i99:                                       ; preds = %if.end48
  call void @l2cap_chan_set_defaults(ptr noundef nonnull %call.i.i98) #15
  %chan_type.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i.i98, i32 0, i32 18
  %30 = ptrtoint ptr %chan_type.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %chan_type.i.i, align 1
  %mode.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i.i98, i32 0, i32 17
  %31 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -128, ptr %mode.i.i, align 2
  %imtu.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i.i98, i32 0, i32 14
  %32 = ptrtoint ptr %imtu.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1280, ptr %imtu.i.i, align 4
  %ops.i = getelementptr inbounds %struct.l2cap_chan, ptr %call.i.i98, i32 0, i32 85
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bt_6lowpan_chan_ops, ptr %ops.i, align 4
  %call1.i = call i32 @l2cap_chan_connect(ptr noundef nonnull %call.i.i98, i16 noundef zeroext 8960, i16 noundef zeroext 0, ptr noundef nonnull %addr, i8 noundef zeroext %29) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_6lowpan_connect.__UNIQUE_ID_ddebug638, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_control_write, %if.then6.i)) #15
          to label %do.end.i [label %if.then6.i], !srcloc !294

if.then6.i:                                       ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bt_6lowpan_connect.__UNIQUE_ID_ddebug638, ptr noundef nonnull @.str.102, ptr noundef nonnull %call.i.i98, i32 noundef %call1.i) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.end.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.then8.i, label %do.end.i.cleanup72_crit_edge

do.end.i.cleanup72_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @l2cap_chan_put(ptr noundef nonnull %call.i.i98) #15
  br label %cleanup72

if.end54:                                         ; preds = %if.end
  %bcmp93 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %buf, ptr noundef nonnull dereferenceable(11) @.str.93, i32 11) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp93)
  %cmp57 = icmp eq i32 %bcmp93, 0
  br i1 %cmp57, label %if.then59, label %if.end54.cleanup72_crit_edge

if.end54.cleanup72_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.then59:                                        ; preds = %if.end54
  %call61 = call fastcc i32 @get_l2cap_conn(ptr noundef %1, ptr noundef nonnull %addr, ptr noundef nonnull %addr_type, ptr noundef nonnull %conn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then59.cleanup72_crit_edge, label %if.end65

if.then59.cleanup72_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

if.end65:                                         ; preds = %if.then59
  %34 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conn, align 4
  %36 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr_type, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_6lowpan_disconnect.__UNIQUE_ID_ddebug639, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_control_write, %if.then.i101)) #15
          to label %do.end.i102 [label %if.then.i101], !srcloc !294

if.then.i101:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i8 %37 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bt_6lowpan_disconnect.__UNIQUE_ID_ddebug639, ptr noundef nonnull @.str.104, ptr noundef %35, i32 noundef %conv.i) #15
  br label %do.end.i102

do.end.i102:                                      ; preds = %if.then.i101, %if.end65
  %call3.i = call fastcc ptr @lookup_peer(ptr noundef %35) #15
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %do.end.i102.cleanup72_crit_edge, label %do.body7.i

do.end.i102.cleanup72_crit_edge:                  ; preds = %do.end.i102
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup72

do.body7.i:                                       ; preds = %do.end.i102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bt_6lowpan_disconnect.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lowpan_control_write, %if.then19.i)) #15
          to label %bt_6lowpan_disconnect.exit [label %if.then19.i], !srcloc !294

if.then19.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %chan.i = getelementptr inbounds %struct.lowpan_peer, ptr %call3.i, i32 0, i32 2
  %38 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bt_6lowpan_disconnect.__UNIQUE_ID_ddebug640, ptr noundef nonnull @.str.105, ptr noundef nonnull %call3.i, ptr noundef %39) #15
  br label %bt_6lowpan_disconnect.exit

bt_6lowpan_disconnect.exit:                       ; preds = %if.then19.i, %do.body7.i
  %chan23.i = getelementptr inbounds %struct.lowpan_peer, ptr %call3.i, i32 0, i32 2
  %40 = ptrtoint ptr %chan23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan23.i, align 4
  call void @l2cap_chan_close(ptr noundef %41, i32 noundef 2) #15
  br label %cleanup72

cleanup72:                                        ; preds = %bt_6lowpan_disconnect.exit, %do.end.i102.cleanup72_crit_edge, %if.then59.cleanup72_crit_edge, %if.end54.cleanup72_crit_edge, %if.then8.i, %do.end.i.cleanup72_crit_edge, %if.end48.cleanup72_crit_edge, %if.then26, %do.body, %is_bt_6lowpan.exit.cleanup72_crit_edge, %if.then14.cleanup72_crit_edge, %if.then4.cleanup72_crit_edge, %if.then11.i.i
  %retval.1 = phi i32 [ -22, %if.then4.cleanup72_crit_edge ], [ %call61, %if.then59.cleanup72_crit_edge ], [ %count, %if.end54.cleanup72_crit_edge ], [ %count, %do.end.i.cleanup72_crit_edge ], [ -22, %if.end48.cleanup72_crit_edge ], [ %call1.i, %if.then8.i ], [ %count, %bt_6lowpan_disconnect.exit ], [ -2, %do.end.i102.cleanup72_crit_edge ], [ -14, %if.then11.i.i ], [ -114, %if.then26 ], [ -22, %is_bt_6lowpan.exit.cleanup72_crit_edge ], [ -22, %if.then14.cleanup72_crit_edge ], [ -114, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %conn) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_type) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_control_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @lowpan_control_show, ptr noundef %1) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_l2cap_conn(ptr nocapture noundef readonly %buf, ptr noundef %addr, ptr noundef %addr_type, ptr nocapture noundef %conn) unnamed_addr #2 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [6 x i8], ptr %addr, i32 0, i32 5
  %arrayidx2 = getelementptr [6 x i8], ptr %addr, i32 0, i32 4
  %arrayidx4 = getelementptr [6 x i8], ptr %addr, i32 0, i32 3
  %arrayidx6 = getelementptr [6 x i8], ptr %addr, i32 0, i32 2
  %arrayidx8 = getelementptr [6 x i8], ptr %addr, i32 0, i32 1
  %call = tail call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.97, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %addr, ptr noundef %addr_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp = icmp slt i32 %call, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %call16 = call ptr @hci_get_route(ptr noundef %addr, ptr noundef nonnull %.compoundliteral, i8 noundef zeroext 1) #15
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.hci_dev, ptr %call16, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #15
  %1 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr_type, align 1
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %call16, i32 0, i32 183
  %3 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !291
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.end18.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end18.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end18
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end18.rcu_read_lock.exit.i_crit_edge
  %call.i = call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b40.i = load i1, ptr @hci_conn_hash_lookup_le.__warned, align 1
  br i1 %.b40.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hci_conn_hash_lookup_le.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.100, i32 noundef 1054, ptr noundef nonnull @.str.4) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %7 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %c.063.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not64.i = icmp eq ptr %c.063.i, %conn_hash.i
  br i1 %cmp.not64.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.065.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.063.i, %do.end.i.for.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.hci_conn, ptr %c.065.i, i32 0, i32 14
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %9)
  %cmp11.not.i = icmp eq i8 %9, -128
  br i1 %cmp11.not.i, label %if.end14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end14.i:                                       ; preds = %for.body.i
  %dst_type.i = getelementptr inbounds %struct.hci_conn, ptr %c.065.i, i32 0, i32 3
  %10 = ptrtoint ptr %dst_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dst_type.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %2)
  %cmp17.i = icmp eq i8 %11, %2
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true19.i:                                ; preds = %if.end14.i
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %c.065.i, i32 0, i32 2
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %dst.i, ptr noundef dereferenceable(6) %addr, i32 6) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool21.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %land.lhs.true19.i.for.inc.i_crit_edge

land.lhs.true19.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then22.i:                                      ; preds = %land.lhs.true19.i
  %call.i42.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i42.i, label %if.then22.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i45.i

if.then22.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true.i45.i:                              ; preds = %if.then22.i
  %call1.i43.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43.i)
  %tobool.not.i44.i = icmp eq i32 %call1.i43.i, 0
  br i1 %tobool.not.i44.i, label %land.lhs.true.i45.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i47.i

land.lhs.true.i45.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i47.i:                             ; preds = %land.lhs.true.i45.i
  %.b4.i46.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46.i, label %land.lhs.true2.i47.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i48.i

land.lhs.true2.i47.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

if.then.i48.i:                                    ; preds = %land.lhs.true2.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i48.i, %land.lhs.true2.i47.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i45.i.rcu_read_unlock.exit.i_crit_edge, %if.then22.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  br label %hci_conn_hash_lookup_le.exit

for.inc.i:                                        ; preds = %land.lhs.true19.i.for.inc.i_crit_edge, %if.end14.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %12 = ptrtoint ptr %c.065.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %c.0.i = load volatile ptr, ptr %c.065.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i51.i = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i51.i, label %for.end.i.rcu_read_unlock.exit61.i_crit_edge, label %land.lhs.true.i54.i

for.end.i.rcu_read_unlock.exit61.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit61.i

land.lhs.true.i54.i:                              ; preds = %for.end.i
  %call1.i52.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52.i)
  %tobool.not.i53.i = icmp eq i32 %call1.i52.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge, label %land.lhs.true2.i56.i

land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge: ; preds = %land.lhs.true.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit61.i

land.lhs.true2.i56.i:                             ; preds = %land.lhs.true.i54.i
  %.b4.i55.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55.i, label %land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge, label %if.then.i57.i

land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge: ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit61.i

if.then.i57.i:                                    ; preds = %land.lhs.true2.i56.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #15
  br label %rcu_read_unlock.exit61.i

rcu_read_unlock.exit61.i:                         ; preds = %if.then.i57.i, %land.lhs.true2.i56.i.rcu_read_unlock.exit61.i_crit_edge, %land.lhs.true.i54.i.rcu_read_unlock.exit61.i_crit_edge, %for.end.i.rcu_read_unlock.exit61.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !293
  br label %hci_conn_hash_lookup_le.exit

hci_conn_hash_lookup_le.exit:                     ; preds = %rcu_read_unlock.exit61.i, %rcu_read_unlock.exit.i
  %retval.0.i47 = phi ptr [ %c.065.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit61.i ]
  %13 = call i32 @llvm.read_register.i32(metadata !281) #15
  %and.i.i.i.i.i58.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i58.i to ptr
  %preempt_count.i.i.i.i59.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i59.i, align 4
  %sub.i.i.i60.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i60.i, ptr %preempt_count.i.i.i.i59.i, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @mutex_unlock(ptr noundef %lock) #15
  %tobool21.not = icmp eq ptr %retval.0.i47, null
  br i1 %tobool21.not, label %hci_conn_hash_lookup_le.exit.cleanup_crit_edge, label %if.end23

hci_conn_hash_lookup_le.exit.cleanup_crit_edge:   ; preds = %hci_conn_hash_lookup_le.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %hci_conn_hash_lookup_le.exit
  call void @__sanitizer_cov_trace_pc() #17
  %l2cap_data = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i47, i32 0, i32 66
  %17 = ptrtoint ptr %l2cap_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %l2cap_data, align 8
  %19 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %conn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_l2cap_conn.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_l2cap_conn, %if.then28)) #15
          to label %cleanup [label %if.then28], !srcloc !294

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i47, i32 0, i32 2
  %dst_type = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i47, i32 0, i32 3
  %22 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dst_type, align 2
  %conv = zext i8 %23 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @get_l2cap_conn.__UNIQUE_ID_ddebug642, ptr noundef nonnull @.str.99, ptr noundef %21, ptr noundef %dst, i32 noundef %conv) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end23, %hci_conn_hash_lookup_le.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %hci_conn_hash_lookup_le.exit.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_route(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_connect(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lowpan_control_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @devices_lock) #15
  %entry1.033 = load ptr, ptr @bt_6lowpan_devices, align 4
  %cmp.not34 = icmp eq ptr %entry1.033, @bt_6lowpan_devices
  br i1 %cmp.not34, label %entry.for.end23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end23

for.cond.loopexit:                                ; preds = %for.body10.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %entry1.035 to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.035, align 4
  %cmp.not = icmp eq ptr %entry1.0, @bt_6lowpan_devices
  br i1 %cmp.not, label %for.cond.loopexit.for.end23_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond.loopexit.for.end23_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end23

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.035 = phi ptr [ %entry1.0, %for.cond.loopexit.for.body_crit_edge ], [ %entry1.033, %entry.for.body_crit_edge ]
  %peers = getelementptr inbounds %struct.lowpan_btle_dev, ptr %entry1.035, i32 0, i32 3
  %1 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %1)
  %peer.030 = load ptr, ptr %peers, align 4
  %cmp8.not31 = icmp eq ptr %peer.030, %peers
  br i1 %cmp8.not31, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %peer.032 = phi ptr [ %peer.0, %for.body10.for.body10_crit_edge ], [ %peer.030, %for.body.for.body10_crit_edge ]
  %chan = getelementptr inbounds %struct.lowpan_peer, ptr %peer.032, i32 0, i32 2
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 6
  %dst_type = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dst_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dst_type, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.106, ptr noundef %dst, i32 noundef %conv) #15
  %6 = ptrtoint ptr %peer.032 to i32
  call void @__asan_load4_noabort(i32 %6)
  %peer.0 = load ptr, ptr %peer.032, align 4
  %cmp8.not = icmp eq ptr %peer.0, %peers
  br i1 %cmp8.not, label %for.body10.for.cond.loopexit_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body10

for.body10.for.cond.loopexit_crit_edge:           ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.loopexit

for.end23:                                        ; preds = %for.cond.loopexit.for.end23_crit_edge, %entry.for.end23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @devices_lock) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !56, !58, !60, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !96, !97, !99, !100, !102, !104, !105, !106, !108, !110, !111, !112, !113, !115, !116, !118, !119, !121, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !155, !157, !159, !160, !161, !163, !165, !167, !168, !169, !170, !171, !173, !174, !175, !177, !178, !180, !181, !182, !184, !185, !187, !188, !189, !191, !192, !194, !196, !197, !199, !201, !202, !204, !205, !206, !208, !210, !212, !213, !215, !217, !219, !220, !222, !224, !226, !227, !228, !229, !231, !233, !234, !235, !237, !238, !239, !241, !243, !245, !246, !247, !249, !250, !252, !254, !255, !257, !259, !261, !263, !264, !265, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279}
!llvm.named.register.sp = !{!281}
!llvm.module.flags = !{!282, !283, !284, !285, !286, !287, !288, !289}
!llvm.ident = !{!290}

!0 = !{ptr @__initcall__kmod_bluetooth_6lowpan__656_1277_bt_6lowpan_init6, !1, !"__initcall__kmod_bluetooth_6lowpan__656_1277_bt_6lowpan_init6", i1 false, i1 false}
!1 = !{!"../net/bluetooth/6lowpan.c", i32 1277, i32 1}
!2 = !{ptr @__exitcall_bt_6lowpan_exit, !3, !"__exitcall_bt_6lowpan_exit", i1 false, i1 false}
!3 = !{!"../net/bluetooth/6lowpan.c", i32 1278, i32 1}
!4 = !{ptr @__UNIQUE_ID_author657, !5, !"__UNIQUE_ID_author657", i1 false, i1 false}
!5 = !{!"../net/bluetooth/6lowpan.c", i32 1280, i32 1}
!6 = !{ptr @__UNIQUE_ID_description658, !7, !"__UNIQUE_ID_description658", i1 false, i1 false}
!7 = !{!"../net/bluetooth/6lowpan.c", i32 1281, i32 1}
!8 = !{ptr @__UNIQUE_ID_version659, !9, !"__UNIQUE_ID_version659", i1 false, i1 false}
!9 = !{!"../net/bluetooth/6lowpan.c", i32 1282, i32 1}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__modver_attr, !9, !"__modver_attr", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_file660, !15, !"__UNIQUE_ID_file660", i1 false, i1 false}
!15 = !{!"../net/bluetooth/6lowpan.c", i32 1283, i32 1}
!16 = !{ptr @__UNIQUE_ID_license661, !15, !"__UNIQUE_ID_license661", i1 false, i1 false}
!17 = !{ptr @lowpan_enable_debugfs, !18, !"lowpan_enable_debugfs", i1 false, i1 false}
!18 = !{!"../net/bluetooth/6lowpan.c", i32 26, i32 23}
!19 = !{ptr @lowpan_control_debugfs, !20, !"lowpan_control_debugfs", i1 false, i1 false}
!20 = !{!"../net/bluetooth/6lowpan.c", i32 27, i32 23}
!21 = !{ptr @listen_chan, !22, !"listen_chan", i1 false, i1 false}
!22 = !{!"../net/bluetooth/6lowpan.c", i32 52, i32 27}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/bluetooth/6lowpan.c", i32 1196, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/bluetooth/6lowpan.c", i32 1211, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @disconnect_devices.__UNIQUE_ID_ddebug654, !28, !"__UNIQUE_ID_ddebug654", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bt_6lowpan_devices, !36, !"bt_6lowpan_devices", i1 false, i1 false}
!36 = !{!"../net/bluetooth/6lowpan.c", i32 45, i32 8}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @bt_6lowpan_dev_notifier, !41, !"bt_6lowpan_dev_notifier", i1 false, i1 false}
!41 = !{!"../net/bluetooth/6lowpan.c", i32 1245, i32 30}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bluetooth/6lowpan.c", i32 1232, i32 5}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @device_event.__UNIQUE_ID_ddebug655, !43, !"__UNIQUE_ID_ddebug655", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/bluetooth/6lowpan.c", i32 46, i32 8}
!48 = !{ptr @devices_lock, !47, !"devices_lock", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/bluetooth/6lowpan.c", i32 1251, i32 53}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/bluetooth/6lowpan.c", i32 1255, i32 47}
!53 = !{ptr @lowpan_enable_fops, !54, !"lowpan_enable_fops", i1 false, i1 false}
!54 = !{!"../net/bluetooth/6lowpan.c", i32 1079, i32 1}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @enable_6lowpan, !57, !"enable_6lowpan", i1 false, i1 false}
!57 = !{!"../net/bluetooth/6lowpan.c", i32 48, i32 13}
!58 = !{ptr @lowpan_enable_set.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../net/bluetooth/6lowpan.c", i32 1066, i32 2}
!60 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/bluetooth/6lowpan.c", i32 1002, i32 2}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/bluetooth/6lowpan.c", i32 1003, i32 3}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/bluetooth/6lowpan.c", i32 53, i32 8}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @set_lock, !66, !"set_lock", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/bluetooth/6lowpan.c", i32 941, i32 2}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bt_6lowpan_listen.__UNIQUE_ID_ddebug641, !70, !"__UNIQUE_ID_ddebug641", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/bluetooth/6lowpan.c", i32 946, i32 3}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/bluetooth/6lowpan.c", i32 868, i32 12}
!77 = !{ptr @bt_6lowpan_chan_ops, !78, !"bt_6lowpan_chan_ops", i1 false, i1 false}
!78 = !{!"../net/bluetooth/6lowpan.c", i32 867, i32 31}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/bluetooth/6lowpan.c", i32 748, i32 2}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @chan_new_conn_cb.__UNIQUE_ID_ddebug629, !80, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/bluetooth/6lowpan.c", i32 360, i32 3}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @chan_recv_cb.__UNIQUE_ID_ddebug617, !84, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../net/bluetooth/6lowpan.c", i32 205, i32 2}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/bluetooth/6lowpan.c", i32 124, i32 2}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../net/bluetooth/6lowpan.c", i32 223, i32 2}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/bluetooth/6lowpan.c", i32 312, i32 4}
!95 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @recv_pkt.__UNIQUE_ID_ddebug615, !94, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/bluetooth/6lowpan.c", i32 332, i32 3}
!99 = !{ptr @recv_pkt.__UNIQUE_ID_ddebug616, !98, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/6lowpan.c", i32 772, i32 2}
!104 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @chan_close_cb.__UNIQUE_ID_ddebug630, !103, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/bluetooth/6lowpan.c", i32 786, i32 2}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/bluetooth/6lowpan.c", i32 793, i32 4}
!110 = !{ptr @chan_close_cb.__UNIQUE_ID_ddebug633, !109, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!111 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/bluetooth/6lowpan.c", i32 795, i32 4}
!115 = !{ptr @chan_close_cb.__UNIQUE_ID_ddebug634, !114, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!116 = !{ptr @chan_close_cb.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../net/bluetooth/6lowpan.c", i32 811, i32 4}
!118 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../net/bluetooth/6lowpan.c", i32 111, i32 2}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/bluetooth/6lowpan.c", i32 99, i32 3}
!123 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @peer_del.__UNIQUE_ID_ddebug597, !122, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/bluetooth/6lowpan.c", i32 821, i32 2}
!127 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @chan_state_change_cb.__UNIQUE_ID_ddebug635, !126, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/net/bluetooth/bluetooth.h", i32 239, i32 10}
!131 = !{ptr @.str.44, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/net/bluetooth/bluetooth.h", i32 241, i32 10}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/net/bluetooth/bluetooth.h", i32 243, i32 10}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/net/bluetooth/bluetooth.h", i32 245, i32 10}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/net/bluetooth/bluetooth.h", i32 247, i32 10}
!139 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/net/bluetooth/bluetooth.h", i32 249, i32 10}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/net/bluetooth/bluetooth.h", i32 251, i32 10}
!143 = !{ptr @.str.50, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/net/bluetooth/bluetooth.h", i32 253, i32 10}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/net/bluetooth/bluetooth.h", i32 255, i32 10}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../include/net/bluetooth/bluetooth.h", i32 258, i32 9}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/bluetooth/6lowpan.c", i32 721, i32 2}
!151 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @chan_ready_cb.__UNIQUE_ID_ddebug628, !150, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!153 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/bluetooth/6lowpan.c", i32 669, i32 11}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/bluetooth/6lowpan.c", i32 695, i32 3}
!157 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/bluetooth/6lowpan.c", i32 703, i32 2}
!159 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @setup_netdev.__UNIQUE_ID_ddebug627, !158, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!161 = !{ptr @header_ops, !162, !"header_ops", i1 false, i1 false}
!162 = !{!"../net/bluetooth/6lowpan.c", i32 558, i32 32}
!163 = !{ptr @netdev_ops, !164, !"netdev_ops", i1 false, i1 false}
!164 = !{!"../net/bluetooth/6lowpan.c", i32 553, i32 36}
!165 = !{ptr @bt_dev_init.qdisc_tx_busylock_key, !166, !"qdisc_tx_busylock_key", i1 false, i1 false}
!166 = !{!"../net/bluetooth/6lowpan.c", i32 548, i32 2}
!167 = !{ptr @bt_dev_init.qdisc_xmit_lock_key, !166, !"qdisc_xmit_lock_key", i1 false, i1 false}
!168 = !{ptr @bt_dev_init.dev_addr_list_lock_key, !166, !"dev_addr_list_lock_key", i1 false, i1 false}
!169 = !{ptr @.str.59, !166, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.60, !166, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.61, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/bluetooth/6lowpan.c", i32 524, i32 4}
!173 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @bt_xmit.__UNIQUE_ID_ddebug625, !172, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/bluetooth/6lowpan.c", i32 541, i32 3}
!177 = !{ptr @bt_xmit.__UNIQUE_ID_ddebug626, !176, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!178 = !{ptr @.str.64, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/bluetooth/6lowpan.c", i32 387, i32 3}
!180 = !{ptr @.str.65, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @setup_header.__UNIQUE_ID_ddebug618, !179, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!182 = !{ptr @.str.66, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/bluetooth/6lowpan.c", i32 396, i32 4}
!184 = !{ptr @setup_header.__UNIQUE_ID_ddebug619, !183, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/bluetooth/6lowpan.c", i32 142, i32 2}
!187 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @peer_lookup_dst.__UNIQUE_ID_ddebug602, !186, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!189 = !{ptr @.str.69, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/bluetooth/6lowpan.c", i32 165, i32 2}
!191 = !{ptr @peer_lookup_dst.__UNIQUE_ID_ddebug603, !190, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../net/bluetooth/6lowpan.c", i32 169, i32 2}
!194 = !{ptr @.str.70, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/bluetooth/6lowpan.c", i32 170, i32 3}
!196 = !{ptr @peer_lookup_dst.__UNIQUE_ID_ddebug606, !195, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../net/bluetooth/6lowpan.c", i32 183, i32 3}
!199 = distinct !{null, !200, !"__warned", i1 false, i1 false}
!200 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!201 = !{ptr @.str.72, !200, !"<string literal>", i1 false, i1 false}
!202 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!203 = !{!"../include/net/neighbour.h", i32 305, i32 33}
!204 = !{ptr @.str.73, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!206 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!207 = !{!"../include/net/neighbour.h", i32 310, i32 11}
!208 = distinct !{null, !209, !"__warned", i1 false, i1 false}
!209 = !{!"../include/net/neighbour.h", i32 312, i32 11}
!210 = distinct !{null, !211, !"__warned", i1 false, i1 false}
!211 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!212 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!213 = distinct !{null, !214, !"__warned", i1 false, i1 false}
!214 = !{!"../net/bluetooth/6lowpan.c", i32 467, i32 2}
!215 = distinct !{null, !216, !"__warned", i1 false, i1 false}
!216 = !{!"../net/bluetooth/6lowpan.c", i32 476, i32 3}
!217 = !{ptr @.str.79, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/bluetooth/6lowpan.c", i32 481, i32 4}
!219 = !{ptr @send_mcast_pkt.__UNIQUE_ID_ddebug624, !218, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!220 = !{ptr @.str.80, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/bluetooth/6lowpan.c", i32 576, i32 10}
!222 = !{ptr @bt_type, !223, !"bt_type", i1 false, i1 false}
!223 = !{!"../net/bluetooth/6lowpan.c", i32 575, i32 27}
!224 = !{ptr @add_peer_chan.__key, !225, !"__key", i1 false, i1 false}
!225 = !{!"../net/bluetooth/6lowpan.c", i32 657, i32 3}
!226 = !{ptr @.str.81, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @add_peer_chan.__key.82, !225, !"__key", i1 false, i1 false}
!228 = !{ptr @.str.83, !225, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.84, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/bluetooth/6lowpan.c", i32 586, i32 3}
!231 = !{ptr @.str.85, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../net/bluetooth/6lowpan.c", i32 853, i32 2}
!233 = !{ptr @.str.86, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @chan_resume_cb.__UNIQUE_ID_ddebug637, !232, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!235 = !{ptr @.str.87, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../net/bluetooth/6lowpan.c", i32 840, i32 2}
!237 = !{ptr @.str.88, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @chan_suspend_cb.__UNIQUE_ID_ddebug636, !236, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!239 = !{ptr @lowpan_control_fops, !240, !"lowpan_control_fops", i1 false, i1 false}
!240 = !{!"../net/bluetooth/6lowpan.c", i32 1174, i32 37}
!241 = !{ptr @.str.89, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../net/bluetooth/6lowpan.c", i32 1099, i32 18}
!243 = !{ptr @.str.90, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../net/bluetooth/6lowpan.c", i32 1120, i32 5}
!245 = !{ptr @.str.91, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @lowpan_control_write.__UNIQUE_ID_ddebug650, !244, !"__UNIQUE_ID_ddebug650", i1 false, i1 false}
!247 = !{ptr @.str.92, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../net/bluetooth/6lowpan.c", i32 1124, i32 4}
!249 = !{ptr @lowpan_control_write.__UNIQUE_ID_ddebug651, !248, !"__UNIQUE_ID_ddebug651", i1 false, i1 false}
!250 = !{ptr @.str.93, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/bluetooth/6lowpan.c", i32 1136, i32 18}
!252 = distinct !{null, !253, !"__already_done", i1 false, i1 false}
!253 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!254 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!255 = distinct !{null, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!257 = !{ptr @.str.96, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!259 = !{ptr @.str.97, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../net/bluetooth/6lowpan.c", i32 960, i32 18}
!261 = !{ptr @.str.98, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/bluetooth/6lowpan.c", i32 982, i32 2}
!263 = !{ptr @.str.99, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @get_l2cap_conn.__UNIQUE_ID_ddebug642, !262, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!265 = distinct !{null, !266, !"__warned", i1 false, i1 false}
!266 = !{!"../include/net/bluetooth/hci_core.h", i32 1054, i32 2}
!267 = !{ptr @.str.100, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.101, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/bluetooth/6lowpan.c", i32 898, i32 2}
!270 = !{ptr @.str.102, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @bt_6lowpan_connect.__UNIQUE_ID_ddebug638, !269, !"__UNIQUE_ID_ddebug638", i1 false, i1 false}
!272 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../net/bluetooth/6lowpan.c", i32 909, i32 2}
!274 = !{ptr @.str.104, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @bt_6lowpan_disconnect.__UNIQUE_ID_ddebug639, !273, !"__UNIQUE_ID_ddebug639", i1 false, i1 false}
!276 = !{ptr @.str.105, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../net/bluetooth/6lowpan.c", i32 915, i32 2}
!278 = !{ptr @bt_6lowpan_disconnect.__UNIQUE_ID_ddebug640, !277, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!279 = !{ptr @.str.106, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../net/bluetooth/6lowpan.c", i32 1160, i32 18}
!281 = !{!"sp"}
!282 = !{i32 1, !"wchar_size", i32 2}
!283 = !{i32 1, !"min_enum_size", i32 4}
!284 = !{i32 8, !"branch-target-enforcement", i32 0}
!285 = !{i32 8, !"sign-return-address", i32 0}
!286 = !{i32 8, !"sign-return-address-all", i32 0}
!287 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!288 = !{i32 7, !"uwtable", i32 1}
!289 = !{i32 7, !"frame-pointer", i32 2}
!290 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!291 = !{i64 2149673022}
!292 = !{i64 2149698414}
!293 = !{i64 2149673288}
!294 = !{i64 2148858200, i64 2148858205, i64 2148858218, i64 2148858262, i64 2148858296, i64 2148858317}
!295 = !{i8 0, i8 2}
!296 = !{i64 2148464837}
!297 = !{i64 2148379570, i64 2148379602, i64 2148379631, i64 2148379665, i64 2148379696, i64 2148379719}
!298 = !{i64 2148465066}
!299 = !{i64 2148376385, i64 2148376411, i64 2148376440, i64 2148376474, i64 2148376505, i64 2148376528}
!300 = !{!"branch_weights", i32 1, i32 2000}
!301 = !{!"auto-init"}
!302 = !{!"branch_weights", i32 2000, i32 1}
!303 = !{i64 860121, i64 860145, i64 860166, i64 860183, i64 860200}
!304 = !{i64 2148465916}
!305 = !{i64 2148380380, i64 2148380412, i64 2148380441, i64 2148380475, i64 2148380506, i64 2148380529}
!306 = !{i64 2150547569}
!307 = !{i64 2152349404, i64 2152349429}
!308 = !{i64 4844959}
!309 = !{i64 4845156}
!310 = !{i64 2152330389}
