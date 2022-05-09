; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_login.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_login.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsi_change_param_sprintf\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsi_change_param_sprintf\09\09\09\09"
module asm "\09.long\09__crc_iscsi_change_param_sprintf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsi_change_param_sprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsi_change_param_sprintf\22\09\09\09\09\09"
module asm "__kstrtabns_iscsi_change_param_sprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.iscsi_param = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i32, %struct.list_head, [100 x i8] }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.__va_list = type { ptr }
%struct.iscsit_global = type { i32, i32, i32, i32, ptr, %struct.spinlock, %struct.iscsi_node_acl, ptr }
%struct.iscsi_node_acl = type { %struct.se_node_acl, %struct.iscsi_node_attrib, %struct.iscsi_node_auth, %struct.iscsi_node_stat_grps }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.iscsi_node_stat_grps = type { %struct.config_group, %struct.config_group }
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.iscsi_tiqn = type { [224 x i8], i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.se_wwn, %struct.iscsi_wwn_stat_grps, i32, [64 x i8], %struct.iscsi_sess_err_stats, %struct.iscsi_login_stats, %struct.iscsi_logout_stats }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.iscsi_wwn_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.iscsi_sess_err_stats = type { %struct.spinlock, i32, i32, i32, i32, [224 x i8], [100 x i8] }
%struct.iscsi_login_stats = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.__kernel_sockaddr_storage, [224 x i8], [72 x i8] }
%struct.iscsi_logout_stats = type { %struct.spinlock, i32, i32, [76 x i8] }
%struct.iscsi_np = type { i32, i32, i32, i32, i8, %struct.atomic_t, i32, i32, i32, %struct.spinlock, %struct.completion, ptr, %struct.__kernel_sockaddr_storage, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, [48 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iscsi_login = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, i32, i32, i32, i16, i16, [48 x i8], [48 x i8], ptr, ptr, ptr, ptr, [108 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iscsi_login_req = type { i8, i8, i8, i8, i8, [3 x i8], [6 x i8], i16, i32, i16, i16, i32, i32, [16 x i8] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc32c\00", [25 x i8] zeroinitializer }, align 32
@iscsi_login_setup_crypto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013crypto_alloc_ahash() failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_login_setup_crypto\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/target/iscsi/iscsi_target_login.c\00", [54 x i8] zeroinitializer }, align 32
@iscsi_login_setup_crypto._entry_ptr = internal global ptr @iscsi_login_setup_crypto._entry, section ".printk_index", align 4
@iscsi_login_setup_crypto._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ahash_request_alloc() failed for conn_rx_hash\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsi_login_setup_crypto._entry_ptr.6 = internal global ptr @iscsi_login_setup_crypto._entry.4, section ".printk_index", align 4
@iscsi_login_setup_crypto._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ahash_request_alloc() failed for conn_tx_hash\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsi_login_setup_crypto._entry_ptr.9 = internal global ptr @iscsi_login_setup_crypto._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InitiatorName\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SessionType\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@iscsi_check_for_session_reinstatement.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"iscsi_check_for_session_reinstatement\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s iSCSI Session SID %u is still active for %s, performing session reinstatement.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Discovery\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_iscsi_change_param_sprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsi_change_param_sprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsi_change_param_sprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsi_change_param_sprintf to i32), ptr @__kstrtab_iscsi_change_param_sprintf, ptr @__kstrtabns_iscsi_change_param_sprintf }, section "___ksymtab+iscsi_change_param_sprintf", align 4
@iscsi_login_post_auth_non_zero_tsih._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013Connection exists with CID %hu for %s, performing connection reinstatement.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsi_login_post_auth_non_zero_tsih\00", [60 x i8] zeroinitializer }, align 32
@iscsi_login_post_auth_non_zero_tsih._entry_ptr = internal global ptr @iscsi_login_post_auth_non_zero_tsih._entry, section ".printk_index", align 4
@iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Performing implicit logout for connection recovery on CID: %hu\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.18, ptr @.str.3, ptr @.str.20, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Adding CID %hu to existing session for %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@iscsi_login_post_auth_non_zero_tsih._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.3, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013Adding additional connection to this session would exceed MaxConnections %d, login failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsi_login_post_auth_non_zero_tsih._entry_ptr.23 = internal global ptr @iscsi_login_post_auth_non_zero_tsih._entry.21, section ".printk_index", align 4
@iscsit_global = external dso_local local_unnamed_addr global ptr, align 4
@iscsit_start_kthreads._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013bitmap_find_free_region() failed for iscsit_start_kthreads()\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_start_kthreads\00", [42 x i8] zeroinitializer }, align 32
@iscsit_start_kthreads._entry_ptr = internal global ptr @iscsit_start_kthreads._entry, section ".printk_index", align 4
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iscsi_ttx\00", [22 x i8] zeroinitializer }, align 32
@iscsit_start_kthreads._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.3, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to start iscsi_target_tx_thread\0A\00", [54 x i8] zeroinitializer }, align 32
@iscsit_start_kthreads._entry_ptr.30 = internal global ptr @iscsit_start_kthreads._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iscsi_trx\00", [22 x i8] zeroinitializer }, align 32
@iscsit_start_kthreads._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.3, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to start iscsi_target_rx_thread\0A\00", [54 x i8] zeroinitializer }, align 32
@iscsit_start_kthreads._entry_ptr.34 = internal global ptr @iscsit_start_kthreads._entry.32, section ".printk_index", align 4
@iscsi_post_login_handler.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_post_login_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Moving to TARG_CONN_STATE_LOGGED_IN.\0A\00", [58 x i8] zeroinitializer }, align 32
@iscsi_post_login_handler.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Moving to TARG_SESS_STATE_LOGGED_IN.\0A\00", [58 x i8] zeroinitializer }, align 32
@iscsi_post_login_handler.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"iSCSI Login successful on CID: %hu from %pISpc to %pISpc,%hu\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsi_post_login_handler.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.39, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Incremented iSCSI Connection count to %hu from node: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsi_post_login_handler.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iscsi_post_login_handler.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iscsi_post_login_handler.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.39, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iscsi_post_login_handler.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.40, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Established iSCSI session from node: %s\0A\00", [55 x i8] zeroinitializer }, align 32
@iscsi_post_login_handler.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.3, ptr @.str.41, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Incremented number of active iSCSI sessions to %u on iSCSI Target Portal Group: %hu\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsi_handle_login_thread_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013iSCSI Login timeout on Network Portal %pISpc\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsi_handle_login_thread_timeout\00", [62 x i8] zeroinitializer }, align 32
@iscsi_handle_login_thread_timeout._entry_ptr = internal global ptr @iscsi_handle_login_thread_timeout._entry, section ".printk_index", align 4
@iscsit_setup_np._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unsupported network_transport: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iscsit_setup_np\00", [16 x i8] zeroinitializer }, align 32
@iscsit_setup_np._entry_ptr = internal global ptr @iscsit_setup_np._entry, section ".printk_index", align 4
@iscsit_setup_np._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013sock_create() failed.\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsit_setup_np._entry_ptr.48 = internal global ptr @iscsit_setup_np._entry.46, section ".printk_index", align 4
@iscsit_setup_np._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013kernel_bind() failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsit_setup_np._entry_ptr.51 = internal global ptr @iscsit_setup_np._entry.49, section ".printk_index", align 4
@iscsit_setup_np._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.3, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013kernel_listen() failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsit_setup_np._entry_ptr.54 = internal global ptr @iscsit_setup_np._entry.52, section ".printk_index", align 4
@iscsit_get_login_rx.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iscsit_get_login_rx\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Got Login Command, Flags 0x%02x, ITT: 0x%08x, CmdSN: 0x%08x, ExpStatSN: 0x%08x, CID: %hu, Length: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@iscsi_target_login_sess_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013iSCSI Login negotiation failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_target_login_sess_out\00", [36 x i8] zeroinitializer }, align 32
@iscsi_target_login_sess_out._entry_ptr = internal global ptr @iscsi_target_login_sess_out._entry, section ".printk_index", align 4
@sess_ida = external dso_local global %struct.ida, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__iscsi_target_login_thread.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__iscsi_target_login_thread\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Moving to TARG_CONN_STATE_XPT_UP.\0A\00", [61 x i8] zeroinitializer }, align 32
@__iscsi_target_login_thread._entry = internal constant %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1304, ptr null, ptr null }, align 1
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013iSCSI Network Portal on %pISpc currently not active.\0A\00", [40 x i8] zeroinitializer }, align 32
@__iscsi_target_login_thread._entry_ptr = internal global ptr @__iscsi_target_login_thread._entry, section ".printk_index", align 4
@__iscsi_target_login_thread.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.59, ptr @.str.3, ptr @.str.62, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Received iSCSI login request from %pISpc on %s Network Portal %pISpc\0A\00", [58 x i8] zeroinitializer }, align 32
@__iscsi_target_login_thread.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.59, ptr @.str.3, ptr @.str.63, i8 1, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Moving to TARG_CONN_STATE_IN_LOGIN.\0A\00", [59 x i8] zeroinitializer }, align 32
@__iscsi_target_login_thread._entry.64 = internal constant %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.3, i32 1366, ptr null, ptr null }, align 1
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to locate struct iscsi_conn->tpg\0A\00", [53 x i8] zeroinitializer }, align 32
@__iscsi_target_login_thread._entry_ptr.66 = internal global ptr @__iscsi_target_login_thread._entry.64, section ".printk_index", align 4
@iscsit_alloc_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Could not allocate memory for new connection\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iscsit_alloc_conn\00", [46 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn._entry_ptr = internal global ptr @iscsit_alloc_conn._entry, section ".printk_index", align 4
@iscsit_alloc_conn.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Moving to TARG_CONN_STATE_FREE.\0A\00", [63 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&conn->queues_wq\00", [47 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&conn->cmd_lock\00", [16 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&conn->conn_usage_lock\00", [41 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&conn->immed_queue_lock\00", [40 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&conn->nopin_timer_lock\00", [40 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&conn->response_queue_lock\00", [37 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.81 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&conn->state_lock\00", [46 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&conn->nopin_response_timer)\00", [34 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn.__key.85 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&conn->nopin_timer)\00", [43 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.68, ptr @.str.3, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to allocate memory for struct iscsi_conn_ops.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn._entry_ptr.89 = internal global ptr @iscsit_alloc_conn._entry.87, section ".printk_index", align 4
@iscsit_alloc_conn._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.68, ptr @.str.3, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Unable to allocate conn->conn_cpumask\0A\00", [55 x i8] zeroinitializer }, align 32
@iscsit_alloc_conn._entry_ptr.92 = internal global ptr @iscsit_alloc_conn._entry.90, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@iscsit_conn_set_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013try_module_get() failed for %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_conn_set_transport\00", [38 x i8] zeroinitializer }, align 32
@iscsit_conn_set_transport._entry_ptr = internal global ptr @iscsit_conn_set_transport._entry, section ".printk_index", align 4
@iscsi_login_init_conn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Unable to allocate memory for struct iscsi_login.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsi_login_init_conn\00", [42 x i8] zeroinitializer }, align 32
@iscsi_login_init_conn._entry_ptr = internal global ptr @iscsi_login_init_conn._entry, section ".printk_index", align 4
@iscsi_login_init_conn._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.3, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Unable to allocate memory for response buffer.\0A\00", [46 x i8] zeroinitializer }, align 32
@iscsi_login_init_conn._entry_ptr.100 = internal global ptr @iscsi_login_init_conn._entry.98, section ".printk_index", align 4
@iscsi_login_init_conn._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to allocate memory for request buffer.\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsi_login_init_conn._entry_ptr.103 = internal global ptr @iscsi_login_init_conn._entry.101, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iscsi_start_login_thread_timer.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iscsi_start_login_thread_timer\00", [33 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Added timeout timer to iSCSI login request for %u seconds.\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsi_login_check_initiator_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013Unsupported iSCSI IETF Pre-RFC Revision, version Min/Max 0x%02x/0x%02x, rejecting login.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsi_login_check_initiator_version\00", [60 x i8] zeroinitializer }, align 32
@iscsi_login_check_initiator_version._entry_ptr = internal global ptr @iscsi_login_check_initiator_version._entry, section ".printk_index", align 4
@iscsi_login_zero_tsih_s1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Could not allocate memory for session\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_login_zero_tsih_s1\00", [39 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1._entry_ptr = internal global ptr @iscsi_login_zero_tsih_s1._entry, section ".printk_index", align 4
@iscsi_login_zero_tsih_s1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sess->cmdsn_mutex\00", [45 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sess->conn_lock\00", [47 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1.__key.113 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sess->cr_a_lock\00", [47 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1.__key.115 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sess->cr_i_lock\00", [47 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1.__key.117 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&sess->session_usage_lock\00", [38 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1.__key.119 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sess->ttt_lock\00", [16 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1.__key.121 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(&sess->time2retain_timer)\00", [37 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.109, ptr @.str.3, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Session ID allocation failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1._entry_ptr.125 = internal global ptr @iscsi_login_zero_tsih_s1._entry.123, section ".printk_index", align 4
@iscsi_login_zero_tsih_s1._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.109, ptr @.str.3, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to allocate memory for struct iscsi_sess_ops.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s1._entry_ptr.128 = internal global ptr @iscsi_login_zero_tsih_s1._entry.126, section ".printk_index", align 4
@auth_id_lock = external dso_local global %struct.mutex, align 4
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TargetPortalGroupTag=%hu\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ErrorRecoveryLevel=%d\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RDMAExtensions=Yes\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MaxRecvDataSegmentLength\00", [39 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014Aligning ISER MaxRecvDataSegmentLength: %lu down to PAGE_SIZE\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_login_zero_tsih_s2\00", [39 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s2._entry_ptr = internal global ptr @iscsi_login_zero_tsih_s2._entry, section ".printk_index", align 4
@.str.135 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MaxRecvDataSegmentLength=%lu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ImmediateData=No\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"InitialR2T=Yes\00", [17 x i8] zeroinitializer }, align 32
@iscsi_login_zero_tsih_s2.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.134, ptr @.str.3, ptr @.str.138, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Forcing ImmediateData=No + InitialR2T=Yes for T10-PI enabled ISER session\0A\00", [53 x i8] zeroinitializer }, align 32
@iscsi_login_non_zero_tsih_s2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013Initiator attempting to add a connection to a non-existent session, rejecting iSCSI Login.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iscsi_login_non_zero_tsih_s2\00", [35 x i8] zeroinitializer }, align 32
@iscsi_login_non_zero_tsih_s2._entry_ptr = internal global ptr @iscsi_login_non_zero_tsih_s2._entry, section ".printk_index", align 4
@switch.table.iscsit_setup_np = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 6, i32 132, i32 132], [20 x i8] zeroinitializer }, align 32
@switch.table.iscsit_setup_np.141 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 1, i32 5], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 87, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 89, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 95, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 103, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 141, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 143, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 150, i32 51 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 187, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 566, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 587, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 600, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 604, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 638, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 643, i32 20 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 646, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 652, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 655, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 690, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 706, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 712, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 718, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 774, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 781, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 806, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 875, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 883, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 908, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 914, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1020, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1157, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1281, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1303, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1313, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1317, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1366, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1088, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1091, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1094, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1107, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1108, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1109, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1110, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1111, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1112, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1114, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1116, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1123, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1128, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 87, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 1074, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 44, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 53, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 59, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 832, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 120, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 267, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 285, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 286, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 287, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 288, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 289, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 290, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 292, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 297, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 315, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 384, i32 39 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 392, i32 39 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 403, i32 40 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 410, i32 37 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 432, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 435, i32 40 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 446, i32 41 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 449, i32 41 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 452, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.563 = private constant [45 x i8] c"../drivers/target/iscsi/iscsi_target_login.c\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.563, i32 507, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant [29 x i8] c"switch.table.iscsit_setup_np\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [33 x i8] c"switch.table.iscsit_setup_np.141\00", align 1
@llvm.compiler.used = appending global [175 x ptr] [ptr @__iscsi_target_login_thread._entry, ptr @__iscsi_target_login_thread._entry.64, ptr @__iscsi_target_login_thread._entry_ptr, ptr @__iscsi_target_login_thread._entry_ptr.66, ptr @__ksymtab_iscsi_change_param_sprintf, ptr @iscsi_handle_login_thread_timeout._entry, ptr @iscsi_handle_login_thread_timeout._entry_ptr, ptr @iscsi_login_check_initiator_version._entry, ptr @iscsi_login_check_initiator_version._entry_ptr, ptr @iscsi_login_init_conn._entry, ptr @iscsi_login_init_conn._entry.101, ptr @iscsi_login_init_conn._entry.98, ptr @iscsi_login_init_conn._entry_ptr, ptr @iscsi_login_init_conn._entry_ptr.100, ptr @iscsi_login_init_conn._entry_ptr.103, ptr @iscsi_login_non_zero_tsih_s2._entry, ptr @iscsi_login_non_zero_tsih_s2._entry_ptr, ptr @iscsi_login_post_auth_non_zero_tsih._entry, ptr @iscsi_login_post_auth_non_zero_tsih._entry.21, ptr @iscsi_login_post_auth_non_zero_tsih._entry_ptr, ptr @iscsi_login_post_auth_non_zero_tsih._entry_ptr.23, ptr @iscsi_login_setup_crypto._entry, ptr @iscsi_login_setup_crypto._entry.4, ptr @iscsi_login_setup_crypto._entry.7, ptr @iscsi_login_setup_crypto._entry_ptr, ptr @iscsi_login_setup_crypto._entry_ptr.6, ptr @iscsi_login_setup_crypto._entry_ptr.9, ptr @iscsi_login_zero_tsih_s1._entry, ptr @iscsi_login_zero_tsih_s1._entry.123, ptr @iscsi_login_zero_tsih_s1._entry.126, ptr @iscsi_login_zero_tsih_s1._entry_ptr, ptr @iscsi_login_zero_tsih_s1._entry_ptr.125, ptr @iscsi_login_zero_tsih_s1._entry_ptr.128, ptr @iscsi_login_zero_tsih_s2._entry, ptr @iscsi_login_zero_tsih_s2._entry_ptr, ptr @iscsi_target_login_sess_out._entry, ptr @iscsi_target_login_sess_out._entry_ptr, ptr @iscsit_alloc_conn._entry, ptr @iscsit_alloc_conn._entry.87, ptr @iscsit_alloc_conn._entry.90, ptr @iscsit_alloc_conn._entry_ptr, ptr @iscsit_alloc_conn._entry_ptr.89, ptr @iscsit_alloc_conn._entry_ptr.92, ptr @iscsit_conn_set_transport._entry, ptr @iscsit_conn_set_transport._entry_ptr, ptr @iscsit_setup_np._entry, ptr @iscsit_setup_np._entry.46, ptr @iscsit_setup_np._entry.49, ptr @iscsit_setup_np._entry.52, ptr @iscsit_setup_np._entry_ptr, ptr @iscsit_setup_np._entry_ptr.48, ptr @iscsit_setup_np._entry_ptr.51, ptr @iscsit_setup_np._entry_ptr.54, ptr @iscsit_start_kthreads._entry, ptr @iscsit_start_kthreads._entry.28, ptr @iscsit_start_kthreads._entry.32, ptr @iscsit_start_kthreads._entry_ptr, ptr @iscsit_start_kthreads._entry_ptr.30, ptr @iscsit_start_kthreads._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @iscsit_alloc_conn.__key, ptr @.str.70, ptr @iscsit_alloc_conn.__key.71, ptr @.str.72, ptr @iscsit_alloc_conn.__key.73, ptr @.str.74, ptr @iscsit_alloc_conn.__key.75, ptr @.str.76, ptr @iscsit_alloc_conn.__key.77, ptr @.str.78, ptr @iscsit_alloc_conn.__key.79, ptr @.str.80, ptr @iscsit_alloc_conn.__key.81, ptr @.str.82, ptr @iscsit_alloc_conn.__key.83, ptr @.str.84, ptr @iscsit_alloc_conn.__key.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @init_completion.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @iscsi_login_zero_tsih_s1.__key, ptr @.str.110, ptr @iscsi_login_zero_tsih_s1.__key.111, ptr @.str.112, ptr @iscsi_login_zero_tsih_s1.__key.113, ptr @.str.114, ptr @iscsi_login_zero_tsih_s1.__key.115, ptr @.str.116, ptr @iscsi_login_zero_tsih_s1.__key.117, ptr @.str.118, ptr @iscsi_login_zero_tsih_s1.__key.119, ptr @.str.120, ptr @iscsi_login_zero_tsih_s1.__key.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @switch.table.iscsit_setup_np, ptr @switch.table.iscsit_setup_np.141], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_setup_crypto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_setup_crypto._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_setup_crypto._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_post_auth_non_zero_tsih._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_post_auth_non_zero_tsih._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_start_kthreads._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_start_kthreads._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_start_kthreads._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_handle_login_thread_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_setup_np._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_setup_np._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_setup_np._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_setup_np._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_login_sess_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn.__key.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_alloc_conn._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_conn_set_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_init_conn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_init_conn._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_init_conn._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_check_initiator_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1.__key.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1.__key.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1.__key.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1.__key.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1.__key.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s1._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_zero_tsih_s2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_non_zero_tsih_s2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iscsit_setup_np to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iscsit_setup_np.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_login_setup_crypto(ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_ahash(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 128) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %1, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #16
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %do.end8, label %if.end11, !prof !281

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conn_rx_hash83 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 52
  %2 = ptrtoint ptr %conn_rx_hash83 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %conn_rx_hash83, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %conn_rx_hash = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 52
  %4 = ptrtoint ptr %conn_rx_hash to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %conn_rx_hash, align 8
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags4.i, align 4
  %8 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reqsize.i.i, align 32
  %add.i38 = add i32 %9, 128
  %call9.i.i67 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i38, i32 noundef 3264) #16
  %tobool.not.i70 = icmp eq ptr %call9.i.i67, null
  br i1 %tobool.not.i70, label %do.end19, label %if.end24, !prof !281

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %conn_tx_hash86 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 53
  %10 = ptrtoint ptr %conn_tx_hash86 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %conn_tx_hash86, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #15
  %11 = ptrtoint ptr %conn_rx_hash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn_rx_hash, align 8
  tail call void @kfree_sensitive(ptr noundef %12) #12
  %13 = ptrtoint ptr %conn_rx_hash to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %conn_rx_hash, align 8
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i.i) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %tfm1.i.i74 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i67, i32 0, i32 3
  %14 = ptrtoint ptr %tfm1.i.i74 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %base.i.i.i, ptr %tfm1.i.i74, align 16
  %conn_tx_hash = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 53
  %15 = ptrtoint ptr %conn_tx_hash to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i67, ptr %conn_tx_hash, align 4
  %complete.i79 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i67, i32 0, i32 1
  %16 = ptrtoint ptr %complete.i79 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %complete.i79, align 8
  %data2.i80 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i67, i32 0, i32 2
  %17 = ptrtoint ptr %data2.i80 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %data2.i80, align 4
  %flags4.i81 = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i67, i32 0, i32 4
  %18 = ptrtoint ptr %flags4.i81 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags4.i81, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end19, %do.end8, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end24 ], [ -12, %do.end19 ], [ -12, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_check_for_session_reinstatement(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 4
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %2 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param_list, align 4
  %call = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.10, ptr noundef %3) #12
  %4 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param_list, align 4
  %call3 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.11, ptr noundef %5) #12
  %tobool.not = icmp eq ptr %call, null
  %tobool4.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 7) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value, align 4
  %call6 = tail call i32 @strncmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str.12, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %session_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock) #12
  %tpg_sess_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 9
  %8 = ptrtoint ptr %tpg_sess_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpg_sess_list, align 4
  %cmp.not132 = icmp eq ptr %9, %tpg_sess_list
  br i1 %cmp.not132, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  %not.tobool7.not = xor i1 %tobool7.not, true
  %sess27 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %value33 = getelementptr inbounds %struct.iscsi_param, ptr %call, i32 0, i32 1
  %10 = zext i1 %not.tobool7.not to i8
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in133 = phi ptr [ %9, %for.body.lr.ph ], [ %.pn134, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in133 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn134 = load ptr, ptr %.pn.in133, align 4
  %fabric_sess_ptr = getelementptr i8, ptr %.pn.in133, i32 -12
  %12 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fabric_sess_ptr, align 8
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %conn_lock) #12
  %session_fall_back_to_erl0 = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_fall_back_to_erl0, i32 noundef 4) #12
  %14 = ptrtoint ptr %session_fall_back_to_erl0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %session_fall_back_to_erl0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false16:                                  ; preds = %for.body
  %session_logout = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 30
  %call.i.i123 = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_logout, i32 noundef 4) #12
  %16 = ptrtoint ptr %session_logout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %session_logout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false16.for.inc_crit_edge

lor.lhs.false16.for.inc_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false19:                                  ; preds = %lor.lhs.false16
  %session_close = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 33
  %call.i.i124 = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_close, i32 noundef 4) #12
  %18 = ptrtoint ptr %session_close to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %session_close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false19.for.inc_crit_edge

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %time2retain_timer_flags = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time2retain_timer_flags, align 8
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end26, label %lor.lhs.false22.for.inc_crit_edge

lor.lhs.false22.for.inc_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end26:                                         ; preds = %lor.lhs.false22
  %isid = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %sess27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sess27, align 4
  %isid28 = getelementptr inbounds %struct.iscsi_session, ptr %23, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %isid, ptr noundef dereferenceable(6) %isid28, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool31.not = icmp eq i32 %bcmp, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end26
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 47
  %24 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sess_ops, align 8
  %26 = ptrtoint ptr %value33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value33, align 4
  %call34 = tail call i32 @strcmp(ptr noundef %25, ptr noundef %27) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true36:                                  ; preds = %land.lhs.true
  %SessionType = getelementptr inbounds %struct.iscsi_sess_ops, ptr %25, i32 0, i32 17
  %28 = ptrtoint ptr %SessionType to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %SessionType, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %10)
  %cmp38 = icmp eq i8 %29, %10
  br i1 %cmp38, label %for.end, label %land.lhs.true36.for.inc_crit_edge

land.lhs.true36.for.inc_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true36.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %lor.lhs.false22.for.inc_crit_edge, %lor.lhs.false19.for.inc_crit_edge, %lor.lhs.false16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %conn_lock) #12
  %cmp.not = icmp eq ptr %.pn134, %tpg_sess_list
  br i1 %cmp.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true36
  %sess_ops.le = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 47
  %session_reinstatement = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 31
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_reinstatement, i32 noundef 4) #12
  %30 = ptrtoint ptr %session_reinstatement to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 1, ptr %session_reinstatement, align 4
  %call.i.i126 = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_fall_back_to_erl0, i32 noundef 4) #12
  %31 = ptrtoint ptr %session_fall_back_to_erl0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %session_fall_back_to_erl0, align 4
  %call.i.i127 = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_close, i32 noundef 4) #12
  %32 = ptrtoint ptr %session_close to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %session_close, align 4
  tail call void @_raw_spin_unlock(ptr noundef %conn_lock) #12
  tail call void @iscsit_inc_session_usage_count(ptr noundef %13) #12
  %call44 = tail call i32 @iscsit_stop_time2retain_timer(ptr noundef %13) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #12
  %tobool53.not = icmp eq ptr %13, null
  br i1 %tobool53.not, label %for.end.cleanup_crit_edge, label %do.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_check_for_session_reinstatement.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_for_session_reinstatement, %if.then62)) #12
          to label %do.end [label %if.then62], !srcloc !282

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %cond64 = select i1 %tobool7.not, ptr @.str.12, ptr @.str.16
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 15
  %33 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sid, align 16
  %35 = ptrtoint ptr %sess_ops.le to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sess_ops.le, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_check_for_session_reinstatement.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond64, i32 noundef %34, ptr noundef %36) #12
  br label %do.end

do.end:                                           ; preds = %if.then62, %do.body
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock) #12
  %session_state = getelementptr inbounds %struct.iscsi_session, ptr %13, i32 0, i32 7
  %37 = ptrtoint ptr %session_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %session_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp70 = icmp eq i32 %38, 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock) #12
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iscsit_dec_session_usage_count(ptr noundef nonnull %13) #12
  br label %cleanup

if.end74:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iscsit_stop_session(ptr noundef nonnull %13, i32 noundef 1, i32 noundef 1) #12
  tail call void @iscsit_dec_session_usage_count(ptr noundef nonnull %13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.then72, %for.end.cleanup_crit_edge, %for.end.thread, %if.then
  %retval.0 = phi i32 [ 0, %if.then72 ], [ 0, %if.end74 ], [ -1, %if.then ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_find_param_from_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tx_login_rsp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_inc_session_usage_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_stop_time2retain_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_dec_session_usage_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_stop_session(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_change_param_sprintf(ptr noundef %conn, ptr nocapture noundef readonly %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #12
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !283
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #12
  %1 = call ptr @memset(ptr %buf, i32 0, i32 64)
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %3 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param_list, align 4
  %call3 = call i32 @iscsi_change_param_value(ptr noundef nonnull %buf, ptr noundef %4, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_change_param_value(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_login_post_auth_non_zero_tsih(ptr noundef %conn, i16 noundef zeroext %cid, i32 noundef %exp_statsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %call = tail call ptr @iscsit_get_conn_from_cid_rcfr(ptr noundef %1, i16 noundef zeroext %cid) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cid2 = getelementptr inbounds %struct.iscsi_conn, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %cid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cid2, align 2
  %conv = zext i16 %3 to i32
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 47
  %4 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_ops, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv, ptr noundef %5) #15
  tail call void @iscsit_connection_reinstatement_rcfr(ptr noundef nonnull %call) #12
  tail call void @iscsit_dec_conn_usage_count(ptr noundef nonnull %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sess_ops4 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 47
  %6 = ptrtoint ptr %sess_ops4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sess_ops4, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ErrorRecoveryLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %if.then7, label %if.end.do.body25_crit_edge

if.end.do.body25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

if.then7:                                         ; preds = %if.end
  %call8 = tail call ptr @iscsit_get_inactive_connection_recovery_entry(ptr noundef %1, i16 noundef zeroext %cid) #12
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.do.body25_crit_edge, label %do.body11

if.then7.do.body25_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

do.body11:                                        ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_login_post_auth_non_zero_tsih, %if.then17)) #12
          to label %do.end22 [label %if.then17], !srcloc !282

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %cid18 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %10 = ptrtoint ptr %cid18 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cid18, align 2
  %conv19 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.19, i32 noundef %conv19) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body11
  tail call void @iscsit_discard_cr_cmds_by_expstatsn(ptr noundef nonnull %call8, i32 noundef %exp_statsn) #12
  br label %do.body25

do.body25:                                        ; preds = %do.end22, %if.then7.do.body25_crit_edge, %if.end.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_login_post_auth_non_zero_tsih, %if.then37)) #12
          to label %do.end44 [label %if.then37], !srcloc !282

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  %conv38 = zext i16 %cid to i32
  %12 = ptrtoint ptr %sess_ops4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess_ops4, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.20, i32 noundef %conv38, ptr noundef %13) #12
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %do.body25
  %nconn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nconn, i32 noundef 4) #12
  %14 = ptrtoint ptr %nconn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %nconn, align 4
  %add = add i32 %15, 1
  %16 = ptrtoint ptr %sess_ops4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sess_ops4, align 8
  %MaxConnections = getelementptr inbounds %struct.iscsi_sess_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %MaxConnections to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %MaxConnections, align 2
  %conv47 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv47)
  %cmp48 = icmp sgt i32 %add, %conv47
  br i1 %cmp48, label %do.end53, label %do.end44.cleanup_crit_edge

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end53:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv47) #15
  %call59 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end53 ], [ 0, %do.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_conn_from_cid_rcfr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_connection_reinstatement_rcfr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_dec_conn_usage_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_inactive_connection_recovery_entry(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_discard_cr_cmds_by_expstatsn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_start_kthreads(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %0 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap_lock = getelementptr inbounds %struct.iscsit_global, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %ts_bitmap_lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %1 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap = getelementptr inbounds %struct.iscsit_global, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ts_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts_bitmap, align 4
  %call1 = tail call i32 @bitmap_find_free_region(ptr noundef %3, i32 noundef 262144, i32 noundef 0) #12
  %bitmap_id = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 69
  %4 = ptrtoint ptr %bitmap_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %bitmap_id, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %5 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap_lock2 = getelementptr inbounds %struct.iscsit_global, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %ts_bitmap_lock2) #12
  %6 = ptrtoint ptr %bitmap_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bitmap_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @iscsi_target_tx_thread, ptr noundef %conn, i32 noundef -1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #12
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end21

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_thread72 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 74
  %8 = ptrtoint ptr %tx_thread72 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %tx_thread72, align 64
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  %9 = ptrtoint ptr %tx_thread72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_thread72, align 64
  br label %out_bitmap

if.end21:                                         ; preds = %if.end
  %call8 = tail call i32 @wake_up_process(ptr noundef %call5) #12
  %tx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 74
  %11 = ptrtoint ptr %tx_thread to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5, ptr %tx_thread, align 64
  %tx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 73
  %12 = ptrtoint ptr %tx_thread_active to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %tx_thread_active, align 4
  %call23 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @iscsi_target_rx_thread, ptr noundef %conn, i32 noundef -1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31) #12
  %cmp.i70 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %do.end34, label %if.end39

do.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %rx_thread74 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 71
  %13 = ptrtoint ptr %rx_thread74 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %rx_thread74, align 128
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #15
  %14 = ptrtoint ptr %rx_thread74 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_thread74, align 128
  %16 = ptrtoint ptr %tx_thread to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_thread, align 64
  %call41 = tail call i32 @send_sig(i32 noundef 2, ptr noundef %17, i32 noundef 1) #12
  %18 = ptrtoint ptr %tx_thread to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_thread, align 64
  %call43 = tail call i32 @kthread_stop(ptr noundef %19) #12
  %20 = ptrtoint ptr %tx_thread_active to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tx_thread_active, align 4
  br label %out_bitmap

if.end39:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 @wake_up_process(ptr noundef %call23) #12
  %rx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 71
  %21 = ptrtoint ptr %rx_thread to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call23, ptr %rx_thread, align 128
  %rx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 70
  %22 = ptrtoint ptr %rx_thread_active to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %rx_thread_active, align 4
  br label %cleanup

out_bitmap:                                       ; preds = %do.end34, %do.end16
  %ret.0.in = phi ptr [ %10, %do.end16 ], [ %15, %do.end34 ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %23 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap_lock45 = getelementptr inbounds %struct.iscsit_global, ptr %23, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %ts_bitmap_lock45) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %24 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap46 = getelementptr inbounds %struct.iscsit_global, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ts_bitmap46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ts_bitmap46, align 4
  %27 = ptrtoint ptr %bitmap_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bitmap_id, align 8
  tail call void @bitmap_release_region(ptr noundef %26, i32 noundef %28, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %29 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap_lock49 = getelementptr inbounds %struct.iscsit_global, ptr %29, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %ts_bitmap_lock49) #12
  br label %cleanup

cleanup:                                          ; preds = %out_bitmap, %if.end39, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.0, %out_bitmap ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_tx_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_rx_thread(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_post_login_handler(ptr nocapture readnone %np, ptr noundef %conn, i8 noundef zeroext %zero_tsih) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %se_sess2 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %se_sess2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess2, align 4
  %tpg3 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %tpg3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg3, align 16
  tail call void @iscsit_inc_conn_usage_count(ptr noundef %conn) #12
  tail call void @iscsit_collect_login_stats(ptr noundef %conn, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !282

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.36) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conn_state = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 2
  %6 = ptrtoint ptr %conn_state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %conn_state, align 1
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %7 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn_ops, align 16
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %9 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %param_list, align 4
  tail call void @iscsi_set_connection_parameters(ptr noundef %8, ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zero_tsih)
  %tobool6.not = icmp eq i8 %zero_tsih, 0
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 47
  %11 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess_ops, align 8
  %13 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param_list, align 4
  br i1 %tobool6.not, label %if.then7, label %if.end75

if.then7:                                         ; preds = %do.end
  tail call void @iscsi_set_session_parameters(ptr noundef %12, ptr noundef %14, i32 noundef 0) #12
  %15 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %param_list, align 4
  tail call void @iscsi_release_param_list(ptr noundef %16) #12
  %17 = ptrtoint ptr %param_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %param_list, align 4
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock) #12
  %session_continuation = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_continuation, i32 noundef 4) #12
  %18 = ptrtoint ptr %session_continuation to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %session_continuation, align 4
  %session_state = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %session_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %session_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp = icmp eq i32 %20, 4
  br i1 %cmp, label %do.body12, label %if.then7.do.body30_crit_edge

if.then7.do.body30_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

do.body12:                                        ; preds = %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then24)) #12
          to label %do.end27 [label %if.then24], !srcloc !282

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.37) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %do.body12
  %21 = ptrtoint ptr %session_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %session_state, align 4
  br label %do.body30

do.body30:                                        ; preds = %do.end27, %if.then7.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then42)) #12
          to label %do.end46 [label %if.then42], !srcloc !282

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %22 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cid, align 2
  %conv = zext i16 %23 to i32
  %login_sockaddr = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %local_sockaddr = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 18
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tpgt, align 8
  %conv43 = zext i16 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.38, i32 noundef %conv, ptr noundef %login_sockaddr, ptr noundef %local_sockaddr, i32 noundef %conv43) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body30
  %conn_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 75
  %sess_conn_list = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 34
  %prev.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 34, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i314 = tail call zeroext i1 @__list_add_valid(ptr noundef %conn_list, ptr noundef %27, ptr noundef %sess_conn_list) #12
  br i1 %call.i.i314, label %if.end.i.i, label %do.end46.list_add_tail.exit_crit_edge

do.end46.list_add_tail.exit_crit_edge:            ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %conn_list, ptr %prev.i, align 4
  %29 = ptrtoint ptr %conn_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sess_conn_list, ptr %conn_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 75, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %conn_list, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end46.list_add_tail.exit_crit_edge
  %nconn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 27
  %call.i.i292 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nconn, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nconn, i32 1, i32 3, i32 1) #12
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nconn, ptr %nconn, i32 1, ptr elementtype(i32) %nconn) #12, !srcloc !284
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then59)) #12
          to label %do.end65 [label %if.then59], !srcloc !282

if.then59:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i296 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nconn, i32 noundef 4) #12
  %33 = ptrtoint ptr %nconn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %nconn, align 4
  %35 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sess_ops, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.39, i32 noundef %34, ptr noundef %36) #12
  br label %do.end65

do.end65:                                         ; preds = %if.then59, %list_add_tail.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock) #12
  %conn_transport.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %37 = ptrtoint ptr %conn_transport.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conn_transport.i, align 8
  %transport_type.i = getelementptr inbounds %struct.iscsit_transport, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %transport_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %transport_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %cmp.i = icmp eq i32 %40, 5
  br i1 %cmp.i, label %do.end65.iscsi_post_login_start_timers.exit_crit_edge, label %if.end.i

do.end65.iscsi_post_login_start_timers.exit_crit_edge: ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %iscsi_post_login_start_timers.exit

if.end.i:                                         ; preds = %do.end65
  %41 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sess1, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %42, i32 0, i32 47
  %43 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sess_ops.i, align 8
  %SessionType.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %SessionType.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %SessionType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.i.iscsi_post_login_start_timers.exit_crit_edge

if.end.i.iscsi_post_login_start_timers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %iscsi_post_login_start_timers.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iscsit_start_nopin_timer(ptr noundef %conn) #12
  br label %iscsi_post_login_start_timers.exit

iscsi_post_login_start_timers.exit:               ; preds = %if.then2.i, %if.end.i.iscsi_post_login_start_timers.exit_crit_edge, %do.end65.iscsi_post_login_start_timers.exit_crit_edge
  tail call void @iscsit_thread_get_cpumask(ptr noundef %conn) #12
  %conn_rx_reset_cpumask = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 55
  %47 = ptrtoint ptr %conn_rx_reset_cpumask to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %conn_rx_reset_cpumask, align 4
  %bf.set69 = or i8 %bf.load, -64
  store i8 %bf.set69, ptr %conn_rx_reset_cpumask, align 4
  %rx_login_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 72
  tail call void @complete(ptr noundef %rx_login_comp) #12
  tail call void @iscsit_dec_conn_usage_count(ptr noundef %conn) #12
  br i1 %cmp, label %if.then71, label %iscsi_post_login_start_timers.exit.if.end74_crit_edge

iscsi_post_login_start_timers.exit.if.end74_crit_edge: ; preds = %iscsi_post_login_start_timers.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then71:                                        ; preds = %iscsi_post_login_start_timers.exit
  call void @__sanitizer_cov_trace_pc() #14
  %session_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock) #12
  %call72 = tail call i32 @iscsit_stop_time2retain_timer(ptr noundef %1) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #12
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %iscsi_post_login_start_timers.exit.if.end74_crit_edge
  tail call void @iscsit_dec_session_usage_count(ptr noundef %1) #12
  br label %cleanup

if.end75:                                         ; preds = %do.end
  tail call void @iscsi_set_session_parameters(ptr noundef %12, ptr noundef %14, i32 noundef 1) #12
  %48 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %param_list, align 4
  tail call void @iscsi_release_param_list(ptr noundef %49) #12
  %50 = ptrtoint ptr %param_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %param_list, align 4
  tail call void @iscsit_determine_maxcmdsn(ptr noundef %1) #12
  %session_lock80 = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock80) #12
  %51 = ptrtoint ptr %tpg3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tpg3, align 16
  %tpg_se_tpg82 = getelementptr inbounds %struct.iscsi_portal_group, ptr %52, i32 0, i32 9
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 4
  %53 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %se_node_acl, align 8
  tail call void @__transport_register_session(ptr noundef %tpg_se_tpg82, ptr noundef %54, ptr noundef %3, ptr noundef %1) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then95)) #12
          to label %do.end98 [label %if.then95], !srcloc !282

if.then95:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.37) #12
  br label %do.end98

do.end98:                                         ; preds = %if.then95, %if.end75
  %session_state99 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 7
  %55 = ptrtoint ptr %session_state99 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %session_state99, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then112)) #12
          to label %do.end121 [label %if.then112], !srcloc !282

if.then112:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #14
  %cid113 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %56 = ptrtoint ptr %cid113 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %cid113, align 2
  %conv114 = zext i16 %57 to i32
  %login_sockaddr115 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %local_sockaddr116 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 18
  %tpgt117 = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 2
  %58 = ptrtoint ptr %tpgt117 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tpgt117, align 8
  %conv118 = zext i16 %59 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.38, i32 noundef %conv114, ptr noundef %login_sockaddr115, ptr noundef %local_sockaddr116, i32 noundef %conv118) #12
  br label %do.end121

do.end121:                                        ; preds = %if.then112, %do.end98
  %conn_lock122 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock122) #12
  %conn_list123 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 75
  %sess_conn_list124 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 34
  %prev.i315 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 34, i32 1
  %60 = ptrtoint ptr %prev.i315 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i315, align 4
  %call.i.i316 = tail call zeroext i1 @__list_add_valid(ptr noundef %conn_list123, ptr noundef %61, ptr noundef %sess_conn_list124) #12
  br i1 %call.i.i316, label %if.end.i.i318, label %do.end121.list_add_tail.exit319_crit_edge

do.end121.list_add_tail.exit319_crit_edge:        ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit319

if.end.i.i318:                                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %prev.i315 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %conn_list123, ptr %prev.i315, align 4
  %63 = ptrtoint ptr %conn_list123 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %sess_conn_list124, ptr %conn_list123, align 4
  %prev3.i.i317 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 75, i32 1
  %64 = ptrtoint ptr %prev3.i.i317 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i317, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %conn_list123, ptr %61, align 4
  br label %list_add_tail.exit319

list_add_tail.exit319:                            ; preds = %if.end.i.i318, %do.end121.list_add_tail.exit319_crit_edge
  %nconn125 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 27
  %call.i.i303 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nconn125, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nconn125, i32 1, i32 3, i32 1) #12
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nconn125, ptr %nconn125, i32 1, ptr elementtype(i32) %nconn125) #12, !srcloc !284
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then138)) #12
          to label %do.end146 [label %if.then138], !srcloc !282

if.then138:                                       ; preds = %list_add_tail.exit319
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i307 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nconn125, i32 noundef 4) #12
  %67 = ptrtoint ptr %nconn125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %nconn125, align 4
  %69 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sess_ops, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.39, i32 noundef %68, ptr noundef %70) #12
  br label %do.end146

do.end146:                                        ; preds = %if.then138, %list_add_tail.exit319
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock122) #12
  %sid = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 6
  %71 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sid, align 4
  %inc = add i32 %72, 1
  store i32 %inc, ptr %sid, align 4
  %sid148 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 15
  %73 = ptrtoint ptr %sid148 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %sid148, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool150.not = icmp eq i32 %72, 0
  br i1 %tobool150.not, label %if.then151, label %do.end146.do.body156_crit_edge

do.end146.do.body156_crit_edge:                   ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body156

if.then151:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sid, align 4
  %inc153 = add i32 %75, 1
  store i32 %inc153, ptr %sid, align 4
  %76 = ptrtoint ptr %sid148 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %sid148, align 16
  br label %do.body156

do.body156:                                       ; preds = %if.then151, %do.end146.do.body156_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then168)) #12
          to label %do.end174 [label %if.then168], !srcloc !282

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sess_ops, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.40, ptr noundef %78) #12
  br label %do.end174

do.end174:                                        ; preds = %if.then168, %do.body156
  %nsessions = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 4
  %79 = ptrtoint ptr %nsessions to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nsessions, align 4
  %inc175 = add i32 %80, 1
  store i32 %inc175, ptr %nsessions, align 4
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 15
  %81 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tpg_tiqn, align 16
  %tobool176.not = icmp eq ptr %82, null
  br i1 %tobool176.not, label %do.end174.do.body181_crit_edge, label %if.then177

do.end174.do.body181_crit_edge:                   ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body181

if.then177:                                       ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #14
  %tiqn_nsessions = getelementptr inbounds %struct.iscsi_tiqn, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %tiqn_nsessions to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tiqn_nsessions, align 4
  %inc179 = add i32 %84, 1
  store i32 %inc179, ptr %tiqn_nsessions, align 4
  br label %do.body181

do.body181:                                       ; preds = %if.then177, %do.end174.do.body181_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_post_login_handler, %if.then193)) #12
          to label %do.end199 [label %if.then193], !srcloc !282

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %nsessions to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nsessions, align 4
  %tpgt195 = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 2
  %87 = ptrtoint ptr %tpgt195 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %tpgt195, align 8
  %conv196 = zext i16 %88 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_post_login_handler.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.41, i32 noundef %86, i32 noundef %conv196) #12
  br label %do.end199

do.end199:                                        ; preds = %if.then193, %do.body181
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock80) #12
  %conn_transport.i320 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %89 = ptrtoint ptr %conn_transport.i320 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %conn_transport.i320, align 8
  %transport_type.i321 = getelementptr inbounds %struct.iscsit_transport, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %transport_type.i321 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %transport_type.i321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %92)
  %cmp.i322 = icmp eq i32 %92, 5
  br i1 %cmp.i322, label %do.end199.iscsi_post_login_start_timers.exit329_crit_edge, label %if.end.i327

do.end199.iscsi_post_login_start_timers.exit329_crit_edge: ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #14
  br label %iscsi_post_login_start_timers.exit329

if.end.i327:                                      ; preds = %do.end199
  %93 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sess1, align 4
  %sess_ops.i324 = getelementptr inbounds %struct.iscsi_session, ptr %94, i32 0, i32 47
  %95 = ptrtoint ptr %sess_ops.i324 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sess_ops.i324, align 8
  %SessionType.i325 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %96, i32 0, i32 17
  %97 = ptrtoint ptr %SessionType.i325 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %SessionType.i325, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i326 = icmp eq i8 %98, 0
  br i1 %tobool.not.i326, label %if.then2.i328, label %if.end.i327.iscsi_post_login_start_timers.exit329_crit_edge

if.end.i327.iscsi_post_login_start_timers.exit329_crit_edge: ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #14
  br label %iscsi_post_login_start_timers.exit329

if.then2.i328:                                    ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iscsit_start_nopin_timer(ptr noundef %conn) #12
  br label %iscsi_post_login_start_timers.exit329

iscsi_post_login_start_timers.exit329:            ; preds = %if.then2.i328, %if.end.i327.iscsi_post_login_start_timers.exit329_crit_edge, %do.end199.iscsi_post_login_start_timers.exit329_crit_edge
  tail call void @iscsit_thread_get_cpumask(ptr noundef %conn) #12
  %conn_rx_reset_cpumask201 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 55
  %99 = ptrtoint ptr %conn_rx_reset_cpumask201 to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load202 = load i8, ptr %conn_rx_reset_cpumask201, align 4
  %bf.set208 = or i8 %bf.load202, -64
  store i8 %bf.set208, ptr %conn_rx_reset_cpumask201, align 4
  %rx_login_comp209 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 72
  tail call void @complete(ptr noundef %rx_login_comp209) #12
  tail call void @iscsit_dec_conn_usage_count(ptr noundef %conn) #12
  br label %cleanup

cleanup:                                          ; preds = %iscsi_post_login_start_timers.exit329, %if.end74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_inc_conn_usage_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_collect_login_stats(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_set_connection_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_set_session_parameters(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_release_param_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_thread_get_cpumask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_determine_maxcmdsn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__transport_register_session(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_handle_login_thread_timeout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %np_thread_lock = getelementptr i8, ptr %t, i32 -236
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %np_sockaddr = getelementptr i8, ptr %t, i32 -132
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %np_sockaddr) #15
  %np_login_timer_flags = getelementptr i8, ptr %t, i32 -248
  %0 = ptrtoint ptr %np_login_timer_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %np_login_timer_flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %np_thread = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %np_thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np_thread, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @send_sig(i32 noundef 2, ptr noundef nonnull %3, i32 noundef 1) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %4 = ptrtoint ptr %np_login_timer_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %np_login_timer_flags, align 8
  %and9 = and i32 %5, -2
  store i32 %and9, ptr %np_login_timer_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_setup_np(ptr noundef %np, ptr nocapture noundef readonly %sockaddr) local_unnamed_addr #0 align 64 {
entry:
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #12
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %sock, align 4
  %1 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %np, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %2) #15
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.iscsit_setup_np, i32 0, i32 %2
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep78 = getelementptr inbounds [3 x i32], ptr @switch.table.iscsit_setup_np.141, i32 0, i32 %2
  %5 = ptrtoint ptr %switch.gep78 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load79 = load i32, ptr %switch.gep78, align 4
  %np_ip_proto5 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 1
  %6 = ptrtoint ptr %np_ip_proto5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %np_ip_proto5, align 4
  %np_sock_type6 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 2
  %7 = ptrtoint ptr %np_sock_type6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %switch.load79, ptr %np_sock_type6, align 8
  %8 = ptrtoint ptr %sockaddr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sockaddr, align 4
  %conv = zext i16 %9 to i32
  %call10 = call i32 @sock_create(i32 noundef %conv, i32 noundef %switch.load79, i32 noundef %switch.load, ptr noundef nonnull %sock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.end

do.end14:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #15
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %10 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sock, align 4
  %np_socket = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 11
  %12 = ptrtoint ptr %np_socket to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %np_socket, align 8
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %13 = call ptr @memcpy(ptr %np_sockaddr, ptr %sockaddr, i32 128)
  %14 = ptrtoint ptr %sockaddr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sockaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %15)
  %cmp19 = icmp eq i16 %15, 10
  %. = select i1 %cmp19, i32 28, i32 16
  %16 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %np, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24 = icmp eq i32 %17, 0
  br i1 %cmp24, label %if.then26, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sk = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk, align 16
  call void @tcp_sock_set_nodelay(ptr noundef %19) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  %20 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sock, align 4
  %sk28 = getelementptr inbounds %struct.socket, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %sk28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sk28, align 16
  call void @sock_set_reuseaddr(ptr noundef %23) #12
  %24 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock, align 4
  %sk29 = getelementptr inbounds %struct.socket, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %sk29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk29, align 16
  call void @ip_sock_set_freebind(ptr noundef %27) #12
  %28 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sock, align 4
  %call31 = call i32 @kernel_bind(ptr noundef %29, ptr noundef %np_sockaddr, i32 noundef %.) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %call31) #15
  br label %fail

if.end40:                                         ; preds = %if.end27
  %30 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock, align 4
  %call41 = call i32 @kernel_listen(ptr noundef %31, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end40.cleanup_crit_edge, label %do.end47

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %call41) #15
  br label %fail

fail:                                             ; preds = %do.end47, %do.end37
  %ret.0 = phi i32 [ %call31, %do.end37 ], [ %call41, %do.end47 ]
  %32 = ptrtoint ptr %np_socket to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %np_socket, align 8
  %33 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %34) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end40.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call10, %do.end14 ], [ %ret.0, %fail ], [ 0, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_set_reuseaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_sock_set_freebind(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_target_setup_login_socket(ptr noundef %np, ptr noundef %sockaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %np, align 128
  %call = tail call ptr @iscsit_get_transport(i32 noundef %1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %iscsit_setup_np = getelementptr inbounds %struct.iscsit_transport, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %iscsit_setup_np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscsit_setup_np, align 4
  %call1 = tail call i32 %3(ptr noundef %np, ptr noundef %sockaddr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iscsit_put_transport(ptr noundef nonnull %call) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %np_transport = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 16
  %4 = ptrtoint ptr %np_transport to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %np_transport, align 4
  %enabled = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 4
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %enabled, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_transport(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_put_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_accept_np(ptr nocapture noundef readonly %np, ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %new_sock = alloca ptr, align 4
  %sock_in = alloca %struct.sockaddr_in, align 4
  %sock_in6 = alloca %struct.sockaddr_in6, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_sock) #12
  %0 = ptrtoint ptr %new_sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_sock, align 4, !annotation !283
  %np_socket = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 11
  %1 = ptrtoint ptr %np_socket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %np_socket, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sock_in) #12
  %3 = getelementptr inbounds %struct.sockaddr_in, ptr %sock_in, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sockaddr_in, ptr %sock_in, i32 0, i32 2
  %5 = call ptr @memset(ptr %sock_in, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sock_in6) #12
  %6 = getelementptr inbounds %struct.sockaddr_in6, ptr %sock_in6, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %sock_in6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sockaddr_in6, ptr %sock_in6, i32 0, i32 3, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sockaddr_in6, ptr %sock_in6, i32 0, i32 3, i32 0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sockaddr_in6, ptr %sock_in6, i32 0, i32 3, i32 0, i32 0, i32 3
  %call = call i32 @kernel_accept(ptr noundef %2, ptr noundef nonnull %new_sock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %new_sock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new_sock, align 4
  %sock1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  %13 = ptrtoint ptr %sock1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %sock1, align 4
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %14 = ptrtoint ptr %np_sockaddr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %np_sockaddr, align 4
  %conv = zext i16 %15 to i32
  %login_family = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 11
  %16 = ptrtoint ptr %login_family to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %login_family, align 4
  %17 = load i16, ptr %np_sockaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp5 = icmp eq i16 %17, 10
  br i1 %cmp5, label %if.then7, label %if.else42

if.then7:                                         ; preds = %if.end
  %18 = call ptr @memset(ptr %sock_in6, i32 0, i32 28)
  %ops = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %getname = getelementptr inbounds %struct.proto_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %getname to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %getname, align 4
  %call10 = call i32 %22(ptr noundef %12, ptr noundef nonnull %sock_in6, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, -1
  br i1 %cmp11, label %if.then13, label %if.then7.if.end19_crit_edge

if.then7.if.end19_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.then7
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %7, align 4
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %8, align 4
  %or.i = or i32 %26, %24
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %9, align 4
  %xor.i = xor i32 %28, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %login_sockaddr = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %29 = call ptr @memcpy(ptr %login_sockaddr, ptr %sock_in6, i32 28)
  br label %if.end19

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %sock_in to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %sock_in, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %6, align 2
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %3, align 2
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %10, align 4
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %4, align 4
  %login_sockaddr17 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %37 = call ptr @memcpy(ptr %login_sockaddr17, ptr %sock_in, i32 16)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then15, %if.then7.if.end19_crit_edge
  %38 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sock1, align 4
  %ops21 = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %ops21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops21, align 4
  %getname22 = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %getname22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %getname22, align 4
  %call24 = call i32 %43(ptr noundef %39, ptr noundef nonnull %sock_in6, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp25 = icmp sgt i32 %call24, -1
  br i1 %cmp25, label %if.then27, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %if.end19
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %7, align 4
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %8, align 4
  %or.i91 = or i32 %47, %45
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %9, align 4
  %xor.i93 = xor i32 %49, 65535
  %or5.i94 = or i32 %or.i91, %xor.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i94)
  %cmp.i95 = icmp eq i32 %or5.i94, 0
  br i1 %cmp.i95, label %if.else31, label %if.then30

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %local_sockaddr = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 18
  %50 = call ptr @memcpy(ptr %local_sockaddr, ptr %sock_in6, i32 28)
  br label %cleanup

if.else31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %sock_in to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 2, ptr %sock_in, align 4
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %6, align 2
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %3, align 2
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %10, align 4
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %4, align 4
  %local_sockaddr39 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 18
  %58 = call ptr @memcpy(ptr %local_sockaddr39, ptr %sock_in, i32 16)
  br label %cleanup

if.else42:                                        ; preds = %if.end
  %59 = call ptr @memset(ptr %sock_in, i32 0, i32 16)
  %ops44 = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 5
  %60 = ptrtoint ptr %ops44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops44, align 4
  %getname45 = getelementptr inbounds %struct.proto_ops, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %getname45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %getname45, align 4
  %call47 = call i32 %63(ptr noundef %12, ptr noundef nonnull %sock_in, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %cmp48 = icmp sgt i32 %call47, -1
  br i1 %cmp48, label %if.then50, label %if.else42.if.end52_crit_edge

if.else42.if.end52_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then50:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  %login_sockaddr51 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %64 = call ptr @memcpy(ptr %login_sockaddr51, ptr %sock_in, i32 16)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.else42.if.end52_crit_edge
  %65 = ptrtoint ptr %sock1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sock1, align 4
  %ops54 = getelementptr inbounds %struct.socket, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %ops54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops54, align 4
  %getname55 = getelementptr inbounds %struct.proto_ops, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %getname55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %getname55, align 4
  %call57 = call i32 %70(ptr noundef %66, ptr noundef nonnull %sock_in, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call57)
  %cmp58 = icmp sgt i32 %call57, -1
  br i1 %cmp58, label %if.then60, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then60:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %local_sockaddr61 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 18
  %71 = call ptr @memcpy(ptr %local_sockaddr61, ptr %sock_in, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end52.cleanup_crit_edge, %if.else31, %if.then30, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.else31 ], [ 0, %if.then30 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sock_in6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sock_in) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_sock) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_get_login_rx(ptr noundef %conn, ptr noundef %login) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17
  %call = tail call i32 @iscsi_login_rx_data(ptr noundef %conn, ptr noundef %req, i32 noundef 48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dlength = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 5
  %0 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dlength, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx4 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 6
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %3 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %shl
  %arrayidx8 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 7
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %or10 = or i32 %or, %conv9
  %sub = sub nsw i32 0, %conv9
  %and = and i32 %sub, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_get_login_rx.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_get_login_rx, %if.then14)) #12
          to label %do.end [label %if.then14], !srcloc !282

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %conv15 = zext i8 %7 to i32
  %itt = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 16
  %8 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %itt, align 4
  %cmdsn = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 24
  %10 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmdsn, align 4
  %exp_statsn = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 28
  %12 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exp_statsn, align 4
  %cid = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 20
  %14 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cid, align 4
  %conv16 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_get_login_rx.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.56, i32 noundef %conv15, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv16, i32 noundef %or10) #12
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end
  %first_request = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 4
  %16 = ptrtoint ptr %first_request to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %first_request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %do.end.if.end40_crit_edge, label %if.then19

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %tsih = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 14
  %18 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tsih, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool22.not = icmp eq i16 %19, 0
  %conv25 = zext i1 %tobool22.not to i8
  %leading_connection = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 3
  %20 = ptrtoint ptr %leading_connection to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv25, ptr %leading_connection, align 1
  %flags26 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 1
  %21 = ptrtoint ptr %flags26 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags26, align 1
  %23 = lshr i8 %22, 2
  %24 = and i8 %23, 3
  %current_stage = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 2
  %25 = ptrtoint ptr %current_stage to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %current_stage, align 2
  %min_version = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 3
  %26 = ptrtoint ptr %min_version to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %min_version, align 1
  %version_min = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 5
  %28 = ptrtoint ptr %version_min to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %version_min, align 1
  %max_version = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %max_version to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_version, align 2
  %version_max = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 6
  %31 = ptrtoint ptr %version_max to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %version_max, align 2
  %isid = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 10
  %isid31 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 8
  %32 = call ptr @memcpy(ptr %isid, ptr %isid31, i32 6)
  %cmdsn33 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 24
  %33 = ptrtoint ptr %cmdsn33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmdsn33, align 4
  %cmd_sn = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 11
  %35 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %cmd_sn, align 16
  %itt34 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 16
  %36 = ptrtoint ptr %itt34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %itt34, align 4
  %init_task_tag = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 12
  %38 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %init_task_tag, align 4
  %exp_statsn35 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 28
  %39 = ptrtoint ptr %exp_statsn35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %exp_statsn35, align 4
  %initial_exp_statsn = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 13
  %41 = ptrtoint ptr %initial_exp_statsn to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %initial_exp_statsn, align 8
  %cid36 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 20
  %42 = ptrtoint ptr %cid36 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cid36, align 4
  %cid37 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 15
  %44 = ptrtoint ptr %cid37 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %cid37, align 32
  %tsih39 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 16
  %45 = ptrtoint ptr %tsih39 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %19, ptr %tsih39, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then19, %do.end.if.end40_crit_edge
  %call41 = tail call i32 @iscsi_target_check_login_request(ptr noundef %conn, ptr noundef %login) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %req_buf = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 19
  %46 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %req_buf, align 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 8192)
  %49 = load ptr, ptr %req_buf, align 4
  %add = add nuw nsw i32 %or10, %and
  %call47 = tail call i32 @iscsi_login_rx_data(ptr noundef %conn, ptr noundef %49, i32 noundef %add) #12
  %call47.lobit = ashr i32 %call47, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end40.cleanup_crit_edge ], [ %call47.lobit, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_login_rx_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_check_login_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_put_login_tx(ptr noundef %conn, ptr noundef %login, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18
  %rsp_buf = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 20
  %0 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp_buf, align 8
  %call = tail call i32 @iscsi_login_tx_data(ptr noundef %conn, ptr noundef %rsp, ptr noundef %1, i32 noundef %length) #12
  %call.lobit = ashr i32 %call, 31
  ret i32 %call.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_login_tx_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_cpumask = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 54
  %0 = ptrtoint ptr %conn_cpumask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_cpumask, align 16
  tail call void @free_cpumask_var(ptr noundef %1) #12
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %2 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_ops, align 16
  tail call void @kfree(ptr noundef %3) #12
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %4 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn_transport, align 8
  tail call void @iscsit_put_transport(ptr noundef %5) #12
  tail call void @kfree(ptr noundef %conn) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_target_login_sess_out(ptr noundef %conn, i1 noundef zeroext %zero_tsih, i1 noundef zeroext %new_sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %new_sess, label %do.end, label %old_sess_out

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #15
  tail call void @iscsit_collect_login_stats(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #12
  br i1 %zero_tsih, label %lor.lhs.false, label %do.end.land.lhs.true_crit_edge

do.end.land.lhs.true_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %do.end
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %lor.lhs.false.if.end27_crit_edge, label %if.end5

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess, align 4
  tail call void @transport_free_session(ptr noundef %3) #12
  %4 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess, align 4
  %session_index = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %session_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %session_index, align 4
  tail call void @ida_free(ptr noundef nonnull @sess_ida, i32 noundef %7) #12
  %8 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sess_ops, align 8
  tail call void @kfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess, align 4
  tail call void @kfree(ptr noundef %13) #12
  %14 = ptrtoint ptr %sess to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sess, align 4
  br label %if.end27

old_sess_out:                                     ; preds = %entry
  br i1 %zero_tsih, label %old_sess_out.if.end27_crit_edge, label %old_sess_out.land.lhs.true_crit_edge

old_sess_out.land.lhs.true_crit_edge:             ; preds = %old_sess_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

old_sess_out.if.end27_crit_edge:                  ; preds = %old_sess_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true:                                    ; preds = %old_sess_out.land.lhs.true_crit_edge, %do.end.land.lhs.true_crit_edge
  %sess12 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %15 = ptrtoint ptr %sess12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess12, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %land.lhs.true.if.end27_crit_edge, label %if.then14

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then14:                                        ; preds = %land.lhs.true
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock) #12
  %17 = ptrtoint ptr %sess12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sess12, align 4
  %session_state = getelementptr inbounds %struct.iscsi_session, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %session_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %session_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp = icmp eq i32 %20, 4
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %tpg = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %21 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tpg, align 4
  %session_continuation = getelementptr inbounds %struct.iscsi_session, ptr %18, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_continuation, i32 noundef 4) #12
  %23 = ptrtoint ptr %session_continuation to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %session_continuation, align 4
  %24 = ptrtoint ptr %sess12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sess12, align 4
  %conn_lock20 = getelementptr inbounds %struct.iscsi_session, ptr %25, i32 0, i32 37
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock20) #12
  %session_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %22, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock) #12
  %26 = ptrtoint ptr %sess12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sess12, align 4
  tail call void @iscsit_start_time2retain_handler(ptr noundef %27) #12
  br label %if.end25

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %conn_lock24 = getelementptr inbounds %struct.iscsi_session, ptr %18, i32 0, i32 37
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then17
  %conn_lock24.sink = phi ptr [ %conn_lock24, %if.else ], [ %session_lock, %if.then17 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock24.sink) #12
  %28 = ptrtoint ptr %sess12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sess12, align 4
  tail call void @iscsit_dec_session_usage_count(ptr noundef %29) #12
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %land.lhs.true.if.end27_crit_edge, %old_sess_out.if.end27_crit_edge, %if.end5, %lor.lhs.false.if.end27_crit_edge
  %conn_tx_hash = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 53
  %30 = ptrtoint ptr %conn_tx_hash to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conn_tx_hash, align 4
  tail call void @kfree_sensitive(ptr noundef %31) #12
  %conn_rx_hash = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 52
  %32 = ptrtoint ptr %conn_rx_hash to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn_rx_hash, align 8
  %tobool28.not = icmp eq ptr %33, null
  br i1 %tobool28.not, label %if.end27.if.end33_crit_edge, label %if.then29

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 -128
  tail call void @kfree_sensitive(ptr noundef nonnull %33) #12
  tail call void @crypto_destroy_tfm(ptr noundef %add.ptr.i.i, ptr noundef %35) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end27.if.end33_crit_edge
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %36 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %param_list, align 4
  %tobool34.not = icmp eq ptr %37, null
  br i1 %tobool34.not, label %if.end33.if.end38_crit_edge, label %if.then35

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iscsi_release_param_list(ptr noundef nonnull %37) #12
  %38 = ptrtoint ptr %param_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %param_list, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end33.if.end38_crit_edge
  tail call void @iscsi_target_nego_release(ptr noundef %conn) #12
  %sock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  %39 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sock, align 4
  %tobool39.not = icmp eq ptr %40, null
  br i1 %tobool39.not, label %if.end38.if.end43_crit_edge, label %if.then40

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sock_release(ptr noundef nonnull %40) #12
  %41 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %sock, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end38.if.end43_crit_edge
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %42 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %conn_transport, align 8
  %iscsit_wait_conn = getelementptr inbounds %struct.iscsit_transport, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %iscsit_wait_conn to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iscsit_wait_conn, align 4
  %tobool44.not = icmp eq ptr %45, null
  br i1 %tobool44.not, label %if.end43.if.end48_crit_edge, label %if.then45

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %45(ptr noundef %conn) #12
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  %46 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %conn_transport, align 8
  %iscsit_free_conn = getelementptr inbounds %struct.iscsit_transport, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %iscsit_free_conn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iscsit_free_conn, align 4
  %tobool50.not = icmp eq ptr %49, null
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %49(ptr noundef %conn) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %conn_cpumask.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 54
  %50 = ptrtoint ptr %conn_cpumask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %conn_cpumask.i, align 16
  tail call void @free_cpumask_var(ptr noundef %51) #12
  %conn_ops.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %52 = ptrtoint ptr %conn_ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %conn_ops.i, align 16
  tail call void @kfree(ptr noundef %53) #12
  %54 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %conn_transport, align 8
  tail call void @iscsit_put_transport(ptr noundef %55) #12
  tail call void @kfree(ptr noundef %conn) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_free_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_start_time2retain_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_target_nego_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_target_login_thread(ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kernel_sigaction(i32 noundef 2, ptr noundef nonnull inttoptr (i32 2 to ptr)) #12
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %call = tail call fastcc i32 @__iscsi_target_login_thread(ptr noundef %arg)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %while.cond.while.cond_crit_edge, label %while.cond1.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.cond1.preheader:                            ; preds = %while.cond
  %call25 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call25, label %while.cond1.preheader.while.end4_crit_edge, label %while.cond1.preheader.while.body3_crit_edge

while.cond1.preheader.while.body3_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body3

while.cond1.preheader.while.end4_crit_edge:       ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end4

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %while.cond1.preheader.while.body3_crit_edge
  tail call void @msleep(i32 noundef 100) #12
  %call2 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call2, label %while.body3.while.end4_crit_edge, label %while.body3.while.body3_crit_edge

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body3

while.body3.while.end4_crit_edge:                 ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end4

while.end4:                                       ; preds = %while.body3.while.end4_crit_edge, %while.cond1.preheader.while.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__iscsi_target_login_thread(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !271) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @flush_signals(ptr noundef %3) #12
  %np_thread_lock = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %np_reset_count = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %np_reset_count, i32 noundef 4) #12
  %4 = ptrtoint ptr %np_reset_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %np_reset_count, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %entry
  %c.0.i.i = phi i32 [ %5, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  %sub.i.i = add i32 %c.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.if.else_crit_edge, label %do.cond3.i.i, !prof !281

do.body1.i.i.if.else_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %np_reset_count, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %np_reset_count, ptr %np_reset_count, i32 %c.0.i.i, i32 %sub.i.i, ptr elementtype(i32) %np_reset_count) #12, !srcloc !286
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !287
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %atomic_dec_if_positive.exit, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !288

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

atomic_dec_if_positive.exit:                      ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp, label %if.then, label %atomic_dec_if_positive.exit.if.else_crit_edge

atomic_dec_if_positive.exit.if.else_crit_edge:    ; preds = %atomic_dec_if_positive.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %atomic_dec_if_positive.exit
  call void @__sanitizer_cov_trace_pc() #14
  %np_thread_state = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 3
  %7 = ptrtoint ptr %np_thread_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %np_thread_state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  %np_restart_comp = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 10
  tail call void @complete(ptr noundef %np_restart_comp) #12
  br label %cleanup

if.else:                                          ; preds = %atomic_dec_if_positive.exit.if.else_crit_edge, %do.body1.i.i.if.else_crit_edge
  %np_thread_state3 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 3
  %8 = ptrtoint ptr %np_thread_state3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %np_thread_state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp4 = icmp eq i32 %9, 4
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  br label %exit

if.else7:                                         ; preds = %if.else
  %10 = ptrtoint ptr %np_thread_state3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %np_thread_state3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  %call11 = tail call fastcc ptr @iscsit_alloc_conn(ptr noundef %np)
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.else7.cleanup_crit_edge, label %if.end13

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.else7
  %np_transport = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 16
  %11 = ptrtoint ptr %np_transport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np_transport, align 4
  %iscsit_accept_np = getelementptr inbounds %struct.iscsit_transport, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %iscsit_accept_np to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iscsit_accept_np, align 4
  %call14 = tail call i32 %14(ptr noundef %np, ptr noundef nonnull %call11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call14)
  %cmp15 = icmp eq i32 %call14, -38
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %np_restart_comp17 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 10
  tail call void @complete(ptr noundef %np_restart_comp17) #12
  %conn_cpumask.i = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 54
  %15 = ptrtoint ptr %conn_cpumask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %conn_cpumask.i, align 16
  tail call void @free_cpumask_var(ptr noundef %16) #12
  %conn_ops.i = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 59
  %17 = ptrtoint ptr %conn_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn_ops.i, align 16
  tail call void @kfree(ptr noundef %18) #12
  %conn_transport.i = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 61
  %19 = ptrtoint ptr %conn_transport.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %conn_transport.i, align 8
  tail call void @iscsit_put_transport(ptr noundef %20) #12
  tail call void @kfree(ptr noundef nonnull %call11) #12
  br label %exit

if.else18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp19 = icmp slt i32 %call14, 0
  br i1 %cmp19, label %if.then20, label %if.end32

if.then20:                                        ; preds = %if.else18
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %call.i.i300 = tail call zeroext i1 @__kasan_check_write(ptr noundef %np_reset_count, i32 noundef 4) #12
  %21 = ptrtoint ptr %np_reset_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %np_reset_count, align 4
  br label %do.body1.i.i304

do.body1.i.i304:                                  ; preds = %arch_atomic_cmpxchg.exit.i.i.i311.do.body1.i.i304_crit_edge, %if.then20
  %c.0.i.i301 = phi i32 [ %22, %if.then20 ], [ %asmresult3.i.i.i.i.i309, %arch_atomic_cmpxchg.exit.i.i.i311.do.body1.i.i304_crit_edge ]
  %sub.i.i302 = add i32 %c.0.i.i301, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i302)
  %cmp.i.i303 = icmp slt i32 %sub.i.i302, 0
  br i1 %cmp.i.i303, label %do.body1.i.i304.if.end29_crit_edge, label %do.cond3.i.i305, !prof !281

do.body1.i.i304.if.end29_crit_edge:               ; preds = %do.body1.i.i304
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.cond3.i.i305:                                  ; preds = %do.body1.i.i304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %np_reset_count, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i308

do.body.i.i.i.i.i308:                             ; preds = %do.body.i.i.i.i.i308.do.body.i.i.i.i.i308_crit_edge, %do.cond3.i.i305
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %np_reset_count, ptr %np_reset_count, i32 %c.0.i.i301, i32 %sub.i.i302, ptr elementtype(i32) %np_reset_count) #12, !srcloc !286
  %asmresult.i.i.i.i.i306 = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i.i.i.i307 = icmp eq i32 %asmresult.i.i.i.i.i306, 0
  br i1 %tobool.not.i.i.i.i.i307, label %arch_atomic_cmpxchg.exit.i.i.i311, label %do.body.i.i.i.i.i308.do.body.i.i.i.i.i308_crit_edge

do.body.i.i.i.i.i308.do.body.i.i.i.i.i308_crit_edge: ; preds = %do.body.i.i.i.i.i308
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i308

arch_atomic_cmpxchg.exit.i.i.i311:                ; preds = %do.body.i.i.i.i.i308
  %asmresult3.i.i.i.i.i309 = extractvalue { i32, i32 } %23, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !287
  %cmp.not.i.i.i310 = icmp eq i32 %asmresult3.i.i.i.i.i309, %c.0.i.i301
  br i1 %cmp.not.i.i.i310, label %atomic_dec_if_positive.exit312, label %arch_atomic_cmpxchg.exit.i.i.i311.do.body1.i.i304_crit_edge, !prof !288

arch_atomic_cmpxchg.exit.i.i.i311.do.body1.i.i304_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i311
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i304

atomic_dec_if_positive.exit312:                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i311
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i302)
  %cmp24 = icmp sgt i32 %sub.i.i302, -1
  br i1 %cmp24, label %if.then25, label %atomic_dec_if_positive.exit312.if.end29_crit_edge

atomic_dec_if_positive.exit312.if.end29_crit_edge: ; preds = %atomic_dec_if_positive.exit312
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %atomic_dec_if_positive.exit312
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %np_thread_state3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %np_thread_state3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  %np_restart_comp28 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 10
  tail call void @complete(ptr noundef %np_restart_comp28) #12
  tail call void @iscsit_free_conn(ptr noundef %call11)
  br label %cleanup

if.end29:                                         ; preds = %atomic_dec_if_positive.exit312.if.end29_crit_edge, %do.body1.i.i304.if.end29_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  tail call void @iscsit_free_conn(ptr noundef %call11)
  br label %cleanup

if.end32:                                         ; preds = %if.else18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 256) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #15
  br label %new_sess_out

if.end.i:                                         ; preds = %if.end32
  %login2.i = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 41
  %26 = ptrtoint ptr %login2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %login2.i, align 8
  %conn3.i = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 21
  %27 = ptrtoint ptr %conn3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call11, ptr %conn3.i, align 4
  %first_request.i = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %first_request.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %first_request.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i38.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 8192) #18
  %req_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %req_buf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i38.i, ptr %req_buf.i, align 4
  %tobool6.not.i = icmp eq ptr %call7.i.i38.i, null
  br i1 %tobool6.not.i, label %do.end10.i, label %if.end13.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #15
  br label %out_login.i

if.end13.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i39.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 8192) #18
  %rsp_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 20
  %32 = ptrtoint ptr %rsp_buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i39.i, ptr %rsp_buf.i, align 8
  %tobool16.not.i = icmp eq ptr %call7.i.i39.i, null
  br i1 %tobool16.not.i, label %do.end20.i, label %if.end36

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #15
  %33 = ptrtoint ptr %req_buf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %req_buf.i, align 4
  tail call void @kfree(ptr noundef %34) #12
  br label %out_login.i

out_login.i:                                      ; preds = %do.end20.i, %do.end10.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %new_sess_out

if.end36:                                         ; preds = %if.end13.i
  %conn_login.i = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 60
  %35 = ptrtoint ptr %conn_login.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %conn_login.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %np_login_timer_flags.i = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 6
  %36 = ptrtoint ptr %np_login_timer_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %np_login_timer_flags.i, align 8
  %and.i320 = and i32 %37, -4
  %or.i = or i32 %and.i320, 1
  store i32 %or.i, ptr %np_login_timer_flags.i, align 8
  %np_login_timer.i = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %38, 1500
  %call.i = tail call i32 @mod_timer(ptr noundef %np_login_timer.i, i32 noundef %add.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_start_login_thread_timer.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__iscsi_target_login_thread, %if.then.i)) #12
          to label %iscsi_start_login_thread_timer.exit [label %if.then.i], !srcloc !282

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_start_login_thread_timer.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.105, i32 noundef 15) #12
  br label %iscsi_start_login_thread_timer.exit

iscsi_start_login_thread_timer.exit:              ; preds = %if.then.i, %if.end36
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_login_thread.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__iscsi_target_login_thread, %if.then41)) #12
          to label %do.end [label %if.then41], !srcloc !282

if.then41:                                        ; preds = %iscsi_start_login_thread_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_login_thread.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.60) #12
  br label %do.end

do.end:                                           ; preds = %if.then41, %iscsi_start_login_thread_timer.exit
  %conn_state = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 2
  %39 = ptrtoint ptr %conn_state to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %conn_state, align 1
  %40 = ptrtoint ptr %np_transport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %np_transport, align 4
  %iscsit_get_login_rx = getelementptr inbounds %struct.iscsit_transport, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %iscsit_get_login_rx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iscsit_get_login_rx, align 4
  %call44 = tail call i32 %43(ptr noundef nonnull %call11, ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call44)
  %cmp45 = icmp eq i32 %call44, 1
  br i1 %cmp45, label %do.end.cleanup_crit_edge, label %if.else47

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else47:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp48 = icmp slt i32 %call44, 0
  br i1 %cmp48, label %if.else47.new_sess_out_crit_edge, label %if.end51

if.else47.new_sess_out_crit_edge:                 ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sess_out

if.end51:                                         ; preds = %if.else47
  %req = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 17
  %itt = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 17, i32 16
  %44 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %itt, align 4
  %login_itt = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 14
  %46 = ptrtoint ptr %login_itt to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %login_itt, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %47 = ptrtoint ptr %np_thread_state3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %np_thread_state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp54.not = icmp eq i32 %48, 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  br i1 %cmp54.not, label %if.end63, label %if.then55

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %np_sockaddr = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 12
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %np_sockaddr) #15
  %call62 = tail call i32 @iscsit_tx_login_rsp(ptr noundef nonnull %call11, i8 noundef zeroext 3, i8 noundef zeroext 1) #12
  br label %new_sess_out

if.end63:                                         ; preds = %if.end51
  %49 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %np, align 128
  %conv = trunc i32 %50 to i8
  %network_transport = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 4
  %51 = ptrtoint ptr %network_transport to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv, ptr %network_transport, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_login_thread.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__iscsi_target_login_thread, %if.then77)) #12
          to label %do.body82 [label %if.then77], !srcloc !282

if.then77:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %login_sockaddr = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 17
  %52 = ptrtoint ptr %np_transport to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %np_transport, align 4
  %local_sockaddr = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 18
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_login_thread.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.62, ptr noundef %login_sockaddr, ptr noundef %53, ptr noundef %local_sockaddr) #12
  br label %do.body82

do.body82:                                        ; preds = %if.then77, %if.end63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_login_thread.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__iscsi_target_login_thread, %if.then94)) #12
          to label %do.end97 [label %if.then94], !srcloc !282

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_login_thread.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.63) #12
  br label %do.end97

do.end97:                                         ; preds = %if.then94, %do.body82
  %54 = ptrtoint ptr %conn_state to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %conn_state, align 1
  %max_version = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 17, i32 2
  %55 = ptrtoint ptr %max_version to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %max_version, align 2
  %min_version = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 17, i32 3
  %57 = ptrtoint ptr %min_version to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %min_version, align 1
  %call99 = tail call fastcc i32 @iscsi_login_check_initiator_version(ptr noundef nonnull %call11, i8 noundef zeroext %56, i8 noundef zeroext %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %do.end97.new_sess_out_crit_edge, label %if.end103

do.end97.new_sess_out_crit_edge:                  ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sess_out

if.end103:                                        ; preds = %do.end97
  %tsih = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 17, i32 14
  %59 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tsih, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp105 = icmp eq i16 %60, 0
  %conv107 = zext i1 %cmp105 to i8
  br i1 %cmp105, label %if.then109, label %if.else115

if.then109:                                       ; preds = %if.end103
  %call110 = tail call fastcc i32 @iscsi_login_zero_tsih_s1(ptr noundef nonnull %call11, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then109.new_sess_out_crit_edge, label %if.then109.if.end121_crit_edge

if.then109.if.end121_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then109.new_sess_out_crit_edge:                ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sess_out

if.else115:                                       ; preds = %if.end103
  %call116 = tail call fastcc i32 @iscsi_login_non_zero_tsih_s1(ptr noundef nonnull %call11, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.else115.new_sess_out_crit_edge, label %if.else115.if.end121_crit_edge

if.else115.if.end121_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.else115.new_sess_out_crit_edge:                ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sess_out

if.end121:                                        ; preds = %if.else115.if.end121_crit_edge, %if.then109.if.end121_crit_edge
  %call122 = tail call i32 @iscsi_target_locate_portal(ptr noundef %np, ptr noundef nonnull %call11, ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  %tpg126 = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 66
  %61 = ptrtoint ptr %tpg126 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tpg126, align 4
  br label %new_sess_out

if.end127:                                        ; preds = %if.end121
  %zero_tsih129 = getelementptr inbounds %struct.iscsi_login, ptr %call7.i.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %zero_tsih129 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv107, ptr %zero_tsih129, align 1
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 68
  %64 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sess, align 4
  %tobool131.not = icmp eq ptr %65, null
  br i1 %tobool131.not, label %if.end127.if.end135_crit_edge, label %if.then132

if.end127.if.end135_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then132:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #14
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 61
  %66 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %conn_transport, align 8
  %iscsit_get_sup_prot_ops = getelementptr inbounds %struct.iscsit_transport, ptr %67, i32 0, i32 24
  %68 = ptrtoint ptr %iscsit_get_sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iscsit_get_sup_prot_ops, align 4
  %call133 = tail call i32 %69(ptr noundef nonnull %call11) #12
  %70 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sess, align 4
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %71, i32 0, i32 48
  %72 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %se_sess, align 4
  %sup_prot_ops = getelementptr inbounds %struct.se_session, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call133, ptr %sup_prot_ops, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end127.if.end135_crit_edge
  %tpg136 = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 66
  %75 = ptrtoint ptr %tpg136 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tpg136, align 4
  %tobool137.not = icmp eq ptr %76, null
  br i1 %tobool137.not, label %do.end141, label %if.end144

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #15
  br label %new_sess_out

if.end144:                                        ; preds = %if.end135
  br i1 %cmp105, label %if.then146, label %if.else152

if.then146:                                       ; preds = %if.end144
  %call147 = tail call fastcc i32 @iscsi_login_zero_tsih_s2(ptr noundef nonnull %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then146.new_sess_out_crit_edge, label %if.then146.if.end158_crit_edge

if.then146.if.end158_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.then146.new_sess_out_crit_edge:                ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sess_out

if.else152:                                       ; preds = %if.end144
  %call153 = tail call fastcc i32 @iscsi_login_non_zero_tsih_s2(ptr noundef nonnull %call11, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %if.else152.old_sess_out_crit_edge, label %if.else152.if.end158_crit_edge

if.else152.if.end158_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.else152.old_sess_out_crit_edge:                ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #14
  br label %old_sess_out

if.end158:                                        ; preds = %if.else152.if.end158_crit_edge, %if.then146.if.end158_crit_edge
  %conn_transport159 = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 61
  %77 = ptrtoint ptr %conn_transport159 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %conn_transport159, align 8
  %iscsit_validate_params = getelementptr inbounds %struct.iscsit_transport, ptr %78, i32 0, i32 22
  %79 = ptrtoint ptr %iscsit_validate_params to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iscsit_validate_params, align 4
  %tobool160.not = icmp eq ptr %80, null
  br i1 %tobool160.not, label %if.end158.if.end172_crit_edge, label %if.then161

if.end158.if.end172_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

if.then161:                                       ; preds = %if.end158
  %call164 = tail call i32 %80(ptr noundef nonnull %call11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.then167, label %if.then161.if.end172_crit_edge

if.then161.if.end172_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

if.then167:                                       ; preds = %if.then161
  br i1 %cmp105, label %if.then167.new_sess_out_crit_edge, label %if.then167.old_sess_out_crit_edge

if.then167.old_sess_out_crit_edge:                ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %old_sess_out

if.then167.new_sess_out_crit_edge:                ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sess_out

if.end172:                                        ; preds = %if.then161.if.end172_crit_edge, %if.end158.if.end172_crit_edge
  %call173 = tail call i32 @iscsi_target_start_negotiation(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.end172.new_sess_out_crit_edge, label %if.end177

if.end172.new_sess_out_crit_edge:                 ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_sess_out

if.end177:                                        ; preds = %if.end172
  tail call fastcc void @iscsi_stop_login_thread_timer(ptr noundef %np)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call173)
  %cmp178 = icmp eq i32 %call173, 1
  br i1 %cmp178, label %if.then180, label %if.end177.cleanup_crit_edge

if.end177.cleanup_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then180:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  %tpg_np181 = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 67
  %81 = ptrtoint ptr %tpg_np181 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tpg_np181, align 16
  tail call void @iscsi_post_login_handler(ptr undef, ptr noundef nonnull %call11, i8 noundef zeroext %conv107)
  %call182 = tail call i32 @iscsit_deaccess_np(ptr noundef %np, ptr noundef nonnull %76, ptr noundef %82) #12
  br label %cleanup

new_sess_out:                                     ; preds = %if.end172.new_sess_out_crit_edge, %if.then167.new_sess_out_crit_edge, %if.then146.new_sess_out_crit_edge, %do.end141, %if.then125, %if.else115.new_sess_out_crit_edge, %if.then109.new_sess_out_crit_edge, %do.end97.new_sess_out_crit_edge, %if.then55, %if.else47.new_sess_out_crit_edge, %out_login.i, %do.end.i
  %tpg.0 = phi ptr [ null, %if.else47.new_sess_out_crit_edge ], [ null, %if.then55 ], [ null, %do.end97.new_sess_out_crit_edge ], [ null, %if.then109.new_sess_out_crit_edge ], [ %62, %if.then125 ], [ %76, %if.then146.new_sess_out_crit_edge ], [ %76, %if.then167.new_sess_out_crit_edge ], [ %76, %if.end172.new_sess_out_crit_edge ], [ null, %do.end141 ], [ null, %if.else115.new_sess_out_crit_edge ], [ null, %out_login.i ], [ null, %do.end.i ]
  %zero_tsih.0 = phi i8 [ 0, %if.else47.new_sess_out_crit_edge ], [ 0, %if.then55 ], [ 0, %do.end97.new_sess_out_crit_edge ], [ 1, %if.then109.new_sess_out_crit_edge ], [ %conv107, %if.then125 ], [ 1, %if.then146.new_sess_out_crit_edge ], [ 1, %if.then167.new_sess_out_crit_edge ], [ %conv107, %if.end172.new_sess_out_crit_edge ], [ %conv107, %do.end141 ], [ 0, %if.else115.new_sess_out_crit_edge ], [ 0, %out_login.i ], [ 0, %do.end.i ]
  br label %old_sess_out

old_sess_out:                                     ; preds = %new_sess_out, %if.then167.old_sess_out_crit_edge, %if.else152.old_sess_out_crit_edge
  %new_sess.0.off0 = phi i1 [ true, %new_sess_out ], [ false, %if.then167.old_sess_out_crit_edge ], [ false, %if.else152.old_sess_out_crit_edge ]
  %tpg.1 = phi ptr [ %tpg.0, %new_sess_out ], [ %76, %if.then167.old_sess_out_crit_edge ], [ %76, %if.else152.old_sess_out_crit_edge ]
  %zero_tsih.1 = phi i8 [ %zero_tsih.0, %new_sess_out ], [ 0, %if.then167.old_sess_out_crit_edge ], [ 0, %if.else152.old_sess_out_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %np_login_timer_flags.i323 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 6
  %83 = ptrtoint ptr %np_login_timer_flags.i323 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %np_login_timer_flags.i323, align 8
  %and.i324 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i324)
  %tobool.not.i325 = icmp eq i32 %and.i324, 0
  br i1 %tobool.not.i325, label %old_sess_out.iscsi_stop_login_thread_timer.exit_crit_edge, label %if.end.i329

old_sess_out.iscsi_stop_login_thread_timer.exit_crit_edge: ; preds = %old_sess_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %iscsi_stop_login_thread_timer.exit

if.end.i329:                                      ; preds = %old_sess_out
  call void @__sanitizer_cov_trace_pc() #14
  %or.i326 = or i32 %84, 2
  %85 = ptrtoint ptr %np_login_timer_flags.i323 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i326, ptr %np_login_timer_flags.i323, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  %np_login_timer.i327 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 14
  %call.i328 = tail call i32 @del_timer_sync(ptr noundef %np_login_timer.i327) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %86 = ptrtoint ptr %np_login_timer_flags.i323 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %np_login_timer_flags.i323, align 8
  %and6.i = and i32 %87, -2
  store i32 %and6.i, ptr %np_login_timer_flags.i323, align 8
  br label %iscsi_stop_login_thread_timer.exit

iscsi_stop_login_thread_timer.exit:               ; preds = %if.end.i329, %old_sess_out.iscsi_stop_login_thread_timer.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  %tpg_np184 = getelementptr inbounds %struct.iscsi_conn, ptr %call11, i32 0, i32 67
  %88 = ptrtoint ptr %tpg_np184 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tpg_np184, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zero_tsih.1)
  %tobool185 = icmp ne i8 %zero_tsih.1, 0
  tail call void @iscsi_target_login_sess_out(ptr noundef nonnull %call11, i1 noundef zeroext %tobool185, i1 noundef zeroext %new_sess.0.off0)
  %tobool187.not = icmp eq ptr %tpg.1, null
  br i1 %tobool187.not, label %iscsi_stop_login_thread_timer.exit.cleanup_crit_edge, label %if.then188

iscsi_stop_login_thread_timer.exit.cleanup_crit_edge: ; preds = %iscsi_stop_login_thread_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then188:                                       ; preds = %iscsi_stop_login_thread_timer.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call189 = tail call i32 @iscsit_deaccess_np(ptr noundef %np, ptr noundef nonnull %tpg.1, ptr noundef %89) #12
  br label %cleanup

exit:                                             ; preds = %if.then16, %if.then5
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %np_login_timer_flags.i331 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 6
  %90 = ptrtoint ptr %np_login_timer_flags.i331 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %np_login_timer_flags.i331, align 8
  %and.i332 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %tobool.not.i333 = icmp eq i32 %and.i332, 0
  br i1 %tobool.not.i333, label %exit.iscsi_stop_login_thread_timer.exit339_crit_edge, label %if.end.i338

exit.iscsi_stop_login_thread_timer.exit339_crit_edge: ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %iscsi_stop_login_thread_timer.exit339

if.end.i338:                                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #14
  %or.i334 = or i32 %91, 2
  %92 = ptrtoint ptr %np_login_timer_flags.i331 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i334, ptr %np_login_timer_flags.i331, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  %np_login_timer.i335 = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 14
  %call.i336 = tail call i32 @del_timer_sync(ptr noundef %np_login_timer.i335) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %93 = ptrtoint ptr %np_login_timer_flags.i331 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %np_login_timer_flags.i331, align 8
  %and6.i337 = and i32 %94, -2
  store i32 %and6.i337, ptr %np_login_timer_flags.i331, align 8
  br label %iscsi_stop_login_thread_timer.exit339

iscsi_stop_login_thread_timer.exit339:            ; preds = %if.end.i338, %exit.iscsi_stop_login_thread_timer.exit339_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %95 = ptrtoint ptr %np_thread_state3 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 5, ptr %np_thread_state3, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %iscsi_stop_login_thread_timer.exit339, %if.then188, %iscsi_stop_login_thread_timer.exit.cleanup_crit_edge, %if.then180, %if.end177.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end29, %if.then25, %if.else7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %iscsi_stop_login_thread_timer.exit339 ], [ 1, %if.then25 ], [ 1, %if.end29 ], [ 1, %if.else7.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %if.then180 ], [ 1, %if.end177.cleanup_crit_edge ], [ 1, %if.then188 ], [ 1, %iscsi_stop_login_thread_timer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_start_nopin_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iscsit_alloc_conn(ptr nocapture noundef readonly %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1536) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #15
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_alloc_conn.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_alloc_conn, %if.then8)) #12
          to label %do.end11 [label %if.then8], !srcloc !282

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_alloc_conn.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.69) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2
  %conn_state = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %conn_state to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %conn_state, align 1
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @iscsit_alloc_conn.__key) #12
  %conn_list = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 75
  %2 = ptrtoint ptr %conn_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %conn_list, ptr %conn_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 75, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %conn_list, ptr %prev.i, align 8
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 56
  %4 = ptrtoint ptr %conn_cmd_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %conn_cmd_list, ptr %conn_cmd_list, align 8
  %prev.i97 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 56, i32 1
  %5 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %conn_cmd_list, ptr %prev.i97, align 4
  %immed_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 57
  %6 = ptrtoint ptr %immed_queue_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %immed_queue_list, ptr %immed_queue_list, align 8
  %prev.i98 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 57, i32 1
  %7 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %immed_queue_list, ptr %prev.i98, align 4
  %response_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 58
  %8 = ptrtoint ptr %response_queue_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %response_queue_list, ptr %response_queue_list, align 8
  %prev.i99 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 58, i32 1
  %9 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %response_queue_list, ptr %prev.i99, align 4
  %conn_post_wait_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 29
  %10 = ptrtoint ptr %conn_post_wait_comp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %conn_post_wait_comp, align 4
  %wait.i = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 29, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %conn_wait_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 30
  %11 = ptrtoint ptr %conn_wait_comp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %conn_wait_comp, align 4
  %wait.i100 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 30, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i100, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %conn_wait_rcfr_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 31
  %12 = ptrtoint ptr %conn_wait_rcfr_comp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %conn_wait_rcfr_comp, align 4
  %wait.i101 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 31, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i101, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %conn_waiting_on_uc_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 32
  %13 = ptrtoint ptr %conn_waiting_on_uc_comp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %conn_waiting_on_uc_comp, align 4
  %wait.i102 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 32, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i102, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %conn_logout_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 33
  %14 = ptrtoint ptr %conn_logout_comp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %conn_logout_comp, align 4
  %wait.i103 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 33, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i103, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %rx_half_close_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 35
  %15 = ptrtoint ptr %rx_half_close_comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %rx_half_close_comp, align 4
  %wait.i104 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 35, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i104, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %tx_half_close_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 34
  %16 = ptrtoint ptr %tx_half_close_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tx_half_close_comp, align 4
  %wait.i105 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 34, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i105, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %rx_login_comp = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 72
  %17 = ptrtoint ptr %rx_login_comp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %rx_login_comp, align 4
  %wait.i106 = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 72, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i106, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 46
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_lock, ptr noundef nonnull @.str.72, ptr noundef nonnull @iscsit_alloc_conn.__key.71, i16 noundef signext 3) #12
  %conn_usage_lock = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 47
  tail call void @__raw_spin_lock_init(ptr noundef %conn_usage_lock, ptr noundef nonnull @.str.74, ptr noundef nonnull @iscsit_alloc_conn.__key.73, i16 noundef signext 3) #12
  %immed_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 48
  tail call void @__raw_spin_lock_init(ptr noundef %immed_queue_lock, ptr noundef nonnull @.str.76, ptr noundef nonnull @iscsit_alloc_conn.__key.75, i16 noundef signext 3) #12
  %nopin_timer_lock = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 49
  tail call void @__raw_spin_lock_init(ptr noundef %nopin_timer_lock, ptr noundef nonnull @.str.78, ptr noundef nonnull @iscsit_alloc_conn.__key.77, i16 noundef signext 3) #12
  %response_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 50
  tail call void @__raw_spin_lock_init(ptr noundef %response_queue_lock, ptr noundef nonnull @.str.80, ptr noundef nonnull @iscsit_alloc_conn.__key.79, i16 noundef signext 3) #12
  %state_lock = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 51
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.82, ptr noundef nonnull @iscsit_alloc_conn.__key.81, i16 noundef signext 3) #12
  %nopin_response_timer = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 43
  tail call void @init_timer_key(ptr noundef %nopin_response_timer, ptr noundef nonnull @iscsit_handle_nopin_response_timeout, i32 noundef 0, ptr noundef nonnull @.str.84, ptr noundef nonnull @iscsit_alloc_conn.__key.83) #12
  %nopin_timer = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 42
  tail call void @init_timer_key(ptr noundef %nopin_timer, ptr noundef nonnull @iscsit_handle_nopin_timeout, i32 noundef 0, ptr noundef nonnull @.str.86, ptr noundef nonnull @iscsit_alloc_conn.__key.85) #12
  %np_transport = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 16
  %18 = ptrtoint ptr %np_transport to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %np_transport, align 4
  %owner.i = getelementptr inbounds %struct.iscsit_transport, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %owner.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %do.end11.if.end47_crit_edge, label %if.end.i

do.end11.if.end47_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.end.i:                                         ; preds = %do.end11
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef nonnull %21) #12
  br i1 %call.i, label %if.end.i.if.end47_crit_edge, label %iscsit_conn_set_transport.exit

if.end.i.if.end47_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

iscsit_conn_set_transport.exit:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %19) #15
  br label %free_conn

if.end47:                                         ; preds = %if.end.i.if.end47_crit_edge, %do.end11.if.end47_crit_edge
  %conn_transport6.i = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 61
  %22 = ptrtoint ptr %conn_transport6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %conn_transport6.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i108 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 20) #18
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 59
  %24 = ptrtoint ptr %conn_ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i108, ptr %conn_ops, align 16
  %tobool50.not = icmp eq ptr %call7.i.i108, null
  br i1 %tobool50.not, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #15
  br label %put_transport

if.end57:                                         ; preds = %if.end47
  %conn_cpumask = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 54
  %call58 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %conn_cpumask, i32 noundef 3264) #12
  br i1 %call58, label %if.end57.cleanup_crit_edge, label %do.end62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #15
  %25 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn_ops, align 16
  tail call void @kfree(ptr noundef %26) #12
  br label %put_transport

put_transport:                                    ; preds = %do.end62, %do.end54
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %call7.i.i, i32 0, i32 61
  %27 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %conn_transport, align 8
  tail call void @iscsit_put_transport(ptr noundef %28) #12
  br label %free_conn

free_conn:                                        ; preds = %put_transport, %iscsit_conn_set_transport.exit
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_conn, %if.end57.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %free_conn ], [ null, %do.end ], [ %call7.i.i, %if.end57.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_login_check_initiator_version(ptr noundef %conn, i8 noundef zeroext %version_max, i8 noundef zeroext %version_min) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %version_min, %version_max
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %1 = icmp eq i8 %0, 0
  br i1 %1, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %version_max to i32
  %conv5 = zext i8 %version_min to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, i32 noundef %conv5, i32 noundef %conv) #15
  %call7 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 5) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_login_zero_tsih_s1(ptr noundef %conn, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 768) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cid = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 9
  %1 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cid, align 4
  %sess1.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %3 = ptrtoint ptr %sess1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %sess1.i, align 4
  %cid2.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %4 = ptrtoint ptr %cid2.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %2, ptr %cid2.i, align 2
  %stat_sn.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 16
  %call.i.i107 = tail call i32 @wait_for_random_bytes() #12
  tail call void @get_random_bytes(ptr noundef %stat_sn.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %tobool.not.i = icmp eq i32 %call.i.i107, 0
  br i1 %tobool.not.i, label %if.end6, label %if.end.free_sess_crit_edge, !prof !288

if.end.free_sess_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_sess

if.end6:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @auth_id_lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %5 = load ptr, ptr @iscsit_global, align 4
  %auth_id.i = getelementptr inbounds %struct.iscsit_global, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %auth_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %auth_id.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %auth_id.i, align 4
  %auth_id5.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 12
  %8 = ptrtoint ptr %auth_id5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %auth_id5.i, align 16
  tail call void @mutex_unlock(ptr noundef nonnull @auth_id_lock) #12
  %itt = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 8
  %9 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %itt, align 4
  %init_task_tag = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %init_task_tag, align 8
  %isid = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 1
  %isid7 = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %isid, ptr %isid7, i32 6)
  %cmdsn = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 11
  %13 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmdsn, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %exp_cmd_sn, align 128
  %sess_conn_list = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 34
  %16 = ptrtoint ptr %sess_conn_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %sess_conn_list, ptr %sess_conn_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 34, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sess_conn_list, ptr %prev.i, align 8
  %sess_ooo_cmdsn_list = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %sess_ooo_cmdsn_list, ptr %sess_ooo_cmdsn_list, align 8
  %prev.i108 = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %prev.i108 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sess_ooo_cmdsn_list, ptr %prev.i108, align 4
  %cr_active_list = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 35
  %20 = ptrtoint ptr %cr_active_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %cr_active_list, ptr %cr_active_list, align 4
  %prev.i109 = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 35, i32 1
  %21 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cr_active_list, ptr %prev.i109, align 8
  %cr_inactive_list = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 36
  %22 = ptrtoint ptr %cr_inactive_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %cr_inactive_list, ptr %cr_inactive_list, align 4
  %prev.i110 = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 36, i32 1
  %23 = ptrtoint ptr %prev.i110 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cr_inactive_list, ptr %prev.i110, align 8
  %async_msg_comp = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 42
  %24 = ptrtoint ptr %async_msg_comp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %async_msg_comp, align 8
  %wait.i = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 42, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %reinstatement_comp = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 43
  %25 = ptrtoint ptr %reinstatement_comp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %reinstatement_comp, align 8
  %wait.i111 = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 43, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i111, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %session_wait_comp = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 44
  %26 = ptrtoint ptr %session_wait_comp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %session_wait_comp, align 8
  %wait.i112 = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 44, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i112, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %session_waiting_on_uc_comp = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 45
  %27 = ptrtoint ptr %session_waiting_on_uc_comp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %session_waiting_on_uc_comp, align 8
  %wait.i113 = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 45, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i113, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #12
  %cmdsn_mutex = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %cmdsn_mutex, ptr noundef nonnull @.str.110, ptr noundef nonnull @iscsi_login_zero_tsih_s1.__key) #12
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 37
  tail call void @__raw_spin_lock_init(ptr noundef %conn_lock, ptr noundef nonnull @.str.112, ptr noundef nonnull @iscsi_login_zero_tsih_s1.__key.111, i16 noundef signext 3) #12
  %cr_a_lock = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 38
  tail call void @__raw_spin_lock_init(ptr noundef %cr_a_lock, ptr noundef nonnull @.str.114, ptr noundef nonnull @iscsi_login_zero_tsih_s1.__key.113, i16 noundef signext 3) #12
  %cr_i_lock = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 39
  tail call void @__raw_spin_lock_init(ptr noundef %cr_i_lock, ptr noundef nonnull @.str.116, ptr noundef nonnull @iscsi_login_zero_tsih_s1.__key.115, i16 noundef signext 3) #12
  %session_usage_lock = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 40
  tail call void @__raw_spin_lock_init(ptr noundef %session_usage_lock, ptr noundef nonnull @.str.118, ptr noundef nonnull @iscsi_login_zero_tsih_s1.__key.117, i16 noundef signext 3) #12
  %ttt_lock = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 41
  tail call void @__raw_spin_lock_init(ptr noundef %ttt_lock, ptr noundef nonnull @.str.120, ptr noundef nonnull @iscsi_login_zero_tsih_s1.__key.119, i16 noundef signext 3) #12
  %time2retain_timer = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 46
  tail call void @init_timer_key(ptr noundef %time2retain_timer, ptr noundef nonnull @iscsit_handle_time2retain_timeout, i32 noundef 0, ptr noundef nonnull @.str.122, ptr noundef nonnull @iscsi_login_zero_tsih_s1.__key.121) #12
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @sess_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end38, label %if.end42

do.end38:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %call.i) #15
  %call41 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  br label %free_sess

if.end42:                                         ; preds = %if.end6
  %session_index = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %session_index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i, ptr %session_index, align 4
  %call43 = tail call i64 @get_jiffies_64() #12
  %creation_time = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 26
  %29 = ptrtoint ptr %creation_time to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call43, ptr %creation_time, align 64
  %max_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 13
  %30 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmdsn, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_cmd_sn, i32 noundef 4) #12
  %32 = ptrtoint ptr %max_cmd_sn to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %31, ptr %max_cmd_sn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 1244) #18
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 47
  %34 = ptrtoint ptr %sess_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i114, ptr %sess_ops, align 8
  %tobool47.not = icmp eq ptr %call7.i.i114, null
  br i1 %tobool47.not, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #15
  br label %free_id

if.end55:                                         ; preds = %if.end42
  %call56 = tail call ptr @transport_alloc_session(i32 noundef 0) #12
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %call7.i.i, i32 0, i32 48
  %35 = ptrtoint ptr %se_sess to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call56, ptr %se_sess, align 4
  %cmp.i = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  %36 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sess_ops, align 8
  tail call void @kfree(ptr noundef %37) #12
  br label %free_id

free_id:                                          ; preds = %if.then59, %if.then48
  %38 = ptrtoint ptr %session_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %session_index, align 4
  tail call void @ida_free(ptr noundef nonnull @sess_ida, i32 noundef %39) #12
  br label %free_sess

free_sess:                                        ; preds = %free_id, %do.end38, %if.end.free_sess_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %40 = ptrtoint ptr %sess1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %sess1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_sess, %if.end55.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -12, %free_sess ], [ -12, %if.then ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_login_non_zero_tsih_s1(ptr noundef %conn, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cid = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 9
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cid, align 4
  %sess1.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %2 = ptrtoint ptr %sess1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sess1.i, align 4
  %cid2.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %3 = ptrtoint ptr %cid2.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %1, ptr %cid2.i, align 2
  %stat_sn.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 16
  %call.i.i = tail call i32 @wait_for_random_bytes() #12
  tail call void @get_random_bytes(ptr noundef %stat_sn.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.iscsi_login_set_conn_values.exit_crit_edge, !prof !288

entry.iscsi_login_set_conn_values.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %iscsi_login_set_conn_values.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @auth_id_lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %4 = load ptr, ptr @iscsit_global, align 4
  %auth_id.i = getelementptr inbounds %struct.iscsit_global, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %auth_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth_id.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %auth_id.i, align 4
  %auth_id5.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 12
  %7 = ptrtoint ptr %auth_id5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %auth_id5.i, align 16
  tail call void @mutex_unlock(ptr noundef nonnull @auth_id_lock) #12
  br label %iscsi_login_set_conn_values.exit

iscsi_login_set_conn_values.exit:                 ; preds = %if.end.i, %entry.iscsi_login_set_conn_values.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_locate_portal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_login_zero_tsih_s2(ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  %mrdsl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %tpg = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %2 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg, align 4
  %tpg2 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %tpg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %tpg2, align 16
  %ntsih = getelementptr inbounds %struct.iscsi_portal_group, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %ntsih to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ntsih, align 2
  %inc = add i16 %6, 1
  store i16 %inc, ptr %ntsih, align 2
  %tsih = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %tsih to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %inc, ptr %tsih, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %tobool.not = icmp eq i16 %inc, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %tpg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tpg2, align 16
  %ntsih6 = getelementptr inbounds %struct.iscsi_portal_group, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ntsih6 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ntsih6, align 2
  %inc7 = add i16 %11, 1
  store i16 %inc7, ptr %ntsih6, align 2
  %12 = ptrtoint ptr %tsih to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %inc7, ptr %tsih, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %13 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tpg, align 4
  %param_list10 = getelementptr inbounds %struct.iscsi_portal_group, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %param_list10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %param_list10, align 4
  %call = tail call i32 @iscsi_copy_param_list(ptr noundef %param_list, ptr noundef %16, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  br label %cleanup90

if.end13:                                         ; preds = %if.end
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %17 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn_transport, align 8
  %transport_type = getelementptr inbounds %struct.iscsit_transport, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %transport_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transport_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp14 = icmp eq i32 %20, 5
  %21 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %param_list, align 4
  %call19 = tail call i32 @iscsi_set_keys_to_negotiate(ptr noundef %22, i1 noundef zeroext %cmp14) #12
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 47
  %23 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sess_ops, align 8
  %SessionType = getelementptr inbounds %struct.iscsi_sess_ops, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %SessionType to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %SessionType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool20.not = icmp eq i8 %26, 0
  br i1 %tobool20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %param_list, align 4
  %call23 = tail call i32 @iscsi_set_keys_irrelevant_for_discovery(ptr noundef %28) #12
  br label %cleanup90

if.end24:                                         ; preds = %if.end13
  %call25 = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %1) #12
  %29 = ptrtoint ptr %tpg2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tpg2, align 16
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %32 to i32
  %call27 = tail call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.129, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.cleanup90_crit_edge

if.end24.cleanup90_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.end30:                                         ; preds = %if.end24
  %default_erl = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call25, i32 0, i32 2
  %33 = ptrtoint ptr %default_erl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %default_erl, align 4
  %call31 = tail call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.130, i32 noundef %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp ne i32 %call31, 0
  %cmp14.not = xor i1 %cmp14, true
  %brmerge = or i1 %tobool32.not, %cmp14.not
  %.mux = sext i1 %tobool32.not to i32
  br i1 %brmerge, label %if.end30.cleanup90_crit_edge, label %if.then36

if.end30.cleanup90_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

if.then36:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mrdsl) #12
  %35 = ptrtoint ptr %mrdsl to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %mrdsl, align 4, !annotation !283
  %call37 = tail call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %cleanup90.critedge122

if.end40:                                         ; preds = %if.then36
  %36 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %param_list, align 4
  %call42 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.132, ptr noundef %37) #12
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrdsl) #12
  br label %cleanup90

if.end46:                                         ; preds = %if.end40
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call42, i32 0, i32 1
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %value, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %39, i32 noundef 0, ptr noundef nonnull %mrdsl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp48 = icmp slt i32 %call.i, 0
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrdsl) #12
  br label %cleanup90

if.end52:                                         ; preds = %if.end46
  %40 = ptrtoint ptr %mrdsl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mrdsl, align 4
  %rem = and i32 %41, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool53.not = icmp eq i32 %rem, 0
  br i1 %tobool53.not, label %if.end52.check_prot_crit_edge, label %if.end55

if.end52.check_prot_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_prot

if.end55:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %41)
  %cmp56 = icmp ult i32 %41, 4096
  %sub = and i32 %41, -4096
  %storemerge = select i1 %cmp56, i32 4096, i32 %sub
  %42 = ptrtoint ptr %mrdsl to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge, ptr %mrdsl, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %storemerge) #15
  %43 = ptrtoint ptr %mrdsl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mrdsl, align 4
  %call61 = call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.135, i32 noundef %44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end55.check_prot_crit_edge, label %cleanup90.critedge123

if.end55.check_prot_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_prot

check_prot:                                       ; preds = %if.end55.check_prot_crit_edge, %if.end52.check_prot_crit_edge
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 48
  %45 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %se_sess, align 4
  %sup_prot_ops = getelementptr inbounds %struct.se_session, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %sup_prot_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sup_prot_ops, align 8
  %and = and i32 %48, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool65.not = icmp eq i32 %and, 0
  br i1 %tobool65.not, label %check_prot.cleanup_crit_edge, label %if.then66

check_prot.cleanup_crit_edge:                     ; preds = %check_prot
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then66:                                        ; preds = %check_prot
  %call67 = call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.136)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %cleanup90.critedge124

if.end70:                                         ; preds = %if.then66
  %call71 = call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.137)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body75, label %cleanup90.critedge125

do.body75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_login_zero_tsih_s2.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_login_zero_tsih_s2, %if.then81)) #12
          to label %cleanup [label %if.then81], !srcloc !282

if.then81:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_login_zero_tsih_s2.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.138) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body75, %check_prot.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrdsl) #12
  br label %cleanup90

cleanup90.critedge122:                            ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrdsl) #12
  br label %cleanup90

cleanup90.critedge123:                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrdsl) #12
  br label %cleanup90

cleanup90.critedge124:                            ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrdsl) #12
  br label %cleanup90

cleanup90.critedge125:                            ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mrdsl) #12
  br label %cleanup90

cleanup90:                                        ; preds = %cleanup90.critedge125, %cleanup90.critedge124, %cleanup90.critedge123, %cleanup90.critedge122, %cleanup, %if.then50, %if.then44, %if.end30.cleanup90_crit_edge, %if.end24.cleanup90_crit_edge, %if.then21, %if.then11
  %retval.1 = phi i32 [ -1, %if.then11 ], [ %call23, %if.then21 ], [ -1, %if.end24.cleanup90_crit_edge ], [ %.mux, %if.end30.cleanup90_crit_edge ], [ -1, %if.then50 ], [ -1, %if.then44 ], [ -1, %cleanup90.critedge122 ], [ -1, %cleanup90.critedge123 ], [ -1, %cleanup90.critedge124 ], [ -1, %cleanup90.critedge125 ], [ 0, %cleanup ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_login_non_zero_tsih_s2(ptr noundef %conn, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 4
  %session_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock) #12
  %tpg_sess_list = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 9
  %2 = ptrtoint ptr %tpg_sess_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg_sess_list, align 4
  %cmp.not114 = icmp eq ptr %3, %tpg_sess_list
  br i1 %cmp.not114, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %isid15 = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 6
  %tsih19 = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 7
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #12
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in115 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn116, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in115 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn116 = load ptr, ptr %.pn.in115, align 4
  %fabric_sess_ptr = getelementptr i8, ptr %.pn.in115, i32 -12
  %5 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fabric_sess_ptr, align 8
  %session_fall_back_to_erl0 = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_fall_back_to_erl0, i32 noundef 4) #12
  %7 = ptrtoint ptr %session_fall_back_to_erl0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %session_fall_back_to_erl0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %session_logout = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 30
  %call.i.i106 = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_logout, i32 noundef 4) #12
  %9 = ptrtoint ptr %session_logout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %session_logout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %session_close = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 33
  %call.i.i107 = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_close, i32 noundef 4) #12
  %11 = ptrtoint ptr %session_close to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %session_close, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false10.for.inc_crit_edge

lor.lhs.false10.for.inc_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %time2retain_timer_flags = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %time2retain_timer_flags, align 8
  %and = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end, label %lor.lhs.false13.for.inc_crit_edge

lor.lhs.false13.for.inc_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false13
  %isid = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %isid, ptr noundef dereferenceable(6) %isid15, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool18.not = icmp eq i32 %bcmp, 0
  br i1 %tobool18.not, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %tsih = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 6
  %15 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tsih, align 2
  %17 = ptrtoint ptr %tsih19 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tsih19, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp21 = icmp eq i16 %16, %18
  br i1 %cmp21, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %lor.lhs.false13.for.inc_crit_edge, %lor.lhs.false10.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn116, %tpg_sess_list
  br i1 %cmp.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  tail call void @iscsit_inc_session_usage_count(ptr noundef %6) #12
  %call24 = tail call i32 @iscsit_stop_time2retain_timer(ptr noundef %6) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #12
  %tobool32.not = icmp eq ptr %6, null
  br i1 %tobool32.not, label %for.end.do.end_crit_edge, label %if.end37

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.end.thread
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #15
  %call36 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 10) #12
  br label %cleanup

if.end37:                                         ; preds = %for.end
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock) #12
  %session_state = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 7
  %19 = ptrtoint ptr %session_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %session_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp38 = icmp eq i32 %20, 4
  br i1 %cmp38, label %if.then40, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %session_continuation = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 28
  %call.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_continuation, i32 noundef 4) #12
  %21 = ptrtoint ptr %session_continuation to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %session_continuation, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock) #12
  %cid = getelementptr inbounds %struct.iscsi_login_req, ptr %buf, i32 0, i32 9
  %22 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cid, align 4
  %sess1.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %24 = ptrtoint ptr %sess1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %6, ptr %sess1.i, align 4
  %cid2.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %25 = ptrtoint ptr %cid2.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %23, ptr %cid2.i, align 2
  %stat_sn.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 16
  %call.i.i109 = tail call i32 @wait_for_random_bytes() #12
  tail call void @get_random_bytes(ptr noundef %stat_sn.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool.not.i = icmp eq i32 %call.i.i109, 0
  br i1 %tobool.not.i, label %iscsi_login_set_conn_values.exit.thread, label %iscsi_login_set_conn_values.exit, !prof !288

iscsi_login_set_conn_values.exit.thread:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @auth_id_lock, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %26 = load ptr, ptr @iscsit_global, align 4
  %auth_id.i = getelementptr inbounds %struct.iscsit_global, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %auth_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %auth_id.i, align 4
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %auth_id.i, align 4
  %auth_id5.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 12
  %29 = ptrtoint ptr %auth_id5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %auth_id5.i, align 16
  tail call void @mutex_unlock(ptr noundef nonnull @auth_id_lock) #12
  br label %lor.lhs.false46

iscsi_login_set_conn_values.exit:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %cmp44 = icmp slt i32 %call.i.i109, 0
  br i1 %cmp44, label %iscsi_login_set_conn_values.exit.if.then52_crit_edge, label %iscsi_login_set_conn_values.exit.lor.lhs.false46_crit_edge

iscsi_login_set_conn_values.exit.lor.lhs.false46_crit_edge: ; preds = %iscsi_login_set_conn_values.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false46

iscsi_login_set_conn_values.exit.if.then52_crit_edge: ; preds = %iscsi_login_set_conn_values.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

lor.lhs.false46:                                  ; preds = %iscsi_login_set_conn_values.exit.lor.lhs.false46_crit_edge, %iscsi_login_set_conn_values.exit.thread
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %30 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tpg1, align 4
  %param_list48 = getelementptr inbounds %struct.iscsi_portal_group, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %param_list48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %param_list48, align 4
  %call49 = tail call i32 @iscsi_copy_param_list(ptr noundef %param_list, ptr noundef %33, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %lor.lhs.false46.if.then52_crit_edge, label %if.end54

lor.lhs.false46.if.then52_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false46.if.then52_crit_edge, %iscsi_login_set_conn_values.exit.if.then52_crit_edge
  %call53 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #12
  br label %cleanup

if.end54:                                         ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #14
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %34 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conn_transport, align 8
  %transport_type = getelementptr inbounds %struct.iscsit_transport, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %transport_type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %transport_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp55 = icmp eq i32 %37, 5
  %38 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %param_list, align 4
  %call61 = tail call i32 @iscsi_set_keys_to_negotiate(ptr noundef %39, i1 noundef zeroext %cmp55) #12
  %tpg62 = getelementptr inbounds %struct.iscsi_session, ptr %6, i32 0, i32 49
  %40 = ptrtoint ptr %tpg62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tpg62, align 16
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tpgt, align 8
  %conv63 = zext i16 %43 to i32
  %call64 = tail call i32 (ptr, ptr, ...) @iscsi_change_param_sprintf(ptr noundef %conn, ptr noundef nonnull @.str.129, i32 noundef %conv63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp ne i32 %call64, 0
  %spec.select = sext i1 %tobool65.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then52, %do.end
  %retval.0 = phi i32 [ -1, %if.then52 ], [ -1, %do.end ], [ %spec.select, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_start_negotiation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iscsi_stop_login_thread_timer(ptr noundef %np) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %np_thread_lock = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %np_login_timer_flags = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 6
  %0 = ptrtoint ptr %np_login_timer_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %np_login_timer_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %1, 2
  %2 = ptrtoint ptr %np_login_timer_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %np_login_timer_flags, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  %np_login_timer = getelementptr inbounds %struct.iscsi_np, ptr %np, i32 0, i32 14
  %call = tail call i32 @del_timer_sync(ptr noundef %np_login_timer) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %np_thread_lock) #12
  %3 = ptrtoint ptr %np_login_timer_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %np_login_timer_flags, align 8
  %and6 = and i32 %4, -2
  store i32 %and6, ptr %np_login_timer_flags, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %np_thread_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_deaccess_np(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_handle_nopin_response_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_handle_nopin_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_handle_time2retain_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @transport_alloc_session(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_copy_param_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_set_keys_to_negotiate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_set_keys_irrelevant_for_discovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_tpg_get_node_attrib(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !240, !242, !243, !244, !246, !248, !250, !252, !254, !255, !256, !257, !259, !261, !263, !265, !266, !268, !269, !270}
!llvm.named.register.sp = !{!271}
!llvm.module.flags = !{!272, !273, !274, !275, !276, !277, !278, !279}
!llvm.ident = !{!280}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 87, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 89, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @iscsi_login_setup_crypto._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @iscsi_login_setup_crypto._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 95, i32 3}
!10 = !{ptr @iscsi_login_setup_crypto._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @iscsi_login_setup_crypto._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 103, i32 3}
!14 = !{ptr @iscsi_login_setup_crypto._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @iscsi_login_setup_crypto._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 141, i32 4}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 143, i32 4}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 150, i32 51}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 187, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iscsi_check_for_session_reinstatement.__UNIQUE_ID_ddebug494, !23, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!27 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__ksymtab_iscsi_change_param_sprintf, !29, !"__ksymtab_iscsi_change_param_sprintf", i1 false, i1 false}
!29 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 249, i32 1}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 566, i32 3}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @iscsi_login_post_auth_non_zero_tsih._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @iscsi_login_post_auth_non_zero_tsih._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 587, i32 4}
!37 = !{ptr @iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug496, !36, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 600, i32 2}
!40 = !{ptr @iscsi_login_post_auth_non_zero_tsih.__UNIQUE_ID_ddebug497, !39, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 604, i32 3}
!43 = !{ptr @iscsi_login_post_auth_non_zero_tsih._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @iscsi_login_post_auth_non_zero_tsih._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 638, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @iscsit_start_kthreads._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @iscsit_start_kthreads._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 643, i32 20}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 646, i32 3}
!55 = !{ptr @iscsit_start_kthreads._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @iscsit_start_kthreads._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 652, i32 20}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 655, i32 3}
!61 = !{ptr @iscsit_start_kthreads._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @iscsit_start_kthreads._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 690, i32 2}
!65 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug498, !64, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 706, i32 4}
!69 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug499, !68, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 712, i32 3}
!72 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug500, !71, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 718, i32 3}
!75 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug501, !74, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!76 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug502, !77, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!77 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 756, i32 2}
!78 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug503, !79, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!79 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 759, i32 2}
!80 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug504, !81, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!81 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 766, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 774, i32 2}
!84 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug505, !83, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 781, i32 2}
!87 = !{ptr @iscsi_post_login_handler.__UNIQUE_ID_ddebug506, !86, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 806, i32 2}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @iscsi_handle_login_thread_timeout._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @iscsi_handle_login_thread_timeout._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 875, i32 3}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @iscsit_setup_np._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @iscsit_setup_np._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 883, i32 3}
!100 = !{ptr @iscsit_setup_np._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @iscsit_setup_np._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 908, i32 3}
!104 = !{ptr @iscsit_setup_np._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @iscsit_setup_np._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 914, i32 3}
!108 = !{ptr @iscsit_setup_np._entry.52, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @iscsit_setup_np._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1020, i32 2}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @iscsit_get_login_rx.__UNIQUE_ID_ddebug508, !111, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1157, i32 2}
!116 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @iscsi_target_login_sess_out._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @iscsi_target_login_sess_out._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1281, i32 2}
!121 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @__iscsi_target_login_thread.__UNIQUE_ID_ddebug510, !120, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1303, i32 3}
!125 = !{ptr @__iscsi_target_login_thread._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @__iscsi_target_login_thread._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1313, i32 2}
!129 = !{ptr @__iscsi_target_login_thread.__UNIQUE_ID_ddebug511, !128, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1317, i32 2}
!132 = !{ptr @__iscsi_target_login_thread.__UNIQUE_ID_ddebug512, !131, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1366, i32 3}
!135 = !{ptr @__iscsi_target_login_thread._entry.64, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @__iscsi_target_login_thread._entry_ptr.66, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1088, i32 3}
!139 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @iscsit_alloc_conn._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @iscsit_alloc_conn._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1091, i32 2}
!144 = !{ptr @iscsit_alloc_conn.__UNIQUE_ID_ddebug509, !143, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!145 = !{ptr @iscsit_alloc_conn.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1094, i32 2}
!147 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @iscsit_alloc_conn.__key.71, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1107, i32 2}
!150 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @iscsit_alloc_conn.__key.73, !152, !"__key", i1 false, i1 false}
!152 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1108, i32 2}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @iscsit_alloc_conn.__key.75, !155, !"__key", i1 false, i1 false}
!155 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1109, i32 2}
!156 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @iscsit_alloc_conn.__key.77, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1110, i32 2}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @iscsit_alloc_conn.__key.79, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1111, i32 2}
!162 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @iscsit_alloc_conn.__key.81, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1112, i32 2}
!165 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @iscsit_alloc_conn.__key.83, !167, !"__key", i1 false, i1 false}
!167 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1114, i32 2}
!168 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @iscsit_alloc_conn.__key.85, !170, !"__key", i1 false, i1 false}
!170 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1116, i32 2}
!171 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1123, i32 3}
!174 = !{ptr @iscsit_alloc_conn._entry.87, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @iscsit_alloc_conn._entry_ptr.89, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1128, i32 3}
!178 = !{ptr @iscsit_alloc_conn._entry.90, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @iscsit_alloc_conn._entry_ptr.92, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @init_completion.__key, !181, !"__key", i1 false, i1 false}
!181 = !{!"../include/linux/completion.h", i32 87, i32 2}
!182 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 1074, i32 3}
!185 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @iscsit_conn_set_transport._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @iscsit_conn_set_transport._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 44, i32 3}
!190 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @iscsi_login_init_conn._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @iscsi_login_init_conn._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 53, i32 3}
!195 = !{ptr @iscsi_login_init_conn._entry.98, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @iscsi_login_init_conn._entry_ptr.100, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.102, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 59, i32 3}
!199 = !{ptr @iscsi_login_init_conn._entry.101, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @iscsi_login_init_conn._entry_ptr.103, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.104, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 832, i32 2}
!203 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @iscsi_start_login_thread_timer.__UNIQUE_ID_ddebug507, !202, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!205 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 120, i32 3}
!207 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @iscsi_login_check_initiator_version._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @iscsi_login_check_initiator_version._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 267, i32 3}
!212 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @iscsi_login_zero_tsih_s1._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @iscsi_login_zero_tsih_s1._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @iscsi_login_zero_tsih_s1.__key, !216, !"__key", i1 false, i1 false}
!216 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 285, i32 2}
!217 = !{ptr @.str.110, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @iscsi_login_zero_tsih_s1.__key.111, !219, !"__key", i1 false, i1 false}
!219 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 286, i32 2}
!220 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @iscsi_login_zero_tsih_s1.__key.113, !222, !"__key", i1 false, i1 false}
!222 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 287, i32 2}
!223 = !{ptr @.str.114, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @iscsi_login_zero_tsih_s1.__key.115, !225, !"__key", i1 false, i1 false}
!225 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 288, i32 2}
!226 = !{ptr @.str.116, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @iscsi_login_zero_tsih_s1.__key.117, !228, !"__key", i1 false, i1 false}
!228 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 289, i32 2}
!229 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @iscsi_login_zero_tsih_s1.__key.119, !231, !"__key", i1 false, i1 false}
!231 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 290, i32 2}
!232 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @iscsi_login_zero_tsih_s1.__key.121, !234, !"__key", i1 false, i1 false}
!234 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 292, i32 2}
!235 = !{ptr @.str.122, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.124, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 297, i32 3}
!238 = !{ptr @iscsi_login_zero_tsih_s1._entry.123, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @iscsi_login_zero_tsih_s1._entry_ptr.125, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 315, i32 3}
!242 = !{ptr @iscsi_login_zero_tsih_s1._entry.126, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @iscsi_login_zero_tsih_s1._entry_ptr.128, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.129, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 384, i32 39}
!246 = !{ptr @.str.130, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 392, i32 39}
!248 = !{ptr @.str.131, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 403, i32 40}
!250 = !{ptr @.str.132, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 410, i32 37}
!252 = !{ptr @.str.133, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 432, i32 3}
!254 = !{ptr @.str.134, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @iscsi_login_zero_tsih_s2._entry, !253, !"_entry", i1 false, i1 false}
!256 = !{ptr @iscsi_login_zero_tsih_s2._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.135, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 435, i32 40}
!259 = !{ptr @.str.136, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 446, i32 41}
!261 = !{ptr @.str.137, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 449, i32 41}
!263 = !{ptr @.str.138, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 452, i32 4}
!265 = !{ptr @iscsi_login_zero_tsih_s2.__UNIQUE_ID_ddebug495, !264, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!266 = !{ptr @.str.139, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/target/iscsi/iscsi_target_login.c", i32 507, i32 3}
!268 = !{ptr @.str.140, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @iscsi_login_non_zero_tsih_s2._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @iscsi_login_non_zero_tsih_s2._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{!"sp"}
!272 = !{i32 1, !"wchar_size", i32 2}
!273 = !{i32 1, !"min_enum_size", i32 4}
!274 = !{i32 8, !"branch-target-enforcement", i32 0}
!275 = !{i32 8, !"sign-return-address", i32 0}
!276 = !{i32 8, !"sign-return-address-all", i32 0}
!277 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!278 = !{i32 7, !"uwtable", i32 1}
!279 = !{i32 7, !"frame-pointer", i32 2}
!280 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!281 = !{!"branch_weights", i32 1, i32 2000}
!282 = !{i64 2148791795, i64 2148791800, i64 2148791813, i64 2148791857, i64 2148791891, i64 2148791912}
!283 = !{!"auto-init"}
!284 = !{i64 2148218656, i64 2148218682, i64 2148218711, i64 2148218745, i64 2148218776, i64 2148218799}
!285 = !{i64 2148320479}
!286 = !{i64 593490, i64 593514, i64 593535, i64 593552, i64 593569}
!287 = !{i64 2148320705}
!288 = !{!"branch_weights", i32 2000, i32 1}
