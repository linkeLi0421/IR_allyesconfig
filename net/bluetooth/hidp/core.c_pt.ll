; ModuleID = '/llk/IR_all_yes/net/bluetooth/hidp/core.c_pt.bc'
source_filename = "../net/bluetooth/hidp/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+hidp_hid_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_hidp_hid_driver\09\09\09\09"
module asm "\09.long\09__crc_hidp_hid_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hidp_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22hidp_hid_driver\22\09\09\09\09\09"
module asm "__kstrtabns_hidp_hid_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hidp_session = type { %struct.list_head, %struct.kref, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, ptr, i32, %struct.bdaddr_t, ptr, %struct.l2cap_user, ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.work_struct, ptr, ptr, %struct.timer_list, ptr, i32, [8 x i8], i8, i32, i32, %struct.mutex, ptr, %struct.wait_queue_head, i32, [16384 x i8] }
%struct.bdaddr_t = type { [6 x i8] }
%struct.l2cap_user = type { %struct.list_head, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon.49, %union.anon.52, %union.anon.53, [48 x i8], %union.anon.54, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.56, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, ptr, %union.anon.51 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { ptr }
%union.anon.53 = type { i64 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i32, ptr }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.58, i32, i32, i32, i16, i16, %union.anon.60, i32, %union.anon.61, %union.anon.62, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.58 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.l2cap_pinfo = type { %struct.bt_sock, ptr, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.80, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.81, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.39, %union.anon.41, %union.anon.42, i16, i8, i8, i32, %union.anon.44, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.39 = type { i64 }
%union.anon.41 = type { i32 }
%union.anon.42 = type { i32 }
%union.anon.44 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.80 = type { ptr }
%union.anon.81 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.hidp_connadd_req = type { i32, i32, i16, i16, ptr, i8, i8, i16, i16, i16, i32, i32, [128 x i8] }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.hidp_conndel_req = type { %struct.bdaddr_t, i32 }
%struct.hidp_conninfo = type { %struct.bdaddr_t, i32, i16, i16, i16, i16, [128 x i8] }
%struct.hidp_connlist_req = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.48, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.45, %union.anon.46 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.48 = type { ptr }

@hidp_hid_driver = dso_local global { %struct.hid_ll_driver, [48 x i8] } { %struct.hid_ll_driver { ptr @hidp_start, ptr @hidp_stop, ptr @hidp_open, ptr @hidp_close, ptr null, ptr @hidp_parse, ptr null, ptr null, ptr @hidp_raw_request, ptr @hidp_output_report, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_hidp_hid_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_hidp_hid_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_hidp_hid_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hidp_hid_driver to i32), ptr @__kstrtab_hidp_hid_driver, ptr @__kstrtabns_hidp_hid_driver }, section "___ksymtab_gpl+hidp_hid_driver", align 4
@hidp_get_connlist.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hidp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidp_get_connlist\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/bluetooth/hidp/core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hidp_session_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @hidp_session_sem, i64 56), ptr getelementptr (i8, ptr @hidp_session_sem, i64 56) }, ptr @hidp_session_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@hidp_session_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hidp_session_list, ptr @hidp_session_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_hidp__493_1472_hidp_init6 = internal global ptr @hidp_init, section ".initcall6.init", align 4
@__exitcall_hidp_exit = internal global ptr @hidp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author494 = internal constant [50 x i8] c"hidp.author=Marcel Holtmann <marcel@holtmann.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author495 = internal constant [51 x i8] c"hidp.author=David Herrmann <dh.herrmann@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description496 = internal constant [40 x i8] c"hidp.description=Bluetooth HIDP ver 1.2\00", section ".modinfo", align 1
@__UNIQUE_ID_version497 = internal constant [17 x i8] c"hidp.version=1.2\00", section ".modinfo", align 1
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.5 }, section "__modver", align 4
@__UNIQUE_ID_file498 = internal constant [34 x i8] c"hidp.file=net/bluetooth/hidp/hidp\00", section ".modinfo", align 1
@__UNIQUE_ID_license499 = internal constant [17 x i8] c"hidp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias500 = internal constant [22 x i8] c"hidp.alias=bt-proto-6\00", section ".modinfo", align 1
@hidp_send_message.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidp_send_message\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"session %p data %p size %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't allocate memory for new frame\0A\00", [59 x i8] zeroinitializer }, align 32
@hidp_session_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&session->state_queue\00", [42 x i8] zeroinitializer }, align 32
@hidp_session_new.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&session->dev_init)\00", [58 x i8] zeroinitializer }, align 32
@hidp_session_new.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&session->timer)\00", [46 x i8] zeroinitializer }, align 32
@hidp_session_new.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&session->report_mutex\00", [41 x i8] zeroinitializer }, align 32
@hidp_session_new.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&session->report_queue\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"khidpd_%04x%04x\00", [16 x i8] zeroinitializer }, align 32
@hidp_session_thread.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hidp_session_thread\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"session %p\0A\00", [20 x i8] zeroinitializer }, align 32
@hidp_session_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.3 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @hidp_session_wq, i64 44), ptr getelementptr (i8, ptr @hidp_session_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hidp_session_wq.lock\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hidp_recv_intr_frame.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hidp_recv_intr_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"session %p skb %p len %u\0A\00", [38 x i8] zeroinitializer }, align 32
@hidp_recv_intr_frame.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"report len %d\0A\00", [17 x i8] zeroinitializer }, align 32
@hidp_recv_intr_frame.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.25, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported protocol header 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@hidp_keycode = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\00\00\1E0. \12!\22#\17$%&21\18\19\10\13\1F\14\16/\11-\15,\02\03\04\05\06\07\08\09\0A\0B\1C\01\0E\0F9\0C\0D\1A\1B++'()345:;<=>?@ABCDWXcFwnfhokmjilgEb7JN`OPQKLMGHIRSV\7Ftu\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\86\8A\82\84\80\81\83\89\85\87\88qsr\00\00\00y\00Y]|\\^_\00\00\00z{Z[U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D*8}a6d~\A4\A6\A5\A3\A1srq\96\9E\9F\80\88\B1\B2\B0\8E\98\AD\8C\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@hidp_mkeyspat = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\01\01\01\01\01\01", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unknown key (scancode %#x) released.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unknown key (scancode %#x) pressed.\0A\00", [59 x i8] zeroinitializer }, align 32
@hidp_process_transmit.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.20, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hidp_process_transmit\00", [42 x i8] zeroinitializer }, align 32
@hidp_send_frame.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hidp_send_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sock %p data %p len %d\0A\00", [40 x i8] zeroinitializer }, align 32
@hidp_recv_ctrl_frame.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.23, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hidp_recv_ctrl_frame\00", [43 x i8] zeroinitializer }, align 32
@hidp_process_handshake.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hidp_process_handshake\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"session %p param 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@hidp_process_hid_control.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.33, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hidp_process_hid_control\00", [39 x i8] zeroinitializer }, align 32
@hidp_process_data.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidp_process_data\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"session %p skb %p len %u param 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pMR\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Bluetooth HID Boot Protocol Device\00", [61 x i8] zeroinitializer }, align 32
@hidp_input_event.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hidp_input_event\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"session %p type %d code %d value %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hidp_session_sem.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hidp_session_sem\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HID Boot Device\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"HIDP (Human Interface Emulation) ver %s\0A\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 16, i64 160]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 14, i64 15]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"hidp_hid_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 742, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1422, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"hidp_session_sem\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"hidp_session_list\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 40, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1478, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 106, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 113, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 931, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 951, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 952, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 955, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 956, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1060, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1270, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"hidp_session_wq\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 39, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 592, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 606, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 609, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [13 x i8] c"hidp_keycode\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 42, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"hidp_mkeyspat\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 63, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 201, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 208, i32 6 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 638, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 620, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 556, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 452, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 495, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 511, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1984, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 785, i32 41 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 670, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 154, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 38, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 88, i32 22 }
@___asan_gen_.214 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 174, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [29 x i8] c"../net/bluetooth/hidp/core.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 1462, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_author494, ptr @__UNIQUE_ID_author495, ptr @__UNIQUE_ID_description496, ptr @__UNIQUE_ID_file498, ptr @__UNIQUE_ID_license499, ptr @__UNIQUE_ID_version497, ptr @__exitcall_hidp_exit, ptr @__initcall__kmod_hidp__493_1472_hidp_init6, ptr @__ksymtab_hidp_hid_driver, ptr @__modver_attr, ptr @hidp_exit, ptr @hidp_hid_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @hidp_session_sem, ptr @hidp_session_list, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hidp_session_new.__key, ptr @.str.9, ptr @hidp_session_new.__key.10, ptr @.str.11, ptr @hidp_session_new.__key.12, ptr @.str.13, ptr @hidp_session_new.__key.14, ptr @.str.15, ptr @hidp_session_new.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @hidp_session_wq, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @hidp_keycode, ptr @hidp_mkeyspat, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @skb_queue_head_init.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_hid_driver to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_new.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_new.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_new.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_new.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_session_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_keycode to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidp_mkeyspat to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hidp_start(ptr nocapture noundef readnone %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidp_stop(ptr nocapture noundef %hid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %ctrl_transmit = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 12
  tail call void @skb_queue_purge(ptr noundef %ctrl_transmit) #16
  %intr_transmit = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 13
  tail call void @skb_queue_purge(ptr noundef %intr_transmit) #16
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %claimed, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hidp_open(ptr nocapture noundef readnone %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @hidp_close(ptr nocapture noundef %hid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_parse(ptr nocapture noundef readonly %hid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %hid1 = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid1, align 4
  %rd_data = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_data, align 4
  %rd_size = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %rd_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_size, align 4
  %call = tail call i32 @hid_parse_report(ptr noundef %3, ptr noundef %5, i32 noundef %7) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_raw_request(ptr nocapture noundef readonly %hid, i8 noundef zeroext %reportnum, ptr noundef %buf, i32 noundef %len, i8 noundef zeroext %rtype, i32 noundef %reqtype) #1 align 64 {
entry:
  %__wq_entry.i8 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reqtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reqtype, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 9, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 8
  %idxprom.i = zext i8 %rtype to i32
  %arrayidx.i = getelementptr %struct.hid_device, ptr %hid, i32 0, i32 15, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %terminate.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %terminate.i, i32 noundef 4) #16
  %5 = ptrtoint ptr %terminate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %terminate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %rtype)
  %7 = icmp ult i8 %rtype, 3
  br i1 %7, label %switch.lookup, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %if.end.i
  %report_mutex.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 27
  %call3.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %report_mutex.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %switch.lookup.return_crit_edge

switch.lookup.return_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end6.i:                                        ; preds = %switch.lookup
  %switch.offset = add i8 %rtype, 65
  %8 = and i8 %switch.offset, 3
  %and.i = zext i8 %8 to i32
  %waiting_report_type.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 25
  %9 = ptrtoint ptr %waiting_report_type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i, ptr %waiting_report_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not.i = icmp eq i32 %4, 0
  %conv9.i = zext i8 %reportnum to i32
  %spec.select.i = select i1 %tobool8.not.i, i32 -1, i32 %conv9.i
  %waiting_report_number.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 26
  %10 = ptrtoint ptr %waiting_report_number.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.i, ptr %waiting_report_number.i, align 4
  %flags.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags.i) #16
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reportnum, ptr %buf, align 1
  %ctrl_sock.i.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 10
  %12 = ptrtoint ptr %ctrl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_sock.i.i, align 4
  %ctrl_transmit.i.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 12
  %call.i.i = tail call fastcc i32 @hidp_send_message(ptr noundef %2, ptr noundef %13, ptr noundef %ctrl_transmit.i.i, i8 noundef zeroext %switch.offset, ptr noundef %buf, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end6.i.cleanup109.sink.split.i_crit_edge, label %while.cond.preheader.i

if.end6.i.cleanup109.sink.split.i_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup109.sink.split.i

while.cond.preheader.i:                           ; preds = %if.end6.i
  %report_queue.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 29
  br label %while.cond.i

while.cond.i:                                     ; preds = %.thread.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %ret.0.i = phi i32 [ %35, %.thread.i.while.cond.i_crit_edge ], [ %call.i.i, %while.cond.preheader.i ]
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool17.not.i = icmp eq i32 %16, 0
  br i1 %tobool17.not.i, label %while.cond.i.while.end.i_crit_edge, label %land.rhs.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

land.rhs.i:                                       ; preds = %while.cond.i
  %call.i.i159.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate.i, i32 noundef 4) #16
  %17 = ptrtoint ptr %terminate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %terminate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not.i = icmp eq i32 %18, 0
  br i1 %tobool20.not.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 282) #16
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not.i = icmp eq i32 %21, 0
  br i1 %tobool26.not.i, label %while.body.i..thread.i_crit_edge, label %lor.rhs.i

while.body.i..thread.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread.i

lor.rhs.i:                                        ; preds = %while.body.i
  %call.i.i162.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate.i, i32 noundef 4) #16
  %22 = ptrtoint ptr %terminate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %terminate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not.i = icmp eq i32 %23, 0
  br i1 %tobool29.not.i, label %if.then42.i, label %lor.rhs.i..thread.i_crit_edge

lor.rhs.i..thread.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread.i

if.then42.i:                                      ; preds = %lor.rhs.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  %24 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #16
  %call44189.i = call i32 @prepare_to_wait_event(ptr noundef %report_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #16
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i, align 4
  %27 = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool48.not190.i = icmp eq i32 %27, 0
  br i1 %tobool48.not190.i, label %if.then42.i.for.end.i_crit_edge, label %if.then42.i.lor.end53.i_crit_edge

if.then42.i.lor.end53.i_crit_edge:                ; preds = %if.then42.i
  br label %lor.end53.i

if.then42.i.for.end.i_crit_edge:                  ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

lor.end53.thread.i:                               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool59.not166.i = icmp eq i32 %call76.i, 0
  %spec.select220.i = select i1 %tobool59.not166.i, i32 1, i32 %call76.i
  br label %for.end.i

lor.end53.i:                                      ; preds = %cleanup.i.lor.end53.i_crit_edge, %if.then42.i.lor.end53.i_crit_edge
  %call44192.i = phi i32 [ %call44.i, %cleanup.i.lor.end53.i_crit_edge ], [ %call44189.i, %if.then42.i.lor.end53.i_crit_edge ]
  %__ret43.0191.i = phi i32 [ %call76.i, %cleanup.i.lor.end53.i_crit_edge ], [ 500, %if.then42.i.lor.end53.i_crit_edge ]
  %call.i.i165.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate.i, i32 noundef 4) #16
  %28 = ptrtoint ptr %terminate.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %terminate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool52.not.i = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.0191.i)
  %tobool66.not.i = icmp eq i32 %__ret43.0191.i, 0
  br i1 %tobool52.not.i, label %30, label %for.end.loopexit.split.loop.exit184.i

30:                                               ; preds = %lor.end53.i
  br i1 %tobool66.not.i, label %.for.end.i_crit_edge, label %if.end72.i

.for.end.i_crit_edge:                             ; preds = %30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end72.i:                                       ; preds = %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44192.i)
  %tobool73.not.i = icmp eq i32 %call44192.i, 0
  br i1 %tobool73.not.i, label %cleanup.i, label %if.end72.i.if.end79.i_crit_edge

if.end72.i.if.end79.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79.i

cleanup.i:                                        ; preds = %if.end72.i
  %call76.i = call i32 @schedule_timeout(i32 noundef %__ret43.0191.i) #16
  %call44.i = call i32 @prepare_to_wait_event(ptr noundef %report_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #16
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i, align 4
  %33 = and i32 %32, 1024
  %tobool48.not.i = icmp eq i32 %33, 0
  br i1 %tobool48.not.i, label %lor.end53.thread.i, label %cleanup.i.lor.end53.i_crit_edge

cleanup.i.lor.end53.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end53.i

for.end.loopexit.split.loop.exit184.i:            ; preds = %lor.end53.i
  call void @__sanitizer_cov_trace_pc() #18
  %spec.store.select114.le.i = select i1 %tobool66.not.i, i32 1, i32 %__ret43.0191.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.split.loop.exit184.i, %.for.end.i_crit_edge, %lor.end53.thread.i, %if.then42.i.for.end.i_crit_edge
  %__ret43.2.ph.i = phi i32 [ %spec.store.select114.le.i, %for.end.loopexit.split.loop.exit184.i ], [ 500, %if.then42.i.for.end.i_crit_edge ], [ %spec.select220.i, %lor.end53.thread.i ], [ 0, %.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %report_queue.i, ptr noundef nonnull %__wq_entry.i) #16
  br label %if.end79.i

if.end79.i:                                       ; preds = %for.end.i, %if.end72.i.if.end79.i_crit_edge
  %__ret43.2172.i = phi i32 [ %__ret43.2.ph.i, %for.end.i ], [ %call44192.i, %if.end72.i.if.end79.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.2172.i)
  %cmp85.i = icmp slt i32 %__ret43.2172.i, 0
  br i1 %cmp85.i, label %if.end79.i.cleanup109.sink.split.i_crit_edge, label %34

if.end79.i.cleanup109.sink.split.i_crit_edge:     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup109.sink.split.i

34:                                               ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.2172.i)
  %cmp81.i = icmp eq i32 %__ret43.2172.i, 0
  %spec.select222.i = select i1 %cmp81.i, i32 -5, i32 %ret.0.i
  br label %.thread.i

.thread.i:                                        ; preds = %34, %lor.rhs.i..thread.i_crit_edge, %while.body.i..thread.i_crit_edge
  %__ret.1205209.i = phi i32 [ 500, %while.body.i..thread.i_crit_edge ], [ 500, %lor.rhs.i..thread.i_crit_edge ], [ %__ret43.2172.i, %34 ]
  %35 = phi i32 [ %ret.0.i, %while.body.i..thread.i_crit_edge ], [ %ret.0.i, %lor.rhs.i..thread.i_crit_edge ], [ %spec.select222.i, %34 ]
  %.inv.not.i = icmp eq i32 %__ret.1205209.i, 0
  br i1 %.inv.not.i, label %.thread.i.cleanup109.sink.split.i_crit_edge, label %.thread.i.while.cond.i_crit_edge

.thread.i.while.cond.i_crit_edge:                 ; preds = %.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

.thread.i.cleanup109.sink.split.i_crit_edge:      ; preds = %.thread.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup109.sink.split.i

while.end.i:                                      ; preds = %land.rhs.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %report_return.i = getelementptr inbounds %struct.hidp_session, ptr %2, i32 0, i32 28
  %36 = ptrtoint ptr %report_return.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %report_return.i, align 4
  %tobool92.not.i = icmp eq ptr %37, null
  br i1 %tobool92.not.i, label %while.end.i.cleanup109.sink.split.i_crit_edge, label %if.then93.i

while.end.i.cleanup109.sink.split.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup109.sink.split.i

if.then93.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %len94.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %len94.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len94.i, align 4
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 %len) #16
  %data102.i = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 19
  %41 = ptrtoint ptr %data102.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data102.i, align 4
  %43 = call ptr @memcpy(ptr %buf, ptr %42, i32 %40)
  call void @kfree_skb_reason(ptr noundef nonnull %37, i32 noundef 0) #16
  %44 = ptrtoint ptr %report_return.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %report_return.i, align 4
  br label %cleanup109.sink.split.i

cleanup109.sink.split.i:                          ; preds = %if.then93.i, %while.end.i.cleanup109.sink.split.i_crit_edge, %.thread.i.cleanup109.sink.split.i_crit_edge, %if.end79.i.cleanup109.sink.split.i_crit_edge, %if.end6.i.cleanup109.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %40, %if.then93.i ], [ -5, %while.end.i.cleanup109.sink.split.i_crit_edge ], [ %call.i.i, %if.end6.i.cleanup109.sink.split.i_crit_edge ], [ %35, %.thread.i.cleanup109.sink.split.i_crit_edge ], [ -512, %if.end79.i.cleanup109.sink.split.i_crit_edge ]
  call void @_clear_bit(i32 noundef 10, ptr noundef %flags.i) #16
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i9 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %45 = ptrtoint ptr %driver_data.i9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i9, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %rtype)
  %47 = icmp ult i8 %rtype, 3
  br i1 %47, label %switch.lookup86, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup86:                                  ; preds = %sw.bb1
  %report_mutex.i13 = getelementptr inbounds %struct.hidp_session, ptr %46, i32 0, i32 27
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %report_mutex.i13, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i14 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i14, label %if.end.i21, label %switch.lookup86.return_crit_edge

switch.lookup86.return_crit_edge:                 ; preds = %switch.lookup86
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end.i21:                                       ; preds = %switch.lookup86
  %switch.offset87 = add i8 %rtype, 81
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %reportnum, ptr %buf, align 1
  %flags.i16 = getelementptr inbounds %struct.hidp_session, ptr %46, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %flags.i16) #16
  %ctrl_sock.i.i17 = getelementptr inbounds %struct.hidp_session, ptr %46, i32 0, i32 10
  %49 = ptrtoint ptr %ctrl_sock.i.i17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl_sock.i.i17, align 4
  %ctrl_transmit.i.i18 = getelementptr inbounds %struct.hidp_session, ptr %46, i32 0, i32 12
  %call.i.i19 = tail call fastcc i32 @hidp_send_message(ptr noundef %46, ptr noundef %50, ptr noundef %ctrl_transmit.i.i18, i8 noundef zeroext %switch.offset87, ptr noundef %buf, i32 noundef %len) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.i20 = icmp slt i32 %call.i.i19, 0
  br i1 %cmp.i20, label %if.end.i21.err.i_crit_edge, label %while.cond.preheader.i24

if.end.i21.err.i_crit_edge:                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %err.i

while.cond.preheader.i24:                         ; preds = %if.end.i21
  %terminate.i22 = getelementptr inbounds %struct.hidp_session, ptr %46, i32 0, i32 4
  %report_queue.i23 = getelementptr inbounds %struct.hidp_session, ptr %46, i32 0, i32 29
  %51 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags.i16, align 4
  %53 = and i32 %52, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool9.not.i49 = icmp eq i32 %53, 0
  br i1 %tobool9.not.i49, label %while.cond.preheader.i24.while.end.i35_crit_edge, label %while.cond.preheader.i24.land.rhs.i27_crit_edge

while.cond.preheader.i24.land.rhs.i27_crit_edge:  ; preds = %while.cond.preheader.i24
  br label %land.rhs.i27

while.cond.preheader.i24.while.end.i35_crit_edge: ; preds = %while.cond.preheader.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i35

land.rhs.i27:                                     ; preds = %while.cond.backedge.i.land.rhs.i27_crit_edge, %while.cond.preheader.i24.land.rhs.i27_crit_edge
  %call.i.i.i26 = call zeroext i1 @__kasan_check_read(ptr noundef %terminate.i22, i32 noundef 4) #16
  %54 = ptrtoint ptr %terminate.i22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %terminate.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool11.not.i = icmp eq i32 %55, 0
  br i1 %tobool11.not.i, label %while.body.i29, label %land.rhs.i27.while.end.i35_crit_edge

land.rhs.i27.while.end.i35_crit_edge:             ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i35

while.body.i29:                                   ; preds = %land.rhs.i27
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 357) #16
  %56 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags.i16, align 4
  %58 = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool17.not.i28 = icmp eq i32 %58, 0
  br i1 %tobool17.not.i28, label %while.body.i29.while.cond.backedge.i_crit_edge, label %lor.rhs.i31

while.body.i29.while.cond.backedge.i_crit_edge:   ; preds = %while.body.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

lor.rhs.i31:                                      ; preds = %while.body.i29
  %call.i.i120.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate.i22, i32 noundef 4) #16
  %59 = ptrtoint ptr %terminate.i22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %terminate.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool20.not.i30 = icmp eq i32 %60, 0
  br i1 %tobool20.not.i30, label %if.then33.i, label %lor.rhs.i31.while.cond.backedge.i_crit_edge

lor.rhs.i31.while.cond.backedge.i_crit_edge:      ; preds = %lor.rhs.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

if.then33.i:                                      ; preds = %lor.rhs.i31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i8) #16
  %61 = call ptr @memset(ptr %__wq_entry.i8, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i8, i32 noundef 0) #16
  %call35147.i = call i32 @prepare_to_wait_event(ptr noundef %report_queue.i23, ptr noundef nonnull %__wq_entry.i8, i32 noundef 1) #16
  %62 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags.i16, align 4
  %64 = and i32 %63, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool39.not148.i = icmp eq i32 %64, 0
  br i1 %tobool39.not148.i, label %if.then33.i.for.end.i34_crit_edge, label %if.then33.i.lor.end44.i_crit_edge

if.then33.i.lor.end44.i_crit_edge:                ; preds = %if.then33.i
  br label %lor.end44.i

if.then33.i.for.end.i34_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i34

lor.end44.thread.i:                               ; preds = %cleanup.i33
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool50.not124.i = icmp eq i32 %call67.i, 0
  %spec.select.i32 = select i1 %tobool50.not124.i, i32 1, i32 %call67.i
  br label %for.end.i34

lor.end44.i:                                      ; preds = %cleanup.i33.lor.end44.i_crit_edge, %if.then33.i.lor.end44.i_crit_edge
  %call35150.i = phi i32 [ %call35.i, %cleanup.i33.lor.end44.i_crit_edge ], [ %call35147.i, %if.then33.i.lor.end44.i_crit_edge ]
  %__ret34.0149.i = phi i32 [ %call67.i, %cleanup.i33.lor.end44.i_crit_edge ], [ 1000, %if.then33.i.lor.end44.i_crit_edge ]
  %call.i.i123.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate.i22, i32 noundef 4) #16
  %65 = ptrtoint ptr %terminate.i22 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %terminate.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool43.not.i = icmp eq i32 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret34.0149.i)
  %tobool57.not.i = icmp eq i32 %__ret34.0149.i, 0
  br i1 %tobool43.not.i, label %67, label %for.end.loopexit.split.loop.exit142.i

67:                                               ; preds = %lor.end44.i
  br i1 %tobool57.not.i, label %.for.end.i34_crit_edge, label %if.end63.i

.for.end.i34_crit_edge:                           ; preds = %67
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i34

if.end63.i:                                       ; preds = %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35150.i)
  %tobool64.not.i = icmp eq i32 %call35150.i, 0
  br i1 %tobool64.not.i, label %cleanup.i33, label %if.end63.i.if.end70.i_crit_edge

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70.i

cleanup.i33:                                      ; preds = %if.end63.i
  %call67.i = call i32 @schedule_timeout(i32 noundef %__ret34.0149.i) #16
  %call35.i = call i32 @prepare_to_wait_event(ptr noundef %report_queue.i23, ptr noundef nonnull %__wq_entry.i8, i32 noundef 1) #16
  %68 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %flags.i16, align 4
  %70 = and i32 %69, 2048
  %tobool39.not.i = icmp eq i32 %70, 0
  br i1 %tobool39.not.i, label %lor.end44.thread.i, label %cleanup.i33.lor.end44.i_crit_edge

cleanup.i33.lor.end44.i_crit_edge:                ; preds = %cleanup.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end44.i

for.end.loopexit.split.loop.exit142.i:            ; preds = %lor.end44.i
  call void @__sanitizer_cov_trace_pc() #18
  %spec.store.select90.le.i = select i1 %tobool57.not.i, i32 1, i32 %__ret34.0149.i
  br label %for.end.i34

for.end.i34:                                      ; preds = %for.end.loopexit.split.loop.exit142.i, %.for.end.i34_crit_edge, %lor.end44.thread.i, %if.then33.i.for.end.i34_crit_edge
  %__ret34.2.ph.i = phi i32 [ %spec.store.select90.le.i, %for.end.loopexit.split.loop.exit142.i ], [ 1000, %if.then33.i.for.end.i34_crit_edge ], [ %spec.select.i32, %lor.end44.thread.i ], [ 0, %.for.end.i34_crit_edge ]
  call void @finish_wait(ptr noundef %report_queue.i23, ptr noundef nonnull %__wq_entry.i8) #16
  br label %if.end70.i

if.end70.i:                                       ; preds = %for.end.i34, %if.end63.i.if.end70.i_crit_edge
  %__ret34.2130.i = phi i32 [ %__ret34.2.ph.i, %for.end.i34 ], [ %call35150.i, %if.end63.i.if.end70.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret34.2130.i)
  %cmp76.i = icmp slt i32 %__ret34.2130.i, 0
  br i1 %cmp76.i, label %if.end70.i.err.i_crit_edge, label %71

if.end70.i.err.i_crit_edge:                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err.i

71:                                               ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret34.2130.i)
  %cmp72.i = icmp eq i32 %__ret34.2130.i, 0
  br i1 %cmp72.i, label %.err.i_crit_edge, label %.while.cond.backedge.i_crit_edge

.while.cond.backedge.i_crit_edge:                 ; preds = %71
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

.err.i_crit_edge:                                 ; preds = %71
  call void @__sanitizer_cov_trace_pc() #18
  br label %err.i

while.cond.backedge.i:                            ; preds = %.while.cond.backedge.i_crit_edge, %lor.rhs.i31.while.cond.backedge.i_crit_edge, %while.body.i29.while.cond.backedge.i_crit_edge
  %72 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %flags.i16, align 4
  %74 = and i32 %73, 2048
  %tobool9.not.i = icmp eq i32 %74, 0
  br i1 %tobool9.not.i, label %while.cond.backedge.i.while.end.i35_crit_edge, label %while.cond.backedge.i.land.rhs.i27_crit_edge

while.cond.backedge.i.land.rhs.i27_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i27

while.cond.backedge.i.while.end.i35_crit_edge:    ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i35

while.end.i35:                                    ; preds = %while.cond.backedge.i.while.end.i35_crit_edge, %land.rhs.i27.while.end.i35_crit_edge, %while.cond.preheader.i24.while.end.i35_crit_edge
  %output_report_success.i = getelementptr inbounds %struct.hidp_session, ptr %46, i32 0, i32 30
  %75 = ptrtoint ptr %output_report_success.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %output_report_success.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool83.not.i = icmp eq i32 %76, 0
  %.count.i = select i1 %tobool83.not.i, i32 -5, i32 %len
  br label %err.i

err.i:                                            ; preds = %while.end.i35, %.err.i_crit_edge, %if.end70.i.err.i_crit_edge, %if.end.i21.err.i_crit_edge
  %ret.2.i = phi i32 [ %call.i.i19, %if.end.i21.err.i_crit_edge ], [ %.count.i, %while.end.i35 ], [ -5, %.err.i_crit_edge ], [ -512, %if.end70.i.err.i_crit_edge ]
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags.i16) #16
  br label %return.sink.split

return.sink.split:                                ; preds = %err.i, %cleanup109.sink.split.i
  %report_mutex.i13.sink = phi ptr [ %report_mutex.i13, %err.i ], [ %report_mutex.i, %cleanup109.sink.split.i ]
  %retval.0.ph = phi i32 [ %ret.2.i, %err.i ], [ %retval.0.ph.i, %cleanup109.sink.split.i ]
  call void @mutex_unlock(ptr noundef %report_mutex.i13.sink) #16
  br label %return

return:                                           ; preds = %return.sink.split, %switch.lookup86.return_crit_edge, %sw.bb1.return_crit_edge, %switch.lookup.return_crit_edge, %if.end.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %entry.return_crit_edge ], [ -5, %sw.bb.return_crit_edge ], [ -22, %if.end.i.return_crit_edge ], [ -512, %switch.lookup.return_crit_edge ], [ -22, %sw.bb1.return_crit_edge ], [ -512, %switch.lookup86.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_output_report(ptr nocapture noundef readonly %hid, ptr noundef %data, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %intr_sock.i = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %intr_sock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intr_sock.i, align 4
  %intr_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 13
  %call.i = tail call fastcc i32 @hidp_send_message(ptr noundef %1, ptr noundef %3, ptr noundef %intr_transmit.i, i8 noundef zeroext -94, ptr noundef %data, i32 noundef %count) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidp_connection_add(ptr noundef %req, ptr noundef %ctrl_sock, ptr noundef %intr_sock) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @l2cap_is_socket(ptr noundef %ctrl_sock) #16
  br i1 %call.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call zeroext i1 @l2cap_is_socket(ptr noundef %intr_sock) #16
  br i1 %call1.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sk.i = getelementptr inbounds %struct.socket, ptr %ctrl_sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  %chan.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan.i, align 8
  %sk2.i = getelementptr inbounds %struct.socket, ptr %intr_sock, i32 0, i32 4
  %4 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk2.i, align 16
  %chan3.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %chan3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan3.i, align 8
  %src.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 8
  %src4.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %src.i, ptr noundef dereferenceable(6) %src4.i, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %dst.i = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 6
  %dst7.i = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 6
  %bcmp43.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %dst.i, ptr noundef dereferenceable(6) %dst7.i, i32 6) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp43.i)
  %tobool9.not.i = icmp eq i32 %bcmp43.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %lor.lhs.false6.i.cleanup_crit_edge

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11.i:                                       ; preds = %lor.lhs.false6.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 1
  br i1 %cmp.not.i, label %lor.lhs.false16.i, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false16.i:                                ; preds = %if.end11.i
  %skc_state19.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state19.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state19.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp21.not.i = icmp eq i8 %11, 1
  br i1 %cmp21.not.i, label %if.end24.i, label %lor.lhs.false16.i.cleanup_crit_edge

lor.lhs.false16.i.cleanup_crit_edge:              ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end24.i:                                       ; preds = %lor.lhs.false16.i
  %call26.i = tail call fastcc ptr @hidp_session_find(ptr noundef %dst.i) #16
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end, label %if.then28.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hidp_session_put(ptr noundef nonnull %call26.i) #16
  br label %cleanup

if.end:                                           ; preds = %if.end24.i
  %flags = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 10
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %tobool1.not = icmp ult i32 %13, 4
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %14 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk.i, align 16
  %chan4 = getelementptr inbounds %struct.l2cap_pinfo, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %chan4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan4, align 8
  %lock.i = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 86
  %nesting.i = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nesting.i, i32 noundef 4) #16
  %18 = ptrtoint ptr %nesting.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %nesting.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef %19) #16
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef %lock.i) #16
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %call9 = tail call ptr @l2cap_conn_get(ptr noundef nonnull %21) #16
  tail call void @mutex_unlock(ptr noundef %lock.i) #16
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk.i, align 16
  %24 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk2.i, align 16
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16904, i32 noundef 3520, i32 noundef 3) #20
  %tobool.not.i43 = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i43, label %if.end13.out_conn_crit_edge, label %if.end.i46

if.end13.out_conn_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_conn

if.end.i46:                                       ; preds = %if.end13
  %dst = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 6
  %ref.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  %26 = ptrtoint ptr %ref.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %ref.i, align 8
  %state.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 2
  %call.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #16
  %27 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %state.i, align 4
  %state_queue.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %state_queue.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @hidp_session_new.__key) #16
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and.i = and i32 %29, 512
  %flags2.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i, ptr %flags2.i, align 4
  %bdaddr3.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 7
  %31 = call ptr @memcpy(ptr %bdaddr3.i, ptr %dst, i32 6)
  %call4.i = tail call ptr @l2cap_conn_get(ptr noundef nonnull %call9) #16
  %conn5.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %conn5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call4.i, ptr %conn5.i, align 8
  %user.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 9
  %probe.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 9, i32 1
  %33 = ptrtoint ptr %probe.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @hidp_session_probe, ptr %probe.i, align 4
  %remove.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %remove.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @hidp_session_remove, ptr %remove.i, align 8
  %35 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %user.i, ptr %user.i, align 4
  %prev.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 9, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %user.i, ptr %prev.i.i, align 32
  %ctrl_sock8.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 10
  %37 = ptrtoint ptr %ctrl_sock8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ctrl_sock, ptr %ctrl_sock8.i, align 4
  %intr_sock9.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %intr_sock9.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %intr_sock, ptr %intr_sock9.i, align 16
  %ctrl_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 12
  %lock.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %39 = ptrtoint ptr %ctrl_transmit.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ctrl_transmit.i, ptr %ctrl_transmit.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 12, i32 0, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ctrl_transmit.i, ptr %prev.i.i.i, align 8
  %qlen.i.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 12, i32 1
  %41 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %qlen.i.i.i, align 4
  %intr_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 13
  %lock.i98.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i98.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %42 = ptrtoint ptr %intr_transmit.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %intr_transmit.i, ptr %intr_transmit.i, align 4
  %prev.i.i99.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 13, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %intr_transmit.i, ptr %prev.i.i99.i, align 16
  %qlen.i.i100.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %qlen.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %qlen.i.i100.i, align 4
  %chan.i45 = getelementptr inbounds %struct.l2cap_pinfo, ptr %23, i32 0, i32 1
  %45 = ptrtoint ptr %chan.i45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan.i45, align 8
  %omtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %omtu.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %omtu.i, align 2
  %imtu.i = getelementptr inbounds %struct.l2cap_chan, ptr %46, i32 0, i32 14
  %49 = ptrtoint ptr %imtu.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %imtu.i, align 4
  %51 = tail call i16 @llvm.umin.i16(i16 %48, i16 %50) #16
  %cond.i = zext i16 %51 to i32
  %ctrl_mtu.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 14
  %52 = ptrtoint ptr %ctrl_mtu.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond.i, ptr %ctrl_mtu.i, align 4
  %chan13.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %25, i32 0, i32 1
  %53 = ptrtoint ptr %chan13.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chan13.i, align 8
  %omtu14.i = getelementptr inbounds %struct.l2cap_chan, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %omtu14.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %omtu14.i, align 2
  %imtu17.i = getelementptr inbounds %struct.l2cap_chan, ptr %54, i32 0, i32 14
  %57 = ptrtoint ptr %imtu17.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %imtu17.i, align 4
  %59 = tail call i16 @llvm.umin.i16(i16 %56, i16 %58) #16
  %cond25.i = zext i16 %59 to i32
  %intr_mtu.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 15
  %60 = ptrtoint ptr %intr_mtu.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %cond25.i, ptr %intr_mtu.i, align 8
  %idle_to.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 11
  %61 = ptrtoint ptr %idle_to.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %idle_to.i, align 4
  %idle_to26.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 16
  %63 = ptrtoint ptr %idle_to26.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %idle_to26.i, align 4
  %dev_init.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %dev_init.i, i32 noundef 0) #16
  %64 = ptrtoint ptr %dev_init.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %dev_init.i, align 16
  %lockdep_map.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @hidp_session_new.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry31.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 17, i32 1
  %65 = ptrtoint ptr %entry31.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry31.i, ptr %entry31.i, align 4
  %prev.i101.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 17, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i101.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry31.i, ptr %prev.i101.i, align 8
  %func.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 17, i32 2
  %67 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @hidp_session_dev_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 20
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @hidp_idle_timeout, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @hidp_session_new.__key.12) #16
  %report_mutex.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 27
  tail call void @__mutex_init(ptr noundef %report_mutex.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @hidp_session_new.__key.14) #16
  %report_queue.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 29
  tail call void @__init_waitqueue_head(ptr noundef %report_queue.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @hidp_session_new.__key.16) #16
  %rd_size.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 3
  %68 = ptrtoint ptr %rd_size.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %rd_size.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp.not.i.i = icmp eq i16 %69, 0
  br i1 %cmp.not.i.i, label %if.end.i46.if.end5.i.i_crit_edge, label %if.then.i.i

if.end.i46.if.end5.i.i_crit_edge:                 ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end.i46
  %rd_data.i.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 4
  %70 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rd_data.i.i.i, align 4
  %conv.i.i.i = zext i16 %69 to i32
  %call.i.i102.i = tail call ptr @memdup_user(ptr noundef %71, i32 noundef %conv.i.i.i) #16
  %rd_data1.i.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 21
  %72 = ptrtoint ptr %rd_data1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i.i102.i, ptr %rd_data1.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i102.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then.i.i.hidp_setup_hid.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.hidp_setup_hid.exit.i.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_setup_hid.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %73 = ptrtoint ptr %rd_size.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %rd_size.i.i, align 2
  %conv7.i.i.i = zext i16 %74 to i32
  %rd_size8.i.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 22
  %75 = ptrtoint ptr %rd_size8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv7.i.i.i, ptr %rd_size8.i.i.i, align 8
  %call9.i.i.i = tail call ptr @hid_allocate_device() #16
  %cmp.i75.i.i.i = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75.i.i.i, label %if.then11.i.i.i, label %if.end13.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %76 = ptrtoint ptr %rd_data1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rd_data1.i.i.i, align 4
  tail call void @kfree(ptr noundef %77) #16
  %78 = ptrtoint ptr %rd_data1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %rd_data1.i.i.i, align 4
  br label %hidp_setup_hid.exit.i.i

if.end13.i.i.i:                                   ; preds = %if.end.i.i.i
  %hid14.i.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 19
  %79 = ptrtoint ptr %hid14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call9.i.i.i, ptr %hid14.i.i.i, align 32
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 42
  %80 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call1.i.i.i.i, ptr %driver_data.i.i.i, align 8
  %bus.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 8
  %81 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 5, ptr %bus.i.i.i, align 8
  %vendor.i.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 7
  %82 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vendor.i.i.i, align 2
  %conv15.i.i.i = zext i16 %83 to i32
  %vendor16.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 10
  %84 = ptrtoint ptr %vendor16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv15.i.i.i, ptr %vendor16.i.i.i, align 4
  %product.i.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 8
  %85 = ptrtoint ptr %product.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %product.i.i.i, align 4
  %conv17.i.i.i = zext i16 %86 to i32
  %product18.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 11
  %87 = ptrtoint ptr %product18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv17.i.i.i, ptr %product18.i.i.i, align 8
  %version.i.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 9
  %88 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %version.i.i.i, align 2
  %conv19.i.i.i = zext i16 %89 to i32
  %version20.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 12
  %90 = ptrtoint ptr %version20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv19.i.i.i, ptr %version20.i.i.i, align 4
  %country.i.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 5
  %91 = ptrtoint ptr %country.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %country.i.i.i, align 4
  %conv21.i.i.i = zext i8 %92 to i32
  %country22.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 14
  %93 = ptrtoint ptr %country22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv21.i.i.i, ptr %country22.i.i.i, align 4
  %name.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 39
  %name23.i.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 12
  %call25.i.i.i = tail call i32 @strscpy(ptr noundef %name.i.i.i, ptr noundef %name23.i.i.i, i32 noundef 128) #16
  %phys.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 40
  %94 = ptrtoint ptr %ctrl_sock8.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ctrl_sock8.i, align 4
  %sk.i.i.i = getelementptr inbounds %struct.socket, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %sk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sk.i.i.i, align 16
  %chan.i.i.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %chan.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %chan.i.i.i, align 8
  %src.i.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %99, i32 0, i32 8
  %call27.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.38, ptr noundef %src.i.i.i) #16
  %uniq.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 41
  %100 = ptrtoint ptr %ctrl_sock8.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctrl_sock8.i, align 4
  %sk30.i.i.i = getelementptr inbounds %struct.socket, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %sk30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sk30.i.i.i, align 16
  %chan31.i.i.i = getelementptr inbounds %struct.l2cap_pinfo, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %chan31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chan31.i.i.i, align 8
  %dst.i.i.i = getelementptr inbounds %struct.l2cap_chan, ptr %105, i32 0, i32 6
  %call32.i.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %uniq.i.i.i, i32 noundef 64, ptr noundef nonnull @.str.38, ptr noundef %dst.i.i.i) #16
  %106 = ptrtoint ptr %conn5.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %conn5.i, align 8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %dev.i.i.i = getelementptr inbounds %struct.hci_conn, ptr %109, i32 0, i32 63
  %parent.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 18, i32 1
  %110 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %dev.i.i.i, ptr %parent.i.i.i, align 8
  %ll_driver.i.i.i = getelementptr inbounds %struct.hid_device, ptr %call9.i.i.i, i32 0, i32 20
  %111 = ptrtoint ptr %ll_driver.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @hidp_hid_driver, ptr %ll_driver.i.i.i, align 4
  %call34.i.i.i = tail call zeroext i1 @hid_ignore(ptr noundef %call9.i.i.i) #16
  br i1 %call34.i.i.i, label %if.then35.i.i.i, label %if.end13.i.i.i.if.end5.i.i_crit_edge

if.end13.i.i.i.if.end5.i.i_crit_edge:             ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i.i

if.then35.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %112 = ptrtoint ptr %hid14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hid14.i.i.i, align 32
  tail call void @hid_destroy_device(ptr noundef %113) #16
  %114 = ptrtoint ptr %hid14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %hid14.i.i.i, align 32
  br label %if.end5.i.i

hidp_setup_hid.exit.i.i:                          ; preds = %if.then11.i.i.i, %if.then.i.i.hidp_setup_hid.exit.i.i_crit_edge
  %retval.0.i.in.i.i = phi ptr [ %call9.i.i.i, %if.then11.i.i.i ], [ %call.i.i102.i, %if.then.i.i.hidp_setup_hid.exit.i.i_crit_edge ]
  %retval.0.i.i.i = ptrtoint ptr %retval.0.i.in.i.i to i32
  %115 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %retval.0.i.i.i, label %hidp_setup_hid.exit.i.i.hidp_session_new.exit_crit_edge [
    i32 0, label %hidp_setup_hid.exit.i.i.if.end5.i.i_crit_edge
    i32 -19, label %hidp_setup_hid.exit.i.i.if.end5.i.i_crit_edge62
  ]

hidp_setup_hid.exit.i.i.if.end5.i.i_crit_edge62:  ; preds = %hidp_setup_hid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i.i

hidp_setup_hid.exit.i.i.if.end5.i.i_crit_edge:    ; preds = %hidp_setup_hid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i.i

hidp_setup_hid.exit.i.i.hidp_session_new.exit_crit_edge: ; preds = %hidp_setup_hid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_session_new.exit

if.end5.i.i:                                      ; preds = %hidp_setup_hid.exit.i.i.if.end5.i.i_crit_edge, %hidp_setup_hid.exit.i.i.if.end5.i.i_crit_edge62, %if.then35.i.i.i, %if.end13.i.i.i.if.end5.i.i_crit_edge, %if.end.i46.if.end5.i.i_crit_edge
  %hid.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 19
  %116 = ptrtoint ptr %hid.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hid.i.i, align 32
  %tobool6.not.i.i = icmp eq ptr %117, null
  br i1 %tobool6.not.i.i, label %if.then7.i.i, label %if.end5.i.i.hidp_session_new.exit.thread_crit_edge

if.end5.i.i.hidp_session_new.exit.thread_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_session_new.exit.thread

if.then7.i.i:                                     ; preds = %if.end5.i.i
  %call.i22.i.i = tail call ptr @input_allocate_device() #16
  %tobool.not.i.i.i = icmp eq ptr %call.i22.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then7.i.i.hidp_session_new.exit_crit_edge, label %if.end.i26.i.i

if.then7.i.i.hidp_session_new.exit_crit_edge:     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_session_new.exit

if.end.i26.i.i:                                   ; preds = %if.then7.i.i
  %input1.i.i.i = getelementptr inbounds %struct.hidp_session, ptr %call1.i.i.i.i, i32 0, i32 18
  %118 = ptrtoint ptr %input1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i22.i.i, ptr %input1.i.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 40, i32 8
  %119 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call1.i.i.i.i, ptr %driver_data.i.i.i.i.i, align 4
  %120 = ptrtoint ptr %call.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.39, ptr %call.i22.i.i, align 8
  %id.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 3
  %121 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 5, ptr %id.i.i.i, align 4
  %vendor.i23.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 7
  %122 = ptrtoint ptr %vendor.i23.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vendor.i23.i.i, align 2
  %vendor3.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %vendor3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %vendor3.i.i.i, align 2
  %product.i24.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 8
  %125 = ptrtoint ptr %product.i24.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %product.i24.i.i, align 4
  %product5.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 3, i32 2
  %127 = ptrtoint ptr %product5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %product5.i.i.i, align 4
  %version.i25.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 9
  %128 = ptrtoint ptr %version.i25.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %version.i25.i.i, align 2
  %version7.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 3, i32 3
  %130 = ptrtoint ptr %version7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %version7.i.i.i, align 2
  %subclass.i.i.i = getelementptr inbounds %struct.hidp_connadd_req, ptr %req, i32 0, i32 6
  %131 = ptrtoint ptr %subclass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %subclass.i.i.i, align 1
  %133 = and i8 %132, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool8.not.i.i.i = icmp eq i8 %133, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i26.i.i.if.end28.i.i.i_crit_edge, label %if.then9.i.i.i

if.end.i26.i.i.if.end28.i.i.i_crit_edge:          ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i26.i.i
  %evbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %evbit.i.i.i) #16
  tail call void @_set_bit(i32 noundef 17, ptr noundef %evbit.i.i.i) #16
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit.i.i.i) #16
  %ledbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %ledbit.i.i.i) #16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %ledbit.i.i.i) #16
  tail call void @_set_bit(i32 noundef 2, ptr noundef %ledbit.i.i.i) #16
  tail call void @_set_bit(i32 noundef 3, ptr noundef %ledbit.i.i.i) #16
  tail call void @_set_bit(i32 noundef 4, ptr noundef %ledbit.i.i.i) #16
  %keybit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 6
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then9.i.i.i
  %i.079.i.i.i = phi i32 [ 0, %if.then9.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @hidp_keycode, i32 0, i32 %i.079.i.i.i
  %134 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv24.i.i.i = zext i8 %135 to i32
  tail call void @_set_bit(i32 noundef %conv24.i.i.i, ptr noundef %keybit.i.i.i) #16
  %inc.i.i.i = add nuw nsw i32 %i.079.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 256
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %keybit.i.i.i) #16
  %136 = ptrtoint ptr %subclass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %.pr.i.i.i = load i8, ptr %subclass.i.i.i, align 1
  br label %if.end28.i.i.i

if.end28.i.i.i:                                   ; preds = %for.end.i.i.i, %if.end.i26.i.i.if.end28.i.i.i_crit_edge
  %137 = phi i8 [ %.pr.i.i.i, %for.end.i.i.i ], [ %132, %if.end.i26.i.i.if.end28.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %137)
  %tobool32.not.i.i.i = icmp sgt i8 %137, -1
  br i1 %tobool32.not.i.i.i, label %if.end28.i.i.i.hidp_setup_input.exit.i.i_crit_edge, label %if.then33.i.i.i

if.end28.i.i.i.hidp_setup_input.exit.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_setup_input.exit.i.i

if.then33.i.i.i:                                  ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %evbit34.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 5
  %138 = ptrtoint ptr %evbit34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 6, ptr %evbit34.i.i.i, align 8
  %arrayidx37.i.i.i = getelementptr %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 6, i32 8
  %relbit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 7
  %139 = ptrtoint ptr %arrayidx37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2031616, ptr %arrayidx37.i.i.i, align 4
  %140 = ptrtoint ptr %relbit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 259, ptr %relbit.i.i.i, align 4
  br label %hidp_setup_input.exit.i.i

hidp_setup_input.exit.i.i:                        ; preds = %if.then33.i.i.i, %if.end28.i.i.i.hidp_setup_input.exit.i.i_crit_edge
  %141 = ptrtoint ptr %conn5.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %conn5.i, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %dev.i28.i.i = getelementptr inbounds %struct.hci_conn, ptr %144, i32 0, i32 63
  %parent.i29.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 40, i32 1
  %145 = ptrtoint ptr %parent.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %dev.i28.i.i, ptr %parent.i29.i.i, align 8
  %event.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i22.i.i, i32 0, i32 34
  %146 = ptrtoint ptr %event.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @hidp_input_event, ptr %event.i.i.i, align 4
  br label %hidp_session_new.exit.thread

hidp_session_new.exit.thread:                     ; preds = %hidp_setup_input.exit.i.i, %if.end5.i.i.hidp_session_new.exit.thread_crit_edge
  %147 = ptrtoint ptr %intr_sock9.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %intr_sock9.i, align 16
  %file.i = getelementptr inbounds %struct.socket, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %file.i, align 4
  %f_count.i.i = getelementptr inbounds %struct.file, ptr %150, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %f_count.i.i, i32 1, i32 3, i32 1) #16
  %151 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i.i, ptr %f_count.i.i, i32 1, ptr elementtype(i32) %f_count.i.i) #16, !srcloc !137
  %152 = ptrtoint ptr %ctrl_sock8.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ctrl_sock8.i, align 4
  %file51.i = getelementptr inbounds %struct.socket, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %file51.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %file51.i, align 4
  %f_count.i103.i = getelementptr inbounds %struct.file, ptr %155, i32 0, i32 6
  %call.i.i.i104.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i103.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %f_count.i103.i, i32 1, i32 3, i32 1) #16
  %156 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i103.i, ptr %f_count.i103.i, i32 1, ptr elementtype(i32) %f_count.i103.i) #16, !srcloc !137
  br label %if.end17

hidp_session_new.exit:                            ; preds = %if.then7.i.i.hidp_session_new.exit_crit_edge, %hidp_setup_hid.exit.i.i.hidp_session_new.exit_crit_edge
  %retval.0.i110.i = phi i32 [ -12, %if.then7.i.i.hidp_session_new.exit_crit_edge ], [ %retval.0.i.i.i, %hidp_setup_hid.exit.i.i.hidp_session_new.exit_crit_edge ]
  %157 = ptrtoint ptr %conn5.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %conn5.i, align 8
  tail call void @l2cap_conn_put(ptr noundef %158) #16
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i110.i)
  %tobool15.not = icmp eq i32 %retval.0.i110.i, 0
  br i1 %tobool15.not, label %hidp_session_new.exit.if.end17_crit_edge, label %hidp_session_new.exit.out_conn_crit_edge

hidp_session_new.exit.out_conn_crit_edge:         ; preds = %hidp_session_new.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_conn

hidp_session_new.exit.if.end17_crit_edge:         ; preds = %hidp_session_new.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end17:                                         ; preds = %hidp_session_new.exit.if.end17_crit_edge, %hidp_session_new.exit.thread
  %session.057 = phi ptr [ %call1.i.i.i.i, %hidp_session_new.exit.thread ], [ inttoptr (i32 -1 to ptr), %hidp_session_new.exit.if.end17_crit_edge ]
  %user = getelementptr inbounds %struct.hidp_session, ptr %session.057, i32 0, i32 9
  %call18 = tail call i32 @l2cap_register_user(ptr noundef nonnull %call9, ptr noundef %user) #16
  tail call fastcc void @hidp_session_put(ptr noundef %session.057)
  br label %out_conn

out_conn:                                         ; preds = %if.end17, %hidp_session_new.exit.out_conn_crit_edge, %if.end13.out_conn_crit_edge
  %ret.0 = phi i32 [ %retval.0.i110.i, %hidp_session_new.exit.out_conn_crit_edge ], [ %call18, %if.end17 ], [ -12, %if.end13.out_conn_crit_edge ]
  tail call void @l2cap_conn_put(ptr noundef nonnull %call9) #16
  br label %cleanup

cleanup:                                          ; preds = %out_conn, %if.end10.cleanup_crit_edge, %if.end10.thread, %if.end.cleanup_crit_edge, %if.then28.i, %lor.lhs.false16.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %lor.lhs.false6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_conn ], [ -22, %if.end.cleanup_crit_edge ], [ -77, %if.end10.cleanup_crit_edge ], [ -77, %if.end10.thread ], [ -77, %if.end11.i.cleanup_crit_edge ], [ -77, %lor.lhs.false16.i.cleanup_crit_edge ], [ -76, %if.end.i.cleanup_crit_edge ], [ -76, %lor.lhs.false6.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -17, %if.then28.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_conn_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_register_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_session_put(ptr noundef %session) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !138
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #16, !srcloc !139
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !140

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #16
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !141
  %hid.i.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 19
  %1 = ptrtoint ptr %hid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hid.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev.i.i.i = getelementptr inbounds %struct.hid_device, ptr %2, i32 0, i32 18
  br label %if.end5.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then.i
  %input.i.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 18
  %3 = ptrtoint ptr %input.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i.session_free.exit.i_crit_edge, label %input_put_device.exit.i.i.i

if.else.i.i.i.session_free.exit.i_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %session_free.exit.i

input_put_device.exit.i.i.i:                      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev1.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 40
  br label %if.end5.sink.split.i.i.i

if.end5.sink.split.i.i.i:                         ; preds = %input_put_device.exit.i.i.i, %if.then.i.i.i
  %dev1.i.sink.i.i.i = phi ptr [ %dev1.i.i.i.i, %input_put_device.exit.i.i.i ], [ %dev.i.i.i, %if.then.i.i.i ]
  tail call void @put_device(ptr noundef %dev1.i.sink.i.i.i) #16
  br label %session_free.exit.i

session_free.exit.i:                              ; preds = %if.end5.sink.split.i.i.i, %if.else.i.i.i.session_free.exit.i_crit_edge
  %rd_data.i.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 21
  %5 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rd_data.i.i.i, align 4
  tail call void @kfree(ptr noundef %6) #16
  %7 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rd_data.i.i.i, align 4
  %ctrl_transmit.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 12
  tail call void @skb_queue_purge(ptr noundef %ctrl_transmit.i.i) #16
  %intr_transmit.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 13
  tail call void @skb_queue_purge(ptr noundef %intr_transmit.i.i) #16
  %intr_sock.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 11
  %8 = ptrtoint ptr %intr_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intr_sock.i.i, align 4
  %file.i.i = getelementptr inbounds %struct.socket, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file.i.i, align 4
  tail call void @fput(ptr noundef %11) #16
  %ctrl_sock.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 10
  %12 = ptrtoint ptr %ctrl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_sock.i.i, align 4
  %file1.i.i = getelementptr inbounds %struct.socket, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %file1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file1.i.i, align 4
  tail call void @fput(ptr noundef %15) #16
  %conn.i.i = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 8
  %16 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn.i.i, align 4
  tail call void @l2cap_conn_put(ptr noundef %17) #16
  tail call void @kfree(ptr noundef %session) #16
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %session_free.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_conn_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidp_connection_del(ptr nocapture noundef readonly %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hidp_conndel_req, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %tobool.not = icmp ult i32 %1, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @hidp_session_find(ptr noundef %req)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and5 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl_sock.i = getelementptr inbounds %struct.hidp_session, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %ctrl_sock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_sock.i, align 4
  %ctrl_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %call, i32 0, i32 12
  %call.i = tail call fastcc i32 @hidp_send_message(ptr noundef nonnull %call, ptr noundef %5, ptr noundef %ctrl_transmit.i, i8 noundef zeroext 21, ptr noundef null, i32 noundef 0) #16
  br label %if.end9

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %conn = getelementptr inbounds %struct.hidp_session, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn, align 4
  %user = getelementptr inbounds %struct.hidp_session, ptr %call, i32 0, i32 9
  tail call void @l2cap_unregister_user(ptr noundef %7, ptr noundef %user) #16
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  tail call fastcc void @hidp_session_put(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hidp_session_find(ptr nocapture noundef readonly %bdaddr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @hidp_session_sem) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %session.0.in.i = phi ptr [ @hidp_session_list, %entry ], [ %session.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %session.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %session.0.i = load ptr, ptr %session.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %session.0.i, @hidp_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %bdaddr1.i = getelementptr inbounds %struct.hidp_session, ptr %session.0.i, i32 0, i32 7
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef dereferenceable(6) %bdaddr1.i, i32 6) #19
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %__hidp_session_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

__hidp_session_find.exit:                         ; preds = %for.body.i
  %tobool.not = icmp eq ptr %session.0.i, null
  br i1 %tobool.not, label %__hidp_session_find.exit.if.end_crit_edge, label %if.then

__hidp_session_find.exit.if.end_crit_edge:        ; preds = %__hidp_session_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %__hidp_session_find.exit
  %ref.i = getelementptr inbounds %struct.hidp_session, ptr %session.0.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #16, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !140

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge, %__hidp_session_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %retval.0.i5 = phi ptr [ null, %__hidp_session_find.exit.if.end_crit_edge ], [ %session.0.i, %if.else.i.i.i.i.i.if.end_crit_edge ], [ %session.0.i, %if.end15.sink.split.i.i.i.i.i ], [ null, %for.cond.i.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @hidp_session_sem) #16
  ret ptr %retval.0.i5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_unregister_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidp_get_connlist(ptr nocapture noundef %req) local_unnamed_addr #1 align 64 {
entry:
  %ci = alloca %struct.hidp_conninfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_get_connlist.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_get_connlist, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_get_connlist.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.3) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @down_read(ptr noundef nonnull @hidp_session_sem) #16
  %session.037 = load ptr, ptr @hidp_session_list, align 4
  %cmp.not38 = icmp eq ptr %session.037, @hidp_session_list
  br i1 %cmp.not38, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %ci6 = getelementptr inbounds %struct.hidp_connlist_req, ptr %req, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %session.040 = phi ptr [ %session.037, %for.body.lr.ph ], [ %session.0, %cleanup.for.body_crit_edge ]
  %n.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %ci) #16
  %0 = call ptr @memset(ptr %ci, i32 255, i32 148)
  call fastcc void @hidp_copy_session(ptr noundef %session.040, ptr noundef nonnull %ci)
  %1 = ptrtoint ptr %ci6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ci6, align 4
  call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 174) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %for.body.cleanup.thread_crit_edge, label %if.end.i.i

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end.i.i:                                       ; preds = %for.body
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 148, i32 -1226833920) #21, !srcloc !145
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup.thread_crit_edge

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ci, i32 noundef 148) #16
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ci, i32 noundef 148) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool8.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

if.end10:                                         ; preds = %copy_to_user.exit
  %inc = add nuw i32 %n.039, 1
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %5)
  %cmp11.not = icmp ult i32 %inc, %5
  br i1 %cmp11.not, label %cleanup, label %if.end10.cleanup.thread_crit_edge

if.end10.cleanup.thread_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end10.cleanup.thread_crit_edge, %copy_to_user.exit.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %n.1.ph = phi i32 [ %inc, %if.end10.cleanup.thread_crit_edge ], [ %n.039, %copy_to_user.exit.cleanup.thread_crit_edge ], [ %n.039, %for.body.cleanup.thread_crit_edge ], [ %n.039, %if.end.i.i.cleanup.thread_crit_edge ]
  %err.1.ph = phi i32 [ 0, %if.end10.cleanup.thread_crit_edge ], [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ], [ -14, %for.body.cleanup.thread_crit_edge ], [ -14, %if.end.i.i.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %ci) #16
  br label %for.end

cleanup:                                          ; preds = %if.end10
  %6 = ptrtoint ptr %ci6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci6, align 4
  %incdec.ptr = getelementptr %struct.hidp_conninfo, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %ci6, align 4
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %ci) #16
  %8 = ptrtoint ptr %session.040 to i32
  call void @__asan_load4_noabort(i32 %8)
  %session.0 = load ptr, ptr %session.040, align 4
  %cmp.not = icmp eq ptr %session.0, @hidp_session_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %do.end.for.end_crit_edge
  %n.2 = phi i32 [ %n.1.ph, %cleanup.thread ], [ 0, %do.end.for.end_crit_edge ], [ %inc, %cleanup.for.end_crit_edge ]
  %err.2 = phi i32 [ %err.1.ph, %cleanup.thread ], [ 0, %do.end.for.end_crit_edge ], [ 0, %cleanup.for.end_crit_edge ]
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %n.2, ptr %req, align 4
  call void @up_read(ptr noundef nonnull @hidp_session_sem) #16
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_copy_session(ptr nocapture noundef readonly %session, ptr noundef %ci) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %ci, i32 0, i32 148)
  %bdaddr1 = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 7
  %1 = call ptr @memcpy(ptr %ci, ptr %bdaddr1, i32 6)
  %state = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %state, align 4
  %input = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 18
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  %vendor = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vendor, align 2
  %vendor4 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 3
  %7 = ptrtoint ptr %vendor4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vendor4, align 2
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %9, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %product, align 4
  %product7 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 4
  %12 = ptrtoint ptr %product7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %product7, align 4
  %13 = load ptr, ptr %input, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %version, align 2
  %version10 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 5
  %16 = ptrtoint ptr %version10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %version10, align 2
  %17 = load ptr, ptr %input, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %tobool12.not = icmp eq ptr %19, null
  %name17 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 6
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @strlcpy(ptr noundef %name17, ptr noundef nonnull %19, i32 noundef 128) #16
  br label %if.end41

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 @strlcpy(ptr noundef %name17, ptr noundef nonnull @.str.44, i32 noundef 128) #16
  br label %if.end41

if.else20:                                        ; preds = %entry
  %hid = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 19
  %20 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hid, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %if.else20.if.end41_crit_edge, label %if.then22

if.else20.if.end41_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #18
  %vendor24 = getelementptr inbounds %struct.hid_device, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %vendor24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vendor24, align 4
  %conv = trunc i32 %23 to i16
  %vendor25 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 3
  %24 = ptrtoint ptr %vendor25 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv, ptr %vendor25, align 2
  %25 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hid, align 4
  %product27 = getelementptr inbounds %struct.hid_device, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %product27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %product27, align 8
  %conv28 = trunc i32 %28 to i16
  %product29 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 4
  %29 = ptrtoint ptr %product29 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv28, ptr %product29, align 4
  %30 = load ptr, ptr %hid, align 4
  %version31 = getelementptr inbounds %struct.hid_device, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %version31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %version31, align 4
  %conv32 = trunc i32 %32 to i16
  %version33 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 5
  %33 = ptrtoint ptr %version33 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv32, ptr %version33, align 2
  %name34 = getelementptr inbounds %struct.hidp_conninfo, ptr %ci, i32 0, i32 6
  %34 = load ptr, ptr %hid, align 4
  %name37 = getelementptr inbounds %struct.hid_device, ptr %34, i32 0, i32 39
  %call39 = tail call i32 @strlcpy(ptr noundef %name34, ptr noundef %name37, i32 noundef 128) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then22, %if.else20.if.end41_crit_edge, %if.else, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hidp_get_conninfo(ptr noundef %ci) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @hidp_session_find(ptr noundef %ci)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hidp_copy_session(ptr noundef nonnull %call, ptr noundef %ci)
  tail call fastcc void @hidp_session_put(ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cond = phi i32 [ 0, %if.then ], [ -2, %entry.if.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hidp_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @hidp_cleanup_sockets() #22
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @hidp_cleanup_sockets() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.5) #16
  %call = tail call i32 @hidp_init_sockets() #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_parse_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidp_send_message(ptr noundef %session, ptr nocapture noundef readonly %sock, ptr noundef %transmit, i8 noundef zeroext %hdr, ptr noundef %data, i32 noundef %size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_send_message.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_send_message, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_send_message.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.7, ptr noundef %session, ptr noundef %data, i32 noundef %size) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %terminate = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %terminate, i32 noundef 4) #16
  %2 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %terminate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %add = add i32 %size, 1
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #16
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.8) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i29 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #16
  %4 = ptrtoint ptr %call.i29 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %hdr, ptr %call.i29, align 1
  %tobool12.not = icmp ne ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp sgt i32 %size, 0
  %or.cond = and i1 %tobool12.not, %cmp
  br i1 %or.cond, label %if.then13, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %call.i30 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %size) #16
  %5 = call ptr @memcpy(ptr %call.i30, ptr %data, i32 %size)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %ret.0 = phi i32 [ %size, %if.then13 ], [ 0, %if.end11.if.end15_crit_edge ]
  tail call void @skb_queue_tail(ptr noundef %transmit, ptr noundef nonnull %call.i) #16
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %6, align 8
  tail call void @__wake_up(ptr noundef %8, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end15 ], [ -12, %if.then10 ], [ -5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @l2cap_is_socket(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_session_probe(ptr nocapture noundef readnone %conn, ptr noundef %user) #1 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %user, i32 -92
  tail call void @down_write(ptr noundef nonnull @hidp_session_sem) #16
  %bdaddr = getelementptr i8, ptr %user, i32 -12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %session.0.in.i = phi ptr [ @hidp_session_list, %entry ], [ %session.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %session.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %session.0.i = load ptr, ptr %session.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %session.0.i, @hidp_session_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %bdaddr1.i = getelementptr inbounds %struct.hidp_session, ptr %session.0.i, i32 0, i32 7
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef dereferenceable(6) %bdaddr1.i, i32 6) #19
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %__hidp_session_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

__hidp_session_find.exit:                         ; preds = %for.body.i
  %tobool.not = icmp eq ptr %session.0.i, null
  br i1 %tobool.not, label %__hidp_session_find.exit.if.end_crit_edge, label %__hidp_session_find.exit.out_unlock_crit_edge

__hidp_session_find.exit.out_unlock_crit_edge:    ; preds = %__hidp_session_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

__hidp_session_find.exit.if.end_crit_edge:        ; preds = %__hidp_session_find.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %__hidp_session_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %input = getelementptr i8, ptr %user, i32 192
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %input, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %hid.i = getelementptr i8, ptr %user, i32 196
  %3 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hid.i, align 4
  %tobool.not.i33 = icmp eq ptr %4, null
  br i1 %tobool.not.i33, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  %call.i = tail call i32 @hid_add_device(ptr noundef nonnull %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.out_unlock_crit_edge

if.then.i.out_unlock_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hid.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %6, i32 0, i32 18
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.then2
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input, align 4
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %if.else.i.if.end7_crit_edge, label %if.then7.i

if.else.i.if.end7_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then7.i:                                       ; preds = %if.else.i
  %call9.i = tail call i32 @input_register_device(ptr noundef nonnull %8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then7.i.out_unlock_crit_edge

if.then7.i.out_unlock_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end12.i:                                       ; preds = %if.then7.i
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end12.i.if.end7_crit_edge, label %cond.true.i.i

if.end12.i.if.end7_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

cond.true.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev1.i.i = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cond.true.i.i, %if.end.i
  %dev1.i.sink.i = phi ptr [ %dev1.i.i, %cond.true.i.i ], [ %dev.i, %if.end.i ]
  %call.i.i34 = tail call ptr @get_device(ptr noundef %dev1.i.sink.i) #16
  br label %if.end7

if.end7:                                          ; preds = %cleanup.sink.split.i, %if.end12.i.if.end7_crit_edge, %if.else.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %hid.i36 = getelementptr i8, ptr %user, i32 196
  %11 = ptrtoint ptr %hid.i36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hid.i36, align 4
  %tobool.not.i37 = icmp eq ptr %12, null
  br i1 %tobool.not.i37, label %if.else.i40, label %if.then.i38

if.then.i38:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %vendor2.i = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %vendor2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vendor2.i, align 4
  %product4.i = getelementptr inbounds %struct.hid_device, ptr %12, i32 0, i32 11
  %15 = ptrtoint ptr %product4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %product4.i, align 8
  br label %if.end14.i

if.else.i40:                                      ; preds = %if.end7
  %17 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input, align 4
  %tobool5.not.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i, label %if.else.i40.if.end14.i_crit_edge, label %if.then6.i

if.else.i40.if.end14.i_crit_edge:                 ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.then6.i:                                       ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_pc() #18
  %vendor8.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %vendor8.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vendor8.i, align 2
  %conv.i = zext i16 %20 to i32
  %product11.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %product11.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %product11.i, align 4
  %conv12.i = zext i16 %22 to i32
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then6.i, %if.else.i40.if.end14.i_crit_edge, %if.then.i38
  %product.0.i = phi i32 [ %16, %if.then.i38 ], [ %conv12.i, %if.then6.i ], [ 0, %if.else.i40.if.end14.i_crit_edge ]
  %vendor.0.i = phi i32 [ %14, %if.then.i38 ], [ %conv.i, %if.then6.i ], [ 0, %if.else.i40.if.end14.i_crit_edge ]
  %call.i41 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @hidp_session_thread, ptr noundef %add.ptr, i32 noundef -1, ptr noundef nonnull @.str.18, i32 noundef %vendor.0.i, i32 noundef %product.0.i) #16
  %cmp.i.i = icmp ugt ptr %call.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %hidp_session_start_sync.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end14.i
  %call17.i = tail call i32 @wake_up_process(ptr noundef %call.i41) #16
  %task.i = getelementptr i8, ptr %user, i32 -20
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i41, ptr %task.i, align 4
  %state.i = getelementptr i8, ptr %user, i32 -80
  %call.i.i76.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #16
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp77.i = icmp slt i32 %25, 1
  br i1 %cmp77.i, label %do.body27.lr.ph.i, label %if.end18.i.if.end11_crit_edge

if.end18.i.if.end11_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.body27.lr.ph.i:                                ; preds = %if.end18.i
  %state_queue.i = getelementptr i8, ptr %user, i32 -76
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.end47.i.do.body27.i_crit_edge, %do.body27.lr.ph.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1067) #16
  %call.i.i67.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #16
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp33.i = icmp sgt i32 %27, 0
  br i1 %cmp33.i, label %do.body27.i.do.end47.i_crit_edge, label %if.end36.i

do.body27.i.do.end47.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47.i

if.end36.i:                                       ; preds = %do.body27.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  %28 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #16
  %call3773.i = call i32 @prepare_to_wait_event(ptr noundef %state_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #16
  %call.i.i6874.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #16
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4075.i = icmp sgt i32 %30, 0
  br i1 %cmp4075.i, label %if.end36.i.for.end.i_crit_edge, label %if.end36.i.cleanup.i_crit_edge

if.end36.i.cleanup.i_crit_edge:                   ; preds = %if.end36.i
  br label %cleanup.i

if.end36.i.for.end.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end36.i.cleanup.i_crit_edge
  call void @schedule() #16
  %call37.i = call i32 @prepare_to_wait_event(ptr noundef %state_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #16
  %call.i.i68.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #16
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i, align 4
  %cmp40.i = icmp sgt i32 %32, 0
  br i1 %cmp40.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end36.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %state_queue.i, ptr noundef nonnull %__wq_entry.i) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #16
  br label %do.end47.i

do.end47.i:                                       ; preds = %for.end.i, %do.body27.i.do.end47.i_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #16
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i, align 4
  %cmp.i = icmp slt i32 %34, 1
  br i1 %cmp.i, label %do.end47.i.do.body27.i_crit_edge, label %do.end47.i.if.end11_crit_edge

do.end47.i.if.end11_crit_edge:                    ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end47.i.do.body27.i_crit_edge:                 ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body27.i

hidp_session_start_sync.exit:                     ; preds = %if.end14.i
  %task70.i = getelementptr i8, ptr %user, i32 -20
  %35 = ptrtoint ptr %task70.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i41, ptr %task70.i, align 4
  %36 = ptrtoint ptr %call.i41 to i32
  %37 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input, align 4
  %tobool18.not = icmp eq ptr %38, null
  br i1 %tobool18.not, label %hidp_session_start_sync.exit.out_unlock_crit_edge, label %if.then19

hidp_session_start_sync.exit.out_unlock_crit_edge: ; preds = %hidp_session_start_sync.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end11:                                         ; preds = %do.end47.i.if.end11_crit_edge, %if.end18.i.if.end11_crit_edge
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input, align 4
  %tobool13.not = icmp eq ptr %40, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #16
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 1, ptr elementtype(i32) %state.i) #16, !srcloc !137
  br label %if.end16

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %dev_init = getelementptr i8, ptr %user, i32 148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i43 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %dev_init) #16
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %ref.i = getelementptr i8, ptr %user, i32 -84
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #16, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end16
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %44 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %.not.i.i.i.i.i = icmp sgt i32 %44, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.hidp_session_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !140

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.hidp_session_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_session_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end16.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #16
  br label %hidp_session_get.exit

hidp_session_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.hidp_session_get.exit_crit_edge
  %45 = load ptr, ptr @hidp_session_list, align 4
  %call.i.i44 = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef nonnull @hidp_session_list, ptr noundef %45) #16
  br i1 %call.i.i44, label %if.end.i.i, label %hidp_session_get.exit.out_unlock_crit_edge

hidp_session_get.exit.out_unlock_crit_edge:       ; preds = %hidp_session_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end.i.i:                                       ; preds = %hidp_session_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr, ptr %prev1.i.i, align 4
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %user, i32 -88
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @hidp_session_list, ptr %prev3.i.i, align 4
  store volatile ptr %add.ptr, ptr @hidp_session_list, align 4
  br label %out_unlock

if.then19:                                        ; preds = %hidp_session_start_sync.exit
  %49 = ptrtoint ptr %hid.i36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hid.i36, align 4
  %tobool.not.i46 = icmp eq ptr %50, null
  br i1 %tobool.not.i46, label %if.else.i50, label %if.then.i47

if.then.i47:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @hid_destroy_device(ptr noundef nonnull %50) #16
  br label %out_unlock

if.else.i50:                                      ; preds = %if.then19
  %51 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input, align 4
  %tobool2.not.i49 = icmp eq ptr %52, null
  br i1 %tobool2.not.i49, label %if.else.i50.out_unlock_crit_edge, label %if.then3.i

if.else.i50.out_unlock_crit_edge:                 ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.then3.i:                                       ; preds = %if.else.i50
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @input_unregister_device(ptr noundef nonnull %52) #16
  br label %out_unlock

out_unlock:                                       ; preds = %if.then3.i, %if.else.i50.out_unlock_crit_edge, %if.then.i47, %if.end.i.i, %hidp_session_get.exit.out_unlock_crit_edge, %hidp_session_start_sync.exit.out_unlock_crit_edge, %if.then7.i.out_unlock_crit_edge, %if.then.i.out_unlock_crit_edge, %__hidp_session_find.exit.out_unlock_crit_edge
  %ret.0 = phi i32 [ %36, %hidp_session_start_sync.exit.out_unlock_crit_edge ], [ -17, %__hidp_session_find.exit.out_unlock_crit_edge ], [ %call.i, %if.then.i.out_unlock_crit_edge ], [ %call9.i, %if.then7.i.out_unlock_crit_edge ], [ 0, %hidp_session_get.exit.out_unlock_crit_edge ], [ 0, %if.end.i.i ], [ %36, %if.then.i47 ], [ %36, %if.else.i50.out_unlock_crit_edge ], [ %36, %if.then3.i ]
  call void @up_write(ptr noundef nonnull @hidp_session_sem) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidp_session_remove(ptr nocapture noundef readnone %conn, ptr noundef %user) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %user, i32 -92
  tail call void @down_write(ptr noundef nonnull @hidp_session_sem) #16
  %terminate.i = getelementptr i8, ptr %user, i32 -24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %terminate.i, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate.i, ptr %terminate.i, i32 1, ptr elementtype(i32) %terminate.i) #16, !srcloc !137
  tail call void @__wake_up(ptr noundef nonnull @hidp_session_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %dev_init = getelementptr i8, ptr %user, i32 148
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %dev_init) #16
  %input = getelementptr i8, ptr %user, i32 192
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr i8, ptr %user, i32 -80
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #16
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %hid.i = getelementptr i8, ptr %user, i32 196
  %5 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hid.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @hid_destroy_device(ptr noundef nonnull %6) #16
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input, align 4
  %tobool2.not.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i, label %if.else.i.if.end_crit_edge, label %if.then3.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @input_unregister_device(ptr noundef nonnull %8) #16
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.else.i.if.end_crit_edge, %if.then.i, %lor.lhs.false.if.end_crit_edge
  %call.i.i8 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #16
  br i1 %call.i.i8, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr i8, ptr %user, i32 -88
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %user, i32 -88
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @up_write(ptr noundef nonnull @hidp_session_sem) #16
  tail call fastcc void @hidp_session_put(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidp_session_dev_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hid.i = getelementptr i8, ptr %work, i32 48
  %0 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hid.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @hid_add_device(ptr noundef nonnull %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %hid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hid.i, align 4
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 18
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %entry
  %input.i = getelementptr i8, ptr %work, i32 44
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input.i, align 4
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.else.i.if.then_crit_edge, label %if.then7.i

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then7.i:                                       ; preds = %if.else.i
  %call9.i = tail call i32 @input_register_device(ptr noundef nonnull %5) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then7.i.if.else_crit_edge

if.then7.i.if.else_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.end12.i:                                       ; preds = %if.then7.i
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end12.i.if.then_crit_edge, label %cond.true.i.i

if.end12.i.if.then_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

cond.true.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #18
  %dev1.i.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cond.true.i.i, %if.end.i
  %dev1.i.sink.i = phi ptr [ %dev1.i.i, %cond.true.i.i ], [ %dev.i, %if.end.i ]
  %call.i.i3 = tail call ptr @get_device(ptr noundef %dev1.i.sink.i) #16
  br label %if.then

if.then:                                          ; preds = %cleanup.sink.split.i, %if.end12.i.if.then_crit_edge, %if.else.i.if.then_crit_edge
  %state = getelementptr i8, ptr %work, i32 -228
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 1, ptr elementtype(i32) %state) #16, !srcloc !137
  br label %if.end

if.else:                                          ; preds = %if.then7.i.if.else_crit_edge, %if.then.i.if.else_crit_edge
  %terminate.i = getelementptr i8, ptr %work, i32 -172
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %terminate.i, i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate.i, ptr %terminate.i, i32 1, ptr elementtype(i32) %terminate.i) #16, !srcloc !137
  tail call void @__wake_up(ptr noundef nonnull @hidp_session_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidp_idle_timeout(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_sock = getelementptr i8, ptr %t, i32 -180
  %0 = ptrtoint ptr %intr_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %sk_err = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 51
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 49, ptr %sk_err, align 4
  %ctrl_sock = getelementptr i8, ptr %t, i32 -184
  %5 = ptrtoint ptr %ctrl_sock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_sock, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk1, align 16
  %sk_err2 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 51
  %9 = ptrtoint ptr %sk_err2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 49, ptr %sk_err2, align 4
  %10 = load ptr, ptr %intr_sock, align 4
  %sk4 = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk4, align 16
  %13 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 17
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 8
  tail call void @__wake_up(ptr noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %16 = ptrtoint ptr %ctrl_sock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_sock, align 4
  %sk6 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %sk6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk6, align 16
  %20 = getelementptr inbounds %struct.sock, ptr %19, i32 0, i32 17
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %20, align 8
  tail call void @__wake_up(ptr noundef %22, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %terminate.i = getelementptr i8, ptr %t, i32 -224
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %terminate.i, i32 1, i32 3, i32 1) #16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate.i, ptr %terminate.i, i32 1, ptr elementtype(i32) %terminate.i) #16, !srcloc !137
  tail call void @__wake_up(ptr noundef nonnull @hidp_session_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_session_get(ptr noundef %session) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #16, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !140

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #16
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_add_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_session_thread(ptr noundef %arg) #8 align 64 {
entry:
  %ctrl_wait = alloca %struct.wait_queue_entry, align 4
  %intr_wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctrl_wait) #16
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %ctrl_wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %ctrl_wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %ctrl_wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %ctrl_wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %ctrl_wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ctrl_wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hidp_session_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %intr_wait) #16
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %intr_wait, i32 0, i32 1
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %intr_wait, i32 0, i32 2
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %intr_wait, i32 0, i32 3
  %16 = getelementptr inbounds %struct.wait_queue_entry, ptr %intr_wait, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %intr_wait to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %intr_wait, align 4
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %13, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @hidp_session_wake_function, ptr %14, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %15, ptr %15, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_session_thread.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_session_thread, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_session_thread.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.20, ptr noundef %arg) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call fastcc void @hidp_session_get(ptr noundef %arg)
  call void @__module_get(ptr noundef null) #16
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  call void @set_user_nice(ptr noundef %25, i32 noundef -15) #16
  call fastcc void @hidp_set_timer(ptr noundef %arg)
  %ctrl_sock = getelementptr inbounds %struct.hidp_session, ptr %arg, i32 0, i32 10
  %26 = ptrtoint ptr %ctrl_sock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk, align 16
  %30 = getelementptr inbounds %struct.sock, ptr %29, i32 0, i32 17
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %30, align 8
  call void @add_wait_queue(ptr noundef %32, ptr noundef nonnull %ctrl_wait) #16
  %intr_sock = getelementptr inbounds %struct.hidp_session, ptr %arg, i32 0, i32 11
  %33 = ptrtoint ptr %intr_sock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intr_sock, align 4
  %sk20 = getelementptr inbounds %struct.socket, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %sk20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk20, align 16
  %37 = getelementptr inbounds %struct.sock, ptr %36, i32 0, i32 17
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %37, align 8
  call void @add_wait_queue(ptr noundef %39, ptr noundef nonnull %intr_wait) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !146
  %state = getelementptr inbounds %struct.hidp_session, ptr %arg, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #16
  %40 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 1, ptr elementtype(i32) %state) #16, !srcloc !137
  %state_queue = getelementptr inbounds %struct.hidp_session, ptr %arg, i32 0, i32 3
  call void @__wake_up(ptr noundef %state_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  call fastcc void @hidp_session_run(ptr noundef %arg)
  %41 = ptrtoint ptr %intr_sock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intr_sock, align 4
  %sk29 = getelementptr inbounds %struct.socket, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %sk29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk29, align 16
  %45 = getelementptr inbounds %struct.sock, ptr %44, i32 0, i32 17
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %45, align 8
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %intr_wait) #16
  %48 = ptrtoint ptr %ctrl_sock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl_sock, align 4
  %sk32 = getelementptr inbounds %struct.socket, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %sk32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk32, align 16
  %52 = getelementptr inbounds %struct.sock, ptr %51, i32 0, i32 17
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %52, align 8
  call void @remove_wait_queue(ptr noundef %54, ptr noundef nonnull %ctrl_wait) #16
  %report_queue = getelementptr inbounds %struct.hidp_session, ptr %arg, i32 0, i32 29
  call void @__wake_up(ptr noundef %report_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  call fastcc void @hidp_del_timer(ptr noundef %arg)
  %conn = getelementptr inbounds %struct.hidp_session, ptr %arg, i32 0, i32 8
  %55 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %conn, align 4
  %user = getelementptr inbounds %struct.hidp_session, ptr %arg, i32 0, i32 9
  call void @l2cap_unregister_user(ptr noundef %56, ptr noundef %user) #16
  call fastcc void @hidp_session_put(ptr noundef %arg)
  call void @__asan_handle_no_return()
  call void @__module_put_and_kthread_exit(ptr noundef null, i32 noundef 0) #23
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_session_wake_function(ptr nocapture noundef readnone %wait, i32 noundef %mode, i32 noundef %sync, ptr nocapture noundef readnone %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__wake_up(ptr noundef nonnull @hidp_session_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_set_timer(ptr noundef %session) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_to = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 16
  %0 = ptrtoint ptr %idle_to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle_to, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %timer = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %mul = mul i32 %1, 100
  %add = add i32 %2, %mul
  %call = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_session_run(ptr noundef %session) unnamed_addr #1 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_sock = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 10
  %0 = ptrtoint ptr %ctrl_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %intr_sock = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 11
  %4 = ptrtoint ptr %intr_sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr_sock, align 4
  %sk1 = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #16
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %wait, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !127) #16
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @woken_wake_function, ptr %9, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %10, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %10, ptr %11, align 4
  call void @add_wait_queue(ptr noundef nonnull @hidp_session_wq, ptr noundef nonnull %wait) #16
  %terminate = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 4
  %call.i.i87 = call zeroext i1 @__kasan_check_read(ptr noundef %terminate, i32 noundef 4) #16
  %21 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %terminate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not88 = icmp eq i32 %22, 0
  br i1 %tobool.not88, label %if.end.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %skc_state8 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 8
  %intr_transmit = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 13
  %sk_receive_queue22 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 8
  %ctrl_transmit = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 12
  br label %if.end

if.end:                                           ; preds = %while.end31.if.end_crit_edge, %if.end.lr.ph
  %23 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.not = icmp eq i8 %24, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end
  %25 = ptrtoint ptr %skc_state8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load volatile i8, ptr %skc_state8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp10.not = icmp eq i8 %26, 1
  br i1 %cmp10.not, label %while.cond.preheader, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1479 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #16
  %tobool15.not80 = icmp eq ptr %call1479, null
  br i1 %tobool15.not80, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call1481 = phi ptr [ %call14, %if.end19.while.body_crit_edge ], [ %call1479, %while.cond.preheader.while.body_crit_edge ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call1481, i32 0, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  call void %28(ptr noundef nonnull %call1481) #16
  %29 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %destructor.i, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %call1481, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %30, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %while.body
  %32 = getelementptr inbounds %struct.sk_buff, ptr %call1481, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool3.not.i = icmp eq ptr %34, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !140

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #16, !srcloc !147
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1481, i32 0, i32 7
  %35 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not.i = icmp eq i32 %36, 0
  br i1 %tobool.i.not.i, label %skb_orphan.exit.if.then18_crit_edge, label %cond.true.i

skb_orphan.exit.if.then18_crit_edge:              ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

cond.true.i:                                      ; preds = %skb_orphan.exit
  %call.i.i56 = call ptr @__pskb_pull_tail(ptr noundef nonnull %call1481, i32 noundef %36) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i56, null
  br i1 %tobool.not.i.i, label %if.else, label %cond.true.i.if.then18_crit_edge

cond.true.i.if.then18_crit_edge:                  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then18

if.then18:                                        ; preds = %cond.true.i.if.then18_crit_edge, %skb_orphan.exit.if.then18_crit_edge
  call fastcc void @hidp_recv_intr_frame(ptr noundef %session, ptr noundef nonnull %call1481)
  br label %if.end19

if.else:                                          ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call1481, i32 noundef 0) #16
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  %call14 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue) #16
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %37 = ptrtoint ptr %intr_sock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intr_sock, align 4
  call fastcc void @hidp_process_transmit(ptr noundef %session, ptr noundef %intr_transmit, ptr noundef %38)
  %call2383 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue22) #16
  %tobool24.not84 = icmp eq ptr %call2383, null
  br i1 %tobool24.not84, label %while.end.while.end31_crit_edge, label %while.end.while.body25_crit_edge

while.end.while.body25_crit_edge:                 ; preds = %while.end
  br label %while.body25

while.end.while.end31_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end31

while.body25:                                     ; preds = %if.end30.while.body25_crit_edge, %while.end.while.body25_crit_edge
  %call2385 = phi ptr [ %call23, %if.end30.while.body25_crit_edge ], [ %call2383, %while.end.while.body25_crit_edge ]
  %destructor.i57 = getelementptr inbounds %struct.sk_buff, ptr %call2385, i32 0, i32 4, i32 0, i32 1
  %39 = ptrtoint ptr %destructor.i57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %destructor.i57, align 4
  %tobool.not.i58 = icmp eq ptr %40, null
  br i1 %tobool.not.i58, label %do.body.i61, label %if.then.i59

if.then.i59:                                      ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #18
  call void %40(ptr noundef nonnull %call2385) #16
  %41 = ptrtoint ptr %destructor.i57 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %destructor.i57, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %call2385, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %42, align 4
  br label %skb_orphan.exit63

do.body.i61:                                      ; preds = %while.body25
  %44 = getelementptr inbounds %struct.sk_buff, ptr %call2385, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %tobool3.not.i60 = icmp eq ptr %46, null
  br i1 %tobool3.not.i60, label %do.body.i61.skb_orphan.exit63_crit_edge, label %do.body7.i62, !prof !140

do.body.i61.skb_orphan.exit63_crit_edge:          ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_orphan.exit63

do.body7.i62:                                     ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #16, !srcloc !147
  unreachable

skb_orphan.exit63:                                ; preds = %do.body.i61.skb_orphan.exit63_crit_edge, %if.then.i59
  %data_len.i.i64 = getelementptr inbounds %struct.sk_buff, ptr %call2385, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i65 = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i65, label %skb_orphan.exit63.if.then28_crit_edge, label %cond.true.i69

skb_orphan.exit63.if.then28_crit_edge:            ; preds = %skb_orphan.exit63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

cond.true.i69:                                    ; preds = %skb_orphan.exit63
  %call.i.i66 = call ptr @__pskb_pull_tail(ptr noundef nonnull %call2385, i32 noundef %48) #16
  %tobool.not.i.i67 = icmp eq ptr %call.i.i66, null
  br i1 %tobool.not.i.i67, label %if.else29, label %cond.true.i69.if.then28_crit_edge

cond.true.i69.if.then28_crit_edge:                ; preds = %cond.true.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

if.then28:                                        ; preds = %cond.true.i69.if.then28_crit_edge, %skb_orphan.exit63.if.then28_crit_edge
  call fastcc void @hidp_recv_ctrl_frame(ptr noundef %session, ptr noundef nonnull %call2385)
  br label %if.end30

if.else29:                                        ; preds = %cond.true.i69
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call2385, i32 noundef 0) #16
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  %call23 = call ptr @skb_dequeue(ptr noundef %sk_receive_queue22) #16
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end30.while.end31_crit_edge, label %if.end30.while.body25_crit_edge

if.end30.while.body25_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body25

if.end30.while.end31_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end31

while.end31:                                      ; preds = %if.end30.while.end31_crit_edge, %while.end.while.end31_crit_edge
  %49 = ptrtoint ptr %ctrl_sock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ctrl_sock, align 4
  call fastcc void @hidp_process_transmit(ptr noundef %session, ptr noundef %ctrl_transmit, ptr noundef %50)
  %call33 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef 2147483647) #16
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %terminate, i32 noundef 4) #16
  %51 = ptrtoint ptr %terminate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %terminate, align 4
  %tobool.not = icmp eq i32 %52, 0
  br i1 %tobool.not, label %while.end31.if.end_crit_edge, label %while.end31.for.end_crit_edge

while.end31.for.end_crit_edge:                    ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

while.end31.if.end_crit_edge:                     ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.end:                                          ; preds = %while.end31.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @remove_wait_queue(ptr noundef nonnull @hidp_session_wq, ptr noundef nonnull %wait) #16
  %call.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef %terminate, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %terminate, i32 1, i32 3, i32 1) #16
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate, ptr %terminate, i32 1, ptr elementtype(i32) %terminate) #16, !srcloc !137
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_del_timer(ptr noundef %session) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_to = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 16
  %0 = ptrtoint ptr %idle_to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle_to, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %timer = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 20
  %call = tail call i32 @del_timer(ptr noundef %timer) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__module_put_and_kthread_exit(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_recv_intr_frame(ptr noundef %session, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_recv_intr_frame.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_recv_intr_frame, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_recv_intr_frame.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.23, ptr noundef %session, ptr noundef %skb, i32 noundef %1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #16
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %5)
  %cmp = icmp eq i8 %5, -95
  br i1 %cmp, label %if.then5, label %do.body31

if.then5:                                         ; preds = %do.end
  %idle_to.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 16
  %6 = ptrtoint ptr %idle_to.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idle_to.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.then5.hidp_set_timer.exit_crit_edge, label %if.then.i

if.then5.hidp_set_timer.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_set_timer.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %timer.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %7, 100
  %add.i = add i32 %8, %mul.i
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #16
  br label %hidp_set_timer.exit

hidp_set_timer.exit:                              ; preds = %if.then.i, %if.then5.hidp_set_timer.exit_crit_edge
  %input = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 18
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %hidp_set_timer.exit.if.end8_crit_edge, label %if.then7

hidp_set_timer.exit.if.end8_crit_edge:            ; preds = %hidp_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %hidp_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hidp_input_report(ptr noundef %session, ptr noundef %skb)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %hidp_set_timer.exit.if.end8_crit_edge
  %hid = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 19
  %11 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hid, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end8.if.end48_crit_edge, label %if.then10

if.end8.if.end48_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len12, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 16384) #16
  %input_buf.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 31
  %18 = call ptr @memcpy(ptr %input_buf.i, ptr %14, i32 %17)
  %call.i69 = tail call i32 @hid_input_report(ptr noundef nonnull %12, i32 noundef 0, ptr noundef %input_buf.i, i32 noundef %17, i32 noundef 1) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_recv_intr_frame.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_recv_intr_frame, %if.then25)) #16
          to label %if.end48 [label %if.then25], !srcloc !144

if.then25:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len12, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_recv_intr_frame.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.24, i32 noundef %20) #16
  br label %if.end48

do.body31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_recv_intr_frame.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_recv_intr_frame, %if.then43)) #16
          to label %if.end48 [label %if.then43], !srcloc !144

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_recv_intr_frame.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.25, i32 noundef %conv) #16
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %do.body31, %if.then25, %if.then10, %if.end8.if.end48_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_process_transmit(ptr noundef %session, ptr noundef %transmit, ptr noundef %sock) unnamed_addr #1 align 64 {
entry:
  %iv.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_process_transmit.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_process_transmit, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_process_transmit.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.20, ptr noundef %session) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call329 = call ptr @skb_dequeue(ptr noundef %transmit) #16
  %tobool4.not30 = icmp eq ptr %call329, null
  br i1 %tobool4.not30, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %0 = getelementptr inbounds %struct.kvec, ptr %iv.i, i32 0, i32 1
  %idle_to.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 16
  %timer.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %hidp_set_timer.exit.while.body_crit_edge, %while.body.lr.ph
  %call331 = phi ptr [ %call329, %while.body.lr.ph ], [ %call3, %hidp_set_timer.exit.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call331, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call331, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #16
  %5 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %iv.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_send_frame.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_process_transmit, %if.then.i)) #16
          to label %do.end.i [label %if.then.i], !srcloc !144

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_send_frame.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.30, ptr noundef %sock, ptr noundef %2, i32 noundef %4) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %if.else.thread, label %hidp_send_frame.exit

if.else.thread:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #16
  br label %if.end10

hidp_send_frame.exit:                             ; preds = %do.end.i
  %7 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %call6.i = call i32 @kernel_sendmsg(ptr noundef %sock, ptr noundef nonnull %msg.i, ptr noundef nonnull %iv.i, i32 noundef 1, i32 noundef %4) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call6.i)
  %cmp = icmp eq i32 %call6.i, -11
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %hidp_send_frame.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @skb_queue_head(ptr noundef %transmit, ptr noundef nonnull %call331) #16
  br label %while.end

if.else:                                          ; preds = %hidp_send_frame.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7 = icmp slt i32 %call6.i, 0
  br i1 %cmp7, label %if.then8, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %terminate.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %terminate.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %terminate.i, i32 1, i32 3, i32 1) #16
  %8 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate.i, ptr %terminate.i, i32 1, ptr elementtype(i32) %terminate.i) #16, !srcloc !137
  call void @__wake_up(ptr noundef nonnull @hidp_session_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  call void @kfree_skb_reason(ptr noundef nonnull %call331, i32 noundef 0) #16
  br label %while.end

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.else.thread
  %9 = ptrtoint ptr %idle_to.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idle_to.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end10.hidp_set_timer.exit_crit_edge, label %if.then.i20

if.end10.hidp_set_timer.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_set_timer.exit

if.then.i20:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %10, 100
  %add.i = add i32 %11, %mul.i
  %call.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #16
  br label %hidp_set_timer.exit

hidp_set_timer.exit:                              ; preds = %if.then.i20, %if.end10.hidp_set_timer.exit_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call331, i32 noundef 0) #16
  %call3 = call ptr @skb_dequeue(ptr noundef %transmit) #16
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %hidp_set_timer.exit.while.end_crit_edge, label %hidp_set_timer.exit.while.body_crit_edge

hidp_set_timer.exit.while.body_crit_edge:         ; preds = %hidp_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

hidp_set_timer.exit.while.end_crit_edge:          ; preds = %hidp_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %hidp_set_timer.exit.while.end_crit_edge, %if.then8, %if.then6, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_recv_ctrl_frame(ptr noundef %session, ptr noundef %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_recv_ctrl_frame.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_recv_ctrl_frame, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_recv_ctrl_frame.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.23, ptr noundef %session, ptr noundef %skb, i32 noundef %1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %call3 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #16
  %and = and i8 %5, -16
  %6 = and i8 %5, 15
  %7 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %and, label %sw.default [
    i8 0, label %sw.bb
    i8 16, label %sw.bb9
    i8 -96, label %sw.bb10
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hidp_process_handshake(ptr noundef %session, i8 noundef zeroext %6)
  br label %if.then14

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hidp_process_hid_control(ptr noundef %session, i8 noundef zeroext %6)
  br label %if.then14

sw.bb10:                                          ; preds = %do.end
  %call11 = tail call fastcc i32 @hidp_process_data(ptr noundef %session, ptr noundef %skb, i8 noundef zeroext %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %phi.cmp = icmp eq i32 %call11, 0
  br i1 %phi.cmp, label %sw.bb10.if.end15_crit_edge, label %sw.bb10.if.then14_crit_edge

sw.bb10.if.then14_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

sw.bb10.if.end15_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl_sock.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 10
  %8 = ptrtoint ptr %ctrl_sock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_sock.i, align 4
  %ctrl_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 12
  %call.i = tail call fastcc i32 @hidp_send_message(ptr noundef %session, ptr noundef %9, ptr noundef %ctrl_transmit.i, i8 noundef zeroext 3, ptr noundef null, i32 noundef 0) #16
  br label %if.then14

if.then14:                                        ; preds = %sw.default, %sw.bb10.if.then14_crit_edge, %sw.bb9, %sw.bb
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #16
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %sw.bb10.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_input_report(ptr noundef %session, ptr nocapture noundef readonly %skb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %input = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 18
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %keys1 = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 23
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 1, label %for.body.preheader
    i8 2, label %sw.bb69
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 29, i32 noundef %10) #16
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 1
  %13 = lshr i8 %12, 1
  %14 = and i8 %13, 1
  %15 = zext i8 %14 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 42, i32 noundef %15) #16
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 1
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 1
  %20 = zext i8 %19 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 56, i32 noundef %20) #16
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr, align 1
  %23 = lshr i8 %22, 3
  %24 = and i8 %23, 1
  %25 = zext i8 %24 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 125, i32 noundef %25) #16
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr, align 1
  %28 = lshr i8 %27, 4
  %29 = and i8 %28, 1
  %30 = zext i8 %29 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 97, i32 noundef %30) #16
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr, align 1
  %33 = lshr i8 %32, 5
  %34 = and i8 %33, 1
  %35 = zext i8 %34 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 54, i32 noundef %35) #16
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr, align 1
  %38 = lshr i8 %37, 6
  %39 = and i8 %38, 1
  %40 = zext i8 %39 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 100, i32 noundef %40) #16
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr, align 1
  %43 = lshr i8 %42, 7
  %44 = zext i8 %43 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 126, i32 noundef %44) #16
  %add.ptr10 = getelementptr i8, ptr %3, i32 3
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %add.ptr10, ptr noundef nonnull dereferenceable(6) @hidp_mkeyspat, i32 6) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %for.body.preheader.sw.epilog_crit_edge, label %for.cond11.preheader

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.cond11.preheader:                             ; preds = %for.body.preheader
  %add.ptr23 = getelementptr i8, ptr %3, i32 9
  %add.ptr44 = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 23, i32 2
  %add.ptr48 = getelementptr %struct.hidp_session, ptr %session, i32 0, i32 24
  br label %for.body14

for.body14:                                       ; preds = %for.inc66.for.body14_crit_edge, %for.cond11.preheader
  %i.1168 = phi i32 [ 2, %for.cond11.preheader ], [ %inc67, %for.inc66.for.body14_crit_edge ]
  %arrayidx15 = getelementptr i8, ptr %keys1, i32 %i.1168
  %45 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %46)
  %cmp17 = icmp ugt i8 %46, 3
  br i1 %cmp17, label %land.lhs.true, label %for.body14.if.end38_crit_edge

for.body14.if.end38_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

land.lhs.true:                                    ; preds = %for.body14
  %conv16 = zext i8 %46 to i32
  %call22 = tail call ptr @memscan(ptr noundef %add.ptr10, i32 noundef %conv16, i32 noundef 6) #16
  %cmp24 = icmp eq ptr %call22, %add.ptr23
  br i1 %cmp24, label %if.then26, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then26:                                        ; preds = %land.lhs.true
  %47 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx15, align 1
  %idxprom = zext i8 %48 to i32
  %arrayidx28 = getelementptr [256 x i8], ptr @hidp_keycode, i32 0, i32 %idxprom
  %49 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool29.not = icmp eq i8 %50, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  %conv34 = zext i8 %50 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv34, i32 noundef 0) #16
  br label %if.end38

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.26, i32 noundef %idxprom) #16
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then30, %land.lhs.true.if.end38_crit_edge, %for.body14.if.end38_crit_edge
  %arrayidx39 = getelementptr i8, ptr %add.ptr, i32 %i.1168
  %51 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp41 = icmp ugt i8 %52, 3
  br i1 %cmp41, label %land.lhs.true43, label %if.end38.for.inc66_crit_edge

if.end38.for.inc66_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc66

land.lhs.true43:                                  ; preds = %if.end38
  %conv40 = zext i8 %52 to i32
  %call47 = tail call ptr @memscan(ptr noundef %add.ptr44, i32 noundef %conv40, i32 noundef 6) #16
  %cmp49 = icmp eq ptr %call47, %add.ptr48
  br i1 %cmp49, label %if.then51, label %land.lhs.true43.for.inc66_crit_edge

land.lhs.true43.for.inc66_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc66

if.then51:                                        ; preds = %land.lhs.true43
  %53 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx39, align 1
  %idxprom53 = zext i8 %54 to i32
  %arrayidx54 = getelementptr [256 x i8], ptr @hidp_keycode, i32 0, i32 %idxprom53
  %55 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool55.not = icmp eq i8 %56, 0
  br i1 %tobool55.not, label %if.else61, label %if.then56

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  %conv60 = zext i8 %56 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv60, i32 noundef 1) #16
  br label %for.inc66

if.else61:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.27, i32 noundef %idxprom53) #16
  br label %for.inc66

for.inc66:                                        ; preds = %if.else61, %if.then56, %land.lhs.true43.for.inc66_crit_edge, %if.end38.for.inc66_crit_edge
  %inc67 = add nuw nsw i32 %i.1168, 1
  %exitcond.not = icmp eq i32 %inc67, 8
  br i1 %exitcond.not, label %for.end68, label %for.inc66.for.body14_crit_edge

for.inc66.for.body14_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14

for.end68:                                        ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %add.ptr, align 1
  %59 = ptrtoint ptr %keys1 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 8)
  store i64 %58, ptr %keys1, align 1
  br label %sw.epilog

sw.bb69:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len, align 4
  %sub = add i32 %61, -1
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr, align 1
  %64 = and i8 %63, 1
  %65 = zext i8 %64 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %65) #16
  %66 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %add.ptr, align 1
  %68 = lshr i8 %67, 1
  %.lobit = and i8 %68, 1
  %69 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %69) #16
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr, align 1
  %72 = lshr i8 %71, 2
  %.lobit164 = and i8 %72, 1
  %73 = zext i8 %.lobit164 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 274, i32 noundef %73) #16
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %add.ptr, align 1
  %76 = lshr i8 %75, 3
  %.lobit165 = and i8 %76, 1
  %77 = zext i8 %.lobit165 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 275, i32 noundef %77) #16
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr, align 1
  %80 = lshr i8 %79, 4
  %.lobit166 = and i8 %80, 1
  %81 = zext i8 %.lobit166 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 276, i32 noundef %81) #16
  %arrayidx85 = getelementptr i8, ptr %3, i32 2
  %82 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx85, align 1
  %conv86 = sext i8 %83 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 0, i32 noundef %conv86) #16
  %arrayidx87 = getelementptr i8, ptr %3, i32 3
  %84 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx87, align 1
  %conv88 = sext i8 %85 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 1, i32 noundef %conv88) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp89 = icmp sgt i32 %sub, 3
  br i1 %cmp89, label %if.then91, label %sw.bb69.sw.epilog_crit_edge

sw.bb69.sw.epilog_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then91:                                        ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx92 = getelementptr i8, ptr %3, i32 4
  %86 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx92, align 1
  %conv93 = sext i8 %87 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 2, i32 noundef 8, i32 noundef %conv93) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then91, %sw.bb69.sw.epilog_crit_edge, %for.end68, %for.body.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memscan(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_process_handshake(ptr noundef %session, i8 noundef zeroext %param) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_process_handshake.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_process_handshake, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %param to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_process_handshake.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.33, ptr noundef %session, i32 noundef %conv) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %output_report_success = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 30
  %0 = ptrtoint ptr %output_report_success to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %output_report_success, align 4
  %1 = zext i8 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %param, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %do.end.sw.bb5_crit_edge
    i8 2, label %do.end.sw.bb5_crit_edge32
    i8 3, label %do.end.sw.bb5_crit_edge33
    i8 4, label %do.end.sw.bb5_crit_edge34
    i8 14, label %do.end.sw.epilog_crit_edge
    i8 15, label %sw.bb10
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end.sw.bb5_crit_edge34:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

do.end.sw.bb5_crit_edge33:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

do.end.sw.bb5_crit_edge32:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %output_report_success to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %output_report_success, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge32, %do.end.sw.bb5_crit_edge33, %do.end.sw.bb5_crit_edge34
  %flags = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 6
  %call6 = tail call i32 @_test_and_clear_bit(i32 noundef 10, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %sw.bb5.sw.epilog_crit_edge, label %if.then8

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #18
  %report_queue = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %report_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl_sock.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 10
  %3 = ptrtoint ptr %ctrl_sock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl_sock.i, align 4
  %ctrl_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 12
  %call.i = tail call fastcc i32 @hidp_send_message(ptr noundef %session, ptr noundef %4, ptr noundef %ctrl_transmit.i, i8 noundef zeroext 18, ptr noundef null, i32 noundef 0) #16
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl_sock.i28 = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 10
  %5 = ptrtoint ptr %ctrl_sock.i28 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_sock.i28, align 4
  %ctrl_transmit.i29 = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 12
  %call.i30 = tail call fastcc i32 @hidp_send_message(ptr noundef %session, ptr noundef %6, ptr noundef %ctrl_transmit.i29, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %if.then8, %sw.bb5.sw.epilog_crit_edge, %sw.bb, %do.end.sw.epilog_crit_edge
  %flags13 = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 6
  %call14 = tail call i32 @_test_and_clear_bit(i32 noundef 11, ptr noundef %flags13) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %sw.epilog.if.end18_crit_edge, label %if.then16

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %report_queue17 = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %report_queue17, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %sw.epilog.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hidp_process_hid_control(ptr noundef %session, i8 noundef zeroext %param) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_process_hid_control.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_process_hid_control, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %param to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_process_hid_control.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.33, ptr noundef %session, i32 noundef %conv) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %param)
  %cmp = icmp eq i8 %param, 5
  br i1 %cmp, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl_transmit = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 12
  tail call void @skb_queue_purge(ptr noundef %ctrl_transmit) #16
  %intr_transmit = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 13
  tail call void @skb_queue_purge(ptr noundef %intr_transmit) #16
  %terminate.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %terminate.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %terminate.i, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %terminate.i, ptr %terminate.i, i32 1, ptr elementtype(i32) %terminate.i) #16, !srcloc !137
  tail call void @__wake_up(ptr noundef nonnull @hidp_session_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hidp_process_data(ptr noundef %session, ptr noundef %skb, i8 noundef zeroext %param) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_process_data.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_process_data, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = zext i8 %param to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_process_data.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.36, ptr noundef %session, ptr noundef %skb, i32 noundef %1, i32 noundef %conv) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv3 = zext i8 %param to i32
  %2 = zext i8 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %param, label %sw.default [
    i8 1, label %sw.bb
    i8 0, label %do.end.sw.epilog_crit_edge
    i8 2, label %do.end.sw.epilog_crit_edge53
    i8 3, label %do.end.sw.epilog_crit_edge54
  ]

do.end.sw.epilog_crit_edge54:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end.sw.epilog_crit_edge53:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %idle_to.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 16
  %3 = ptrtoint ptr %idle_to.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idle_to.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %sw.bb.hidp_set_timer.exit_crit_edge, label %if.then.i

sw.bb.hidp_set_timer.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %hidp_set_timer.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %timer.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %mul.i = mul i32 %4, 100
  %add.i = add i32 %5, %mul.i
  %call.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #16
  br label %hidp_set_timer.exit

hidp_set_timer.exit:                              ; preds = %if.then.i, %sw.bb.hidp_set_timer.exit_crit_edge
  %input = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 18
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %hidp_set_timer.exit.if.end6_crit_edge, label %if.then5

hidp_set_timer.exit.if.end6_crit_edge:            ; preds = %hidp_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %hidp_set_timer.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @hidp_input_report(ptr noundef %session, ptr noundef %skb)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %hidp_set_timer.exit.if.end6_crit_edge
  %hid = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 19
  %8 = ptrtoint ptr %hid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hid, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end6.sw.epilog_crit_edge, label %if.then8

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len9, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 16384) #16
  %input_buf.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 31
  %15 = call ptr @memcpy(ptr %input_buf.i, ptr %11, i32 %14)
  %call.i50 = tail call i32 @hid_input_report(ptr noundef nonnull %9, i32 noundef 0, ptr noundef %input_buf.i, i32 noundef %14, i32 noundef 0) #16
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %ctrl_sock.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 10
  %16 = ptrtoint ptr %ctrl_sock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_sock.i, align 4
  %ctrl_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 12
  %call.i51 = tail call fastcc i32 @hidp_send_message(ptr noundef %session, ptr noundef %17, ptr noundef %ctrl_transmit.i, i8 noundef zeroext 4, ptr noundef null, i32 noundef 0) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then8, %if.end6.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge53, %do.end.sw.epilog_crit_edge54
  %flags = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %sw.epilog.if.end28_crit_edge, label %land.lhs.true

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true:                                    ; preds = %sw.epilog
  %waiting_report_type = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 25
  %21 = ptrtoint ptr %waiting_report_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %waiting_report_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv3)
  %cmp = icmp eq i32 %22, %conv3
  br i1 %cmp, label %if.then17, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then17:                                        ; preds = %land.lhs.true
  %waiting_report_number = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 26
  %23 = ptrtoint ptr %waiting_report_number to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %waiting_report_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp18 = icmp slt i32 %24, 0
  br i1 %cmp18, label %if.then17.if.then25_crit_edge, label %lor.lhs.false

if.then17.if.then25_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.then17
  %data21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data21, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv22 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv22)
  %cmp23 = icmp eq i32 %24, %conv22
  br i1 %cmp23, label %lor.lhs.false.if.then25_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.then17.if.then25_crit_edge
  %report_return = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 28
  %29 = ptrtoint ptr %report_return to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %skb, ptr %report_return, align 4
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags) #16
  %report_queue = getelementptr inbounds %struct.hidp_session, ptr %session, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %report_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %lor.lhs.false.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge, %sw.epilog.if.end28_crit_edge
  %done_with_skb.0 = phi i32 [ 0, %if.then25 ], [ 1, %lor.lhs.false.if.end28_crit_edge ], [ 1, %land.lhs.true.if.end28_crit_edge ], [ 1, %sw.epilog.if.end28_crit_edge ]
  ret i32 %done_with_skb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_destroy_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_allocate_device() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hid_ignore(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidp_input_event(ptr noundef %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #1 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #16
  %2 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidp_input_event.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hidp_input_event, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hidp_input_event.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.41, ptr noundef %1, i32 noundef %type, i32 noundef %code, i32 noundef %value) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %type)
  %cmp.not = icmp eq i32 %type, 17
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %led = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 28
  %3 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %led, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %led, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  %9 = select i1 %tobool7.not, i1 %tobool15.not, i1 false
  %or = select i1 %9, i8 0, i8 8
  %10 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %led, align 4
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 4
  %or30 = or i8 %or, %13
  %14 = load volatile i32, ptr %led, align 4
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 2
  %or40 = or i8 %or30, %16
  %17 = load volatile i32, ptr %led, align 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %or50 = or i8 %or40, %19
  %leds = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 24
  %20 = ptrtoint ptr %leds to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %leds, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %or50)
  %cmp53 = icmp eq i8 %21, %or50
  br i1 %cmp53, label %if.end5.cleanup_crit_edge, label %if.end56

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end56:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %leds to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or50, ptr %leds, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %data, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or50, ptr %2, align 1
  %intr_sock.i = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %intr_sock.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intr_sock.i, align 4
  %intr_transmit.i = getelementptr inbounds %struct.hidp_session, ptr %1, i32 0, i32 13
  %call.i = call fastcc i32 @hidp_send_message(ptr noundef %1, ptr noundef %26, ptr noundef %intr_transmit.i, i8 noundef zeroext -94, ptr noundef nonnull %data, i32 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end56 ], [ -1, %do.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @hidp_init_sockets() local_unnamed_addr #6 section ".init.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readnone }
attributes #22 = { cold nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !32, !33, !34, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !80, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120, !121, !123, !125}
!llvm.named.register.sp = !{!127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @hidp_hid_driver, !1, !"hidp_hid_driver", i1 false, i1 false}
!1 = !{!"../net/bluetooth/hidp/core.c", i32 742, i32 22}
!2 = !{ptr @__ksymtab_hidp_hid_driver, !3, !"__ksymtab_hidp_hid_driver", i1 false, i1 false}
!3 = !{!"../net/bluetooth/hidp/core.c", i32 751, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bluetooth/hidp/core.c", i32 1422, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hidp_get_connlist.__UNIQUE_ID_ddebug492, !5, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_hidp__493_1472_hidp_init6, !11, !"__initcall__kmod_hidp__493_1472_hidp_init6", i1 false, i1 false}
!11 = !{!"../net/bluetooth/hidp/core.c", i32 1472, i32 1}
!12 = !{ptr @__exitcall_hidp_exit, !13, !"__exitcall_hidp_exit", i1 false, i1 false}
!13 = !{!"../net/bluetooth/hidp/core.c", i32 1473, i32 1}
!14 = !{ptr @__UNIQUE_ID_author494, !15, !"__UNIQUE_ID_author494", i1 false, i1 false}
!15 = !{!"../net/bluetooth/hidp/core.c", i32 1475, i32 1}
!16 = !{ptr @__UNIQUE_ID_author495, !17, !"__UNIQUE_ID_author495", i1 false, i1 false}
!17 = !{!"../net/bluetooth/hidp/core.c", i32 1476, i32 1}
!18 = !{ptr @__UNIQUE_ID_description496, !19, !"__UNIQUE_ID_description496", i1 false, i1 false}
!19 = !{!"../net/bluetooth/hidp/core.c", i32 1477, i32 1}
!20 = !{ptr @__UNIQUE_ID_version497, !21, !"__UNIQUE_ID_version497", i1 false, i1 false}
!21 = !{!"../net/bluetooth/hidp/core.c", i32 1478, i32 1}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__modver_attr, !21, !"__modver_attr", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_file498, !26, !"__UNIQUE_ID_file498", i1 false, i1 false}
!26 = !{!"../net/bluetooth/hidp/core.c", i32 1479, i32 1}
!27 = !{ptr @__UNIQUE_ID_license499, !26, !"__UNIQUE_ID_license499", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_alias500, !29, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!29 = !{!"../net/bluetooth/hidp/core.c", i32 1480, i32 1}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bluetooth/hidp/core.c", i32 106, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hidp_send_message.__UNIQUE_ID_ddebug476, !31, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bluetooth/hidp/core.c", i32 113, i32 3}
!36 = !{ptr @hidp_session_new.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../net/bluetooth/hidp/core.c", i32 931, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hidp_session_new.__key.10, !40, !"__key", i1 false, i1 false}
!40 = !{!"../net/bluetooth/hidp/core.c", i32 951, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hidp_session_new.__key.12, !43, !"__key", i1 false, i1 false}
!43 = !{!"../net/bluetooth/hidp/core.c", i32 952, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @hidp_session_new.__key.14, !46, !"__key", i1 false, i1 false}
!46 = !{!"../net/bluetooth/hidp/core.c", i32 955, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hidp_session_new.__key.16, !49, !"__key", i1 false, i1 false}
!49 = !{!"../net/bluetooth/hidp/core.c", i32 956, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/bluetooth/hidp/core.c", i32 1060, i32 18}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/bluetooth/hidp/core.c", i32 1270, i32 2}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hidp_session_thread.__UNIQUE_ID_ddebug491, !54, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/bluetooth/hidp/core.c", i32 39, i32 8}
!59 = !{ptr @hidp_session_wq, !58, !"hidp_session_wq", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/bluetooth/hidp/core.c", i32 592, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @hidp_recv_intr_frame.__UNIQUE_ID_ddebug482, !61, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/bluetooth/hidp/core.c", i32 606, i32 4}
!66 = !{ptr @hidp_recv_intr_frame.__UNIQUE_ID_ddebug483, !65, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/bluetooth/hidp/core.c", i32 609, i32 3}
!69 = !{ptr @hidp_recv_intr_frame.__UNIQUE_ID_ddebug484, !68, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bluetooth/hidp/core.c", i32 201, i32 6}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/bluetooth/hidp/core.c", i32 208, i32 6}
!74 = !{ptr @hidp_keycode, !75, !"hidp_keycode", i1 false, i1 false}
!75 = !{!"../net/bluetooth/hidp/core.c", i32 42, i32 22}
!76 = !{ptr @hidp_mkeyspat, !77, !"hidp_mkeyspat", i1 false, i1 false}
!77 = !{!"../net/bluetooth/hidp/core.c", i32 63, i32 22}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/bluetooth/hidp/core.c", i32 638, i32 2}
!80 = !{ptr @hidp_process_transmit.__UNIQUE_ID_ddebug486, !79, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/bluetooth/hidp/core.c", i32 620, i32 2}
!83 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @hidp_send_frame.__UNIQUE_ID_ddebug485, !82, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/bluetooth/hidp/core.c", i32 556, i32 2}
!87 = !{ptr @hidp_recv_ctrl_frame.__UNIQUE_ID_ddebug481, !86, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/bluetooth/hidp/core.c", i32 452, i32 2}
!90 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hidp_process_handshake.__UNIQUE_ID_ddebug478, !89, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/bluetooth/hidp/core.c", i32 495, i32 2}
!94 = !{ptr @hidp_process_hid_control.__UNIQUE_ID_ddebug479, !93, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/bluetooth/hidp/core.c", i32 511, i32 2}
!97 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @hidp_process_data.__UNIQUE_ID_ddebug480, !96, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!99 = !{ptr @skb_queue_head_init.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/hidp/core.c", i32 785, i32 41}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/bluetooth/hidp/core.c", i32 670, i32 16}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/bluetooth/hidp/core.c", i32 154, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @hidp_input_event.__UNIQUE_ID_ddebug477, !107, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!110 = !{ptr @.str.42, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/bluetooth/hidp/core.c", i32 38, i32 8}
!112 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @hidp_session_sem, !111, !"hidp_session_sem", i1 false, i1 false}
!114 = !{ptr @hidp_session_list, !115, !"hidp_session_list", i1 false, i1 false}
!115 = !{!"../net/bluetooth/hidp/core.c", i32 40, i32 8}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/bluetooth/hidp/core.c", i32 88, i32 22}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!120 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/bluetooth/hidp/core.c", i32 1462, i32 2}
!127 = !{!"sp"}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2148518376, i64 2148518402, i64 2148518431, i64 2148518465, i64 2148518496, i64 2148518519}
!138 = !{i64 2148607931}
!139 = !{i64 2148522371, i64 2148522403, i64 2148522432, i64 2148522466, i64 2148522497, i64 2148522520}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2149242655}
!142 = !{i64 2148519906, i64 2148519938, i64 2148519967, i64 2148520001, i64 2148520032, i64 2148520055}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{i64 2148342974, i64 2148342979, i64 2148342992, i64 2148343036, i64 2148343070, i64 2148343091}
!145 = !{i64 2153227116, i64 2153227141}
!146 = !{i64 2157562695}
!147 = !{i64 2155327849, i64 2155328337, i64 2155327886, i64 2155327942, i64 2155327976, i64 2155328000, i64 2155328041, i64 2155328062, i64 2155328090, i64 2155328124}
