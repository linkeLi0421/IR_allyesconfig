; ModuleID = '/llk/IR_all_yes/net/bluetooth/a2mp.c_pt.bc'
source_filename = "../net/bluetooth/a2mp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.l2cap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.amp_mgr = type { %struct.list_head, ptr, ptr, ptr, %struct.kref, i8, i8, i32, i32, %struct.list_head, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.sk_buff_head = type { %union.anon, i32, %struct.spinlock }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.128, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.79, %union.anon.80 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { i64 }
%union.anon.128 = type { ptr }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.a2mp_cmd = type { i8, i8, i16, [0 x i8] }
%struct.a2mp_amp_assoc_rsp = type { i8, i8, [0 x i8] }
%struct.a2mp_physlink_req = type { i8, i8, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.105, %union.anon.106, [48 x i8], %union.anon.107, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.109, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.105 = type { ptr }
%union.anon.106 = type { i64 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, ptr }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.111, i32, i32, i32, i16, i16, %union.anon.113, i32, %union.anon.114, %union.anon.115, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.111 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i32 }
%union.anon.115 = type { i16 }
%struct.a2mp_cl = type { i8, i8, i8 }
%struct.a2mp_discov_req = type { i16, i16 }
%struct.a2mp_discov_rsp = type { i16, i16, [0 x %struct.a2mp_cl] }
%struct.hci_request = type { ptr, %struct.sk_buff_head, i32 }
%struct.amp_ctrl = type { %struct.list_head, %struct.kref, i8, i16, i16, i16, ptr }
%struct.l2cap_conn = type { ptr, ptr, i32, i32, i8, i8, i8, i8, %struct.delayed_work, ptr, i32, i8, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.list_head, %struct.mutex, %struct.kref, %struct.list_head }
%struct.a2mp_info_rsp = type <{ i8, i8, i32, i32, i32, i16, i16 }>

@amp_mgr_get.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amp_mgr_get\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/bluetooth/a2mp.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mgr %p orig refcnt %d\0A\00", [41 x i8] zeroinitializer }, align 32
@amp_mgr_put.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amp_mgr_put\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not create AMP manager\0A\00", [34 x i8] zeroinitializer }, align 32
@a2mp_channel_create.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"a2mp_channel_create\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mgr: %p chan %p\0A\00", [47 x i8] zeroinitializer }, align 32
@a2mp_send_getinfo_rsp.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"a2mp_send_getinfo_rsp\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s mgr %p\0A\00", [21 x i8] zeroinitializer }, align 32
@a2mp_send_getampassoc_rsp.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.9, i8 0, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"a2mp_send_getampassoc_rsp\00", [38 x i8] zeroinitializer }, align 32
@a2mp_send_create_phy_link_req.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"a2mp_send_create_phy_link_req\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s mgr %p assoc_len %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@a2mp_send_create_phy_link_rsp.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"a2mp_send_create_phy_link_rsp\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s mgr %p hs_hcon %p status %u\0A\00", [32 x i8] zeroinitializer }, align 32
@a2mp_discover_amp.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"a2mp_discover_amp\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"chan %p conn %p mgr %p\0A\00", [40 x i8] zeroinitializer }, align 32
@amp_mgr_destroy.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amp_mgr_destroy\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mgr %p\0A\00", [24 x i8] zeroinitializer }, align 32
@amp_mgr_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @amp_mgr_list_lock, i64 52), ptr getelementptr (i8, ptr @amp_mgr_list_lock, i64 52) }, ptr @amp_mgr_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"amp_mgr_list_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amp_mgr_list_lock\00", [46 x i8] zeroinitializer }, align 32
@amp_mgr_create.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amp_mgr_create\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"conn %p mgr %p\0A\00", [16 x i8] zeroinitializer }, align 32
@amp_mgr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mgr->amp_ctrls_lock\00", [43 x i8] zeroinitializer }, align 32
@amp_mgr_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @amp_mgr_list, ptr @amp_mgr_list }, [24 x i8] zeroinitializer }, align 32
@a2mp_chan_open.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"a2mp_chan_open\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chan %p\0A\00", [23 x i8] zeroinitializer }, align 32
@a2mp_chan_ops = internal constant { %struct.l2cap_ops, [36 x i8] } { %struct.l2cap_ops { ptr @.str.26, ptr @l2cap_chan_no_new_connection, ptr @a2mp_chan_recv_cb, ptr @l2cap_chan_no_teardown, ptr @a2mp_chan_close_cb, ptr @a2mp_chan_state_change_cb, ptr @l2cap_chan_no_ready, ptr @l2cap_chan_no_defer, ptr @l2cap_chan_no_resume, ptr null, ptr @l2cap_chan_no_set_shutdown, ptr @l2cap_chan_no_get_sndtimeo, ptr null, ptr @a2mp_chan_alloc_skb_cb, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"L2CAP A2MP channel\00", [45 x i8] zeroinitializer }, align 32
@a2mp_chan_recv_cb.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"a2mp_chan_recv_cb\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"code 0x%2.2x id %u len %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown A2MP sig cmd 0x%2.2x\0A\00", [34 x i8] zeroinitializer }, align 32
@a2mp_chan_recv_cb.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Send A2MP Rej: cmd 0x%2.2x err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@a2mp_command_rej.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"a2mp_command_rej\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ident %u reason %d\0A\00", [44 x i8] zeroinitializer }, align 32
@a2mp_discover_req.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"a2mp_discover_req\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtu %d efm 0x%4.4x\0A\00", [44 x i8] zeroinitializer }, align 32
@a2mp_discover_req.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"efm 0x%4.4x\0A\00", [19 x i8] zeroinitializer }, align 32
@hci_dev_list_lock = external dso_local global %struct.rwlock_t, align 4
@hci_dev_list = external dso_local global %struct.list_head, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@a2mp_change_notify.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"a2mp_change_notify\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Controller id %u type %u status %u\0A\00", [60 x i8] zeroinitializer }, align 32
@a2mp_getinfo_req.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"a2mp_getinfo_req\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"id %u\0A\00", [25 x i8] zeroinitializer }, align 32
@read_local_amp_info_complete.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"read_local_amp_info_complete\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s status 0x%2.2x\0A\00", [45 x i8] zeroinitializer }, align 32
@hci_dev_put.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.43, ptr @.str.44, i8 1, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_dev_put\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/net/bluetooth/hci_core.h\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s orig refcnt %d\0A\00", [45 x i8] zeroinitializer }, align 32
@a2mp_getampassoc_req.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.39, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"a2mp_getampassoc_req\00", [43 x i8] zeroinitializer }, align 32
@a2mp_createphyslink_req.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"a2mp_createphyslink_req\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"local_id %u, remote_id %u\0A\00", [37 x i8] zeroinitializer }, align 32
@a2mp_discphyslink_req.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"a2mp_discphyslink_req\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"local_id %u remote_id %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: no phys link exist\0A\00", [40 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_ba.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@a2mp_discover_rsp.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.34, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"a2mp_discover_rsp\00", [46 x i8] zeroinitializer }, align 32
@a2mp_discover_rsp.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.35, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@a2mp_discover_rsp.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Remote AMP id %u type %u status %u\0A\00", [60 x i8] zeroinitializer }, align 32
@a2mp_discover_rsp.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chan %p state %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BT_CONNECTED\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BT_OPEN\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BT_BOUND\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_LISTEN\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_CONNECT\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT_CONNECT2\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CONFIG\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT_DISCONN\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BT_CLOSED\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid state\00", [18 x i8] zeroinitializer }, align 32
@a2mp_getinfo_rsp.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"a2mp_getinfo_rsp\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"id %u status 0x%2.2x\0A\00", [42 x i8] zeroinitializer }, align 32
@a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"a2mp_getampassoc_rsp\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"id %u status 0x%2.2x assoc len %zu\0A\00", [60 x i8] zeroinitializer }, align 32
@a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.72, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Created hcon %p: loc:%u -> rem:%u\0A\00", [61 x i8] zeroinitializer }, align 32
@a2mp_cmd_rsp.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a2mp_cmd_rsp\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ident %u code 0x%2.2x\0A\00", [41 x i8] zeroinitializer }, align 32
@a2mp_chan_state_change_cb.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.57, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"a2mp_chan_state_change_cb\00", [38 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@hci_conn_hash_lookup_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.a2mp_chan_state_change_cb = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], [60 x i8] zeroinitializer }, align 32
@switch.table.a2mp_discover_rsp = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 821, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 844, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 896, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 900, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 914, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 945, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 982, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1025, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1039, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 832, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"amp_mgr_list_lock\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 20, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 858, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 877, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"amp_mgr_list\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 19, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 775, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"a2mp_chan_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 749, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 750, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 623, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 682, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 696, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 123, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 147, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 155, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 276, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 305, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 289, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1224, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 376, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 484, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 565, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 582, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [36 x i8] c"../include/net/bluetooth/hci_core.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1033, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 695, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 723, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 207, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 222, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 250, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 239, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 241, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 243, i32 10 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 245, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 247, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 249, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 251, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 253, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 255, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant [37 x i8] c"../include/net/bluetooth/bluetooth.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 258, i32 9 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 347, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 426, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 460, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 602, i32 2 }
@___asan_gen_.315 = private constant [24 x i8] c"../net/bluetooth/a2mp.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 724, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1984, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [39 x i8] c"switch.table.a2mp_chan_state_change_cb\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [31 x i8] c"switch.table.a2mp_discover_rsp\00", align 1
@llvm.compiler.used = appending global [84 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @amp_mgr_list_lock, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @amp_mgr_create.__key, ptr @.str.23, ptr @amp_mgr_list, ptr @.str.24, ptr @.str.25, ptr @a2mp_chan_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @skb_queue_head_init.__key, ptr @.str.76, ptr @switch.table.a2mp_chan_state_change_cb, ptr @switch.table.a2mp_discover_rsp], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_mgr_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_mgr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_mgr_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2mp_chan_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.a2mp_chan_state_change_cb to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.a2mp_discover_rsp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amp_mgr_get(ptr noundef returned %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_mgr_get.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_mgr_get, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %kref = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #11
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_mgr_get.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.3, ptr noundef %mgr, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref4 = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref4, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4, ptr %kref4, i32 1, ptr elementtype(i32) %kref4) #11, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !185

do.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %mgr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amp_mgr_put(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_mgr_put.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_mgr_put, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %kref = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #11
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_mgr_put.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.3, ptr noundef %mgr, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref4 = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !187
  tail call void @llvm.prefetch.p0(ptr %kref4, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4, ptr %kref4, i32 1, ptr elementtype(i32) %kref4) #11, !srcloc !188
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !186

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref4, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !189
  tail call fastcc void @amp_mgr_destroy(ptr noundef %kref4) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i8 = phi i32 [ 1, %if.then.i ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amp_mgr_destroy(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_mgr_destroy.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_mgr_destroy, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_mgr_destroy.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.18, ptr noundef %add.ptr) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @amp_mgr_list_lock, i32 noundef 0) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %kref, i32 -16
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %kref, i32 -16
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @amp_mgr_list_lock) #11
  tail call void @amp_ctrl_list_flush(ptr noundef %add.ptr) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @a2mp_channel_create(ptr noundef %conn, ptr nocapture noundef readnone %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 4
  %type = getelementptr inbounds %struct.hci_conn, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @amp_mgr_create(ptr noundef %conn, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.5) #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_channel_create.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_channel_create, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !183

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %a2mp_chan = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %a2mp_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a2mp_chan, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_channel_create.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.7, ptr noundef nonnull %call, ptr noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %a2mp_chan10 = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %a2mp_chan10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %a2mp_chan10, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %do.end ], [ null, %if.then2 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @amp_mgr_create(ptr noundef %conn, i1 noundef zeroext %locked) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_mgr_create.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_mgr_create, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !183

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_mgr_create.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.22, ptr noundef %conn, ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %l2cap_conn = getelementptr inbounds %struct.amp_mgr, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %l2cap_conn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %conn, ptr %l2cap_conn, align 8
  %call9 = tail call fastcc ptr @a2mp_chan_open(ptr noundef %conn, i1 noundef zeroext %locked)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %a2mp_chan = getelementptr inbounds %struct.amp_mgr, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %a2mp_chan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %a2mp_chan, align 4
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %call9, i32 0, i32 84
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %data, align 4
  %4 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn, align 4
  %amp_mgr = getelementptr inbounds %struct.hci_conn, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %amp_mgr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %amp_mgr, align 8
  %kref = getelementptr inbounds %struct.amp_mgr, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  %7 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %kref, align 4
  %amp_ctrls = getelementptr inbounds %struct.amp_mgr, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %amp_ctrls to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %amp_ctrls, ptr %amp_ctrls, align 4
  %prev.i = getelementptr inbounds %struct.amp_mgr, ptr %call7.i.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %amp_ctrls, ptr %prev.i, align 8
  %amp_ctrls_lock = getelementptr inbounds %struct.amp_mgr, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %amp_ctrls_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @amp_mgr_create.__key) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @amp_mgr_list_lock, i32 noundef 0) #11
  %10 = load ptr, ptr @amp_mgr_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @amp_mgr_list, ptr noundef %10) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_add.exit_crit_edge

if.end12.list_add.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @amp_mgr_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i, ptr @amp_mgr_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end12.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @amp_mgr_list_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add.exit ], [ null, %if.then11 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a2mp_send_getinfo_rsp(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amp_mgr_lookup_by_state(i8 noundef zeroext 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_send_getinfo_rsp.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_send_getinfo_rsp, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !183

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_send_getinfo_rsp.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef nonnull %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id, align 8
  %conv = trunc i16 %1 to i8
  %amp_type = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 110
  %2 = ptrtoint ptr %amp_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %amp_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %do.end.if.end12_crit_edge, label %if.then10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %amp_total_bw = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 106
  %4 = ptrtoint ptr %amp_total_bw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %amp_total_bw, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %amp_max_bw = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 107
  %7 = ptrtoint ptr %amp_max_bw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %amp_max_bw, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %amp_min_latency = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 108
  %10 = ptrtoint ptr %amp_min_latency to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %amp_min_latency, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %amp_pal_cap = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 111
  %13 = ptrtoint ptr %amp_pal_cap to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %amp_pal_cap, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %amp_assoc_size = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 112
  %16 = ptrtoint ptr %amp_assoc_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %amp_assoc_size, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  %rsp.sroa.6.0 = phi i8 [ 1, %do.end.if.end12_crit_edge ], [ 0, %if.then10 ]
  %rsp.sroa.9.0 = phi i32 [ 0, %do.end.if.end12_crit_edge ], [ %6, %if.then10 ]
  %rsp.sroa.11.0 = phi i32 [ 0, %do.end.if.end12_crit_edge ], [ %9, %if.then10 ]
  %rsp.sroa.13.0 = phi i32 [ 0, %do.end.if.end12_crit_edge ], [ %12, %if.then10 ]
  %rsp.sroa.15.0 = phi i16 [ 0, %do.end.if.end12_crit_edge ], [ %15, %if.then10 ]
  %rsp.sroa.17.0 = phi i16 [ 0, %do.end.if.end12_crit_edge ], [ %18, %if.then10 ]
  %ident = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ident, align 4
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 2
  %21 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 22) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end12.a2mp_send.exit_crit_edge, label %if.end.i

if.end12.a2mp_send.exit_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %24 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %25 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 7, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %20, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4608, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %data4.i.i, align 4
  %rsp.sroa.6.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 1
  %29 = ptrtoint ptr %rsp.sroa.6.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %rsp.sroa.6.0, ptr %rsp.sroa.6.0.data4.i.i.sroa_idx, align 1
  %rsp.sroa.9.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 2
  %30 = ptrtoint ptr %rsp.sroa.9.0.data4.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %rsp.sroa.9.0, ptr %rsp.sroa.9.0.data4.i.i.sroa_idx, align 2
  %rsp.sroa.11.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 2, i32 2
  %31 = ptrtoint ptr %rsp.sroa.11.0.data4.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %rsp.sroa.11.0, ptr %rsp.sroa.11.0.data4.i.i.sroa_idx, align 2
  %rsp.sroa.13.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 3, i32 2
  %32 = ptrtoint ptr %rsp.sroa.13.0.data4.i.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %rsp.sroa.13.0, ptr %rsp.sroa.13.0.data4.i.i.sroa_idx, align 2
  %rsp.sroa.15.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 4, i32 2
  %33 = ptrtoint ptr %rsp.sroa.15.0.data4.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %rsp.sroa.15.0, ptr %rsp.sroa.15.0.data4.i.i.sroa_idx, align 2
  %rsp.sroa.17.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 5
  %34 = ptrtoint ptr %rsp.sroa.17.0.data4.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %rsp.sroa.17.0, ptr %rsp.sroa.17.0.data4.i.i.sroa_idx, align 4
  %35 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 22, ptr %24, align 4
  %37 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 22) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 22) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.end12.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  %call13 = call i32 @amp_mgr_put(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %a2mp_send.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @amp_mgr_lookup_by_state(i8 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @amp_mgr_list_lock, i32 noundef 0) #11
  %conv = zext i8 %state to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %mgr.0.in = phi ptr [ @amp_mgr_list, %entry ], [ %mgr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %mgr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %mgr.0 = load ptr, ptr %mgr.0.in, align 4
  %cmp.not = icmp eq ptr %mgr.0, @amp_mgr_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %state1 = getelementptr inbounds %struct.amp_mgr, ptr %mgr.0, i32 0, i32 7
  %call = tail call i32 @_test_and_clear_bit(i32 noundef %conv, ptr noundef %state1) #11
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %if.then

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_mgr_get.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amp_mgr_lookup_by_state, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %kref.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr.0, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %1 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_mgr_get.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.3, ptr noundef %mgr.0, i32 noundef %2) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %kref4.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr.0, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref4.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4.i, ptr %kref4.i, i32 1, ptr elementtype(i32) %kref4.i) #11, !srcloc !184
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !185

do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %mgr.0, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %mgr.0, %if.end15.sink.split.i.i.i.i.i ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @amp_mgr_list_lock) #11
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a2mp_send_getampassoc_rsp(ptr noundef %hdev, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %loc_assoc1 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115
  %call = tail call fastcc ptr @amp_mgr_lookup_by_state(i8 noundef zeroext 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_send_getampassoc_rsp.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_send_getampassoc_rsp, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !183

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_send_getampassoc_rsp.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef nonnull %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %0 = ptrtoint ptr %loc_assoc1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %loc_assoc1, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @amp_mgr_put(ptr noundef nonnull %call)
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 8
  %conv14 = trunc i16 %3 to i8
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv14, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %tobool16.not = icmp eq i8 %status, 0
  br i1 %tobool16.not, label %if.else, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %amp_assoc = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, ptr %call9.i.i, i32 0, i32 2
  %data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115, i32 4
  %5 = ptrtoint ptr %loc_assoc1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %loc_assoc1, align 2
  %conv23 = zext i16 %6 to i32
  %7 = call ptr @memcpy(ptr %amp_assoc, ptr %data, i32 %conv23)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end13.if.end24_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.end13.if.end24_crit_edge ]
  %8 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %8, align 1
  %ident = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ident, align 4
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %conv.i.i = and i32 %add, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end24.a2mp_send.exit_crit_edge, label %if.end.i

if.end24.a2mp_send.exit_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %14 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %conv25 = trunc i32 %add to i16
  %15 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 9, ptr %call9.i.i.i.i, align 128
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %ident2.i.i, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv25) #11
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %data4.i.i, ptr %call9.i.i, i32 %conv.i.i)
  %add.i = add nuw nsw i32 %conv, 6
  %20 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i.i.i, ptr %iv.i, align 4
  %conv2.i = and i32 %add.i, 65535
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv2.i, ptr %14, align 4
  %22 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %conv2.i) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef %conv2.i) #11
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.end24.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  %call26 = call i32 @amp_mgr_put(ptr noundef nonnull %call)
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %a2mp_send.exit, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a2mp_send_create_phy_link_req(ptr noundef %hdev, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %loc_assoc1 = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115
  %call = tail call fastcc ptr @amp_mgr_lookup_by_state(i8 noundef zeroext 2)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %loc_assoc1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %loc_assoc1, align 2
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_send_create_phy_link_req.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_send_create_phy_link_req, %if.then7)) #11
          to label %if.end8.i.i [label %if.then7], !srcloc !183

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_send_create_phy_link_req.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef nonnull %call, i32 noundef %add) #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7, %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %tobool10.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @amp_mgr_put(ptr noundef nonnull %call)
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i.i
  %bredr_chan14 = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %bredr_chan14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bredr_chan14, align 4
  %tobool15.not = icmp eq ptr %3, null
  br i1 %tobool15.not, label %if.end13.clean_crit_edge, label %if.end17

if.end13.clean_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean

if.end17:                                         ; preds = %if.end13
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 8
  %conv18 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv18, ptr %call9.i.i, align 128
  %remote_amp_id = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 41
  %7 = ptrtoint ptr %remote_amp_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %remote_amp_id, align 4
  %remote_id = getelementptr inbounds %struct.a2mp_physlink_req, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %remote_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %remote_id, align 1
  %amp_assoc = getelementptr inbounds %struct.a2mp_physlink_req, ptr %call9.i.i, i32 0, i32 2
  %data = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 115, i32 4
  %10 = ptrtoint ptr %loc_assoc1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %loc_assoc1, align 2
  %conv22 = zext i16 %11 to i32
  %12 = call ptr @memcpy(ptr %amp_assoc, ptr %data, i32 %conv22)
  %ident.i = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %ident.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ident.i, align 4
  %inc.i = add i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i8 1, i8 %inc.i
  %15 = ptrtoint ptr %ident.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i, ptr %ident.i, align 4
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %conv.i.i = and i32 %add, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end17.a2mp_send.exit_crit_edge, label %if.end.i

if.end17.a2mp_send.exit_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %18 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %conv24 = trunc i32 %add to i16
  %19 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 10, ptr %call9.i.i.i.i, align 128
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select.i, ptr %ident2.i.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv24) #11
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 3
  %23 = call ptr @memcpy(ptr %data4.i.i, ptr %call9.i.i, i32 %conv.i.i)
  %add.i = add nuw nsw i32 %conv, 6
  %24 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i.i.i, ptr %iv.i, align 4
  %conv2.i = and i32 %add.i, 65535
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv2.i, ptr %18, align 4
  %26 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %conv2.i) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef %conv2.i) #11
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.end17.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  br label %clean

clean:                                            ; preds = %a2mp_send.exit, %if.end13.clean_crit_edge
  %call25 = call i32 @amp_mgr_put(ptr noundef nonnull %call)
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %clean, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a2mp_send_create_phy_link_rsp(ptr noundef %hdev, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amp_mgr_lookup_by_state(i8 noundef zeroext 3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 183
  %0 = tail call i32 @llvm.read_register.i32(metadata !173) #11
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @hci_conn_hash_lookup_state.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @hci_conn_hash_lookup_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 1077, ptr noundef nonnull @.str.51) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %4 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.023.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not24.i = icmp eq ptr %c.023.i, %conn_hash.i
  br i1 %cmp.not24.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.025.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.023.i, %do.end.i.for.body.i_crit_edge ]
  %type11.i = getelementptr inbounds %struct.hci_conn, ptr %c.025.i, i32 0, i32 14
  %5 = ptrtoint ptr %type11.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %6)
  %cmp13.i = icmp eq i8 %6, -127
  br i1 %cmp13.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  %state16.i = getelementptr inbounds %struct.hci_conn, ptr %c.025.i, i32 0, i32 12
  %7 = ptrtoint ptr %state16.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %state16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %8)
  %cmp19.i = icmp eq i16 %8, 5
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then21.i:                                      ; preds = %land.lhs.true15.i
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2.i, label %if.then21.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.then21.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.then21.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.then21.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  br label %hci_conn_hash_lookup_state.exit

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %c.025.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %c.0.i = load volatile ptr, ptr %c.025.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i11.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i11.i, label %for.end.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true.i14.i

for.end.i.rcu_read_unlock.exit21.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit21.i

land.lhs.true.i14.i:                              ; preds = %for.end.i
  %call1.i12.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit21.i

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit21.i

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_unlock.exit21.i

rcu_read_unlock.exit21.i:                         ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.rcu_read_unlock.exit21.i_crit_edge, %land.lhs.true.i14.i.rcu_read_unlock.exit21.i_crit_edge, %for.end.i.rcu_read_unlock.exit21.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  br label %hci_conn_hash_lookup_state.exit

hci_conn_hash_lookup_state.exit:                  ; preds = %rcu_read_unlock.exit21.i, %rcu_read_unlock.exit.i
  %retval.0.i26 = phi ptr [ %c.025.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit21.i ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !173) #11
  %and.i.i.i.i.i18.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i20.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i20.i, ptr %preempt_count.i.i.i.i19.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool2.not = icmp eq ptr %retval.0.i26, null
  br i1 %tobool2.not, label %hci_conn_hash_lookup_state.exit.do.body_crit_edge, label %if.else

hci_conn_hash_lookup_state.exit.do.body_crit_edge: ; preds = %hci_conn_hash_lookup_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else:                                          ; preds = %hci_conn_hash_lookup_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  %remote_id = getelementptr inbounds %struct.hci_conn, ptr %retval.0.i26, i32 0, i32 54
  %14 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %remote_id, align 2
  br label %do.body

do.body:                                          ; preds = %if.else, %hci_conn_hash_lookup_state.exit.do.body_crit_edge
  %rsp.sroa.6.0 = phi i8 [ 0, %hci_conn_hash_lookup_state.exit.do.body_crit_edge ], [ %15, %if.else ]
  %storemerge = phi i8 [ 2, %hci_conn_hash_lookup_state.exit.do.body_crit_edge ], [ 0, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_send_create_phy_link_rsp.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_send_create_phy_link_rsp, %if.then12)) #11
          to label %do.end [label %if.then12], !srcloc !183

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_send_create_phy_link_rsp.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull %call, ptr noundef %retval.0.i26, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %id = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 4
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id, align 8
  %ident = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ident, align 4
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 7) #14
  %tobool.not.i.i27 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i27, label %do.end.a2mp_send.exit_crit_edge, label %if.end.i

do.end.a2mp_send.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %conv14 = trunc i16 %17 to i8
  %24 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 11, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %19, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 768, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv14, ptr %data4.i.i, align 4
  %rsp.sroa.6.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 1
  %28 = ptrtoint ptr %rsp.sroa.6.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %rsp.sroa.6.0, ptr %rsp.sroa.6.0.data4.i.i.sroa_idx, align 1
  %rsp.sroa.8.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 2
  %29 = ptrtoint ptr %rsp.sroa.8.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %storemerge, ptr %rsp.sroa.8.0.data4.i.i.sroa_idx, align 2
  %30 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 7, ptr %23, align 4
  %32 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 7) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 7) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %do.end.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  %call15 = call i32 @amp_mgr_put(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %a2mp_send.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a2mp_discover_amp(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %amp_mgr = getelementptr inbounds %struct.hci_conn, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %amp_mgr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amp_mgr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discover_amp.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discover_amp, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discover_amp.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.16, ptr noundef %chan, ptr noundef %1, ptr noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5:                                         ; preds = %do.end
  %call6 = tail call fastcc ptr @amp_mgr_create(ptr noundef %1, i1 noundef zeroext true)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %do.end.if.end10_crit_edge
  %mgr.0 = phi ptr [ %5, %do.end.if.end10_crit_edge ], [ %call6, %if.then5.if.end10_crit_edge ]
  %bredr_chan = getelementptr inbounds %struct.amp_mgr, ptr %mgr.0, i32 0, i32 3
  %6 = ptrtoint ptr %bredr_chan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %chan, ptr %bredr_chan, align 4
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr.0, i32 0, i32 2
  %7 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end10.a2mp_send.exit_crit_edge, label %if.end.i

if.end10.a2mp_send.exit_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %10 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1024, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -25086, ptr %data4.i.i, align 4
  %req.sroa.6.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 2
  %15 = ptrtoint ptr %req.sroa.6.0.data4.i.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %req.sroa.6.0.data4.i.i.sroa_idx, align 2
  %16 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %10, align 4
  %18 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 8) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %8, ptr noundef nonnull %msg.i, i32 noundef 8) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.end10.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  br label %cleanup

cleanup:                                          ; preds = %a2mp_send.exit, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amp_ctrl_list_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @a2mp_chan_open(ptr noundef %conn, i1 noundef zeroext %locked) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @l2cap_chan_create() #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_chan_open.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_open, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !183

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_chan_open.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.25, ptr noundef nonnull %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %chan_type = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %chan_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 4, ptr %chan_type, align 1
  %scid = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %scid to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 3, ptr %scid, align 2
  %dcid = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %dcid to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 3, ptr %dcid, align 4
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %omtu to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 670, ptr %omtu, align 2
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 14
  %4 = ptrtoint ptr %imtu to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 670, ptr %imtu, align 4
  %flush_to = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 16
  %5 = ptrtoint ptr %flush_to to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %flush_to, align 4
  %ops = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 85
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @a2mp_chan_ops, ptr %ops, align 4
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %call) #11
  %max_tx = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 30
  %7 = ptrtoint ptr %max_tx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_tx, align 2
  %remote_max_tx = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 59
  %9 = ptrtoint ptr %remote_max_tx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %remote_max_tx, align 2
  %tx_win = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 27
  %10 = ptrtoint ptr %tx_win to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_win, align 4
  %remote_tx_win = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 58
  %12 = ptrtoint ptr %remote_tx_win to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %remote_tx_win, align 4
  %retrans_timeout = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 31
  %13 = ptrtoint ptr %retrans_timeout to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2000, ptr %retrans_timeout, align 4
  %monitor_timeout = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 32
  %14 = ptrtoint ptr %monitor_timeout to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 12000, ptr %monitor_timeout, align 2
  %tx_q = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 78
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 78, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %15 = ptrtoint ptr %tx_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_q, ptr %tx_q, align 4
  %prev.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 78, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 78, i32 1
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i, align 4
  %mode = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 17
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %mode, align 2
  %call8 = tail call i32 @l2cap_ertm_init(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @l2cap_chan_del(ptr noundef nonnull %call, i32 noundef 0) #11
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %conf_state = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 38
  %19 = ptrtoint ptr %conf_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %conf_state, align 4
  br i1 %locked, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__l2cap_chan_add(ptr noundef %conn, ptr noundef nonnull %call) #11
  br label %if.end13

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @l2cap_chan_add(ptr noundef %conn, ptr noundef nonnull %call) #11
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  %20 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %omtu, align 2
  %remote_mps = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 60
  %22 = ptrtoint ptr %remote_mps to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %remote_mps, align 4
  %mps = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 33
  %23 = ptrtoint ptr %mps to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %21, ptr %mps, align 4
  %state = getelementptr inbounds %struct.l2cap_chan, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ %call, %if.end13 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_chan_create() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_set_defaults(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_ertm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_del(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_chan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @l2cap_chan_no_new_connection(ptr nocapture noundef readnone %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2mp_chan_recv_cb(ptr nocapture noundef readonly %chan, ptr noundef %skb) #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amp_mgr_get.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_recv_cb, %if.then.i)) #11
          to label %do.end.i [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %kref.i = getelementptr inbounds %struct.amp_mgr, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @amp_mgr_get.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %3) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %kref4.i = getelementptr inbounds %struct.amp_mgr, ptr %1, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref4.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4.i, ptr %kref4.i, i32 1, ptr elementtype(i32) %kref4.i) #11, !srcloc !184
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !185

do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.amp_mgr_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.amp_mgr_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %amp_mgr_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %amp_mgr_get.exit

amp_mgr_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.amp_mgr_get.exit_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp151 = icmp ugt i32 %7, 3
  br i1 %cmp151, label %while.body.lr.ph, label %amp_mgr_get.exit.if.end67_crit_edge

amp_mgr_get.exit.if.end67_crit_edge:              ; preds = %amp_mgr_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

while.body.lr.ph:                                 ; preds = %amp_mgr_get.exit
  %data2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %ident19 = getelementptr inbounds %struct.amp_mgr, ptr %1, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %err.0152 = phi i32 [ 0, %while.body.lr.ph ], [ %err.2.ph, %cleanup.while.body_crit_edge ]
  %8 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data2, align 4
  %len3 = getelementptr inbounds %struct.a2mp_cmd, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %len3 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len3, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_chan_recv_cb.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_recv_cb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %9, align 1
  %conv = zext i8 %14 to i32
  %ident = getelementptr inbounds %struct.a2mp_cmd, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ident, align 1
  %conv7 = zext i8 %16 to i32
  %conv8 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_chan_recv_cb.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  %call9 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #11
  %conv10 = zext i16 %12 to i32
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv10)
  %cmp12 = icmp ult i32 %18, %conv10
  br i1 %cmp12, label %do.end.if.then46_crit_edge, label %lor.lhs.false

do.end.if.then46_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

lor.lhs.false:                                    ; preds = %do.end
  %ident14 = getelementptr inbounds %struct.a2mp_cmd, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %ident14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ident14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool15.not = icmp eq i8 %20, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.then46_crit_edge, label %if.end17

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

if.end17:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %ident19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ident19, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %9, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %23, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb23
    i8 4, label %sw.bb25
    i8 6, label %sw.bb27
    i8 8, label %sw.bb29
    i8 10, label %sw.bb31
    i8 12, label %sw.bb33
    i8 3, label %sw.bb35
    i8 7, label %sw.bb37
    i8 9, label %sw.bb39
    i8 5, label %if.end17.sw.bb41_crit_edge
    i8 11, label %if.end17.sw.bb41_crit_edge158
    i8 13, label %if.end17.sw.bb41_crit_edge159
  ]

if.end17.sw.bb41_crit_edge159:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb41

if.end17.sw.bb41_crit_edge158:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb41

if.end17.sw.bb41_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb41

sw.bb:                                            ; preds = %if.end17
  %25 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data2, align 4
  %27 = ptrtoint ptr %len3 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %len3, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %29)
  %cmp.i = icmp ult i16 %29, 2
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %do.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_command_rej.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_recv_cb, %if.then4.i)) #11
          to label %do.end.i126 [label %if.then4.i], !srcloc !183

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %ident14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ident14, align 1
  %conv5.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %26, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #11
  %conv6.i = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_command_rej.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.32, i32 noundef %conv5.i, i32 noundef %conv6.i) #11
  br label %do.end.i126

do.end.i126:                                      ; preds = %if.then4.i, %do.body.i
  %call8.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  br label %cleanup

sw.bb23:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call fastcc i32 @a2mp_discover_req(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb25:                                          ; preds = %if.end17
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp2.i = icmp ugt i32 %36, 2
  br i1 %cmp2.i, label %do.body.preheader.i, label %sw.bb25.if.end67_crit_edge

sw.bb25.if.end67_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.body.preheader.i:                              ; preds = %sw.bb25
  %37 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data2, align 4
  br label %do.body.i129

do.body.i129:                                     ; preds = %do.end.i132.do.body.i129_crit_edge, %do.body.preheader.i
  %cl.03.i = phi ptr [ %call5.i, %do.end.i132.do.body.i129_crit_edge ], [ %38, %do.body.preheader.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_change_notify.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_recv_cb, %if.then.i130)) #11
          to label %do.end.i132 [label %if.then.i130], !srcloc !183

if.then.i130:                                     ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %cl.03.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cl.03.i, align 1
  %conv.i = zext i8 %40 to i32
  %type.i = getelementptr inbounds %struct.a2mp_cl, ptr %cl.03.i, i32 0, i32 1
  %41 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %type.i, align 1
  %conv3.i = zext i8 %42 to i32
  %status.i = getelementptr inbounds %struct.a2mp_cl, ptr %cl.03.i, i32 0, i32 2
  %43 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status.i, align 1
  %conv4.i = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_change_notify.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.37, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %conv4.i) #11
  br label %do.end.i132

do.end.i132:                                      ; preds = %if.then.i130, %do.body.i129
  %call5.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #11
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %cmp.i131 = icmp ugt i32 %46, 2
  br i1 %cmp.i131, label %do.end.i132.do.body.i129_crit_edge, label %do.end.i132.if.end67_crit_edge

do.end.i132.if.end67_crit_edge:                   ; preds = %do.end.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end.i132.do.body.i129_crit_edge:               ; preds = %do.end.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i129

sw.bb27:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call fastcc i32 @a2mp_getinfo_req(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb29:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call fastcc i32 @a2mp_getampassoc_req(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call fastcc i32 @a2mp_createphyslink_req(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call fastcc i32 @a2mp_discphyslink_req(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb35:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call fastcc i32 @a2mp_discover_rsp(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb37:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call38 = tail call fastcc i32 @a2mp_getinfo_rsp(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb39:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call fastcc i32 @a2mp_getampassoc_rsp(ptr noundef %1, ptr noundef %skb, ptr noundef %9)
  br label %cleanup

sw.bb41:                                          ; preds = %if.end17.sw.bb41_crit_edge, %if.end17.sw.bb41_crit_edge158, %if.end17.sw.bb41_crit_edge159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_cmd_rsp.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_recv_cb, %if.then.i136)) #11
          to label %a2mp_cmd_rsp.exit [label %if.then.i136], !srcloc !183

if.then.i136:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %ident14 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ident14, align 1
  %conv.i134 = zext i8 %48 to i32
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %9, align 1
  %conv3.i135 = zext i8 %50 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_cmd_rsp.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.74, i32 noundef %conv.i134, i32 noundef %conv3.i135) #11
  br label %a2mp_cmd_rsp.exit

a2mp_cmd_rsp.exit:                                ; preds = %if.then.i136, %sw.bb41
  %51 = ptrtoint ptr %len3 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %len3, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #11
  %conv4.i138 = zext i16 %53 to i32
  %call5.i139 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv4.i138) #11
  br label %cleanup

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %conv21 = zext i8 %23 to i32
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.29, i32 noundef %conv21) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %a2mp_cmd_rsp.exit, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb23, %do.end.i126, %sw.bb.cleanup_crit_edge
  %err.2.ph = phi i32 [ %err.0152, %do.end.i126 ], [ %err.0152, %sw.bb.cleanup_crit_edge ], [ %call24, %sw.bb23 ], [ %call28, %sw.bb27 ], [ %call30, %sw.bb29 ], [ %call32, %sw.bb31 ], [ %call34, %sw.bb33 ], [ %call36, %sw.bb35 ], [ %call38, %sw.bb37 ], [ %call40, %sw.bb39 ], [ 0, %a2mp_cmd_rsp.exit ], [ -22, %sw.default ]
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load i32, ptr %len, align 4
  %cmp = icmp ugt i32 %.pr, 3
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.ph)
  %tobool45.not = icmp eq i32 %err.2.ph, 0
  br i1 %tobool45.not, label %while.end.if.end67_crit_edge, label %while.end.if.then46_crit_edge

while.end.if.then46_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

while.end.if.end67_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then46:                                        ; preds = %while.end.if.then46_crit_edge, %lor.lhs.false.if.then46_crit_edge, %do.end.if.then46_crit_edge
  %err.3148 = phi i32 [ %err.2.ph, %while.end.if.then46_crit_edge ], [ -22, %do.end.if.then46_crit_edge ], [ -22, %lor.lhs.false.if.then46_crit_edge ]
  %data47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data47, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_chan_recv_cb.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_recv_cb, %if.then60)) #11
          to label %do.end65 [label %if.then60], !srcloc !183

if.then60:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv62 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_chan_recv_cb.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.30, i32 noundef %conv62, i32 noundef %err.3148) #11
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %if.then46
  %ident66 = getelementptr inbounds %struct.a2mp_cmd, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %ident66 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ident66, align 1
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 6) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end65.a2mp_send.exit_crit_edge, label %if.end.i

do.end65.a2mp_send.exit_crit_edge:                ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  %64 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %65 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %60, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 512, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %data4.i.i, align 4
  %69 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %70 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 6, ptr %64, align 4
  %71 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 6) #11
  %call5.i141 = call i32 @l2cap_chan_send(ptr noundef %62, ptr noundef nonnull %msg.i, i32 noundef 6) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %do.end65.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  br label %if.end67

if.end67:                                         ; preds = %a2mp_send.exit, %while.end.if.end67_crit_edge, %do.end.i132.if.end67_crit_edge, %sw.bb25.if.end67_crit_edge, %amp_mgr_get.exit.if.end67_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  %call68 = call i32 @amp_mgr_put(ptr noundef %1)
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_teardown(ptr nocapture noundef %chan, i32 noundef %err) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a2mp_chan_close_cb(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @l2cap_chan_put(ptr noundef %chan) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a2mp_chan_state_change_cb(ptr noundef %chan, i32 noundef %state, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 84
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_chan_state_change_cb.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_chan_state_change_cb, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !183

if.then4:                                         ; preds = %do.body
  %switch.tableidx = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 9
  br i1 %2, label %switch.lookup, label %if.then4.state_to_string.exit_crit_edge

if.then4.state_to_string.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.a2mp_chan_state_change_cb, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then4.state_to_string.exit_crit_edge
  %retval.0.i18 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.67, %if.then4.state_to_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_chan_state_change_cb.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.57, ptr noundef %chan, ptr noundef nonnull %retval.0.i18) #11
  br label %do.end

do.end:                                           ; preds = %state_to_string.exit, %do.body
  %conv = trunc i32 %state to i8
  %state7 = getelementptr inbounds %struct.l2cap_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %state7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %state7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %state)
  %cond = icmp eq i32 %state, 9
  br i1 %cond, label %if.then9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @amp_mgr_put(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_ready(ptr nocapture noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_defer(ptr nocapture noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_resume(ptr nocapture noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @l2cap_chan_no_set_shutdown(ptr nocapture noundef %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_chan_no_get_sndtimeo(ptr nocapture noundef readnone %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @a2mp_chan_alloc_skb_cb(ptr nocapture noundef readnone %chan, i32 noundef %hdr_len, i32 noundef %len, i32 noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %hdr_len, 8
  %add.i = add i32 %add, %len
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %bt_skb_alloc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

bt_skb_alloc.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  br label %cleanup

cleanup:                                          ; preds = %bt_skb_alloc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %bt_skb_alloc.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_discover_req(ptr nocapture noundef readonly %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len1 = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp = icmp ult i16 %4, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #11
  %ext_feat3 = getelementptr inbounds %struct.a2mp_discov_req, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ext_feat3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %ext_feat3, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discover_req.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discover_req, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !183

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %1, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv8 = zext i16 %10 to i32
  %conv9 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discover_req.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.34, i32 noundef %conv8, i32 noundef %conv9) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool12.not105 = icmp sgt i16 %7, -1
  br i1 %tobool12.not105, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %do.end36.while.body_crit_edge, %do.end.while.body_crit_edge
  %len.0106 = phi i16 [ %sub, %do.end36.while.body_crit_edge ], [ %4, %do.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %len.0106)
  %cmp14 = icmp ult i16 %len.0106, 2
  br i1 %cmp14, label %while.body.cleanup_crit_edge, label %if.end17

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %12, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discover_req.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discover_req, %if.then32)) #11
          to label %do.end36 [label %if.then32], !srcloc !183

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %conv33 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discover_req.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.35, i32 noundef %conv33) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %if.end17
  %sub = add i16 %len.0106, -2
  %call39 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  %tobool12.not = icmp sgt i16 %15, -1
  br i1 %tobool12.not, label %do.end36.while.end_crit_edge, label %do.end36.while.body_crit_edge

do.end36.while.body_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end36.while.end_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end36.while.end_crit_edge, %do.end.while.end_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_dev_list to i32))
  %hdev.0107 = load ptr, ptr @hci_dev_list, align 4
  %cmp41.not108 = icmp eq ptr %hdev.0107, @hci_dev_list
  br i1 %cmp41.not108, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end.for.body_crit_edge
  %hdev.0110 = phi ptr [ %hdev.0, %for.body.for.body_crit_edge ], [ %hdev.0107, %while.end.for.body_crit_edge ]
  %num_ctrl.0109 = phi i8 [ %spec.select, %for.body.for.body_crit_edge ], [ 1, %while.end.for.body_crit_edge ]
  %dev_type = getelementptr inbounds %struct.hci_dev, ptr %hdev.0110, i32 0, i32 6
  %16 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dev_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp46 = icmp eq i8 %17, 1
  %inc = zext i1 %cmp46 to i8
  %spec.select = add i8 %num_ctrl.0109, %inc
  %18 = ptrtoint ptr %hdev.0110 to i32
  call void @__asan_load4_noabort(i32 %18)
  %hdev.0 = load ptr, ptr %hdev.0110, align 4
  %cmp41.not = icmp eq ptr %hdev.0, @hci_dev_list
  br i1 %cmp41.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i8 %spec.select to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %while.end.for.end_crit_edge
  %num_ctrl.0.lcssa = phi i32 [ 3, %while.end.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %spec.select.i102 = add nuw nsw i32 %num_ctrl.0.lcssa, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i102, i32 noundef 2592) #15
  %tobool59.not = icmp eq ptr %call9.i, null
  br i1 %tobool59.not, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_read_unlock(ptr noundef nonnull @hci_dev_list_lock) #11
  br label %cleanup

if.end61:                                         ; preds = %for.end
  %conv56 = trunc i32 %spec.select.i102 to i16
  %19 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -25086, ptr %call9.i, align 128
  %ext_feat63 = getelementptr inbounds %struct.a2mp_discov_rsp, ptr %call9.i, i32 0, i32 1
  %cl = getelementptr inbounds %struct.a2mp_discov_rsp, ptr %call9.i, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.a2mp_discov_rsp, ptr %call9.i, i32 1, i32 1
  %20 = ptrtoint ptr %ext_feat63 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %ext_feat63, align 2
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %status.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hci_dev_list to i32))
  %hdev.01.i = load ptr, ptr @hci_dev_list, align 4
  %cmp.not2.i = icmp eq ptr %hdev.01.i, @hci_dev_list
  br i1 %cmp.not2.i, label %if.end61.__a2mp_add_cl.exit_crit_edge, label %if.end61.for.body.i_crit_edge

if.end61.for.body.i_crit_edge:                    ; preds = %if.end61
  br label %for.body.i

if.end61.__a2mp_add_cl.exit_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %__a2mp_add_cl.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end61.for.body.i_crit_edge
  %hdev.05.i = phi ptr [ %hdev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %hdev.01.i, %if.end61.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end61.for.body.i_crit_edge ]
  %dev_type.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.05.i, i32 0, i32 6
  %22 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dev_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp3.i = icmp eq i8 %23, 1
  br i1 %cmp3.i, label %if.then.i93, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i93:                                      ; preds = %for.body.i
  %id5.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.05.i, i32 0, i32 4
  %24 = ptrtoint ptr %id5.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id5.i, align 8
  %conv6.i = trunc i16 %25 to i8
  %arrayidx7.i = getelementptr %struct.a2mp_cl, ptr %cl, i32 %i.03.i
  %26 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6.i, ptr %arrayidx7.i, align 1
  %amp_type.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.05.i, i32 0, i32 110
  %27 = ptrtoint ptr %amp_type.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %amp_type.i, align 8
  %type10.i = getelementptr %struct.a2mp_cl, ptr %cl, i32 %i.03.i, i32 1
  %29 = ptrtoint ptr %type10.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %type10.i, align 1
  %flags.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.05.i, i32 0, i32 3
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i93.if.end.i94_crit_edge, label %if.then11.i

if.then.i93.if.end.i94_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i94

if.then11.i:                                      ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #13
  %amp_status.i = getelementptr inbounds %struct.hci_dev, ptr %hdev.05.i, i32 0, i32 105
  %32 = ptrtoint ptr %amp_status.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %amp_status.i, align 4
  br label %if.end.i94

if.end.i94:                                       ; preds = %if.then11.i, %if.then.i93.if.end.i94_crit_edge
  %.sink.i = phi i8 [ %33, %if.then11.i ], [ 0, %if.then.i93.if.end.i94_crit_edge ]
  %34 = getelementptr %struct.a2mp_cl, ptr %cl, i32 %i.03.i, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i, ptr %34, align 1
  %inc.i = add i32 %i.03.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i94, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %if.end.i94 ], [ %i.03.i, %for.body.i.for.inc.i_crit_edge ]
  %36 = ptrtoint ptr %hdev.05.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %hdev.0.i = load ptr, ptr %hdev.05.i, align 4
  %cmp.not.i = icmp eq ptr %hdev.0.i, @hci_dev_list
  br i1 %cmp.not.i, label %for.inc.i.__a2mp_add_cl.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.__a2mp_add_cl.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__a2mp_add_cl.exit

__a2mp_add_cl.exit:                               ; preds = %for.inc.i.__a2mp_add_cl.exit_crit_edge, %if.end61.__a2mp_add_cl.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @hci_dev_list_lock) #11
  %ident = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 1
  %37 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ident, align 1
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 2
  %39 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %add.i.i = add nuw nsw i32 %num_ctrl.0.lcssa, 8
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #15
  %tobool.not.i.i95 = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i95, label %__a2mp_add_cl.exit.a2mp_send.exit_crit_edge, label %if.end.i96

__a2mp_add_cl.exit.a2mp_send.exit_crit_edge:      ; preds = %__a2mp_add_cl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i96:                                       ; preds = %__a2mp_add_cl.exit
  call void @__sanitizer_cov_trace_pc() #13
  %41 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %42 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %call9.i.i.i.i, align 128
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %38, ptr %ident2.i.i, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv56) #11
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call9.i.i.i.i, i32 0, i32 3
  %46 = call ptr @memcpy(ptr %data4.i.i, ptr %call9.i, i32 %spec.select.i102)
  %47 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i.i.i.i, ptr %iv.i, align 4
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i.i, ptr %41, align 4
  %49 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %add.i.i) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %40, ptr noundef nonnull %msg.i, i32 noundef %add.i.i) #11
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i96, %__a2mp_add_cl.exit.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %a2mp_send.exit, %if.then60, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %a2mp_send.exit ], [ -12, %if.then60 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_getinfo_req(ptr noundef %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %hreq = alloca %struct.hci_request, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hreq) #11
  %2 = call ptr @memset(ptr %hreq, i32 255, i32 64)
  %len = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_getinfo_req.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getinfo_req, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !183

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %conv5 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_getinfo_req.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.39, i32 noundef %conv5) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv8 = zext i8 %8 to i32
  %call9 = tail call ptr @hci_dev_get(i32 noundef %conv8) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end.if.then14_crit_edge, label %lor.lhs.false

do.end.if.then14_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

lor.lhs.false:                                    ; preds = %do.end
  %dev_type = getelementptr inbounds %struct.hci_dev, ptr %call9, i32 0, i32 6
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dev_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp12.not = icmp eq i8 %10, 1
  br i1 %cmp12.not, label %if.end17, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %do.end.if.then14_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %ident = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 1
  %13 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ident, align 1
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 2
  %15 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 22) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then14.a2mp_send.exit_crit_edge, label %if.end.i

if.then14.a2mp_send.exit_crit_edge:               ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %18 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %19 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %14, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4608, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %12, ptr %data4.i.i, align 4
  %rsp.sroa.6.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 1
  %23 = ptrtoint ptr %rsp.sroa.6.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %rsp.sroa.6.0.data4.i.i.sroa_idx, align 1
  %rsp.sroa.8.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 2
  %24 = call ptr @memset(ptr %rsp.sroa.8.0.data4.i.i.sroa_idx, i32 0, i32 16)
  %25 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 22, ptr %18, align 4
  %27 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 22) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 22) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.then14.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  br i1 %tobool10.not, label %a2mp_send.exit.if.end25_crit_edge, label %a2mp_send.exit.if.then24_crit_edge

a2mp_send.exit.if.then24_crit_edge:               ; preds = %a2mp_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

a2mp_send.exit.if.end25_crit_edge:                ; preds = %a2mp_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end17:                                         ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #11
  call void @hci_req_init(ptr noundef nonnull %hreq, ptr noundef nonnull %call9) #11
  call void @hci_req_add(ptr noundef nonnull %hreq, i16 noundef zeroext 5129, i32 noundef 0, ptr noundef null) #11
  %call18 = call i32 @hci_req_run(ptr noundef nonnull %hreq, ptr noundef nonnull @read_local_amp_info_complete) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end17.if.then24_crit_edge

if.end17.if.then24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @a2mp_send_getinfo_rsp(ptr noundef nonnull %call9)
  br label %if.then24

if.then24:                                        ; preds = %if.then21, %if.end17.if.then24_crit_edge, %a2mp_send.exit.if.then24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getinfo_req, %if.then.i)) #11
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call9, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call9, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %28 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %kref.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.44, ptr noundef %name.i, i32 noundef %29) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %if.then24
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call9, i32 0, i32 204
  call void @put_device(ptr noundef %dev4.i) #11
  br label %if.end25

if.end25:                                         ; preds = %hci_dev_put.exit, %a2mp_send.exit.if.end25_crit_edge
  %call26 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hreq) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_getampassoc_req(ptr noundef %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_getampassoc_req.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getampassoc_req, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !183

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_getampassoc_req.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.39, i32 noundef %conv6) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call8 = tail call fastcc ptr @amp_mgr_lookup_by_state(i8 noundef zeroext 1)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %conv10 = zext i8 %7 to i32
  %call11 = tail call ptr @hci_dev_get(i32 noundef %conv10) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end.if.then18_crit_edge, label %lor.lhs.false

do.end.if.then18_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false:                                    ; preds = %do.end
  %amp_type = getelementptr inbounds %struct.hci_dev, ptr %call11, i32 0, i32 110
  %8 = ptrtoint ptr %amp_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %amp_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp14 = icmp ne i8 %9, 0
  %tobool17.not = icmp eq ptr %call8, null
  %or.cond = select i1 %cmp14, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %if.end26, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %do.end.if.then18_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 1
  %tobool21.not = icmp eq ptr %call8, null
  br i1 %tobool21.not, label %if.then18.if.end25_crit_edge, label %if.then22

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 @amp_mgr_put(ptr noundef nonnull %call8)
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then18.if.end25_crit_edge
  %rsp.sroa.6.0 = phi i8 [ 3, %if.then22 ], [ 1, %if.then18.if.end25_crit_edge ]
  %ident = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 1
  %12 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ident, align 1
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 2
  %14 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 6) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end25.a2mp_send.exit_crit_edge, label %if.end.i

if.end25.a2mp_send.exit_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %17 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %18 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %13, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 512, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %11, ptr %data4.i.i, align 4
  %rsp.sroa.6.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 1
  %22 = ptrtoint ptr %rsp.sroa.6.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %rsp.sroa.6.0, ptr %rsp.sroa.6.0.data4.i.i.sroa_idx, align 1
  %23 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %17, align 4
  %25 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 6) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 6) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.end25.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  br i1 %tobool12.not, label %a2mp_send.exit.if.end29_crit_edge, label %a2mp_send.exit.if.then28_crit_edge

a2mp_send.exit.if.then28_crit_edge:               ; preds = %a2mp_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

a2mp_send.exit.if.end29_crit_edge:                ; preds = %a2mp_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amp_read_loc_assoc(ptr noundef nonnull %call11, ptr noundef %mgr) #11
  br label %if.then28

if.then28:                                        ; preds = %if.end26, %a2mp_send.exit.if.then28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getampassoc_req, %if.then.i)) #11
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call11, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call11, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %26 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %kref.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.44, ptr noundef %name.i, i32 noundef %27) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %if.then28
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call11, i32 0, i32 204
  call void @put_device(ptr noundef %dev4.i) #11
  br label %if.end29

if.end29:                                         ; preds = %hci_dev_put.exit, %a2mp_send.exit.if.end29_crit_edge
  %call30 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_createphyslink_req(ptr noundef %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp = icmp ult i16 %4, 2
  br i1 %cmp, label %entry.cleanup71_crit_edge, label %do.body

entry.cleanup71_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup71

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_createphyslink_req.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_createphyslink_req, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !183

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %conv5 = zext i8 %6 to i32
  %remote_id = getelementptr inbounds %struct.a2mp_physlink_req, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %remote_id, align 1
  %conv6 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_createphyslink_req.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.47, i32 noundef %conv5, i32 noundef %conv6) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %remote_id8 = getelementptr inbounds %struct.a2mp_physlink_req, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %remote_id8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %remote_id8, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %conv13 = zext i8 %10 to i32
  %call14 = tail call ptr @hci_dev_get(i32 noundef %conv13) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end.if.then63_crit_edge, label %lor.lhs.false

do.end.if.then63_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63

lor.lhs.false:                                    ; preds = %do.end
  %amp_type = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 110
  %13 = ptrtoint ptr %amp_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %amp_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp17 = icmp eq i8 %14, 0
  br i1 %cmp17, label %lor.lhs.false.if.then57_crit_edge, label %if.end20

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.end20:                                         ; preds = %lor.lhs.false
  %call22 = tail call ptr @amp_ctrl_lookup(ptr noundef %mgr, i8 noundef zeroext %12) #11
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %if.end20.if.then33_crit_edge

if.end20.if.then33_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then24:                                        ; preds = %if.end20
  %call26 = tail call ptr @amp_ctrl_add(ptr noundef %mgr, i8 noundef zeroext %12) #11
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then24.if.then57_crit_edge, label %if.then28

if.then24.if.then57_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amp_ctrl_get(ptr noundef nonnull %call26) #11
  br label %if.then33

if.then33:                                        ; preds = %if.then28, %if.end20.if.then33_crit_edge
  %ctrl.0 = phi ptr [ %call22, %if.end20.if.then33_crit_edge ], [ %call26, %if.then28 ]
  %15 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %len, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv35 = zext i16 %17 to i32
  %sub = add nsw i32 %conv35, -2
  %amp_assoc = getelementptr inbounds %struct.a2mp_physlink_req, ptr %1, i32 0, i32 2
  %call36 = tail call ptr @kmemdup(ptr noundef %amp_assoc, i32 noundef %sub, i32 noundef 3264) #11
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.then33
  %call39 = tail call i32 @amp_ctrl_put(ptr noundef nonnull %ctrl.0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_createphyslink_req, %if.then.i)) #11
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.44, ptr noundef %name.i, i32 noundef %19) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %if.then38
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #11
  br label %cleanup71

if.end47:                                         ; preds = %if.then33
  %assoc41 = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl.0, i32 0, i32 6
  %20 = ptrtoint ptr %assoc41 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call36, ptr %assoc41, align 4
  %conv42 = trunc i32 %sub to i16
  %assoc_len43 = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl.0, i32 0, i32 5
  %21 = ptrtoint ptr %assoc_len43 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv42, ptr %assoc_len43, align 2
  %assoc_rem_len = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl.0, i32 0, i32 4
  %22 = ptrtoint ptr %assoc_rem_len to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv42, ptr %assoc_rem_len, align 4
  %assoc_len_so_far = getelementptr inbounds %struct.amp_ctrl, ptr %ctrl.0, i32 0, i32 3
  %23 = ptrtoint ptr %assoc_len_so_far to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %assoc_len_so_far, align 2
  %call45 = tail call i32 @amp_ctrl_put(ptr noundef nonnull %ctrl.0) #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %1, align 1
  %call49 = tail call ptr @phylink_add(ptr noundef nonnull %call14, ptr noundef %mgr, i8 noundef zeroext %25, i1 noundef zeroext false) #11
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end47.if.then57_crit_edge, label %if.then51

if.end47.if.then57_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @amp_accept_phylink(ptr noundef nonnull %call14, ptr noundef %mgr, ptr noundef nonnull %call49) #11
  br label %if.then57

if.then57:                                        ; preds = %if.then51, %if.end47.if.then57_crit_edge, %if.then24.if.then57_crit_edge, %lor.lhs.false.if.then57_crit_edge
  %cmp61.not = phi i1 [ false, %if.end47.if.then57_crit_edge ], [ false, %if.then24.if.then57_crit_edge ], [ false, %lor.lhs.false.if.then57_crit_edge ], [ true, %if.then51 ]
  %rsp.sroa.10.0.ph = phi i8 [ 2, %if.end47.if.then57_crit_edge ], [ 2, %if.then24.if.then57_crit_edge ], [ 1, %lor.lhs.false.if.then57_crit_edge ], [ 0, %if.then51 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_createphyslink_req, %if.then.i115)) #11
          to label %if.end58 [label %if.then.i115], !srcloc !183

if.then.i115:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %name.i112 = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 2
  %kref.i113 = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i114 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i113, i32 noundef 4) #11
  %26 = ptrtoint ptr %kref.i113 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %kref.i113, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.44, ptr noundef %name.i112, i32 noundef %27) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then.i115, %if.then57
  %dev4.i116 = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i116) #11
  br i1 %cmp61.not, label %if.else64, label %if.end58.if.then63_crit_edge

if.end58.if.then63_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63

if.then63:                                        ; preds = %if.end58.if.then63_crit_edge, %do.end.if.then63_crit_edge
  %rsp.sroa.10.0124127 = phi i8 [ %rsp.sroa.10.0.ph, %if.end58.if.then63_crit_edge ], [ 1, %do.end.if.then63_crit_edge ]
  %ident = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 1
  %28 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ident, align 1
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 2
  %30 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 7) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then63.a2mp_send.exit_crit_edge, label %if.end.i

if.then63.a2mp_send.exit_crit_edge:               ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  %33 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %34 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 11, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %29, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 768, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %10, ptr %data4.i.i, align 4
  %rsp.sroa.6.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 1
  %38 = ptrtoint ptr %rsp.sroa.6.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %12, ptr %rsp.sroa.6.0.data4.i.i.sroa_idx, align 1
  %rsp.sroa.10.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 2
  %39 = ptrtoint ptr %rsp.sroa.10.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %rsp.sroa.10.0124127, ptr %rsp.sroa.10.0.data4.i.i.sroa_idx, align 2
  %40 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %33, align 4
  %42 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 7) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %31, ptr noundef nonnull %msg.i, i32 noundef 7) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.then63.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  br label %if.end67

if.else64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %state) #11
  %ident65 = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 1
  %43 = ptrtoint ptr %ident65 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ident65, align 1
  %ident66 = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 5
  %45 = ptrtoint ptr %ident66 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %ident66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else64, %a2mp_send.exit
  %46 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %len, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %conv69 = zext i16 %48 to i32
  %call70 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv69) #11
  br label %cleanup71

cleanup71:                                        ; preds = %if.end67, %hci_dev_put.exit, %entry.cleanup71_crit_edge
  %retval.1 = phi i32 [ 0, %if.end67 ], [ -22, %entry.cleanup71_crit_edge ], [ -12, %hci_dev_put.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_discphyslink_req(ptr nocapture noundef readonly %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp = icmp ult i16 %4, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discphyslink_req.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discphyslink_req, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !183

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %conv5 = zext i8 %6 to i32
  %remote_id = getelementptr inbounds %struct.a2mp_physlink_req, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %remote_id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %remote_id, align 1
  %conv6 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discphyslink_req.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.49, i32 noundef %conv5, i32 noundef %conv6) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %remote_id8 = getelementptr inbounds %struct.a2mp_physlink_req, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %remote_id8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %remote_id8, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %conv13 = zext i8 %10 to i32
  %call14 = tail call ptr @hci_dev_get(i32 noundef %conv13) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end.send_rsp_crit_edge, label %if.end18

do.end.send_rsp_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_rsp

if.end18:                                         ; preds = %do.end
  %l2cap_conn = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 1
  %13 = ptrtoint ptr %l2cap_conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l2cap_conn, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dst = getelementptr inbounds %struct.hci_conn, ptr %16, i32 0, i32 2
  %conn_hash.i = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 183
  %17 = tail call i32 @llvm.read_register.i32(metadata !173) #11
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !190
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end18.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end18.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end18
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 696, ptr noundef nonnull @.str.53) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end18.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @hci_conn_hash_lookup_ba.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 1033, ptr noundef nonnull @.str.51) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %21 = ptrtoint ptr %conn_hash.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %c.024.i = load volatile ptr, ptr %conn_hash.i, align 4
  %cmp.not25.i = icmp eq ptr %c.024.i, %conn_hash.i
  br i1 %cmp.not25.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %c.026.i = phi ptr [ %c.0.i, %for.inc.i.for.body.i_crit_edge ], [ %c.024.i, %do.end.i.for.body.i_crit_edge ]
  %type11.i = getelementptr inbounds %struct.hci_conn, ptr %c.026.i, i32 0, i32 14
  %22 = ptrtoint ptr %type11.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %23)
  %cmp13.i = icmp eq i8 %23, -127
  br i1 %cmp13.i, label %land.lhs.true15.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %for.body.i
  %dst.i = getelementptr inbounds %struct.hci_conn, ptr %c.026.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst.i, ptr noundef dereferenceable(6) %dst, i32 6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then18.i:                                      ; preds = %land.lhs.true15.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i3.i, label %if.then18.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i6.i

if.then18.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i6.i:                               ; preds = %if.then18.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, %if.then18.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  br label %hci_conn_hash_lookup_ba.exit

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %c.026.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %c.0.i = load volatile ptr, ptr %c.026.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %conn_hash.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %call.i12.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i12.i, label %for.end.i.rcu_read_unlock.exit22.i_crit_edge, label %land.lhs.true.i15.i

for.end.i.rcu_read_unlock.exit22.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit22.i

land.lhs.true.i15.i:                              ; preds = %for.end.i
  %call1.i13.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i)
  %tobool.not.i14.i = icmp eq i32 %call1.i13.i, 0
  br i1 %tobool.not.i14.i, label %land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge, label %land.lhs.true2.i17.i

land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge: ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit22.i

land.lhs.true2.i17.i:                             ; preds = %land.lhs.true.i15.i
  %.b4.i16.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16.i, label %land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge, label %if.then.i18.i

land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge: ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit22.i

if.then.i18.i:                                    ; preds = %land.lhs.true2.i17.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.52, i32 noundef 724, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_unlock.exit22.i

rcu_read_unlock.exit22.i:                         ; preds = %if.then.i18.i, %land.lhs.true2.i17.i.rcu_read_unlock.exit22.i_crit_edge, %land.lhs.true.i15.i.rcu_read_unlock.exit22.i_crit_edge, %for.end.i.rcu_read_unlock.exit22.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  br label %hci_conn_hash_lookup_ba.exit

hci_conn_hash_lookup_ba.exit:                     ; preds = %rcu_read_unlock.exit22.i, %rcu_read_unlock.exit.i
  %retval.0.i39 = phi ptr [ %c.026.i, %rcu_read_unlock.exit.i ], [ null, %rcu_read_unlock.exit22.i ]
  %25 = tail call i32 @llvm.read_register.i32(metadata !173) #11
  %and.i.i.i.i.i19.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i19.i to ptr
  %preempt_count.i.i.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i20.i, align 4
  %sub.i.i.i21.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i21.i, ptr %preempt_count.i.i.i.i20.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %tobool21.not = icmp eq ptr %retval.0.i39, null
  br i1 %tobool21.not, label %if.then22, label %hci_conn_hash_lookup_ba.exit.clean_crit_edge

hci_conn_hash_lookup_ba.exit.clean_crit_edge:     ; preds = %hci_conn_hash_lookup_ba.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean

if.then22:                                        ; preds = %hci_conn_hash_lookup_ba.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 2
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.50, ptr noundef %name) #11
  br label %clean

clean:                                            ; preds = %if.then22, %hci_conn_hash_lookup_ba.exit.clean_crit_edge
  %rsp.sroa.8.0 = phi i8 [ 2, %if.then22 ], [ 0, %hci_conn_hash_lookup_ba.exit.clean_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discphyslink_req, %if.then.i40)) #11
          to label %hci_dev_put.exit [label %if.then.i40], !srcloc !183

if.then.i40:                                      ; preds = %clean
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %29 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.44, ptr noundef %name.i, i32 noundef %30) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i40, %clean
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call14, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #11
  br label %send_rsp

send_rsp:                                         ; preds = %hci_dev_put.exit, %do.end.send_rsp_crit_edge
  %rsp.sroa.8.1 = phi i8 [ %rsp.sroa.8.0, %hci_dev_put.exit ], [ 1, %do.end.send_rsp_crit_edge ]
  %ident = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 1
  %31 = ptrtoint ptr %ident to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ident, align 1
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 2
  %33 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 7) #14
  %tobool.not.i.i42 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i42, label %send_rsp.a2mp_send.exit_crit_edge, label %if.end.i

send_rsp.a2mp_send.exit_crit_edge:                ; preds = %send_rsp
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %send_rsp
  call void @__sanitizer_cov_trace_pc() #13
  %36 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %37 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 13, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %32, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 768, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %10, ptr %data4.i.i, align 4
  %rsp.sroa.6.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 1
  %41 = ptrtoint ptr %rsp.sroa.6.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %12, ptr %rsp.sroa.6.0.data4.i.i.sroa_idx, align 1
  %rsp.sroa.8.0.data4.i.i.sroa_idx = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 1, i32 2
  %42 = ptrtoint ptr %rsp.sroa.8.0.data4.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %rsp.sroa.8.1, ptr %rsp.sroa.8.0.data4.i.i.sroa_idx, align 2
  %43 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 7, ptr %36, align 4
  %45 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 7) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %34, ptr noundef nonnull %msg.i, i32 noundef 7) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %send_rsp.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  %call25 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %a2mp_send.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %a2mp_send.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_discover_rsp(ptr nocapture noundef %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len1 = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp = icmp ult i16 %4, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i16 %4, -4
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #11
  %ext_feat5 = getelementptr inbounds %struct.a2mp_discov_rsp, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ext_feat5 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %ext_feat5, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discover_rsp, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !183

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %1, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv10 = zext i16 %10 to i32
  %conv11 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discover_rsp.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.34, i32 noundef %conv10, i32 noundef %conv11) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool14.not183 = icmp sgt i16 %7, -1
  br i1 %tobool14.not183, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %do.end38.while.body_crit_edge, %do.end.while.body_crit_edge
  %len.0184 = phi i16 [ %sub40, %do.end38.while.body_crit_edge ], [ %sub, %do.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %len.0184)
  %cmp16 = icmp ult i16 %len.0184, 2
  br i1 %cmp16, label %while.body.cleanup_crit_edge, label %if.end19

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %while.body
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %12, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discover_rsp, %if.then34)) #11
          to label %do.end38 [label %if.then34], !srcloc !183

if.then34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %conv35 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discover_rsp.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.35, i32 noundef %conv35) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %if.end19
  %sub40 = add i16 %len.0184, -2
  %call42 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #11
  %tobool14.not = icmp sgt i16 %15, -1
  br i1 %tobool14.not, label %do.end38.while.end_crit_edge, label %do.end38.while.body_crit_edge

do.end38.while.body_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end38.while.end_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end38.while.end_crit_edge, %do.end.while.end_crit_edge
  %len.0.lcssa = phi i16 [ %sub, %do.end.while.end_crit_edge ], [ %sub40, %do.end38.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %len.0.lcssa)
  %cmp46185 = icmp ugt i16 %len.0.lcssa, 2
  br i1 %cmp46185, label %do.body49.lr.ph, label %while.end.if.then87_crit_edge

while.end.if.then87_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

do.body49.lr.ph:                                  ; preds = %while.end
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %ident.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 5
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 2
  %18 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  br label %do.body49.outer

do.body49.outer:                                  ; preds = %if.end80.thread.do.body49.outer_crit_edge, %do.body49.lr.ph
  %len.1188.ph = phi i16 [ %sub82197, %if.end80.thread.do.body49.outer_crit_edge ], [ %len.0.lcssa, %do.body49.lr.ph ]
  %cl.0187.ph = phi ptr [ %call84198, %if.end80.thread.do.body49.outer_crit_edge ], [ %17, %do.body49.lr.ph ]
  %found.0.off0186.ph = phi i1 [ true, %if.end80.thread.do.body49.outer_crit_edge ], [ false, %do.body49.lr.ph ]
  br label %do.body49

do.body49:                                        ; preds = %if.end80.do.body49_crit_edge, %do.body49.outer
  %len.1188 = phi i16 [ %sub82, %if.end80.do.body49_crit_edge ], [ %len.1188.ph, %do.body49.outer ]
  %cl.0187 = phi ptr [ %call84, %if.end80.do.body49_crit_edge ], [ %cl.0187.ph, %do.body49.outer ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discover_rsp, %if.then61)) #11
          to label %do.end67 [label %if.then61], !srcloc !183

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %cl.0187 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cl.0187, align 1
  %conv62 = zext i8 %20 to i32
  %type = getelementptr inbounds %struct.a2mp_cl, ptr %cl.0187, i32 0, i32 1
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 1
  %conv63 = zext i8 %22 to i32
  %status = getelementptr inbounds %struct.a2mp_cl, ptr %cl.0187, i32 0, i32 2
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  %conv64 = zext i8 %24 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discover_rsp.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.56, i32 noundef %conv62, i32 noundef %conv63, i32 noundef %conv64) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %do.body49
  %25 = ptrtoint ptr %cl.0187 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cl.0187, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp70.not = icmp eq i8 %26, 0
  br i1 %cmp70.not, label %do.end67.if.end80_crit_edge, label %land.lhs.true

do.end67.if.end80_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

land.lhs.true:                                    ; preds = %do.end67
  %type72 = getelementptr inbounds %struct.a2mp_cl, ptr %cl.0187, i32 0, i32 1
  %27 = ptrtoint ptr %type72 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %type72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp74.not = icmp eq i8 %28, 0
  br i1 %cmp74.not, label %land.lhs.true.if.end80_crit_edge, label %if.then76

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then76:                                        ; preds = %land.lhs.true
  %29 = ptrtoint ptr %ident.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ident.i, align 4
  %inc.i = add i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i8 1, i8 %inc.i
  %31 = ptrtoint ptr %ident.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %spec.select.i, ptr %ident.i, align 4
  %32 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 5) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then76.if.end80.thread_crit_edge, label %if.end.i

if.then76.if.end80.thread_crit_edge:              ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.thread

if.end.i:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select.i, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 256, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %26, ptr %data4.i.i, align 4
  %39 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %40 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 5, ptr %18, align 4
  %41 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 5) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %33, ptr noundef nonnull %msg.i, i32 noundef 5) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %if.end80.thread

if.end80:                                         ; preds = %land.lhs.true.if.end80_crit_edge, %do.end67.if.end80_crit_edge
  %sub82 = add i16 %len.1188, -3
  %call84 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #11
  %cmp46 = icmp ugt i16 %sub82, 2
  br i1 %cmp46, label %if.end80.do.body49_crit_edge, label %while.end85

if.end80.do.body49_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body49

if.end80.thread:                                  ; preds = %if.end.i, %if.then76.if.end80.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  %sub82197 = add i16 %len.1188, -3
  %call84198 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #11
  %cmp46199 = icmp ugt i16 %sub82197, 2
  br i1 %cmp46199, label %if.end80.thread.do.body49.outer_crit_edge, label %if.end80.thread.cleanup_crit_edge

if.end80.thread.cleanup_crit_edge:                ; preds = %if.end80.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80.thread.do.body49.outer_crit_edge:        ; preds = %if.end80.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body49.outer

while.end85:                                      ; preds = %if.end80
  br i1 %found.0.off0186.ph, label %while.end85.cleanup_crit_edge, label %while.end85.if.then87_crit_edge

while.end85.if.then87_crit_edge:                  ; preds = %while.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then87

while.end85.cleanup_crit_edge:                    ; preds = %while.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then87:                                        ; preds = %while.end85.if.then87_crit_edge, %while.end.if.then87_crit_edge
  %l2cap_conn = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 1
  %42 = ptrtoint ptr %l2cap_conn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %l2cap_conn, align 4
  %chan_lock = getelementptr inbounds %struct.l2cap_conn, ptr %43, i32 0, i32 19
  call void @mutex_lock_nested(ptr noundef %chan_lock, i32 noundef 0) #11
  %chan_l = getelementptr inbounds %struct.l2cap_conn, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %chan_l to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn190 = load ptr, ptr %chan_l, align 4
  %cmp90.not192 = icmp eq ptr %.pn190, %chan_l
  br i1 %cmp90.not192, label %if.then87.for.end_crit_edge, label %if.then87.do.body94_crit_edge

if.then87.do.body94_crit_edge:                    ; preds = %if.then87
  br label %do.body94

if.then87.for.end_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body94:                                        ; preds = %for.inc.do.body94_crit_edge, %if.then87.do.body94_crit_edge
  %.pn193 = phi ptr [ %.pn, %for.inc.do.body94_crit_edge ], [ %.pn190, %if.then87.do.body94_crit_edge ]
  %chan.0194 = getelementptr i8, ptr %.pn193, i32 -772
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_discover_rsp, %if.then106)) #11
          to label %do.end111 [label %if.then106], !srcloc !183

if.then106:                                       ; preds = %do.body94
  %state = getelementptr i8, ptr %.pn193, i32 -752
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %state, align 4
  %switch.tableidx = add i8 %46, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %47 = icmp ult i8 %switch.tableidx, 9
  br i1 %47, label %switch.lookup, label %if.then106.state_to_string.exit_crit_edge

if.then106.state_to_string.exit_crit_edge:        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  br label %state_to_string.exit

switch.lookup:                                    ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  %48 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.a2mp_discover_rsp, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %state_to_string.exit

state_to_string.exit:                             ; preds = %switch.lookup, %if.then106.state_to_string.exit_crit_edge
  %retval.0.i176 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.67, %if.then106.state_to_string.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_discover_rsp.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.57, ptr noundef %chan.0194, ptr noundef nonnull %retval.0.i176) #11
  br label %do.end111

do.end111:                                        ; preds = %state_to_string.exit, %do.body94
  %scid = getelementptr i8, ptr %.pn193, i32 -730
  %50 = ptrtoint ptr %scid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %scid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %51)
  %cmp113 = icmp eq i16 %51, 3
  br i1 %cmp113, label %do.end111.for.inc_crit_edge, label %if.end116

do.end111.for.inc_crit_edge:                      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end116:                                        ; preds = %do.end111
  %lock.i = getelementptr i8, ptr %.pn193, i32 24
  %nesting.i = getelementptr i8, ptr %.pn193, i32 -756
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #11
  %52 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %nesting.i, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %53) #11
  %state117 = getelementptr i8, ptr %.pn193, i32 -752
  %54 = ptrtoint ptr %state117 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %state117, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %55)
  %cmp119 = icmp eq i8 %55, 5
  br i1 %cmp119, label %if.then121, label %if.end116.if.end122_crit_edge

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then121:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  call void @l2cap_send_conn_req(ptr noundef %chan.0194) #11
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end116.if.end122_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end122, %do.end111.for.inc_crit_edge
  %56 = ptrtoint ptr %.pn193 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn193, align 4
  %cmp90.not = icmp eq ptr %.pn, %chan_l
  br i1 %cmp90.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body94_crit_edge

for.inc.do.body94_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body94

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then87.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %chan_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %while.end85.cleanup_crit_edge, %if.end80.thread.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %while.end85.cleanup_crit_edge ], [ 0, %if.end80.thread.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_getinfo_rsp(ptr noundef %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %4)
  %cmp = icmp ult i16 %4, 18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_getinfo_rsp.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getinfo_rsp, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !183

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %conv5 = zext i8 %6 to i32
  %status = getelementptr inbounds %struct.a2mp_info_rsp, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  %conv6 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_getinfo_rsp.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.69, i32 noundef %conv5, i32 noundef %conv6) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %status8 = getelementptr inbounds %struct.a2mp_info_rsp, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %status8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %call13 = tail call ptr @amp_ctrl_add(ptr noundef %mgr, i8 noundef zeroext %12) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %ident.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 5
  %15 = ptrtoint ptr %ident.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ident.i, align 4
  %inc.i = add i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %cmp.i = icmp eq i8 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i8 1, i8 %inc.i
  %17 = ptrtoint ptr %ident.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select.i, ptr %ident.i, align 4
  %a2mp_chan.i = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 2
  %18 = ptrtoint ptr %a2mp_chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a2mp_chan.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 5) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.a2mp_send.exit_crit_edge, label %if.end.i

if.end16.a2mp_send.exit_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %a2mp_send.exit

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %21 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %22 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %call7.i.i.i.i, align 8
  %ident2.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %ident2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select.i, ptr %ident2.i.i, align 1
  %len3.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 256, ptr %len3.i.i, align 2
  %data4.i.i = getelementptr inbounds %struct.a2mp_cmd, ptr %call7.i.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %14, ptr %data4.i.i, align 4
  %26 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i.i, ptr %iv.i, align 4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %21, align 4
  %28 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 1, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef 5) #11
  %call5.i = call i32 @l2cap_chan_send(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 5) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %a2mp_send.exit

a2mp_send.exit:                                   ; preds = %if.end.i, %if.end16.a2mp_send.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #11
  %call20 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 18) #11
  br label %cleanup

cleanup:                                          ; preds = %a2mp_send.exit, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %a2mp_send.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2mp_getampassoc_rsp(ptr noundef %mgr, ptr noundef %skb, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len1 = getelementptr inbounds %struct.a2mp_cmd, ptr %hdr, i32 0, i32 2
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len1, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %4)
  %cmp = icmp ult i16 %4, 2
  br i1 %cmp, label %entry.cleanup63_crit_edge, label %if.end

entry.cleanup63_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %conv, -2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getampassoc_rsp, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !183

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %conv7 = zext i8 %6 to i32
  %status = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 1
  %conv8 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.71, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %sub) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %status10 = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %status10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.cleanup63_crit_edge

do.end.cleanup63_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

if.end13:                                         ; preds = %do.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %call15 = tail call ptr @amp_ctrl_lookup(ptr noundef %mgr, i8 noundef zeroext %12) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end13.if.end28_crit_edge, label %if.then17

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then17:                                        ; preds = %if.end13
  %amp_assoc = getelementptr inbounds %struct.a2mp_amp_assoc_rsp, ptr %1, i32 0, i32 2
  %call18 = tail call ptr @kmemdup(ptr noundef %amp_assoc, i32 noundef %sub, i32 noundef 3264) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @amp_ctrl_put(ptr noundef nonnull %call15) #11
  br label %cleanup63

if.end22:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %assoc23 = getelementptr inbounds %struct.amp_ctrl, ptr %call15, i32 0, i32 6
  %13 = ptrtoint ptr %assoc23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %assoc23, align 4
  %conv24 = trunc i32 %sub to i16
  %assoc_len25 = getelementptr inbounds %struct.amp_ctrl, ptr %call15, i32 0, i32 5
  %14 = ptrtoint ptr %assoc_len25 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv24, ptr %assoc_len25, align 2
  %assoc_rem_len = getelementptr inbounds %struct.amp_ctrl, ptr %call15, i32 0, i32 4
  %15 = ptrtoint ptr %assoc_rem_len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv24, ptr %assoc_rem_len, align 4
  %assoc_len_so_far = getelementptr inbounds %struct.amp_ctrl, ptr %call15, i32 0, i32 3
  %16 = ptrtoint ptr %assoc_len_so_far to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %assoc_len_so_far, align 2
  %call27 = tail call i32 @amp_ctrl_put(ptr noundef nonnull %call15) #11
  br label %if.end28

if.end28:                                         ; preds = %if.end22, %if.end13.if.end28_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %conv30 = zext i8 %18 to i32
  %call31 = tail call ptr @hci_dev_get(i32 noundef %conv30) #11
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end28.cleanup63_crit_edge, label %if.end34

if.end28.cleanup63_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup63

if.end34:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 1
  %call36 = tail call ptr @phylink_add(ptr noundef nonnull %call31, ptr noundef %mgr, i8 noundef zeroext %20, i1 noundef zeroext true) #11
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end34.done_crit_edge, label %do.body40

if.end34.done_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

do.body40:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getampassoc_rsp, %if.then52)) #11
          to label %do.end59 [label %if.then52], !srcloc !183

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %id53 = getelementptr inbounds %struct.hci_dev, ptr %call31, i32 0, i32 4
  %21 = ptrtoint ptr %id53 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id53, align 8
  %conv54 = zext i16 %22 to i32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 1
  %conv56 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.72, ptr noundef nonnull %call36, i32 noundef %conv54, i32 noundef %conv56) #11
  br label %do.end59

do.end59:                                         ; preds = %if.then52, %do.body40
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  %bredr_chan = getelementptr inbounds %struct.amp_mgr, ptr %mgr, i32 0, i32 3
  %27 = ptrtoint ptr %bredr_chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bredr_chan, align 4
  %remote_amp_id = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 41
  %29 = ptrtoint ptr %remote_amp_id to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %remote_amp_id, align 4
  tail call void @amp_create_phylink(ptr noundef nonnull %call31, ptr noundef %mgr, ptr noundef nonnull %call36) #11
  br label %done

done:                                             ; preds = %do.end59, %if.end34.done_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hci_dev_put.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@a2mp_getampassoc_rsp, %if.then.i)) #11
          to label %hci_dev_put.exit [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.hci_dev, ptr %call31, i32 0, i32 2
  %kref.i = getelementptr inbounds %struct.hci_dev, ptr %call31, i32 0, i32 204, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #11
  %30 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hci_dev_put.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.44, ptr noundef %name.i, i32 noundef %31) #11
  br label %hci_dev_put.exit

hci_dev_put.exit:                                 ; preds = %if.then.i, %done
  %dev4.i = getelementptr inbounds %struct.hci_dev, ptr %call31, i32 0, i32 204
  tail call void @put_device(ptr noundef %dev4.i) #11
  %call62 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv) #11
  br label %cleanup63

cleanup63:                                        ; preds = %hci_dev_put.exit, %if.end28.cleanup63_crit_edge, %if.then20, %do.end.cleanup63_crit_edge, %entry.cleanup63_crit_edge
  %retval.1 = phi i32 [ 0, %hci_dev_put.exit ], [ -22, %entry.cleanup63_crit_edge ], [ -22, %do.end.cleanup63_crit_edge ], [ -12, %if.then20 ], [ -22, %if.end28.cleanup63_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_dev_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_req_add(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_req_run(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_local_amp_info_complete(ptr noundef %hdev, i8 noundef zeroext %status, i16 noundef zeroext %opcode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_local_amp_info_complete.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_local_amp_info_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 2
  %conv = zext i8 %status to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_local_amp_info_complete.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @a2mp_send_getinfo_rsp(ptr noundef %hdev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amp_read_loc_assoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amp_ctrl_lookup(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amp_ctrl_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amp_ctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amp_ctrl_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phylink_add(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amp_accept_phylink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_send_conn_req(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amp_create_phylink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !124, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171}
!llvm.named.register.sp = !{!173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/a2mp.c", i32 821, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @amp_mgr_get.__UNIQUE_ID_ddebug497, !1, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/a2mp.c", i32 844, i32 2}
!8 = !{ptr @amp_mgr_put.__UNIQUE_ID_ddebug499, !7, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bluetooth/a2mp.c", i32 896, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/bluetooth/a2mp.c", i32 900, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @a2mp_channel_create.__UNIQUE_ID_ddebug501, !12, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/bluetooth/a2mp.c", i32 914, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @a2mp_send_getinfo_rsp.__UNIQUE_ID_ddebug502, !16, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bluetooth/a2mp.c", i32 945, i32 2}
!21 = !{ptr @a2mp_send_getampassoc_rsp.__UNIQUE_ID_ddebug503, !20, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/bluetooth/a2mp.c", i32 982, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @a2mp_send_create_phy_link_req.__UNIQUE_ID_ddebug504, !23, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/bluetooth/a2mp.c", i32 1025, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @a2mp_send_create_phy_link_rsp.__UNIQUE_ID_ddebug505, !27, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bluetooth/a2mp.c", i32 1039, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @a2mp_discover_amp.__UNIQUE_ID_ddebug506, !31, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bluetooth/a2mp.c", i32 832, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @amp_mgr_destroy.__UNIQUE_ID_ddebug498, !35, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/bluetooth/a2mp.c", i32 20, i32 8}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @amp_mgr_list_lock, !39, !"amp_mgr_list_lock", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bluetooth/a2mp.c", i32 858, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @amp_mgr_create.__UNIQUE_ID_ddebug500, !43, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!46 = !{ptr @amp_mgr_create.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/bluetooth/a2mp.c", i32 877, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/bluetooth/a2mp.c", i32 775, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @a2mp_chan_open.__UNIQUE_ID_ddebug496, !50, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bluetooth/a2mp.c", i32 750, i32 10}
!55 = !{ptr @a2mp_chan_ops, !56, !"a2mp_chan_ops", i1 false, i1 false}
!56 = !{!"../net/bluetooth/a2mp.c", i32 749, i32 31}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/bluetooth/a2mp.c", i32 623, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @a2mp_chan_recv_cb.__UNIQUE_ID_ddebug493, !58, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/bluetooth/a2mp.c", i32 682, i32 4}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/bluetooth/a2mp.c", i32 696, i32 3}
!65 = !{ptr @a2mp_chan_recv_cb.__UNIQUE_ID_ddebug494, !64, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/bluetooth/a2mp.c", i32 123, i32 2}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @a2mp_command_rej.__UNIQUE_ID_ddebug476, !67, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bluetooth/a2mp.c", i32 147, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @a2mp_discover_req.__UNIQUE_ID_ddebug477, !71, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/bluetooth/a2mp.c", i32 155, i32 3}
!76 = !{ptr @a2mp_discover_req.__UNIQUE_ID_ddebug478, !75, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/bluetooth/a2mp.c", i32 276, i32 3}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @a2mp_change_notify.__UNIQUE_ID_ddebug483, !78, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/bluetooth/a2mp.c", i32 305, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @a2mp_getinfo_req.__UNIQUE_ID_ddebug485, !82, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/bluetooth/a2mp.c", i32 289, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @read_local_amp_info_complete.__UNIQUE_ID_ddebug484, !86, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/net/bluetooth/hci_core.h", i32 1224, i32 2}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @hci_dev_put.__UNIQUE_ID_ddebug473, !90, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/bluetooth/a2mp.c", i32 376, i32 2}
!96 = !{ptr @a2mp_getampassoc_req.__UNIQUE_ID_ddebug487, !95, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/bluetooth/a2mp.c", i32 484, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @a2mp_createphyslink_req.__UNIQUE_ID_ddebug490, !98, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/bluetooth/a2mp.c", i32 565, i32 2}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @a2mp_discphyslink_req.__UNIQUE_ID_ddebug491, !102, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/bluetooth/a2mp.c", i32 582, i32 3}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/net/bluetooth/hci_core.h", i32 1033, i32 2}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!112 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!116 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/bluetooth/a2mp.c", i32 207, i32 2}
!119 = !{ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug479, !118, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!120 = !{ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug480, !121, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!121 = !{!"../net/bluetooth/a2mp.c", i32 215, i32 3}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/bluetooth/a2mp.c", i32 222, i32 3}
!124 = !{ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug481, !123, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/bluetooth/a2mp.c", i32 250, i32 4}
!127 = !{ptr @a2mp_discover_rsp.__UNIQUE_ID_ddebug482, !126, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/net/bluetooth/bluetooth.h", i32 239, i32 10}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/net/bluetooth/bluetooth.h", i32 241, i32 10}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/net/bluetooth/bluetooth.h", i32 243, i32 10}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/net/bluetooth/bluetooth.h", i32 245, i32 10}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/net/bluetooth/bluetooth.h", i32 247, i32 10}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/net/bluetooth/bluetooth.h", i32 249, i32 10}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/net/bluetooth/bluetooth.h", i32 251, i32 10}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/net/bluetooth/bluetooth.h", i32 253, i32 10}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/net/bluetooth/bluetooth.h", i32 255, i32 10}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/net/bluetooth/bluetooth.h", i32 258, i32 9}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/bluetooth/a2mp.c", i32 347, i32 2}
!150 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @a2mp_getinfo_rsp.__UNIQUE_ID_ddebug486, !149, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/bluetooth/a2mp.c", i32 426, i32 2}
!154 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug488, !153, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/bluetooth/a2mp.c", i32 460, i32 2}
!158 = !{ptr @a2mp_getampassoc_rsp.__UNIQUE_ID_ddebug489, !157, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/bluetooth/a2mp.c", i32 602, i32 2}
!161 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @a2mp_cmd_rsp.__UNIQUE_ID_ddebug492, !160, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/bluetooth/a2mp.c", i32 724, i32 2}
!165 = !{ptr @a2mp_chan_state_change_cb.__UNIQUE_ID_ddebug495, !164, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!166 = !{ptr @skb_queue_head_init.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!168 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @amp_mgr_list, !170, !"amp_mgr_list", i1 false, i1 false}
!170 = !{!"../net/bluetooth/a2mp.c", i32 19, i32 8}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../include/net/bluetooth/hci_core.h", i32 1077, i32 2}
!173 = !{!"sp"}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 2148800606, i64 2148800611, i64 2148800624, i64 2148800668, i64 2148800702, i64 2148800723}
!184 = !{i64 2148244931, i64 2148244963, i64 2148244992, i64 2148245026, i64 2148245057, i64 2148245080}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2148332932}
!188 = !{i64 2148247396, i64 2148247428, i64 2148247457, i64 2148247491, i64 2148247522, i64 2148247545}
!189 = !{i64 2150450620}
!190 = !{i64 2149576049}
!191 = !{i64 2149576315}
