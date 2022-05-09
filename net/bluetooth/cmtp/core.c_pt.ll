; ModuleID = '/llk/IR_all_yes/net/bluetooth/cmtp/core.c_pt.bc'
source_filename = "../net/bluetooth/cmtp/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.cmtp_connadd_req = type { i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.l2cap_pinfo = type { %struct.bt_sock, ptr, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.78, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.79, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.80, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.78 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.79 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.80 = type { ptr }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cmtp_session = type { %struct.list_head, ptr, %struct.bdaddr_t, i32, i32, i32, [21 x i8], %struct.atomic_t, ptr, %struct.wait_queue_head, i32, i32, %struct.capi_ctr, %struct.list_head, i32, i32, %struct.sk_buff_head, [16 x ptr] }
%struct.capi_ctr = type { ptr, ptr, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i8], %struct.capi_version, %struct.capi_profile, [8 x i8], i32, i32, i32, i32, i32, i16, i32, i32, ptr, [128 x i8] }
%struct.capi_version = type { i32, i32, i32, i32 }
%struct.capi_profile = type { i16, i16, i32, i32, i32, i32, [6 x i32], [5 x i32] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.cmtp_conndel_req = type { %struct.bdaddr_t, i32 }
%struct.cmtp_conninfo = type { %struct.bdaddr_t, i32, i16, i32 }
%struct.cmtp_connlist_req = type { i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.47, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.44, %union.anon.45 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.47 = type { ptr }

@cmtp_add_connection.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cmtp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmtp_add_connection\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/bluetooth/cmtp/core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cmtp_session_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @cmtp_session_sem, i64 56), ptr getelementptr (i8, ptr @cmtp_session_sem, i64 56) }, ptr @cmtp_session_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@cmtp_add_connection.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtu %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pMR\00", [27 x i8] zeroinitializer }, align 32
@cmtp_add_connection.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&session->wait\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kcmtpd_ctr_%d\00", [18 x i8] zeroinitializer }, align 32
@cmtp_del_connection.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmtp_del_connection\00", [44 x i8] zeroinitializer }, align 32
@cmtp_get_connlist.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.3, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmtp_get_connlist\00", [46 x i8] zeroinitializer }, align 32
@cmtp_session_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @cmtp_session_list, ptr @cmtp_session_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_cmtp__475_512_cmtp_init6 = internal global ptr @cmtp_init, section ".initcall6.init", align 4
@__exitcall_cmtp_exit = internal global ptr @cmtp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author476 = internal constant [50 x i8] c"cmtp.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description477 = internal constant [40 x i8] c"cmtp.description=Bluetooth CMTP ver 1.0\00", section ".modinfo", align 1
@__UNIQUE_ID_version478 = internal constant [17 x i8] c"cmtp.version=1.0\00", section ".modinfo", align 1
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.11 }, section "__modver", align 4
@__UNIQUE_ID_file479 = internal constant [34 x i8] c"cmtp.file=net/bluetooth/cmtp/cmtp\00", section ".modinfo", align 1
@__UNIQUE_ID_license480 = internal constant [17 x i8] c"cmtp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias481 = internal constant [22 x i8] c"cmtp.alias=bt-proto-5\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cmtp_session_sem.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmtp_session_sem\00", [47 x i8] zeroinitializer }, align 32
@__cmtp_get_session.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.3, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__cmtp_get_session\00", [45 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@cmtp_session.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmtp_session\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"session %p\0A\00", [20 x i8] zeroinitializer }, align 32
@cmtp_recv_frame.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cmtp_recv_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"session %p skb %p len %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cmtp_recv_frame.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.20, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hdr 0x%02x hdrlen %d len %d id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Wrong size or header information in CMTP frame\0A\00", [48 x i8] zeroinitializer }, align 32
@cmtp_add_msgpart.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmtp_add_msgpart\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"session %p buf %p count %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't allocate memory for CAPI message\0A\00", [56 x i8] zeroinitializer }, align 32
@cmtp_process_transmit.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.17, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cmtp_process_transmit\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't allocate memory for new frame\0A\00", [59 x i8] zeroinitializer }, align 32
@cmtp_send_frame.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cmtp_send_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"session %p data %p len %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CMTP (CAPI Emulation) ver %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 128]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 336, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"cmtp_session_sem\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 361, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 363, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 368, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 384, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 425, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 457, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"cmtp_session_list\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 51, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 517, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 50, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 57, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1984, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 285, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 137, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 159, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 162, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 112, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 118, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 215, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 219, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 199, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 174, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [29 x i8] c"../net/bluetooth/cmtp/core.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 502, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias481, ptr @__UNIQUE_ID_author476, ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file479, ptr @__UNIQUE_ID_license480, ptr @__UNIQUE_ID_version478, ptr @__exitcall_cmtp_exit, ptr @__initcall__kmod_cmtp__475_512_cmtp_init6, ptr @__modver_attr, ptr @cmtp_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cmtp_session_sem, ptr @.str.4, ptr @.str.5, ptr @cmtp_add_connection.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cmtp_session_list, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @skb_queue_head_init.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmtp_session_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmtp_add_connection.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmtp_session_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmtp_add_connection(ptr nocapture noundef readonly %req, ptr noundef %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_add_connection.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_add_connection, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_add_connection.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call zeroext i1 @l2cap_is_socket(ptr noundef %sock) #13
  br i1 %call3, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %flags = getelementptr inbounds %struct.cmtp_connadd_req, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %tobool6.not = icmp ult i32 %1, 2
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 648) #16
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  tail call void @down_write(ptr noundef nonnull @cmtp_session_sem) #13
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 16
  %chan = getelementptr inbounds %struct.l2cap_pinfo, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan, align 8
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cmtp_get_session.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_add_connection, %if.then.i)) #13
          to label %for.cond.i [label %if.then.i], !srcloc !99

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cmtp_get_session.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.3) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i, %if.end12
  %session.0.in.i = phi ptr [ %session.0.i, %for.body.i.for.cond.i_crit_edge ], [ @cmtp_session_list, %if.then.i ], [ @cmtp_session_list, %if.end12 ]
  %7 = ptrtoint ptr %session.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %session.0.i = load ptr, ptr %session.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %session.0.i, @cmtp_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end16_crit_edge, label %for.body.i

for.cond.i.if.end16_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

for.body.i:                                       ; preds = %for.cond.i
  %bdaddr6.i = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst, ptr noundef dereferenceable(6) %bdaddr6.i, i32 6) #17
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %__cmtp_get_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__cmtp_get_session.exit:                          ; preds = %for.body.i
  %tobool14.not = icmp eq ptr %session.0.i, null
  br i1 %tobool14.not, label %__cmtp_get_session.exit.if.end16_crit_edge, label %land.lhs.true

__cmtp_get_session.exit.if.end16_crit_edge:       ; preds = %__cmtp_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %__cmtp_get_session.exit
  %state = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %land.lhs.true.failed_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true.failed_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %__cmtp_get_session.exit.if.end16_crit_edge, %for.cond.i.if.end16_crit_edge
  %bdaddr = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk, align 16
  %chan18 = getelementptr inbounds %struct.l2cap_pinfo, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %chan18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan18, align 8
  %dst19 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %bdaddr, ptr %dst19, i32 6)
  %15 = load ptr, ptr %chan18, align 8
  %omtu = getelementptr inbounds %struct.l2cap_chan, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %omtu to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %omtu, align 2
  %imtu = getelementptr inbounds %struct.l2cap_chan, ptr %15, i32 0, i32 14
  %18 = ptrtoint ptr %imtu to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %imtu, align 4
  %20 = tail call i16 @llvm.umin.i16(i16 %17, i16 %19)
  %cond = zext i16 %20 to i32
  %mtu = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %mtu, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_add_connection.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_add_connection, %if.then40)) #13
          to label %do.end44 [label %if.then40], !srcloc !99

if.then40:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_add_connection.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.4, i32 noundef %23) #13
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %if.end16
  %name = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 6
  %call46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.5, ptr noundef %bdaddr)
  %sock47 = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %sock47 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sock, ptr %sock47, align 8
  %state48 = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %state48 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %state48, align 4
  %wait = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @cmtp_add_connection.__key) #13
  %msgnum = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %msgnum to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65280, ptr %msgnum, align 4
  %applications = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 13
  %27 = ptrtoint ptr %applications to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %applications, ptr %applications, align 8
  %prev.i = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %applications, ptr %prev.i, align 4
  %transmit = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 16
  %lock.i = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 16, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #13
  %29 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transmit, ptr %transmit, align 8
  %prev.i.i = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 16, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transmit, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 16, i32 1
  %31 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %qlen.i.i, align 8
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 584
  %32 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %flags55 = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %flags55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %flags55, align 8
  %36 = load ptr, ptr @cmtp_session_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef nonnull @cmtp_session_list, ptr noundef %36) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end44.__cmtp_link_session.exit_crit_edge

do.end44.__cmtp_link_session.exit_crit_edge:      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cmtp_link_session.exit

if.end.i.i.i:                                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cmtp_session_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i, ptr @cmtp_session_list, align 4
  br label %__cmtp_link_session.exit

__cmtp_link_session.exit:                         ; preds = %if.end.i.i.i, %do.end44.__cmtp_link_session.exit_crit_edge
  tail call void @__module_get(ptr noundef null) #13
  %num = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 11
  %40 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num, align 8
  %call56 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cmtp_session, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.7, i32 noundef %41) #13
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then64, label %if.end67

if.then64:                                        ; preds = %__cmtp_link_session.exit
  %task141 = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 8
  %42 = ptrtoint ptr %task141 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call56, ptr %task141, align 4
  tail call void @module_put(ptr noundef null) #13
  %43 = ptrtoint ptr %task141 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task141, align 4
  %45 = ptrtoint ptr %44 to i32
  %call.i.i.i133 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #13
  br i1 %call.i.i.i133, label %if.end.i.i.i134, label %if.then64.__cmtp_unlink_session.exit_crit_edge

if.then64.__cmtp_unlink_session.exit_crit_edge:   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %__cmtp_unlink_session.exit

if.end.i.i.i134:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %__cmtp_unlink_session.exit

__cmtp_unlink_session.exit:                       ; preds = %if.end.i.i.i134, %if.then64.__cmtp_unlink_session.exit_crit_edge
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i.i135 = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i135 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i135, align 4
  br label %failed

if.end67:                                         ; preds = %__cmtp_link_session.exit
  %call59 = tail call i32 @wake_up_process(ptr noundef %call56) #13
  %task = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 8
  %54 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call56, ptr %task, align 4
  %55 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags55, align 8
  %and69 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end67.if.end82_crit_edge

if.end67.if.end82_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then71:                                        ; preds = %if.end67
  %call72 = tail call i32 @cmtp_attach_device(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.then71.if.end82_crit_edge

if.then71.if.end82_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %sock47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sock47, align 8
  %file = getelementptr inbounds %struct.socket, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %file, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %60, i32 0, i32 6
  %call.i.i.i136 = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #13
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #13, !srcloc !100
  %terminate = getelementptr inbounds %struct.cmtp_session, ptr %call7.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %terminate, i32 1, i32 3, i32 1) #13
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate, ptr %terminate, i32 1, ptr elementtype(i32) %terminate) #13, !srcloc !100
  %63 = ptrtoint ptr %sock47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sock47, align 8
  %sk79 = getelementptr inbounds %struct.socket, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %sk79 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sk79, align 16
  %67 = getelementptr inbounds %struct.sock, ptr %66, i32 0, i32 17
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %67, align 8
  tail call void @__wake_up(ptr noundef %69, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  tail call void @up_write(ptr noundef nonnull @cmtp_session_sem) #13
  br label %cleanup

if.end82:                                         ; preds = %if.then71.if.end82_crit_edge, %if.end67.if.end82_crit_edge
  tail call void @up_write(ptr noundef nonnull @cmtp_session_sem) #13
  br label %cleanup

failed:                                           ; preds = %__cmtp_unlink_session.exit, %land.lhs.true.failed_crit_edge
  %err.0 = phi i32 [ %45, %__cmtp_unlink_session.exit ], [ -17, %land.lhs.true.failed_crit_edge ]
  tail call void @up_write(ptr noundef nonnull @cmtp_session_sem) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end82, %if.then75, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %failed ], [ 0, %if.end82 ], [ %call72, %if.then75 ], [ -77, %do.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @l2cap_is_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmtp_session(ptr noundef %arg) #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr inbounds %struct.cmtp_session, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !89) #13
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @woken_wake_function, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %6, ptr %7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_session.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_session, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_session.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.17, ptr noundef %arg) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %18, i32 noundef -15) #13
  %19 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 8
  call void @add_wait_queue(ptr noundef %21, ptr noundef nonnull %wait) #13
  %terminate = getelementptr inbounds %struct.cmtp_session, ptr %arg, i32 0, i32 7
  %call.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %terminate, i32 noundef 4) #13
  %22 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %terminate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool12.not59 = icmp eq i32 %23, 0
  br i1 %tobool12.not59, label %if.end14.lr.ph, label %do.end.while.end28_crit_edge

do.end.while.end28_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end28

if.end14.lr.ph:                                   ; preds = %do.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  br label %if.end14

if.end14:                                         ; preds = %while.end.if.end14_crit_edge, %if.end14.lr.ph
  %24 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp.not = icmp eq i8 %25, 1
  br i1 %cmp.not, label %while.cond18.preheader, label %if.end14.while.end28_crit_edge

if.end14.while.end28_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end28

while.cond18.preheader:                           ; preds = %if.end14
  %call1954 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool20.not55 = icmp eq ptr %call1954, null
  br i1 %tobool20.not55, label %while.cond18.preheader.while.end_crit_edge, label %while.cond18.preheader.while.body21_crit_edge

while.cond18.preheader.while.body21_crit_edge:    ; preds = %while.cond18.preheader
  br label %while.body21

while.cond18.preheader.while.end_crit_edge:       ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body21:                                     ; preds = %if.end26.while.body21_crit_edge, %while.cond18.preheader.while.body21_crit_edge
  %call1956 = phi ptr [ %call19, %if.end26.while.body21_crit_edge ], [ %call1954, %while.cond18.preheader.while.body21_crit_edge ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call1956, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #15
  call void %27(ptr noundef nonnull %call1956) #13
  %28 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %destructor.i, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %call1956, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %while.body21
  %31 = getelementptr inbounds %struct.sk_buff, ptr %call1956, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !101

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #13, !srcloc !102
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1956, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i, label %skb_orphan.exit.if.then24_crit_edge, label %cond.true.i

skb_orphan.exit.if.then24_crit_edge:              ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

cond.true.i:                                      ; preds = %skb_orphan.exit
  %call.i.i50 = call ptr @__pskb_pull_tail(ptr noundef nonnull %call1956, i32 noundef %35) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i50, null
  br i1 %tobool.not.i.i, label %if.else, label %cond.true.i.if.then24_crit_edge

cond.true.i.if.then24_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

if.then24:                                        ; preds = %cond.true.i.if.then24_crit_edge, %skb_orphan.exit.if.then24_crit_edge
  call fastcc void @cmtp_recv_frame(ptr noundef %arg, ptr noundef nonnull %call1956)
  br label %if.end26

if.else:                                          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree_skb_reason(ptr noundef nonnull %call1956, i32 noundef 0) #13
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then24
  %call19 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #13
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end26.while.end_crit_edge, label %if.end26.while.body21_crit_edge

if.end26.while.body21_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body21

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %while.cond18.preheader.while.end_crit_edge
  call fastcc void @cmtp_process_transmit(ptr noundef %arg)
  %call27 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef 2147483647) #13
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate, i32 noundef 4) #13
  %36 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %terminate, align 4
  %tobool12.not = icmp eq i32 %37, 0
  br i1 %tobool12.not, label %while.end.if.end14_crit_edge, label %while.end.while.end28_crit_edge

while.end.while.end28_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end28

while.end.if.end14_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

while.end28:                                      ; preds = %while.end.while.end28_crit_edge, %if.end14.while.end28_crit_edge, %do.end.while.end28_crit_edge
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %19, align 8
  call void @remove_wait_queue(ptr noundef %39, ptr noundef nonnull %wait) #13
  call void @down_write(ptr noundef nonnull @cmtp_session_sem) #13
  %flags30 = getelementptr inbounds %struct.cmtp_session, ptr %arg, i32 0, i32 4
  %40 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags30, align 4
  %and = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.then32, label %while.end28.if.end33_crit_edge

while.end28.if.end33_crit_edge:                   ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then32:                                        ; preds = %while.end28
  call void @__sanitizer_cov_trace_pc() #15
  call void @cmtp_detach_device(ptr noundef %arg) #13
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %while.end28.if.end33_crit_edge
  %42 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sock, align 4
  %file = getelementptr inbounds %struct.socket, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %45) #13
  call fastcc void @__cmtp_unlink_session(ptr noundef %arg)
  call void @up_write(ptr noundef nonnull @cmtp_session_sem) #13
  call void @kfree(ptr noundef %arg) #13
  call void @__asan_handle_no_return()
  call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #18
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmtp_attach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cmtp_unlink_session(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %session) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %session, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %session, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %session, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmtp_del_connection(ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_del_connection.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_del_connection, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_del_connection.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.cmtp_conndel_req, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %do.end
  tail call void @down_read(ptr noundef nonnull @cmtp_session_sem) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cmtp_get_session.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_del_connection, %if.then.i)) #13
          to label %for.cond.i [label %if.then.i], !srcloc !99

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cmtp_get_session.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.3) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i, %if.end5
  %session.0.in.i = phi ptr [ %session.0.i, %for.body.i.for.cond.i_crit_edge ], [ @cmtp_session_list, %if.then.i ], [ @cmtp_session_list, %if.end5 ]
  %2 = ptrtoint ptr %session.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %session.0.i = load ptr, ptr %session.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %session.0.i, @cmtp_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end10_crit_edge, label %for.body.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

for.body.i:                                       ; preds = %for.cond.i
  %bdaddr6.i = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %req, ptr noundef dereferenceable(6) %bdaddr6.i, i32 6) #17
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %__cmtp_get_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__cmtp_get_session.exit:                          ; preds = %for.body.i
  %tobool7.not = icmp eq ptr %session.0.i, null
  br i1 %tobool7.not, label %__cmtp_get_session.exit.if.end10_crit_edge, label %if.then8

__cmtp_get_session.exit.if.end10_crit_edge:       ; preds = %__cmtp_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %__cmtp_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  %transmit = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 16
  tail call void @skb_queue_purge(ptr noundef %transmit) #13
  %terminate = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %terminate, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate, ptr %terminate, i32 1, ptr elementtype(i32) %terminate) #13, !srcloc !100
  %sock = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk, align 16
  %8 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 8
  tail call void @__wake_up(ptr noundef %10, i32 noundef 1, i32 noundef 1, ptr noundef null) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %__cmtp_get_session.exit.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge
  %err.0 = phi i32 [ 0, %if.then8 ], [ -2, %__cmtp_get_session.exit.if.end10_crit_edge ], [ -2, %for.cond.i.if.end10_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @cmtp_session_sem) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end10 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmtp_get_connlist(ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %ci = alloca %struct.cmtp_conninfo, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_get_connlist.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_get_connlist, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_get_connlist.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.3) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @down_read(ptr noundef nonnull @cmtp_session_sem) #13
  %session.037 = load ptr, ptr @cmtp_session_list, align 4
  %cmp.not38 = icmp eq ptr %session.037, @cmtp_session_list
  br i1 %cmp.not38, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %flags2.i = getelementptr inbounds %struct.cmtp_conninfo, ptr %ci, i32 0, i32 1
  %state3.i = getelementptr inbounds %struct.cmtp_conninfo, ptr %ci, i32 0, i32 2
  %num4.i = getelementptr inbounds %struct.cmtp_conninfo, ptr %ci, i32 0, i32 3
  %ci6 = getelementptr inbounds %struct.cmtp_connlist_req, ptr %req, i32 0, i32 1
  %0 = getelementptr inbounds i8, ptr %ci, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %session.040 = phi ptr [ %session.037, %for.body.lr.ph ], [ %session.0, %cleanup.for.body_crit_edge ]
  %n.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ci) #13
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %ci, align 8
  %bdaddr1.i = getelementptr inbounds %struct.cmtp_session, ptr %session.040, i32 0, i32 2
  %2 = call ptr @memset(ptr %0, i32 0, i32 14)
  %3 = call ptr @memcpy(ptr %ci, ptr %bdaddr1.i, i32 6)
  %flags.i = getelementptr inbounds %struct.cmtp_session, ptr %session.040, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  %6 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %flags2.i, align 8
  %state.i = getelementptr inbounds %struct.cmtp_session, ptr %session.040, i32 0, i32 3
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  %conv.i = trunc i32 %8 to i16
  %9 = ptrtoint ptr %state3.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %state3.i, align 4
  %num.i = getelementptr inbounds %struct.cmtp_session, ptr %session.040, i32 0, i32 11
  %10 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num.i, align 4
  %12 = ptrtoint ptr %num4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num4.i, align 8
  %13 = ptrtoint ptr %ci6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci6, align 4
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %for.body.cleanup.thread_crit_edge, label %if.end.i.i

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %for.body
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %14, i32 20, i32 -1226833920) #19, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup.thread_crit_edge

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ci, i32 noundef 20) #13
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %14, ptr noundef nonnull %ci, i32 noundef 20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool8.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end10:                                         ; preds = %copy_to_user.exit
  %inc = add nuw i32 %n.039, 1
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %17)
  %cmp11.not = icmp ult i32 %inc, %17
  br i1 %cmp11.not, label %cleanup, label %if.end10.cleanup.thread_crit_edge

if.end10.cleanup.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end10.cleanup.thread_crit_edge, %copy_to_user.exit.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %n.1.ph = phi i32 [ %inc, %if.end10.cleanup.thread_crit_edge ], [ %n.039, %copy_to_user.exit.cleanup.thread_crit_edge ], [ %n.039, %for.body.cleanup.thread_crit_edge ], [ %n.039, %if.end.i.i.cleanup.thread_crit_edge ]
  %err.1.ph = phi i32 [ 0, %if.end10.cleanup.thread_crit_edge ], [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ], [ -14, %for.body.cleanup.thread_crit_edge ], [ -14, %if.end.i.i.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ci) #13
  br label %for.end

cleanup:                                          ; preds = %if.end10
  %18 = ptrtoint ptr %ci6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ci6, align 4
  %incdec.ptr = getelementptr %struct.cmtp_conninfo, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %ci6, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ci) #13
  %20 = ptrtoint ptr %session.040 to i32
  call void @__asan_load4_noabort(i32 %20)
  %session.0 = load ptr, ptr %session.040, align 4
  %cmp.not = icmp eq ptr %session.0, @cmtp_session_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %do.end.for.end_crit_edge
  %n.2 = phi i32 [ %n.1.ph, %cleanup.thread ], [ 0, %do.end.for.end_crit_edge ], [ %inc, %cleanup.for.end_crit_edge ]
  %err.2 = phi i32 [ %err.1.ph, %cleanup.thread ], [ 0, %do.end.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %21 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %n.2, ptr %req, align 4
  call void @up_read(ptr noundef nonnull @cmtp_session_sem) #13
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cmtp_get_conninfo(ptr nocapture noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @cmtp_session_sem) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cmtp_get_session.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_get_conninfo, %if.then.i)) #13
          to label %for.cond.i [label %if.then.i], !srcloc !99

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cmtp_get_session.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.3) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i, %entry
  %session.0.in.i = phi ptr [ %session.0.i, %for.body.i.for.cond.i_crit_edge ], [ @cmtp_session_list, %if.then.i ], [ @cmtp_session_list, %entry ]
  %0 = ptrtoint ptr %session.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %session.0.i = load ptr, ptr %session.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %session.0.i, @cmtp_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %bdaddr6.i = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 2
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %ci, ptr noundef dereferenceable(6) %bdaddr6.i, i32 6) #17
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %__cmtp_get_session.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

__cmtp_get_session.exit:                          ; preds = %for.body.i
  %tobool.not = icmp eq ptr %session.0.i, null
  br i1 %tobool.not, label %__cmtp_get_session.exit.if.end_crit_edge, label %if.then

__cmtp_get_session.exit.if.end_crit_edge:         ; preds = %__cmtp_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %__cmtp_get_session.exit
  call void @__sanitizer_cov_trace_pc() #15
  %1 = call ptr @memset(ptr %ci, i32 0, i32 20)
  %2 = call ptr @memcpy(ptr %ci, ptr %bdaddr6.i, i32 6)
  %flags.i = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  %flags2.i = getelementptr inbounds %struct.cmtp_conninfo, ptr %ci, i32 0, i32 1
  %5 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %flags2.i, align 4
  %state.i = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %conv.i = trunc i32 %7 to i16
  %state3.i = getelementptr inbounds %struct.cmtp_conninfo, ptr %ci, i32 0, i32 2
  %8 = ptrtoint ptr %state3.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %state3.i, align 4
  %num.i = getelementptr inbounds %struct.cmtp_session, ptr %session.0.i, i32 0, i32 11
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num.i, align 4
  %num4.i = getelementptr inbounds %struct.cmtp_conninfo, ptr %ci, i32 0, i32 3
  %11 = ptrtoint ptr %num4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num4.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %__cmtp_get_session.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -2, %__cmtp_get_session.exit.if.end_crit_edge ], [ -2, %for.cond.i.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @cmtp_session_sem) #13
  ret i32 %err.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmtp_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @cmtp_cleanup_sockets() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmtp_cleanup_sockets() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmtp_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.11) #13
  %call = tail call i32 @cmtp_init_sockets() #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmtp_recv_frame(ptr noundef %session, ptr noundef %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_recv_frame.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_recv_frame, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len3, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_recv_frame.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.19, ptr noundef %session, ptr noundef %skb, i32 noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not6 = icmp eq i32 %3, 0
  br i1 %cmp.not6, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %and = and i8 %7, -64
  %8 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %and, label %while.body.sw.epilog_crit_edge [
    i8 64, label %sw.bb
    i8 -128, label %sw.bb8
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6 = getelementptr i8, ptr %5, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %10 to i16
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx10 = getelementptr i8, ptr %5, i32 1
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i16
  %arrayidx13 = getelementptr i8, ptr %5, i32 2
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv14, 8
  %or = or i16 %shl, %conv11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %while.body.sw.epilog_crit_edge
  %len.0 = phi i16 [ %or, %sw.bb8 ], [ %conv7, %sw.bb ], [ 0, %while.body.sw.epilog_crit_edge ]
  %hdrlen.0 = phi i32 [ 3, %sw.bb8 ], [ 2, %sw.bb ], [ 1, %while.body.sw.epilog_crit_edge ]
  %and17 = lshr i8 %7, 2
  %15 = and i8 %and17, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_recv_frame.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_recv_frame, %if.then31)) #13
          to label %do.end38 [label %if.then31], !srcloc !99

if.then31:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %conv34 = zext i16 %len.0 to i32
  %conv35 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_recv_frame.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.20, i32 noundef %conv, i32 noundef %hdrlen.0, i32 noundef %conv34, i32 noundef %conv35) #13
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %sw.epilog
  %conv40 = zext i16 %len.0 to i32
  %add = add nuw nsw i32 %hdrlen.0, %conv40
  %16 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp42 = icmp ugt i32 %add, %17
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.21) #13
  br label %while.end

if.end45:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.0)
  %cmp47 = icmp eq i16 %len.0, 0
  br i1 %cmp47, label %if.end45.while.cond.backedge_crit_edge, label %if.end52

if.end45.while.cond.backedge_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.default70, %sw.bb64, %sw.bb55, %if.end45.while.cond.backedge_crit_edge
  %hdrlen.0.sink = phi i32 [ %add, %sw.default70 ], [ %add, %sw.bb64 ], [ %add, %sw.bb55 ], [ %hdrlen.0, %if.end45.while.cond.backedge_crit_edge ]
  %call51 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %hdrlen.0.sink) #13
  %18 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len4, align 4
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end52:                                         ; preds = %if.end45
  %and54 = and i32 %conv, 3
  %20 = zext i32 %and54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %and54, label %sw.default70 [
    i32 0, label %sw.bb55
    i32 1, label %sw.bb64
  ]

sw.bb55:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %conv56 = zext i8 %15 to i32
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %hdrlen.0
  tail call fastcc void @cmtp_add_msgpart(ptr noundef %session, i32 noundef %conv56, ptr noundef %add.ptr, i32 noundef %conv40)
  %arrayidx60 = getelementptr %struct.cmtp_session, ptr %session, i32 0, i32 17, i32 %conv56
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx60, align 4
  tail call void @cmtp_recv_capimsg(ptr noundef %session, ptr noundef %24) #13
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx60, align 4
  br label %while.cond.backedge

sw.bb64:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %conv65 = zext i8 %15 to i32
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %add.ptr68 = getelementptr i8, ptr %27, i32 %hdrlen.0
  tail call fastcc void @cmtp_add_msgpart(ptr noundef %session, i32 noundef %conv65, ptr noundef %add.ptr68, i32 noundef %conv40)
  br label %while.cond.backedge

sw.default70:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %idxprom72 = zext i8 %15 to i32
  %arrayidx73 = getelementptr %struct.cmtp_session, ptr %session, i32 0, i32 17, i32 %idxprom72
  %28 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx73, align 4
  tail call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #13
  %30 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx73, align 4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %if.then44, %do.end.while.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmtp_process_transmit(ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  %iv.i157 = alloca %struct.kvec, align 4
  %msg.i158 = alloca %struct.msghdr, align 8
  %iv.i148 = alloca %struct.kvec, align 4
  %msg.i149 = alloca %struct.msghdr, align 8
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_process_transmit.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_process_transmit, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_process_transmit.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.17, ptr noundef %session) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mtu = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 5
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %1, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end
  %transmit = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 16
  %call7173 = call ptr @skb_dequeue(ptr noundef %transmit) #13
  %tobool8.not174 = icmp eq ptr %call7173, null
  br i1 %tobool8.not174, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %sock1.i = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 1
  %2 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %blockids.i = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 14
  %3 = getelementptr inbounds %struct.kvec, ptr %iv.i148, i32 0, i32 1
  br label %while.body

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26) #13
  br label %cleanup83

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call7175 = phi ptr [ %call7173, %while.body.lr.ph ], [ %call7, %cleanup.while.body_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call7175, i32 0, i32 3
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp = icmp ult i32 %sub, 5
  br i1 %cmp, label %if.then10, label %while.body.if.end14_crit_edge

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then10:                                        ; preds = %while.body
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %sock1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sock1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #13
  %12 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %iv.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %7, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_send_frame.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_process_transmit, %if.then.i)) #13
          to label %do.end.i [label %if.then.i], !srcloc !99

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_send_frame.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.28, ptr noundef %session, ptr noundef %9, i32 noundef %7) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %do.end.i.cmtp_send_frame.exit_crit_edge, label %if.end6.i

do.end.i.cmtp_send_frame.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_send_frame.exit

if.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %14 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %call7.i = call i32 @kernel_sendmsg(ptr noundef %11, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %7) #13
  br label %cmtp_send_frame.exit

cmtp_send_frame.exit:                             ; preds = %if.end6.i, %do.end.i.cmtp_send_frame.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #13
  call void @skb_trim(ptr noundef nonnull %call.i, i32 noundef 0) #13
  %15 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mtu, align 4
  br label %if.end14

if.end14:                                         ; preds = %cmtp_send_frame.exit, %while.body.if.end14_crit_edge
  %tail.0 = phi i32 [ %16, %cmtp_send_frame.exit ], [ %sub, %while.body.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 258, i32 %tail.0)
  %cmp15 = icmp ult i32 %tail.0, 258
  %cond.v = select i1 %cmp15, i32 -2, i32 -3
  %cond = add i32 %cond.v, %tail.0
  %len18 = getelementptr inbounds %struct.sk_buff, ptr %call7175, i32 0, i32 6
  %17 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len18, align 4
  %19 = call i32 @llvm.umin.i32(i32 %cond, i32 %18)
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp25 = icmp slt i32 %21, 0
  br i1 %cmp25, label %if.then26, label %if.end14.if.end34_crit_edge

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then26:                                        ; preds = %if.end14
  %call.i146 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i, label %if.then26.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.i

if.then26.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.i:                                        ; preds = %if.then26
  %call.1.i = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.1.i

for.inc.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.2.i

for.inc.1.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.3.i

for.inc.2.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.4.i

for.inc.3.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %call.5.i = call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.5.i

for.inc.4.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %call.6.i = call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.6.i

for.inc.5.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %call.7.i = call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.7.i

for.inc.6.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %call.8.i = call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool.not.8.i = icmp eq i32 %call.8.i, 0
  br i1 %tobool.not.8.i, label %for.inc.7.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.8.i

for.inc.7.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %call.9.i = call i32 @_test_and_set_bit(i32 noundef 9, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %tobool.not.9.i = icmp eq i32 %call.9.i, 0
  br i1 %tobool.not.9.i, label %for.inc.8.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.9.i

for.inc.8.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %call.10.i = call i32 @_test_and_set_bit(i32 noundef 10, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i)
  %tobool.not.10.i = icmp eq i32 %call.10.i, 0
  br i1 %tobool.not.10.i, label %for.inc.9.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.10.i

for.inc.9.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %call.11.i = call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i)
  %tobool.not.11.i = icmp eq i32 %call.11.i, 0
  br i1 %tobool.not.11.i, label %for.inc.10.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.11.i

for.inc.10.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %call.12.i = call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12.i)
  %tobool.not.12.i = icmp eq i32 %call.12.i, 0
  br i1 %tobool.not.12.i, label %for.inc.11.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.12.i

for.inc.11.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %call.13.i = call i32 @_test_and_set_bit(i32 noundef 13, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13.i)
  %tobool.not.13.i = icmp eq i32 %call.13.i, 0
  br i1 %tobool.not.13.i, label %for.inc.12.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.13.i

for.inc.12.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %call.14.i = call i32 @_test_and_set_bit(i32 noundef 14, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14.i)
  %tobool.not.14.i = icmp eq i32 %call.14.i, 0
  br i1 %tobool.not.14.i, label %for.inc.13.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %for.inc.14.i

for.inc.13.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

for.inc.14.i:                                     ; preds = %for.inc.13.i
  %call.15.i = call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %blockids.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.15.i)
  %tobool.not.15.i = icmp eq i32 %call.15.i, 0
  br i1 %tobool.not.15.i, label %for.inc.14.i.cmtp_alloc_block_id.exit.thread_crit_edge, label %cleanup.thread

for.inc.14.i.cmtp_alloc_block_id.exit.thread_crit_edge: ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_alloc_block_id.exit.thread

cmtp_alloc_block_id.exit.thread:                  ; preds = %for.inc.14.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.13.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.12.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.11.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.10.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.9.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.8.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.7.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.6.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.5.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.4.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.3.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.2.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.1.i.cmtp_alloc_block_id.exit.thread_crit_edge, %for.inc.i.cmtp_alloc_block_id.exit.thread_crit_edge, %if.then26.cmtp_alloc_block_id.exit.thread_crit_edge
  %id.0.i.ph = phi i32 [ 14, %for.inc.13.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 13, %for.inc.12.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 12, %for.inc.11.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 11, %for.inc.10.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 10, %for.inc.9.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 9, %for.inc.8.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 8, %for.inc.7.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 7, %for.inc.6.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 6, %for.inc.5.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 5, %for.inc.4.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 4, %for.inc.3.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 3, %for.inc.2.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 2, %for.inc.1.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 1, %for.inc.i.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 0, %if.then26.cmtp_alloc_block_id.exit.thread_crit_edge ], [ 15, %for.inc.14.i.cmtp_alloc_block_id.exit.thread_crit_edge ]
  %22 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %id.0.i.ph, ptr %cb, align 4
  br label %if.end34

cleanup.thread:                                   ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %cb, align 4
  call void @skb_queue_head(ptr noundef %transmit, ptr noundef nonnull %call7175) #13
  br label %while.end

if.end34:                                         ; preds = %cmtp_alloc_block_id.exit.thread, %if.end14.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %cmp35 = icmp ult i32 %19, 256
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 2) #13
  %24 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb, align 4
  %shl = shl i32 %25, 2
  %and = and i32 %shl, 60
  %26 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %19)
  %cmp40 = icmp ne i32 %27, %19
  %cond41 = zext i1 %cmp40 to i32
  %or = or i32 %and, %cond41
  %28 = trunc i32 %or to i8
  %conv = or i8 %28, 64
  %29 = ptrtoint ptr %call37 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %call37, align 1
  %conv43 = trunc i32 %19 to i8
  %arrayidx44 = getelementptr i8, ptr %call37, i32 1
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv43, ptr %arrayidx44, align 1
  br label %if.end62

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %call45 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 3) #13
  %31 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cb, align 4
  %shl47 = shl i32 %32, 2
  %and48 = and i32 %shl47, 60
  %33 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %19)
  %cmp51 = icmp ne i32 %34, %19
  %cond53 = zext i1 %cmp51 to i32
  %or49 = or i32 %and48, %cond53
  %35 = trunc i32 %or49 to i8
  %conv55 = or i8 %35, -128
  %36 = ptrtoint ptr %call45 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv55, ptr %call45, align 1
  %conv58 = trunc i32 %19 to i8
  %arrayidx59 = getelementptr i8, ptr %call45, i32 1
  %37 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv58, ptr %arrayidx59, align 1
  %shr = lshr i32 %19, 8
  %conv60 = trunc i32 %shr to i8
  %arrayidx61 = getelementptr i8, ptr %call45, i32 2
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv60, ptr %arrayidx61, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then36
  %call63 = call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %19) #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call7175, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = call ptr @memcpy(ptr %call63, ptr %40, i32 %19)
  %call64 = call ptr @skb_pull(ptr noundef nonnull %call7175, i32 noundef %19) #13
  %42 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp66.not = icmp eq i32 %43, 0
  br i1 %cmp66.not, label %if.else70, label %if.then68

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  call void @skb_queue_head(ptr noundef %transmit, ptr noundef nonnull %call7175) #13
  br label %cleanup

if.else70:                                        ; preds = %if.end62
  %44 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cb, align 4
  call void @_clear_bit(i32 noundef %45, ptr noundef %blockids.i) #13
  %data72 = getelementptr inbounds %struct.sk_buff, ptr %call7175, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %data72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool73.not = icmp eq i32 %47, 0
  br i1 %tobool73.not, label %if.else70.if.end78_crit_edge, label %if.then74

if.else70.if.end78_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end78

if.then74:                                        ; preds = %if.else70
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %52 = ptrtoint ptr %sock1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sock1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i148) #13
  %54 = ptrtoint ptr %iv.i148 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %49, ptr %iv.i148, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i149) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_send_frame.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_process_transmit, %if.then.i151)) #13
          to label %do.end.i153 [label %if.then.i151], !srcloc !99

if.then.i151:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_send_frame.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.28, ptr noundef %session, ptr noundef %49, i32 noundef %51) #13
  br label %do.end.i153

do.end.i153:                                      ; preds = %if.then.i151, %if.then74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool4.not.i152 = icmp eq i32 %51, 0
  br i1 %tobool4.not.i152, label %do.end.i153.cmtp_send_frame.exit156_crit_edge, label %if.end6.i155

do.end.i153.cmtp_send_frame.exit156_crit_edge:    ; preds = %do.end.i153
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_send_frame.exit156

if.end6.i155:                                     ; preds = %do.end.i153
  call void @__sanitizer_cov_trace_pc() #15
  %56 = call ptr @memset(ptr %msg.i149, i32 0, i32 56)
  %call7.i154 = call i32 @kernel_sendmsg(ptr noundef %53, ptr noundef nonnull %msg.i149, ptr noundef nonnull %iv.i148, i32 noundef 1, i32 noundef %51) #13
  br label %cmtp_send_frame.exit156

cmtp_send_frame.exit156:                          ; preds = %if.end6.i155, %do.end.i153.cmtp_send_frame.exit156_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i149) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i148) #13
  call void @skb_trim(ptr noundef nonnull %call.i, i32 noundef 0) #13
  br label %if.end78

if.end78:                                         ; preds = %cmtp_send_frame.exit156, %if.else70.if.end78_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call7175, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then68
  %call7 = call ptr @skb_dequeue(ptr noundef %transmit) #13
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %while.cond.preheader.while.end_crit_edge
  %data80 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %57 = ptrtoint ptr %data80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data80, align 4
  %len81 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %59 = ptrtoint ptr %len81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len81, align 4
  %sock1.i159 = getelementptr inbounds %struct.cmtp_session, ptr %session, i32 0, i32 1
  %61 = ptrtoint ptr %sock1.i159 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sock1.i159, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i157) #13
  %63 = getelementptr inbounds %struct.kvec, ptr %iv.i157, i32 0, i32 1
  %64 = ptrtoint ptr %iv.i157 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %58, ptr %iv.i157, align 4
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %60, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i158) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_send_frame.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_process_transmit, %if.then.i160)) #13
          to label %do.end.i162 [label %if.then.i160], !srcloc !99

if.then.i160:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_send_frame.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.28, ptr noundef %session, ptr noundef %58, i32 noundef %60) #13
  br label %do.end.i162

do.end.i162:                                      ; preds = %if.then.i160, %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool4.not.i161 = icmp eq i32 %60, 0
  br i1 %tobool4.not.i161, label %do.end.i162.cmtp_send_frame.exit165_crit_edge, label %if.end6.i164

do.end.i162.cmtp_send_frame.exit165_crit_edge:    ; preds = %do.end.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %cmtp_send_frame.exit165

if.end6.i164:                                     ; preds = %do.end.i162
  call void @__sanitizer_cov_trace_pc() #15
  %66 = call ptr @memset(ptr %msg.i158, i32 0, i32 56)
  %call7.i163 = call i32 @kernel_sendmsg(ptr noundef %62, ptr noundef nonnull %msg.i158, ptr noundef nonnull %iv.i157, i32 noundef 1, i32 noundef %60) #13
  br label %cmtp_send_frame.exit165

cmtp_send_frame.exit165:                          ; preds = %if.end6.i164, %do.end.i162.cmtp_send_frame.exit165_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i158) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i157) #13
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #13
  br label %cleanup83

cleanup83:                                        ; preds = %cmtp_send_frame.exit165, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmtp_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmtp_add_msgpart(ptr noundef %session, i32 noundef %id, ptr noundef %buf, i32 noundef %count) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.cmtp_session, ptr %session, i32 0, i32 17, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmtp_add_msgpart.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmtp_add_msgpart, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmtp_add_msgpart.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.23, ptr noundef %session, ptr noundef %buf, i32 noundef %count) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %do.end
  %call.i = tail call ptr @__alloc_skb(i32 noundef %count, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %cond.end.if.then6_crit_edge, label %cond.end.if.end14_crit_edge

cond.end.if.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

cond.end.thread:                                  ; preds = %do.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, %count
  %call.i41 = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %tobool5.not42 = icmp eq ptr %call.i41, null
  br i1 %tobool5.not42, label %cond.end.thread.if.then6_crit_edge, label %land.lhs.true

cond.end.thread.if.then6_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %cond.end.thread.if.then6_crit_edge, %cond.end.if.then6_crit_edge
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.24) #13
  br label %cleanup

land.lhs.true:                                    ; preds = %cond.end.thread
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true.if.end14_crit_edge, label %if.then10

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call ptr @skb_put(ptr noundef nonnull %call.i41, i32 noundef %5) #13
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = call ptr @memcpy(ptr %call12, ptr %9, i32 %7)
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true.if.end14_crit_edge, %cond.end.if.end14_crit_edge
  %call.i4346 = phi ptr [ %call.i41, %if.then10 ], [ %call.i41, %land.lhs.true.if.end14_crit_edge ], [ %call.i, %cond.end.if.end14_crit_edge ]
  %call.i38 = tail call ptr @skb_put(ptr noundef nonnull %call.i4346, i32 noundef %count) #13
  %11 = call ptr @memcpy(ptr %call.i38, ptr %buf, i32 %count)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i4346, ptr %arrayidx, align 4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmtp_recv_capimsg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmtp_init_sockets() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !65, !66, !67, !69, !71, !72, !74, !76, !77, !78, !80, !82, !83, !85, !87}
!llvm.named.register.sp = !{!89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/cmtp/core.c", i32 336, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cmtp_add_connection.__UNIQUE_ID_ddebug469, !1, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/cmtp/core.c", i32 361, i32 2}
!8 = !{ptr @cmtp_add_connection.__UNIQUE_ID_ddebug472, !7, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/bluetooth/cmtp/core.c", i32 363, i32 25}
!11 = !{ptr @cmtp_add_connection.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../net/bluetooth/cmtp/core.c", i32 368, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bluetooth/cmtp/core.c", i32 384, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bluetooth/cmtp/core.c", i32 425, i32 2}
!18 = !{ptr @cmtp_del_connection.__UNIQUE_ID_ddebug473, !17, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bluetooth/cmtp/core.c", i32 457, i32 2}
!21 = !{ptr @cmtp_get_connlist.__UNIQUE_ID_ddebug474, !20, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_cmtp__475_512_cmtp_init6, !23, !"__initcall__kmod_cmtp__475_512_cmtp_init6", i1 false, i1 false}
!23 = !{!"../net/bluetooth/cmtp/core.c", i32 512, i32 1}
!24 = !{ptr @__exitcall_cmtp_exit, !25, !"__exitcall_cmtp_exit", i1 false, i1 false}
!25 = !{!"../net/bluetooth/cmtp/core.c", i32 513, i32 1}
!26 = !{ptr @__UNIQUE_ID_author476, !27, !"__UNIQUE_ID_author476", i1 false, i1 false}
!27 = !{!"../net/bluetooth/cmtp/core.c", i32 515, i32 1}
!28 = !{ptr @__UNIQUE_ID_description477, !29, !"__UNIQUE_ID_description477", i1 false, i1 false}
!29 = !{!"../net/bluetooth/cmtp/core.c", i32 516, i32 1}
!30 = !{ptr @__UNIQUE_ID_version478, !31, !"__UNIQUE_ID_version478", i1 false, i1 false}
!31 = !{!"../net/bluetooth/cmtp/core.c", i32 517, i32 1}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__modver_attr, !31, !"__modver_attr", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_file479, !36, !"__UNIQUE_ID_file479", i1 false, i1 false}
!36 = !{!"../net/bluetooth/cmtp/core.c", i32 518, i32 1}
!37 = !{ptr @__UNIQUE_ID_license480, !36, !"__UNIQUE_ID_license480", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_alias481, !39, !"__UNIQUE_ID_alias481", i1 false, i1 false}
!39 = !{!"../net/bluetooth/cmtp/core.c", i32 519, i32 1}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/bluetooth/cmtp/core.c", i32 50, i32 8}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cmtp_session_sem, !41, !"cmtp_session_sem", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/bluetooth/cmtp/core.c", i32 57, i32 2}
!46 = !{ptr @__cmtp_get_session.__UNIQUE_ID_ddebug460, !45, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!47 = !{ptr @skb_queue_head_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/bluetooth/cmtp/core.c", i32 285, i32 2}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cmtp_session.__UNIQUE_ID_ddebug468, !51, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/bluetooth/cmtp/core.c", i32 137, i32 2}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cmtp_recv_frame.__UNIQUE_ID_ddebug462, !55, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/bluetooth/cmtp/core.c", i32 159, i32 3}
!60 = !{ptr @cmtp_recv_frame.__UNIQUE_ID_ddebug463, !59, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/bluetooth/cmtp/core.c", i32 162, i32 4}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/bluetooth/cmtp/core.c", i32 112, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cmtp_add_msgpart.__UNIQUE_ID_ddebug461, !64, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/bluetooth/cmtp/core.c", i32 118, i32 3}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/bluetooth/cmtp/core.c", i32 215, i32 2}
!71 = !{ptr @cmtp_process_transmit.__UNIQUE_ID_ddebug465, !70, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/bluetooth/cmtp/core.c", i32 219, i32 3}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/bluetooth/cmtp/core.c", i32 199, i32 2}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @cmtp_send_frame.__UNIQUE_ID_ddebug464, !75, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!78 = !{ptr @cmtp_session_list, !79, !"cmtp_session_list", i1 false, i1 false}
!79 = !{!"../net/bluetooth/cmtp/core.c", i32 51, i32 8}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!82 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/bluetooth/cmtp/core.c", i32 502, i32 2}
!89 = !{!"sp"}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2148962652, i64 2148962657, i64 2148962670, i64 2148962714, i64 2148962748, i64 2148962769}
!100 = !{i64 2148349275, i64 2148349301, i64 2148349330, i64 2148349364, i64 2148349395, i64 2148349418}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i64 2154624958, i64 2154625446, i64 2154624995, i64 2154625051, i64 2154625085, i64 2154625109, i64 2154625150, i64 2154625171, i64 2154625199, i64 2154625233}
!103 = !{i64 2152823599, i64 2152823624}
