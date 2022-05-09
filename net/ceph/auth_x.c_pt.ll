; ModuleID = '/llk/IR_all_yes/net/ceph/auth_x.c_pt.bc'
source_filename = "../net/ceph/auth_x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ceph_auth_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_auth_client = type { i32, ptr, ptr, i8, ptr, i64, ptr, i32, i32, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ceph_x_info = type { %struct.ceph_crypto_key, i8, i64, i32, %struct.rb_root, %struct.ceph_x_authorizer }
%struct.ceph_crypto_key = type { i32, %struct.ceph_timespec, i32, ptr, ptr }
%struct.ceph_timespec = type { i32, i32 }
%struct.rb_root = type { ptr }
%struct.ceph_x_authorizer = type { %struct.ceph_authorizer, %struct.ceph_crypto_key, ptr, i32, i64, i64, [128 x i8] }
%struct.ceph_authorizer = type { ptr }
%struct.ceph_x_ticket_handler = type { %struct.rb_node, i32, %struct.ceph_crypto_key, i8, i64, ptr, i64, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_x_request_header = type { i16 }
%struct.ceph_x_authenticate = type <{ i8, i64, i64 }>
%struct.ceph_buffer = type { %struct.kref, %struct.kvec, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kvec = type { ptr, i32 }
%struct.ceph_x_server_challenge = type <{ i8, i64 }>
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_msg = type { %struct.ceph_msg_header, %union.anon, %struct.kvec, ptr, i32, ptr, i32, i32, %struct.ceph_msg_data_cursor, ptr, %struct.list_head, %struct.kref, i8, i8, i32, ptr }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%union.anon = type { %struct.ceph_msg_footer }
%struct.ceph_msg_footer = type <{ i32, i32, i32, i64, i8 }>
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.112 }
%union.anon.112 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.119 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.115 }
%union.anon.115 = type { ptr, [124 x i8] }
%struct.timespec64 = type { i64, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.119 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.120 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.23, %union.anon.24 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.120 = type { i8, %union.anon.121 }
%union.anon.121 = type <{ %struct.anon.122, [3 x i8] }>
%struct.anon.122 = type { i32, i32, i32 }
%struct.ceph_x_authorize_a = type <{ i8, i64, i32, %struct.ceph_x_ticket_blob }>
%struct.ceph_x_ticket_blob = type <{ i8, i64, i32, [0 x i8] }>
%struct.ceph_x_authorize_b = type <{ i8, i64, i8, i64 }>
%struct.ceph_x_encrypt_header = type <{ i8, i64 }>

@ceph_x_init.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ceph_x_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/ceph/auth_x.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%.*s %12.12s:%-4d : ceph_x_init %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_x_init %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_x_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013libceph: no secret set (for auth_x protocol)\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_x_init._entry_ptr = internal global ptr @ceph_x_init._entry, section ".printk_index", align 4
@ceph_x_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013libceph: cannot clone key: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ceph_x_init._entry_ptr.9 = internal global ptr @ceph_x_init._entry.7, section ".printk_index", align 4
@ceph_x_ops = internal constant { %struct.ceph_auth_client_ops, [44 x i8] } { %struct.ceph_auth_client_ops { ptr @ceph_x_is_authenticated, ptr @ceph_x_should_authenticate, ptr @ceph_x_build_request, ptr @ceph_x_handle_reply, ptr @ceph_x_create_authorizer, ptr @ceph_x_update_authorizer, ptr @ceph_x_add_authorizer_challenge, ptr @ceph_x_verify_authorizer_reply, ptr @ceph_x_invalidate_authorizer, ptr @ceph_x_reset, ptr @ceph_x_destroy, ptr @ceph_x_sign_message, ptr @ceph_x_check_message_signature }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ceph_x_is_authenticated.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ceph_x_is_authenticated\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : %s want 0x%x have 0x%x missing 0x%x -> %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"libceph: %.*s %12.12s:%-4d : %s want 0x%x have 0x%x missing 0x%x -> %d\0A\00", [56 x i8] zeroinitializer }, align 32
@have_key.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"have_key\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : ticket %d (%s) secret_id %llu expired\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"libceph: %.*s %12.12s:%-4d : ticket %d (%s) secret_id %llu expired\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_x_should_authenticate.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ceph_x_should_authenticate\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : %s want 0x%x have 0x%x need 0x%x -> %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"libceph: %.*s %12.12s:%-4d : %s want 0x%x have 0x%x need 0x%x -> %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_x_build_request.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_x_build_request\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : %s want 0x%x have 0x%x need 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"libceph: %.*s %12.12s:%-4d : %s want 0x%x have 0x%x need 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ceph_x_build_request.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d :  get_auth_session_key\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"libceph: %.*s %12.12s:%-4d :  get_auth_session_key\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_x_build_request.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.24, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%.*s %12.12s:%-4d :  server_challenge %llx client_challenge %llx key %llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"libceph: %.*s %12.12s:%-4d :  server_challenge %llx client_challenge %llx key %llx\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_x_build_request.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.26, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d :  get_principal_session_key\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"libceph: %.*s %12.12s:%-4d :  get_principal_session_key\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_x_build_authorizer.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ceph_x_build_authorizer\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : build_authorizer for %s %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"libceph: %.*s %12.12s:%-4d : build_authorizer for %s %p\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_x_build_authorizer.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.*s %12.12s:%-4d :   need len %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"libceph: %.*s %12.12s:%-4d :   need len %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_x_build_authorizer.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d :  th %p secret_id %lld %lld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"libceph: %.*s %12.12s:%-4d :  th %p secret_id %lld %lld\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_x_build_authorizer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013libceph: failed to encrypt authorizer: %d\00", [52 x i8] zeroinitializer }, align 32
@ceph_x_build_authorizer._entry_ptr = internal global ptr @ceph_x_build_authorizer._entry, section ".printk_index", align 4
@ceph_x_build_authorizer.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.36, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%.*s %12.12s:%-4d :  built authorizer nonce %llx len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"libceph: %.*s %12.12s:%-4d :  built authorizer nonce %llx len %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ceph_x_handle_reply.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_x_handle_reply\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : handle_reply got server challenge %llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"libceph: %.*s %12.12s:%-4d : handle_reply got server challenge %llx\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_x_handle_reply.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : handle_reply op %d result %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"libceph: %.*s %12.12s:%-4d : handle_reply op %d result %d\0A\00", [37 x i8] zeroinitializer }, align 32
@handle_auth_session_key.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"handle_auth_session_key\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : %s connection secret blob len %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"libceph: %.*s %12.12s:%-4d : %s connection secret blob len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@handle_auth_session_key.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : %s decrypted %d bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"libceph: %.*s %12.12s:%-4d : %s decrypted %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@handle_auth_session_key.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.48, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : %s service tickets blob len %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"libceph: %.*s %12.12s:%-4d : %s service tickets blob len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__ceph_x_decrypt._entry = internal constant %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 90, ptr null, ptr null }, align 1
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013libceph: %s bad magic\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__ceph_x_decrypt\00", [47 x i8] zeroinitializer }, align 32
@__ceph_x_decrypt._entry_ptr = internal global ptr @__ceph_x_decrypt._entry, section ".printk_index", align 4
@decode_con_secret.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"decode_con_secret\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%.*s %12.12s:%-4d : %s len %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"libceph: %.*s %12.12s:%-4d : %s len %d\0A\00", [56 x i8] zeroinitializer }, align 32
@decode_con_secret._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013libceph: connection secret too big %d\0A\00", [55 x i8] zeroinitializer }, align 32
@decode_con_secret._entry_ptr = internal global ptr @decode_con_secret._entry, section ".printk_index", align 4
@decode_con_secret._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.2, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013libceph: failed to decode connection secret\0A\00", [49 x i8] zeroinitializer }, align 32
@decode_con_secret._entry_ptr.58 = internal global ptr @decode_con_secret._entry.56, section ".printk_index", align 4
@ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ceph_x_proc_ticket_reply\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%.*s %12.12s:%-4d : %d tickets\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"libceph: %.*s %12.12s:%-4d : %d tickets\0A\00", [55 x i8] zeroinitializer }, align 32
@process_one_ticket.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process_one_ticket\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d :  ticket type %d %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d :  ticket type %d %s\0A\00", [47 x i8] zeroinitializer }, align 32
@process_one_ticket.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.65, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d :  decrypted %d bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libceph: %.*s %12.12s:%-4d :  decrypted %d bytes\0A\00", [46 x i8] zeroinitializer }, align 32
@process_one_ticket.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.67, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d :  expires=%llu renew_after=%llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"libceph: %.*s %12.12s:%-4d :  expires=%llu renew_after=%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@process_one_ticket.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.69, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d :  encrypted ticket, decrypted %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"libceph: %.*s %12.12s:%-4d :  encrypted ticket, decrypted %d bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@process_one_ticket.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.71, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d :  ticket blob is %d bytes\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"libceph: %.*s %12.12s:%-4d :  ticket blob is %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@process_one_ticket.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.73, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%.*s %12.12s:%-4d :  got ticket service %d (%s) secret_id %lld len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"libceph: %.*s %12.12s:%-4d :  got ticket service %d (%s) secret_id %lld len %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_x_update_authorizer.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ceph_x_update_authorizer\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%.*s %12.12s:%-4d : ceph_x_update_authorizer service %u secret %llu < %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_x_update_authorizer service %u secret %llu < %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_x_add_authorizer_challenge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013libceph: failed to decrypt authorize challenge: %d\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ceph_x_add_authorizer_challenge\00", [32 x i8] zeroinitializer }, align 32
@ceph_x_add_authorizer_challenge._entry_ptr = internal global ptr @ceph_x_add_authorizer_challenge._entry, section ".printk_index", align 4
@ceph_x_add_authorizer_challenge._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013libceph: failed to encrypt authorizer w/ challenge: %d\00", [39 x i8] zeroinitializer }, align 32
@ceph_x_add_authorizer_challenge._entry_ptr.82 = internal global ptr @ceph_x_add_authorizer_challenge._entry.80, section ".printk_index", align 4
@decrypt_authorizer_challenge.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.46, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"decrypt_authorizer_challenge\00", [35 x i8] zeroinitializer }, align 32
@decrypt_authorizer_challenge.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : %s server_challenge %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"libceph: %.*s %12.12s:%-4d : %s server_challenge %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_x_verify_authorizer_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013libceph: failed to authenticate server\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ceph_x_verify_authorizer_reply\00", [33 x i8] zeroinitializer }, align 32
@ceph_x_verify_authorizer_reply._entry_ptr = internal global ptr @ceph_x_verify_authorizer_reply._entry, section ".printk_index", align 4
@decrypt_authorizer_reply.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.46, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"decrypt_authorizer_reply\00", [39 x i8] zeroinitializer }, align 32
@decrypt_authorizer_reply.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : %s nonce_plus_one %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : %s nonce_plus_one %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@invalidate_ticket.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalidate_ticket\00", [46 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : ticket %d (%s) secret_id %llu invalidated\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"libceph: %.*s %12.12s:%-4d : ticket %d (%s) secret_id %llu invalidated\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_x_reset.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_x_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%.*s %12.12s:%-4d : reset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"libceph: %.*s %12.12s:%-4d : reset\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_x_destroy.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_x_destroy\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : ceph_x_destroy %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_x_destroy %p\0A\00", [48 x i8] zeroinitializer }, align 32
@remove_ticket_handler.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"remove_ticket_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : remove_ticket_handler %p %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : remove_ticket_handler %p %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_x_check_message_signature.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ceph_x_check_message_signature\00", [33 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%.*s %12.12s:%-4d : ceph_x_check_message_signature %p has signature %llx expect %llx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_x_check_message_signature %p has signature %llx expect %llx\0A\00", [33 x i8] zeroinitializer }, align 32
@ceph_x_check_message_signature.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.106, i8 1, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%.*s %12.12s:%-4d : ceph_x_check_message_signature %p sender did not set CEPH_MSG_FOOTER_SIGNED\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_x_check_message_signature %p sender did not set CEPH_MSG_FOOTER_SIGNED\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1092, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1100, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1106, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"ceph_x_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1070, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 31, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 450, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 42, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 503, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 517, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 533, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 550, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 362, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 372, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 399, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 405, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 409, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 685, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 695, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 634, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 641, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 651, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 90, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 580, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 583, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 596, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 283, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 183, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 200, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 216, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 227, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 236, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 257, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 782, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 828, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 834, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 804, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 810, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 897, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 857, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 862, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 942, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 908, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 918, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 152, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1062, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.439 = private constant [21 x i8] c"../net/ceph/auth_x.c\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.439, i32 1065, i32 3 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__ceph_x_decrypt._entry, ptr @__ceph_x_decrypt._entry_ptr, ptr @ceph_x_add_authorizer_challenge._entry, ptr @ceph_x_add_authorizer_challenge._entry.80, ptr @ceph_x_add_authorizer_challenge._entry_ptr, ptr @ceph_x_add_authorizer_challenge._entry_ptr.82, ptr @ceph_x_build_authorizer._entry, ptr @ceph_x_build_authorizer._entry_ptr, ptr @ceph_x_init._entry, ptr @ceph_x_init._entry.7, ptr @ceph_x_init._entry_ptr, ptr @ceph_x_init._entry_ptr.9, ptr @ceph_x_verify_authorizer_reply._entry, ptr @ceph_x_verify_authorizer_reply._entry_ptr, ptr @decode_con_secret._entry, ptr @decode_con_secret._entry.56, ptr @decode_con_secret._entry_ptr, ptr @decode_con_secret._entry_ptr.58, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ceph_x_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_x_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_x_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_x_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_x_build_authorizer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_con_secret._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_con_secret._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_x_add_authorizer_challenge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_x_add_authorizer_challenge._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_x_verify_authorizer_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_x_init(ptr noundef %ac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_init.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_init.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1092, ptr noundef %ac) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 232) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %key = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 6
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %key, align 8
  %tobool8.not = icmp eq ptr %2, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %out_nomem

if.end15:                                         ; preds = %if.end7
  %call17 = tail call i32 @ceph_crypto_key_clone(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call17) #12
  br label %out_nomem

if.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %starting = getelementptr inbounds %struct.ceph_x_info, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %starting to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %starting, align 8
  %ticket_handlers = getelementptr inbounds %struct.ceph_x_info, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %ticket_handlers to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ticket_handlers, align 4
  %5 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %ac, align 8
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private, align 4
  %ops = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ceph_x_ops, ptr %ops, align 8
  br label %cleanup

out_nomem:                                        ; preds = %do.end21, %do.end12
  %ret.0 = phi i32 [ %call17, %do.end21 ], [ -22, %do.end12 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_nomem, %if.end24, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %ret.0, %out_nomem ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_crypto_key_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_is_authenticated(ptr nocapture noundef readonly %ac) #0 align 64 {
entry:
  %need = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %need) #8
  %2 = ptrtoint ptr %need to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %need, align 4, !annotation !213
  call fastcc void @ceph_x_validate_tickets(ptr noundef %ac, ptr noundef nonnull %need)
  %want_keys = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 7
  %3 = ptrtoint ptr %want_keys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %want_keys, align 4
  %have_keys = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %have_keys, align 8
  %neg = xor i32 %6, -1
  %and = and i32 %4, %neg
  %7 = ptrtoint ptr %need to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %need, align 4
  %and1 = and i32 %8, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %and)
  %cmp.not = icmp eq i32 %and1, %and
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 30, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_is_authenticated.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_is_authenticated, %if.then29)) #8
          to label %do.end38 [label %if.then29], !srcloc !212

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %want_keys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %want_keys, align 4
  %11 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %have_keys, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %lnot.ext35 = zext i1 %tobool33.not to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_is_authenticated.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %10, i32 noundef %12, i32 noundef %and, i32 noundef %lnot.ext35) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then29, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  %lnot.ext41 = zext i1 %tobool39.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %need) #8
  ret i32 %lnot.ext41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_should_authenticate(ptr nocapture noundef readonly %ac) #0 align 64 {
entry:
  %need = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %need) #8
  %2 = ptrtoint ptr %need to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %need, align 4, !annotation !213
  call fastcc void @ceph_x_validate_tickets(ptr noundef %ac, ptr noundef nonnull %need)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_should_authenticate.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_should_authenticate, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %want_keys = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 7
  %3 = ptrtoint ptr %want_keys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %want_keys, align 4
  %have_keys = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %have_keys, align 8
  %7 = ptrtoint ptr %need to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %need, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4 = icmp ne i32 %8, 0
  %lnot.ext8 = zext i1 %tobool4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_should_authenticate.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 43, ptr noundef nonnull @.str.16, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %lnot.ext8) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %need to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %need, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9 = icmp ne i32 %10, 0
  %lnot.ext13 = zext i1 %tobool9 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %need) #8
  ret i32 %lnot.ext13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_build_request(ptr nocapture noundef readonly %ac, ptr noundef %buf, ptr noundef %end) #0 align 64 {
entry:
  %ciphertext_len.i = alloca i32, align 4
  %need = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %need) #8
  %2 = ptrtoint ptr %need to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %need, align 4, !annotation !213
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %4, null
  br i1 %tobool.not36.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %5 = phi ptr [ %9, %if.end6.i.while.body.i_crit_edge ], [ %4, %entry.while.body.i_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp.i = icmp ugt i32 %7, 32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp3.i.not = icmp eq i32 %7, 32
  br i1 %cmp3.i.not, label %if.else.i.get_ticket_handler.exit_crit_edge, label %if.then4.i

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %8 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %5 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %entry.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.if.then_crit_edge, label %if.end10.i

while.end.i.if.then_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %service11.i, align 4
  %12 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_left.i.i, align 8
  %15 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i280 = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %5, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i281 = icmp ugt ptr %retval.0.i280, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i281, label %get_ticket_handler.exit.if.then_crit_edge, label %if.end

get_ticket_handler.exit.if.then_crit_edge:        ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %get_ticket_handler.exit.if.then_crit_edge, %while.end.i.if.then_crit_edge
  %retval.0.i280332 = phi ptr [ %retval.0.i280, %get_ticket_handler.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.end.i.if.then_crit_edge ]
  %16 = ptrtoint ptr %retval.0.i280332 to i32
  br label %cleanup219

if.end:                                           ; preds = %get_ticket_handler.exit
  call fastcc void @ceph_x_validate_tickets(ptr noundef %ac, ptr noundef nonnull %need)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_request.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_request, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !212

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %want_keys = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 7
  %17 = ptrtoint ptr %want_keys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %want_keys, align 4
  %have_keys = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %have_keys, align 8
  %21 = ptrtoint ptr %need to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %need, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_request.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 504, ptr noundef nonnull @.str.19, i32 noundef %18, i32 noundef %20, i32 noundef %22) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %23 = ptrtoint ptr %need to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %need, align 4
  %and = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end121, label %if.then10

if.then10:                                        ; preds = %do.end
  %add.ptr = getelementptr %struct.ceph_x_request_header, ptr %buf, i32 1
  %enc_buf11 = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 6
  %add.ptr13 = getelementptr %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 6, i32 13
  %add.ptr14 = getelementptr %struct.ceph_x_authenticate, ptr %add.ptr, i32 1
  %cmp = icmp ugt ptr %add.ptr14, %end
  br i1 %cmp, label %if.then10.cleanup219_crit_edge, label %do.body17

if.then10.cleanup219_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.body17:                                        ; preds = %if.then10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_request.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_request, %if.then29)) #8
          to label %do.end33 [label %if.then29], !srcloc !212

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_request.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 517) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body17
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 1, ptr %buf, align 1
  %client_challenge = getelementptr inbounds %struct.ceph_x_authenticate, ptr %add.ptr, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %client_challenge, i32 noundef 8) #8
  %26 = ptrtoint ptr %client_challenge to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %client_challenge, align 1
  %client_challenge35 = getelementptr %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 6, i32 21
  %28 = ptrtoint ptr %client_challenge35 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %client_challenge35, align 1
  %server_challenge = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %server_challenge to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %server_challenge, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30)
  %32 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %add.ptr13, align 1
  %add.ptr.i = getelementptr %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 6, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ciphertext_len.i) #8
  %33 = ptrtoint ptr %ciphertext_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %ciphertext_len.i, align 4, !annotation !213
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %add.ptr.i, align 1
  %magic.i = getelementptr %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 6, i32 5
  %35 = ptrtoint ptr %magic.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 6172788607734776063, ptr %magic.i, align 1
  %call.i = call i32 @ceph_crypt(ptr noundef %1, i1 noundef zeroext true, ptr noundef %add.ptr.i, i32 noundef 124, i32 noundef 25, ptr noundef nonnull %ciphertext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i282 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i282, label %if.end.i, label %do.end33.ceph_x_encrypt.exit_crit_edge

do.end33.ceph_x_encrypt.exit_crit_edge:           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_x_encrypt.exit

if.end.i:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %ciphertext_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ciphertext_len.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #8
  %39 = ptrtoint ptr %enc_buf11 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %enc_buf11, align 1
  %add2.i = add i32 %37, 4
  br label %ceph_x_encrypt.exit

ceph_x_encrypt.exit:                              ; preds = %if.end.i, %do.end33.ceph_x_encrypt.exit_crit_edge
  %retval.0.i283 = phi i32 [ %add2.i, %if.end.i ], [ %call.i, %do.end33.ceph_x_encrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ciphertext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i283)
  %cmp38 = icmp slt i32 %retval.0.i283, 0
  br i1 %cmp38, label %ceph_x_encrypt.exit.cleanup219_crit_edge, label %if.end40

ceph_x_encrypt.exit.cleanup219_crit_edge:         ; preds = %ceph_x_encrypt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

if.end40:                                         ; preds = %ceph_x_encrypt.exit
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %add.ptr, align 1
  %key = getelementptr inbounds %struct.ceph_x_authenticate, ptr %add.ptr, i32 0, i32 2
  %add.ptr42 = getelementptr i8, ptr %enc_buf11, i32 %retval.0.i283
  %41 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %key, align 1
  %add.ptr41343 = getelementptr %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 6, i32 8
  %cmp43.not344 = icmp ugt ptr %add.ptr41343, %add.ptr42
  br i1 %cmp43.not344, label %if.end40.do.body45_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.end40.do.body45_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end40.for.body_crit_edge
  %add.ptr41347 = phi ptr [ %add.ptr41, %for.body.for.body_crit_edge ], [ %add.ptr41343, %if.end40.for.body_crit_edge ]
  %u.0346 = phi ptr [ %add.ptr41347, %for.body.for.body_crit_edge ], [ %enc_buf11, %if.end40.for.body_crit_edge ]
  %storemerge345 = phi i64 [ %xor, %for.body.for.body_crit_edge ], [ 0, %if.end40.for.body_crit_edge ]
  %42 = ptrtoint ptr %u.0346 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %u.0346, align 8
  %xor = xor i64 %43, %storemerge345
  %44 = ptrtoint ptr %key to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %xor, ptr %key, align 1
  %add.ptr41 = getelementptr i64, ptr %add.ptr41347, i32 1
  %cmp43.not = icmp ugt ptr %add.ptr41, %add.ptr42
  br i1 %cmp43.not, label %for.body.do.body45_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.do.body45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

do.body45:                                        ; preds = %for.body.do.body45_crit_edge, %if.end40.do.body45_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_request.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_request, %if.then57)) #8
          to label %do.end64 [label %if.then57], !srcloc !212

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %server_challenge to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %server_challenge, align 8
  %47 = ptrtoint ptr %client_challenge to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %client_challenge, align 1
  %49 = call i64 @llvm.bswap.i64(i64 %48)
  %50 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %key, align 1
  %52 = call i64 @llvm.bswap.i64(i64 %51)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_request.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 535, i64 noundef %46, i64 noundef %49, i64 noundef %52) #8
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body45
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr14 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 8
  br i1 %cmp1.i.i, label %do.end.i, label %do.end64.cleanup219_crit_edge, !prof !214

do.end64.cleanup219_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end.i:                                         ; preds = %do.end64
  %53 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %add.ptr14, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr14, i32 1
  %secret_id.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i280, i32 0, i32 4
  %54 = ptrtoint ptr %secret_id.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %secret_id.i, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55) #8
  %57 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %incdec.ptr.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %incdec.ptr.i.i, i32 8
  %ticket_blob.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i280, i32 0, i32 5
  %58 = ptrtoint ptr %ticket_blob.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ticket_blob.i, align 8
  %tobool2.not.i = icmp eq ptr %59, null
  br i1 %tobool2.not.i, label %do.body38.i, label %if.then3.i

if.then3.i:                                       ; preds = %do.end.i
  %vec.i = getelementptr inbounds %struct.ceph_buffer, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %vec.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vec.i, align 4
  %iov_len.i = getelementptr inbounds %struct.ceph_buffer, ptr %59, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iov_len.i, align 4
  %cmp.not.i69.i = icmp ule ptr %add.ptr.i.i, %end
  %sub.ptr.rhs.cast.i71.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i72.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i72.i)
  %cmp1.i73.i = icmp ugt i32 %sub.ptr.sub.i72.i, 3
  %64 = and i1 %cmp.not.i69.i, %cmp1.i73.i
  br i1 %64, label %do.end18.i, label %if.then3.i.cleanup219_crit_edge, !prof !214

if.then3.i.cleanup219_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end18.i:                                       ; preds = %if.then3.i
  %65 = call i32 @llvm.bswap.i32(i32 %63) #8
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %65, ptr %add.ptr.i.i, align 1
  %add.ptr.i74.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %cmp.not.i75.i = icmp ule ptr %add.ptr.i74.i, %end
  %sub.ptr.rhs.cast.i77.i = ptrtoint ptr %add.ptr.i74.i to i32
  %sub.ptr.sub.i78.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i77.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i78.i, i32 %63)
  %cmp1.i79.i = icmp uge i32 %sub.ptr.sub.i78.i, %63
  %67 = select i1 %cmp.not.i75.i, i1 %cmp1.i79.i, i1 false
  br i1 %67, label %cleanup.i, label %do.end18.i.cleanup219_crit_edge, !prof !214

do.end18.i.cleanup219_crit_edge:                  ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

cleanup.i:                                        ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = call ptr @memcpy(ptr %add.ptr.i74.i, ptr %61, i32 %63)
  br label %if.end68

do.body38.i:                                      ; preds = %do.end.i
  %cmp.not.i81.i = icmp ule ptr %add.ptr.i.i, %end
  %sub.ptr.rhs.cast.i83.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i84.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i84.i)
  %cmp1.i85.i = icmp ugt i32 %sub.ptr.sub.i84.i, 3
  %69 = and i1 %cmp.not.i81.i, %cmp1.i85.i
  br i1 %69, label %do.end49.i, label %do.body38.i.cleanup219_crit_edge, !prof !214

do.body38.i.cleanup219_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end49.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 0, ptr %add.ptr.i.i, align 1
  br label %if.end68

if.end68:                                         ; preds = %do.end49.i, %cleanup.i
  %p.0 = phi ptr [ %add.ptr.i.i, %do.end49.i ], [ %add.ptr.i74.i, %cleanup.i ]
  %.sink89.i = phi i32 [ 4, %do.end49.i ], [ %63, %cleanup.i ]
  %add.ptr.i80.i = getelementptr i8, ptr %p.0, i32 %.sink89.i
  %want_keys69 = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 7
  %71 = ptrtoint ptr %want_keys69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %want_keys69, align 4
  %and70 = and i32 %72, -33
  %73 = ptrtoint ptr %need to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and70, ptr %need, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.end89, label %if.end68.if.end95_crit_edge, !prof !215

if.end68.if.end95_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

do.end89:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 544, i32 noundef 9, ptr noundef null) #8
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end68.if.end95_crit_edge
  %cmp.not.i = icmp ule ptr %add.ptr.i80.i, %end
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i80.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 3
  %74 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %74, label %do.end115, label %if.end95.cleanup219_crit_edge, !prof !214

if.end95.cleanup219_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end115:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %75 = call i32 @llvm.bswap.i32(i32 %and70) #8
  %76 = ptrtoint ptr %add.ptr.i80.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 %75, ptr %add.ptr.i80.i, align 1
  %add.ptr.i285 = getelementptr i8, ptr %add.ptr.i80.i, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i285 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup219

if.end121:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool122.not = icmp eq i32 %24, 0
  br i1 %tobool122.not, label %if.end121.cleanup219_crit_edge, label %do.body124

if.end121.cleanup219_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.body124:                                       ; preds = %if.end121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_request.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_request, %if.then136)) #8
          to label %do.end140 [label %if.then136], !srcloc !212

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_request.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 550) #8
  br label %do.end140

do.end140:                                        ; preds = %if.then136, %do.body124
  %auth_authorizer141 = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 5
  %call142 = tail call fastcc i32 @ceph_x_build_authorizer(ptr noundef %ac, ptr noundef nonnull %retval.0.i280, ptr noundef %auth_authorizer141)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %do.end140.cleanup219_crit_edge

do.end140.cleanup219_crit_edge:                   ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

if.end145:                                        ; preds = %do.end140
  %cmp.not.i286 = icmp ule ptr %buf, %end
  %sub.ptr.lhs.cast.i287 = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i288 = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i289 = sub i32 %sub.ptr.lhs.cast.i287, %sub.ptr.rhs.cast.i288
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i289)
  %cmp1.i290 = icmp ugt i32 %sub.ptr.sub.i289, 1
  %77 = and i1 %cmp.not.i286, %cmp1.i290
  br i1 %77, label %do.end158, label %if.end145.cleanup219_crit_edge, !prof !214

if.end145.cleanup219_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end158:                                        ; preds = %if.end145
  %78 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 2, ptr %buf, align 1
  %add.ptr.i291 = getelementptr i8, ptr %buf, i32 2
  %buf164 = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 2
  %79 = ptrtoint ptr %buf164 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buf164, align 4
  %iov_len = getelementptr inbounds %struct.ceph_buffer, ptr %80, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iov_len, align 4
  %cmp.not.i292 = icmp ule ptr %add.ptr.i291, %end
  %sub.ptr.rhs.cast.i294 = ptrtoint ptr %add.ptr.i291 to i32
  %sub.ptr.sub.i295 = sub i32 %sub.ptr.lhs.cast.i287, %sub.ptr.rhs.cast.i294
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i295, i32 %82)
  %cmp1.i296 = icmp uge i32 %sub.ptr.sub.i295, %82
  %83 = select i1 %cmp.not.i292, i1 %cmp1.i296, i1 false
  br i1 %83, label %do.end175, label %do.end158.cleanup219_crit_edge, !prof !214

do.end158.cleanup219_crit_edge:                   ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end175:                                        ; preds = %do.end158
  %vec178 = getelementptr inbounds %struct.ceph_buffer, ptr %80, i32 0, i32 1
  %84 = ptrtoint ptr %vec178 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vec178, align 4
  %86 = call ptr @memcpy(ptr %add.ptr.i291, ptr %85, i32 %82)
  %add.ptr.i297 = getelementptr i8, ptr %add.ptr.i291, i32 %82
  %87 = icmp ult ptr %add.ptr.i297, %end
  br i1 %87, label %do.end197, label %do.end175.cleanup219_crit_edge, !prof !214

do.end175.cleanup219_crit_edge:                   ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end197:                                        ; preds = %do.end175
  %88 = ptrtoint ptr %add.ptr.i297 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %add.ptr.i297, align 1
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i297, i32 1
  %cmp.not.i303 = icmp ule ptr %incdec.ptr.i, %end
  %sub.ptr.rhs.cast.i305 = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i306 = sub i32 %sub.ptr.lhs.cast.i287, %sub.ptr.rhs.cast.i305
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i306)
  %cmp1.i307 = icmp ugt i32 %sub.ptr.sub.i306, 3
  %89 = select i1 %cmp.not.i303, i1 %cmp1.i307, i1 false
  br i1 %89, label %do.end212, label %do.end197.cleanup219_crit_edge, !prof !214

do.end197.cleanup219_crit_edge:                   ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup219

do.end212:                                        ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #10
  %90 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  %91 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %incdec.ptr.i, align 1
  %add.ptr.i308 = getelementptr i8, ptr %incdec.ptr.i, i32 4
  %sub.ptr.lhs.cast215 = ptrtoint ptr %add.ptr.i308 to i32
  %sub.ptr.sub217 = sub i32 %sub.ptr.lhs.cast215, %sub.ptr.rhs.cast.i288
  br label %cleanup219

cleanup219:                                       ; preds = %do.end212, %do.end197.cleanup219_crit_edge, %do.end175.cleanup219_crit_edge, %do.end158.cleanup219_crit_edge, %if.end145.cleanup219_crit_edge, %do.end140.cleanup219_crit_edge, %if.end121.cleanup219_crit_edge, %do.end115, %if.end95.cleanup219_crit_edge, %do.body38.i.cleanup219_crit_edge, %do.end18.i.cleanup219_crit_edge, %if.then3.i.cleanup219_crit_edge, %do.end64.cleanup219_crit_edge, %ceph_x_encrypt.exit.cleanup219_crit_edge, %if.then10.cleanup219_crit_edge, %if.then
  %retval.1 = phi i32 [ %16, %if.then ], [ %sub.ptr.sub217, %do.end212 ], [ %call142, %do.end140.cleanup219_crit_edge ], [ 0, %if.end121.cleanup219_crit_edge ], [ -34, %if.end95.cleanup219_crit_edge ], [ -34, %do.end197.cleanup219_crit_edge ], [ -34, %do.end175.cleanup219_crit_edge ], [ -34, %do.end158.cleanup219_crit_edge ], [ -34, %if.end145.cleanup219_crit_edge ], [ %retval.0.i283, %ceph_x_encrypt.exit.cleanup219_crit_edge ], [ -34, %if.then10.cleanup219_crit_edge ], [ %sub.ptr.sub, %do.end115 ], [ -34, %do.body38.i.cleanup219_crit_edge ], [ -34, %do.end64.cleanup219_crit_edge ], [ -34, %if.then3.i.cleanup219_crit_edge ], [ -34, %do.end18.i.cleanup219_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %need) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_handle_reply(ptr noundef %ac, i64 noundef %global_id, ptr noundef %buf, ptr noundef %end, ptr noundef %session_key, ptr nocapture noundef writeonly %session_key_len, ptr noundef %con_secret, ptr nocapture noundef writeonly %con_secret_len) #0 align 64 {
entry:
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #8
  %starting = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %starting to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %starting, align 8, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub.ptr.sub)
  %cmp.not = icmp eq i32 %sub.ptr.sub, 9
  br i1 %cmp.not, label %if.end, label %if.then.cleanup78_crit_edge

if.then.cleanup78_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

if.end:                                           ; preds = %if.then
  %server_challenge = getelementptr inbounds %struct.ceph_x_server_challenge, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %server_challenge to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %server_challenge, align 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %server_challenge2 = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %server_challenge2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %server_challenge2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_handle_reply.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_handle_reply, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !212

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %server_challenge2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %server_challenge2, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_handle_reply.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 686, i64 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %10 = ptrtoint ptr %starting to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %starting, align 8
  %have_keys = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %have_keys, align 8
  %and = and i32 %12, -33
  store i32 %and, ptr %have_keys, align 8
  br label %cleanup78

if.end11:                                         ; preds = %entry
  %cmp.not.i = icmp ule ptr %buf, %end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 1
  %13 = and i1 %cmp.not.i, %cmp1.i
  br i1 %13, label %do.end24, label %if.end11.cleanup78_crit_edge, !prof !214

if.end11.cleanup78_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

do.end24:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %buf, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #8
  %add.ptr.i = getelementptr i8, ptr %buf, i32 2
  %conv = zext i16 %16 to i32
  %cmp.not.i107 = icmp ule ptr %add.ptr.i, %end
  %sub.ptr.rhs.cast.i109 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i110 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i110)
  %cmp1.i111 = icmp ugt i32 %sub.ptr.sub.i110, 3
  %17 = and i1 %cmp.not.i107, %cmp1.i111
  br i1 %17, label %do.end40, label %do.end24.cleanup78_crit_edge, !prof !214

do.end24.cleanup78_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

do.end40:                                         ; preds = %do.end24
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr.i, align 1
  %add.ptr.i112 = getelementptr i8, ptr %buf, i32 6
  %20 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i112, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_handle_reply.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_handle_reply, %if.then56)) #8
          to label %do.end60 [label %if.then56], !srcloc !212

if.then56:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_handle_reply.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.42, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 695, i32 noundef %conv, i32 noundef %21) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.end40
  %22 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %do.end60.cleanup78_crit_edge [
    i16 256, label %sw.epilog
    i16 512, label %sw.bb62
  ]

do.end60.cleanup78_crit_edge:                     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

sw.bb62:                                          ; preds = %do.end60
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %26, null
  br i1 %tobool.not36.i, label %sw.bb62.while.end.i_crit_edge, label %sw.bb62.while.body.i_crit_edge

sw.bb62.while.body.i_crit_edge:                   ; preds = %sw.bb62
  br label %while.body.i

sw.bb62.while.end.i_crit_edge:                    ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %sw.bb62.while.body.i_crit_edge
  %27 = phi ptr [ %31, %if.end6.i.while.body.i_crit_edge ], [ %26, %sw.bb62.while.body.i_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp.i = icmp ugt i32 %29, 32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp3.i.not = icmp eq i32 %29, 32
  br i1 %cmp3.i.not, label %if.else.i.get_ticket_handler.exit_crit_edge, label %if.then4.i

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %30 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %27 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %sw.bb62.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %sw.bb62.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %sw.bb62.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.if.then65_crit_edge, label %if.end10.i

while.end.i.if.then65_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 32, ptr %service11.i, align 4
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rb_left.i.i, align 8
  %37 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i113 = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %27, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i114 = icmp ugt ptr %retval.0.i113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %get_ticket_handler.exit.if.then65_crit_edge, label %if.end67

get_ticket_handler.exit.if.then65_crit_edge:      ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65

if.then65:                                        ; preds = %get_ticket_handler.exit.if.then65_crit_edge, %while.end.i.if.then65_crit_edge
  %retval.0.i113122 = phi ptr [ %retval.0.i113, %get_ticket_handler.exit.if.then65_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.end.i.if.then65_crit_edge ]
  %38 = ptrtoint ptr %retval.0.i113122 to i32
  br label %cleanup78

if.end67:                                         ; preds = %get_ticket_handler.exit
  %session_key68 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i113, i32 0, i32 2
  %39 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %p, align 4
  %41 = icmp ult ptr %40, %end
  br i1 %41, label %do.end.i, label %if.end67.cleanup78_crit_edge, !prof !214

if.end67.cleanup78_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

do.end.i:                                         ; preds = %if.end67
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %40, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %40, i32 1
  %44 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %incdec.ptr.i.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp.not.i115 = icmp eq i8 %43, 1
  br i1 %cmp.not.i115, label %do.body10.i, label %do.end.i.cleanup78_crit_edge

do.end.i.cleanup78_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

do.body10.i:                                      ; preds = %do.end.i
  %cmp.not.i54.i = icmp ule ptr %incdec.ptr.i.i, %end
  %sub.ptr.rhs.cast.i56.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i57.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i57.i)
  %cmp1.i58.i = icmp ugt i32 %sub.ptr.sub.i57.i, 3
  %45 = select i1 %cmp.not.i54.i, i1 %cmp1.i58.i, i1 false
  br i1 %45, label %do.end21.i, label %do.body10.i.cleanup78_crit_edge, !prof !214

do.body10.i.cleanup78_crit_edge:                  ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

do.end21.i:                                       ; preds = %do.body10.i
  %46 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %incdec.ptr.i.i, align 1
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 5
  %49 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i.i, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_handle_reply, %if.then34.i)) #8
          to label %while.cond.i [label %if.then34.i], !srcloc !212

if.then34.i:                                      ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 283, i32 noundef %48) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i116.while.cond.i_crit_edge, %if.then34.i, %do.end21.i
  %num.0.i = phi i32 [ %dec.i, %while.body.i116.while.cond.i_crit_edge ], [ %48, %if.then34.i ], [ %48, %do.end21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.i)
  %tobool39.not.i = icmp eq i32 %num.0.i, 0
  br i1 %tobool39.not.i, label %while.cond.i.if.end72_crit_edge, label %while.body.i116

while.cond.i.if.end72_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

while.body.i116:                                  ; preds = %while.cond.i
  %dec.i = add i32 %num.0.i, -1
  %call40.i = call fastcc i32 @process_one_ticket(ptr noundef %ac, ptr noundef %session_key68, ptr noundef nonnull %p, ptr noundef nonnull %end) #8
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %while.body.i116.while.cond.i_crit_edge, label %while.body.i116.cleanup78_crit_edge

while.body.i116.cleanup78_crit_edge:              ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

while.body.i116.while.cond.i_crit_edge:           ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

sw.epilog:                                        ; preds = %do.end60
  %call61 = call fastcc i32 @handle_auth_session_key(ptr noundef %ac, i64 noundef %global_id, ptr noundef nonnull %p, ptr noundef %end, ptr noundef %session_key, ptr noundef %session_key_len, ptr noundef %con_secret, ptr noundef %con_secret_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool70.not = icmp eq i32 %call61, 0
  br i1 %tobool70.not, label %sw.epilog.if.end72_crit_edge, label %sw.epilog.cleanup78_crit_edge

sw.epilog.cleanup78_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup78

sw.epilog.if.end72_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end72:                                         ; preds = %sw.epilog.if.end72_crit_edge, %while.cond.i.if.end72_crit_edge
  %want_keys = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 7
  %50 = ptrtoint ptr %want_keys to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %want_keys, align 4
  %have_keys73 = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %have_keys73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %have_keys73, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp74 = icmp eq i32 %51, %53
  %. = select i1 %cmp74, i32 0, i32 -11
  br label %cleanup78

cleanup78:                                        ; preds = %if.end72, %sw.epilog.cleanup78_crit_edge, %while.body.i116.cleanup78_crit_edge, %do.body10.i.cleanup78_crit_edge, %do.end.i.cleanup78_crit_edge, %if.end67.cleanup78_crit_edge, %if.then65, %do.end60.cleanup78_crit_edge, %do.end24.cleanup78_crit_edge, %if.end11.cleanup78_crit_edge, %do.end, %if.then.cleanup78_crit_edge
  %retval.1 = phi i32 [ %38, %if.then65 ], [ -11, %do.end ], [ -22, %if.then.cleanup78_crit_edge ], [ -22, %do.end60.cleanup78_crit_edge ], [ %call61, %sw.epilog.cleanup78_crit_edge ], [ %., %if.end72 ], [ -22, %do.end24.cleanup78_crit_edge ], [ -22, %if.end11.cleanup78_crit_edge ], [ -22, %if.end67.cleanup78_crit_edge ], [ -22, %do.body10.i.cleanup78_crit_edge ], [ -22, %do.end.i.cleanup78_crit_edge ], [ %call40.i, %while.body.i116.cleanup78_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #8
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_create_authorizer(ptr nocapture noundef readonly %ac, i32 noundef %peer_type, ptr nocapture noundef writeonly %auth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %3, null
  br i1 %tobool.not36.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %8, %if.end6.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %peer_type)
  %cmp.i = icmp ugt i32 %6, %peer_type
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %peer_type)
  %cmp3.i = icmp ult i32 %6, %peer_type
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.get_ticket_handler.exit_crit_edge

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %7 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %4 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %entry.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.if.then_crit_edge, label %if.end10.i

while.end.i.if.then_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %peer_type, ptr %service11.i, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_left.i.i, align 8
  %14 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %4, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i36 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %get_ticket_handler.exit.if.then_crit_edge, label %if.end

get_ticket_handler.exit.if.then_crit_edge:        ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %get_ticket_handler.exit.if.then_crit_edge, %while.end.i.if.then_crit_edge
  %retval.0.i39 = phi ptr [ %retval.0.i, %get_ticket_handler.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.end.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i39 to i32
  br label %cleanup

if.end:                                           ; preds = %get_ticket_handler.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3392, i32 noundef 184) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ceph_x_destroy_authorizer, ptr %call7.i.i, align 8
  %call6 = tail call fastcc i32 @ceph_x_build_authorizer(ptr noundef %ac, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %auth to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %auth, align 4
  %buf = getelementptr inbounds %struct.ceph_x_authorizer, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %vec = getelementptr inbounds %struct.ceph_buffer, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vec, align 4
  %authorizer_buf = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 1
  %23 = ptrtoint ptr %authorizer_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %authorizer_buf, align 4
  %iov_len = getelementptr inbounds %struct.ceph_buffer, ptr %20, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iov_len, align 4
  %authorizer_buf_len = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 2
  %26 = ptrtoint ptr %authorizer_buf_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %authorizer_buf_len, align 4
  %enc_buf = getelementptr inbounds %struct.ceph_x_authorizer, ptr %call7.i.i, i32 0, i32 6
  %authorizer_reply_buf = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 3
  %27 = ptrtoint ptr %authorizer_reply_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %enc_buf, ptr %authorizer_reply_buf, align 4
  %authorizer_reply_buf_len = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 4
  %28 = ptrtoint ptr %authorizer_reply_buf_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %authorizer_reply_buf_len, align 4
  %ops = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 2
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 8
  %sign_message = getelementptr inbounds %struct.ceph_auth_client_ops, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %sign_message to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sign_message, align 4
  %sign_message12 = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 5
  %33 = ptrtoint ptr %sign_message12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %sign_message12, align 4
  %34 = load ptr, ptr %ops, align 8
  %check_message_signature = getelementptr inbounds %struct.ceph_auth_client_ops, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %check_message_signature to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %check_message_signature, align 4
  %check_message_signature14 = getelementptr inbounds %struct.ceph_auth_handshake, ptr %auth, i32 0, i32 6
  %37 = ptrtoint ptr %check_message_signature14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %check_message_signature14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call6, %if.then8 ], [ 0, %if.end9 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_update_authorizer(ptr nocapture noundef readonly %ac, i32 noundef %peer_type, ptr nocapture noundef readonly %auth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %3, null
  br i1 %tobool.not36.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %8, %if.end6.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %peer_type)
  %cmp.i = icmp ugt i32 %6, %peer_type
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %peer_type)
  %cmp3.i = icmp ult i32 %6, %peer_type
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.get_ticket_handler.exit_crit_edge

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %7 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %4 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %entry.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.if.then_crit_edge, label %if.end10.i

while.end.i.if.then_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %peer_type, ptr %service11.i, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_left.i.i, align 8
  %14 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i24 = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %4, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i25 = icmp ugt ptr %retval.0.i24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %get_ticket_handler.exit.if.then_crit_edge, label %if.end

get_ticket_handler.exit.if.then_crit_edge:        ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %get_ticket_handler.exit.if.then_crit_edge, %while.end.i.if.then_crit_edge
  %retval.0.i2428 = phi ptr [ %retval.0.i24, %get_ticket_handler.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.end.i.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i2428 to i32
  br label %cleanup

if.end:                                           ; preds = %get_ticket_handler.exit
  %16 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %auth, align 4
  %secret_id = getelementptr inbounds %struct.ceph_x_authorizer, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %secret_id, align 8
  %secret_id3 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i24, i32 0, i32 4
  %20 = ptrtoint ptr %secret_id3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %secret_id3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp = icmp ult i64 %19, %21
  br i1 %cmp, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_update_authorizer.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_update_authorizer, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !212

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %service = getelementptr inbounds %struct.ceph_x_authorizer, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %service, align 8
  %24 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %secret_id, align 8
  %26 = ptrtoint ptr %secret_id3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %secret_id3, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_update_authorizer.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 783, i32 noundef %23, i64 noundef %25, i64 noundef %27) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call13 = tail call fastcc i32 @ceph_x_build_authorizer(ptr noundef %ac, ptr noundef nonnull %retval.0.i24, ptr noundef %17)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ %call13, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_add_authorizer_challenge(ptr nocapture noundef readnone %ac, ptr noundef %a, ptr noundef %challenge, i32 noundef %challenge_len) #0 align 64 {
entry:
  %server_challenge = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %server_challenge) #8
  %0 = ptrtoint ptr %server_challenge to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %server_challenge, align 8, !annotation !213
  %session_key = getelementptr inbounds %struct.ceph_x_authorizer, ptr %a, i32 0, i32 1
  %call = call fastcc i32 @decrypt_authorizer_challenge(ptr noundef %session_key, ptr noundef %challenge, i32 noundef %challenge_len, ptr noundef nonnull %server_challenge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @encrypt_authorizer(ptr noundef %a, ptr noundef nonnull %server_challenge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %server_challenge) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_verify_authorizer_reply(ptr nocapture noundef readnone %ac, ptr noundef %a, ptr noundef %reply, i32 noundef %reply_len, ptr noundef writeonly %session_key, ptr nocapture noundef writeonly %session_key_len, ptr noundef %con_secret, ptr nocapture noundef writeonly %con_secret_len) #0 align 64 {
entry:
  %reply.addr = alloca ptr, align 4
  %nonce_plus_one = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reply.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %reply, ptr %reply.addr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nonce_plus_one) #8
  %1 = ptrtoint ptr %nonce_plus_one to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %nonce_plus_one, align 8, !annotation !213
  %tobool.not = icmp eq ptr %session_key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %key = getelementptr inbounds %struct.ceph_x_authorizer, ptr %a, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %len = getelementptr inbounds %struct.ceph_x_authorizer, ptr %a, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = call ptr @memcpy(ptr %session_key, ptr %3, i32 %5)
  %7 = load i32, ptr %len, align 4
  %8 = ptrtoint ptr %session_key_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %session_key_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %session_key5 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %a, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %reply, i32 %reply_len
  %call = call fastcc i32 @decrypt_authorizer_reply(ptr noundef %session_key5, ptr noundef nonnull %reply.addr, ptr noundef %add.ptr, ptr noundef nonnull %nonce_plus_one, ptr noundef %con_secret, ptr noundef %con_secret_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %nonce_plus_one to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %nonce_plus_one, align 8
  %nonce = getelementptr inbounds %struct.ceph_x_authorizer, ptr %a, i32 0, i32 4
  %11 = ptrtoint ptr %nonce to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %nonce, align 8
  %add = add i64 %12, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %add)
  %cmp.not = icmp eq i64 %10, %add
  br i1 %cmp.not, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nonce_plus_one) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_x_invalidate_authorizer(ptr nocapture noundef readonly %ac, i32 noundef %peer_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @invalidate_ticket(ptr noundef %ac, i32 noundef %peer_type)
  tail call fastcc void @invalidate_ticket(ptr noundef %ac, i32 noundef 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_x_reset(ptr nocapture noundef readonly %ac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_reset.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_reset, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_reset.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.96, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 908) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %starting = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %starting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %starting, align 8
  %server_challenge = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %server_challenge to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %server_challenge, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_x_destroy(ptr noundef %ac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_destroy.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_destroy, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_destroy.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 918, ptr noundef %ac) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @ceph_crypto_key_destroy(ptr noundef %1) #8
  %ticket_handlers = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 4
  %call415 = tail call ptr @rb_first(ptr noundef %ticket_handlers) #8
  %cmp.not16 = icmp eq ptr %call415, null
  br i1 %cmp.not16, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %call417 = phi ptr [ %call4, %while.body.while.body_crit_edge ], [ %call415, %do.end.while.body_crit_edge ]
  tail call fastcc void @remove_ticket_handler(ptr noundef %ac, ptr noundef nonnull %call417)
  %call4 = tail call ptr @rb_first(ptr noundef %ticket_handlers) #8
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  %session_key.i = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 1
  tail call void @ceph_crypto_key_destroy(ptr noundef %session_key.i) #8
  %buf.i = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %while.end.ceph_x_authorizer_cleanup.exit_crit_edge, label %if.then.i.i

while.end.ceph_x_authorizer_cleanup.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_x_authorizer_cleanup.exit

if.then.i.i:                                      ; preds = %while.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #8, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !214

if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_buffer_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #8
  br label %ceph_buffer_put.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @ceph_buffer_release(ptr noundef nonnull %3) #8
  br label %ceph_buffer_put.exit.i

ceph_buffer_put.exit.i:                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %buf.i, align 4
  br label %ceph_x_authorizer_cleanup.exit

ceph_x_authorizer_cleanup.exit:                   ; preds = %ceph_buffer_put.exit.i, %while.end.ceph_x_authorizer_cleanup.exit_crit_edge
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_sign_message(ptr nocapture noundef readonly %auth, ptr nocapture noundef %msg) #0 align 64 {
entry:
  %sig = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sig) #8
  %0 = ptrtoint ptr %sig to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sig, align 8, !annotation !213
  %con = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 9
  %1 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %con, align 4
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msgr, align 8
  %options = getelementptr i8, ptr %4, i32 -176
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %options, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %auth, align 4
  %call = call fastcc i32 @calc_signature(ptr noundef %10, ptr noundef %msg, ptr noundef nonnull %sig)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %sig to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sig, align 8
  %sig4 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %sig4 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %sig4, align 1
  %flags5 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags5, align 1
  %16 = or i8 %15, 4
  store i8 %16, ptr %flags5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sig) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_x_check_message_signature(ptr nocapture noundef readonly %auth, ptr noundef %msg) #0 align 64 {
entry:
  %sig_check = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sig_check) #8
  %0 = ptrtoint ptr %sig_check to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sig_check, align 8, !annotation !213
  %con = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 9
  %1 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %con, align 4
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msgr, align 8
  %options = getelementptr i8, ptr %4, i32 -176
  %5 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %options, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %auth, align 4
  %call = call fastcc i32 @calc_signature(ptr noundef %10, ptr noundef %msg, ptr noundef nonnull %sig_check)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %11 = ptrtoint ptr %sig_check to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sig_check, align 8
  %sig = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %sig to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %sig, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp = icmp eq i64 %12, %14
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %flags6 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %flags6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags6, align 1
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %do.body19, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_check_message_signature.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_check_message_signature, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !212

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %sig to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %sig, align 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_check_message_signature.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.105, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1063, ptr noundef %msg, i64 noundef %19, i64 noundef %12) #8
  br label %cleanup

do.body19:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_check_message_signature.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_check_message_signature, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !212

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_check_message_signature.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.107, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1066, ptr noundef %msg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %if.then15, %do.body, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -74, %if.then31 ], [ -74, %if.then15 ], [ -74, %do.body ], [ -74, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sig_check) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_x_validate_tickets(ptr nocapture noundef readonly %ac, ptr nocapture noundef %pneed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %want_keys = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 7
  %0 = ptrtoint ptr %want_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %want_keys, align 4
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %have_keys = getelementptr inbounds %struct.ceph_x_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %have_keys, align 8
  %neg = xor i32 %5, -1
  %and = and i32 %1, %neg
  %6 = ptrtoint ptr %pneed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %pneed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not55 = icmp slt i32 %1, 1
  br i1 %cmp.not55, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %service.056 = phi i32 [ %shl, %cleanup.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %want_keys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %want_keys, align 4
  %and3 = and i32 %8, %service.056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %pneed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pneed, align 4
  %and4 = and i32 %10, %service.056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private, align 4
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %14, null
  br i1 %tobool.not36.i, label %if.end7.while.end.i_crit_edge, label %if.end7.while.body.i_crit_edge

if.end7.while.body.i_crit_edge:                   ; preds = %if.end7
  br label %while.body.i

if.end7.while.end.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end7.while.body.i_crit_edge
  %15 = phi ptr [ %19, %if.end6.i.while.body.i_crit_edge ], [ %14, %if.end7.while.body.i_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %service.056)
  %cmp.i = icmp ugt i32 %17, %service.056
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %service.056)
  %cmp3.i = icmp ult i32 %17, %service.056
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.get_ticket_handler.exit_crit_edge

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %18 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %15 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end7.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end7.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %if.end7.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.if.then9_crit_edge, label %if.end10.i

while.end.i.if.then9_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %service.056, ptr %service11.i, align 4
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_left.i.i, align 8
  %25 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %15, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i38 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %get_ticket_handler.exit.if.then9_crit_edge, label %if.end10

get_ticket_handler.exit.if.then9_crit_edge:       ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %get_ticket_handler.exit.if.then9_crit_edge, %while.end.i.if.then9_crit_edge
  %26 = ptrtoint ptr %pneed to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pneed, align 4
  %or = or i32 %27, %service.056
  store i32 %or, ptr %pneed, align 4
  br label %cleanup

if.end10:                                         ; preds = %get_ticket_handler.exit
  %have_key.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i, i32 0, i32 3
  %28 = ptrtoint ptr %have_key.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %have_key.i, align 8, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i39 = icmp eq i8 %29, 0
  br i1 %tobool.not.i39, label %if.end10.if.then12_crit_edge, label %need_key.exit

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

need_key.exit:                                    ; preds = %if.end10
  %call.i = tail call i64 @ktime_get_real_seconds() #8
  %renew_after.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i, i32 0, i32 6
  %30 = ptrtoint ptr %renew_after.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %renew_after.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %31)
  %cmp.i40.not = icmp slt i64 %call.i, %31
  br i1 %cmp.i40.not, label %need_key.exit.if.end14_crit_edge, label %need_key.exit.if.then12_crit_edge

need_key.exit.if.then12_crit_edge:                ; preds = %need_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

need_key.exit.if.end14_crit_edge:                 ; preds = %need_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %need_key.exit.if.then12_crit_edge, %if.end10.if.then12_crit_edge
  %32 = ptrtoint ptr %pneed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pneed, align 4
  %or13 = or i32 %33, %service.056
  store i32 %or13, ptr %pneed, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %need_key.exit.if.end14_crit_edge
  %34 = ptrtoint ptr %have_key.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %have_key.i, align 8, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i43 = icmp eq i8 %35, 0
  br i1 %tobool.not.i43, label %if.end14.if.then16_crit_edge, label %land.lhs.true.i

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

land.lhs.true.i:                                  ; preds = %if.end14
  %call.i44 = tail call i64 @ktime_get_real_seconds() #8
  %expires.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i, i32 0, i32 7
  %36 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %expires.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i44, i64 %37)
  %cmp.not.i = icmp slt i64 %call.i44, %37
  br i1 %cmp.not.i, label %have_key.exit, label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @have_key.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_validate_tickets, %if.then5.i)) #8
          to label %do.end.i [label %if.then5.i], !srcloc !212

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %service.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %service.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %service.i, align 4
  %call8.i = tail call ptr @ceph_entity_type_name(i32 noundef %39) #8
  %secret_id.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i, i32 0, i32 4
  %40 = ptrtoint ptr %secret_id.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %secret_id.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @have_key.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 451, i32 noundef %39, ptr noundef %call8.i, i64 noundef %41) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %42 = ptrtoint ptr %have_key.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %have_key.i, align 8
  br label %if.then16

have_key.exit:                                    ; preds = %land.lhs.true.i
  %43 = ptrtoint ptr %have_key.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %.pr = load i8, ptr %have_key.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool12.i.not = icmp eq i8 %.pr, 0
  br i1 %tobool12.i.not, label %have_key.exit.if.then16_crit_edge, label %have_key.exit.cleanup_crit_edge

have_key.exit.cleanup_crit_edge:                  ; preds = %have_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

have_key.exit.if.then16_crit_edge:                ; preds = %have_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %have_key.exit.if.then16_crit_edge, %do.end.i, %if.end14.if.then16_crit_edge
  %neg17 = xor i32 %service.056, -1
  %44 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %have_keys, align 8
  %and19 = and i32 %45, %neg17
  store i32 %and19, ptr %have_keys, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %have_key.exit.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %shl = shl i32 %service.056, 1
  %cmp.not = icmp sgt i32 %shl, %1
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_entity_type_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_x_build_authorizer(ptr nocapture noundef readonly %ac, ptr noundef %th, ptr noundef %au) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ticket_blob = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 5
  %0 = ptrtoint ptr %ticket_blob to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ticket_blob, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iov_len = getelementptr inbounds %struct.ceph_buffer, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iov_len, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_authorizer, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %service = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 1
  %4 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service, align 4
  %call6 = tail call ptr @ceph_entity_type_name(i32 noundef %5) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_authorizer.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 363, ptr noundef %call6, ptr noundef %au) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %session_key = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 1
  tail call void @ceph_crypto_key_destroy(ptr noundef %session_key) #8
  %session_key8 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 2
  %call9 = tail call i32 @ceph_crypto_key_clone(ptr noundef %session_key, ptr noundef %session_key8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.out_au_crit_edge

do.end.out_au_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_au

if.end12:                                         ; preds = %do.end
  %add14 = add i32 %cond, 73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_authorizer, %if.then27)) #8
          to label %do.end31 [label %if.then27], !srcloc !212

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_authorizer.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 372, i32 noundef %add14) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %if.end12
  %buf = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 2
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %tobool32.not = icmp eq ptr %7, null
  br i1 %tobool32.not, label %do.end31.if.then40_crit_edge, label %land.lhs.true

do.end31.if.then40_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

land.lhs.true:                                    ; preds = %do.end31
  %alloc_len = getelementptr inbounds %struct.ceph_buffer, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %alloc_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %alloc_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add14)
  %cmp = icmp ult i32 %9, %add14
  br i1 %cmp, label %if.then.i, label %if.end37

if.then.i:                                        ; preds = %land.lhs.true
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #8, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !214

if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_buffer_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #8
  br label %ceph_buffer_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @ceph_buffer_release(ptr noundef nonnull %7) #8
  br label %ceph_buffer_put.exit

ceph_buffer_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %buf, align 4
  br label %if.then40

if.end37:                                         ; preds = %land.lhs.true
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load ptr, ptr %buf, align 4
  %tobool39.not = icmp eq ptr %.pr, null
  br i1 %tobool39.not, label %if.end37.if.then40_crit_edge, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.end37.if.then40_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then40:                                        ; preds = %if.end37.if.then40_crit_edge, %ceph_buffer_put.exit, %do.end31.if.then40_crit_edge
  %call41 = tail call ptr @ceph_buffer_new(i32 noundef %add14, i32 noundef 3136) #8
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call41, ptr %buf, align 4
  %tobool44.not = icmp eq ptr %call41, null
  br i1 %tobool44.not, label %if.then40.out_au_crit_edge, label %if.then40.if.end47_crit_edge

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then40.out_au_crit_edge:                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_au

if.end47:                                         ; preds = %if.then40.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %service48 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 1
  %14 = ptrtoint ptr %service48 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %service48, align 4
  %service49 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 3
  %16 = ptrtoint ptr %service49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %service49, align 8
  %secret_id = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 4
  %17 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %secret_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool50.not = icmp eq i64 %18, 0
  br i1 %tobool50.not, label %do.end68, label %if.end47.if.end74_crit_edge, !prof !215

if.end47.if.end74_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

do.end68:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 385, i32 noundef 9, ptr noundef null) #8
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end47.if.end74_crit_edge
  %19 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %secret_id, align 8
  %secret_id83 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 5
  %21 = ptrtoint ptr %secret_id83 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %secret_id83, align 8
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf, align 4
  %vec85 = getelementptr inbounds %struct.ceph_buffer, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %vec85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vec85, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %25, align 1
  %global_id = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 5
  %27 = ptrtoint ptr %global_id to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %global_id, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %global_id86 = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %global_id86 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %global_id86, align 1
  %31 = ptrtoint ptr %service48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %service48, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %service_id = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %25, i32 0, i32 2
  %34 = ptrtoint ptr %service_id to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %33, ptr %service_id, align 1
  %ticket_blob88 = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %25, i32 0, i32 3
  %35 = ptrtoint ptr %ticket_blob88 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %ticket_blob88, align 1
  %36 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %secret_id, align 8
  %38 = tail call i64 @llvm.bswap.i64(i64 %37)
  %secret_id92 = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %25, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %secret_id92 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %38, ptr %secret_id92, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %blob_len = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %25, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %blob_len to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %blob_len, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool94.not = icmp eq i32 %cond, 0
  br i1 %tobool94.not, label %if.end74.do.body104_crit_edge, label %if.then95

if.end74.do.body104_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body104

if.then95:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %blob = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %25, i32 1
  %42 = ptrtoint ptr %ticket_blob to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ticket_blob, align 8
  %vec98 = getelementptr inbounds %struct.ceph_buffer, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %vec98 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vec98, align 4
  %iov_len102 = getelementptr inbounds %struct.ceph_buffer, ptr %43, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %iov_len102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iov_len102, align 4
  %48 = call ptr @memcpy(ptr %blob, ptr %45, i32 %47)
  br label %do.body104

do.body104:                                       ; preds = %if.then95, %if.end74.do.body104_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_authorizer, %if.then116)) #8
          to label %do.end123 [label %if.then116], !srcloc !212

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %secret_id, align 8
  %51 = ptrtoint ptr %secret_id92 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %secret_id92, align 1
  %53 = tail call i64 @llvm.bswap.i64(i64 %52)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_authorizer.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 400, ptr noundef %th, i64 noundef %50, i64 noundef %53) #8
  br label %do.end123

do.end123:                                        ; preds = %if.then116, %do.body104
  %nonce = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 4
  tail call void @get_random_bytes(ptr noundef %nonce, i32 noundef 8) #8
  %call124 = tail call fastcc i32 @encrypt_authorizer(ptr noundef %au, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %do.body133, label %do.end129

do.end129:                                        ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %call124) #12
  br label %out_au

do.body133:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_x_build_authorizer, %if.then145)) #8
          to label %cleanup [label %if.then145], !srcloc !212

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %nonce to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %nonce, align 8
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf, align 4
  %iov_len150 = getelementptr inbounds %struct.ceph_buffer, ptr %57, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %iov_len150 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iov_len150, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_build_authorizer.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 410, i64 noundef %55, i32 noundef %59) #8
  br label %cleanup

out_au:                                           ; preds = %do.end129, %if.then40.out_au_crit_edge, %do.end.out_au_crit_edge
  %ret.0 = phi i32 [ %call9, %do.end.out_au_crit_edge ], [ %call124, %do.end129 ], [ -12, %if.then40.out_au_crit_edge ]
  tail call void @ceph_crypto_key_destroy(ptr noundef %session_key) #8
  %buf.i = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 2
  %60 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf.i, align 4
  %tobool.not.i212 = icmp eq ptr %61, null
  br i1 %tobool.not.i212, label %out_au.cleanup_crit_edge, label %if.then.i.i213

out_au.cleanup_crit_edge:                         ; preds = %out_au
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i213:                                   ; preds = %out_au
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %61, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr nonnull %61, i32 1, i32 3, i32 1) #8
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %61, ptr nonnull %61, i32 1, ptr nonnull elementtype(i32) %61) #8, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !214

if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_buffer_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %61, i32 noundef 3) #8
  br label %ceph_buffer_put.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i213
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @ceph_buffer_release(ptr noundef nonnull %61) #8
  br label %ceph_buffer_put.exit.i

ceph_buffer_put.exit.i:                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge
  %63 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %buf.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ceph_buffer_put.exit.i, %out_au.cleanup_crit_edge, %if.then145, %do.body133
  %retval.0 = phi i32 [ 0, %if.then145 ], [ 0, %do.body133 ], [ %ret.0, %out_au.cleanup_crit_edge ], [ %ret.0, %ceph_buffer_put.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_crypt(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_crypto_key_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_buffer_put(ptr noundef %b) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %b, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %b, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr nonnull %b, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %b, ptr nonnull %b, i32 1, ptr nonnull elementtype(i32) %b) #8, !srcloc !218
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !214

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %b, i32 noundef 3) #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @ceph_buffer_release(ptr noundef nonnull %b) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_buffer_new(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @encrypt_authorizer(ptr noundef %au, ptr noundef readonly %server_challenge) unnamed_addr #0 align 64 {
entry:
  %ciphertext_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 2
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %vec = getelementptr inbounds %struct.ceph_buffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vec, align 4
  %secret_id = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %secret_id to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %secret_id, align 1
  %secret_id1 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 5
  %6 = ptrtoint ptr %secret_id1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %secret_id1, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %8)
  %cmp.not = icmp eq i64 %5, %8
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !214

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 311, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr %struct.ceph_x_authorize_a, ptr %3, i32 1
  %blob_len = getelementptr inbounds %struct.ceph_x_authorize_a, ptr %3, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %blob_len to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %blob_len, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 %11
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %vec23 = getelementptr inbounds %struct.ceph_buffer, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %vec23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vec23, align 4
  %iov_len = getelementptr inbounds %struct.ceph_buffer, ptr %13, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 %17
  %add.ptr28 = getelementptr i8, ptr %add.ptr21, i32 13
  %18 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %add.ptr28, align 1
  %nonce = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 4
  %19 = ptrtoint ptr %nonce to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %nonce, align 8
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %nonce29 = getelementptr inbounds %struct.ceph_x_authorize_b, ptr %add.ptr28, i32 0, i32 1
  %22 = ptrtoint ptr %nonce29 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %21, ptr %nonce29, align 1
  %tobool30.not = icmp eq ptr %server_challenge, null
  %have_challenge32 = getelementptr inbounds %struct.ceph_x_authorize_b, ptr %add.ptr28, i32 0, i32 2
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %have_challenge32 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %have_challenge32, align 1
  %24 = ptrtoint ptr %server_challenge to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %server_challenge, align 8
  %add = add i64 %25, 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %add)
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %have_challenge32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %have_challenge32, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  %.sink = phi i64 [ 0, %if.else ], [ %26, %if.then31 ]
  %28 = getelementptr inbounds %struct.ceph_x_authorize_b, ptr %add.ptr28, i32 0, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %.sink, ptr %28, align 1
  %session_key = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr27 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr21 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr21, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ciphertext_len.i) #8
  %30 = ptrtoint ptr %ciphertext_len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %ciphertext_len.i, align 4, !annotation !213
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %add.ptr.i, align 1
  %magic.i = getelementptr i8, ptr %add.ptr21, i32 5
  %32 = ptrtoint ptr %magic.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 6172788607734776063, ptr %magic.i, align 1
  %sub.ptr.sub = sub i32 -4, %sub.ptr.rhs.cast
  %sub.i = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %call.i = call i32 @ceph_crypt(ptr noundef %session_key, i1 noundef zeroext true, ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 27, ptr noundef nonnull %ciphertext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end34.ceph_x_encrypt.exit_crit_edge

if.end34.ceph_x_encrypt.exit_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_x_encrypt.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %ciphertext_len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ciphertext_len.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34) #8
  %36 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %add.ptr21, align 1
  %add2.i = add i32 %34, 4
  br label %ceph_x_encrypt.exit

ceph_x_encrypt.exit:                              ; preds = %if.end.i, %if.end34.ceph_x_encrypt.exit_crit_edge
  %retval.0.i = phi i32 [ %add2.i, %if.end.i ], [ %call.i, %if.end34.ceph_x_encrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ciphertext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp36 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp36, label %ceph_x_encrypt.exit.cleanup_crit_edge, label %if.end38

ceph_x_encrypt.exit.cleanup_crit_edge:            ; preds = %ceph_x_encrypt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %ceph_x_encrypt.exit
  %add.ptr39 = getelementptr i8, ptr %add.ptr21, i32 %retval.0.i
  br i1 %tobool30.not, label %if.else73, label %if.then41

if.then41:                                        ; preds = %if.end38
  %cmp43.not = icmp eq ptr %add.ptr39, %add.ptr27
  br i1 %cmp43.not, label %if.then41.cleanup_crit_edge, label %do.end59, !prof !214

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end59:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 333, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.else73:                                        ; preds = %if.end38
  %cmp75 = icmp ugt ptr %add.ptr39, %add.ptr27
  br i1 %cmp75, label %do.end91, label %if.else73.if.end97_crit_edge, !prof !215

if.else73.if.end97_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.end91:                                         ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 335, i32 noundef 9, ptr noundef null) #8
  br label %if.end97

if.end97:                                         ; preds = %do.end91, %if.else73.if.end97_crit_edge
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf, align 4
  %vec106 = getelementptr inbounds %struct.ceph_buffer, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %vec106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vec106, align 4
  %sub.ptr.lhs.cast108 = ptrtoint ptr %add.ptr39 to i32
  %sub.ptr.rhs.cast109 = ptrtoint ptr %40 to i32
  %sub.ptr.sub110 = sub i32 %sub.ptr.lhs.cast108, %sub.ptr.rhs.cast109
  %iov_len113 = getelementptr inbounds %struct.ceph_buffer, ptr %38, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %iov_len113 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.ptr.sub110, ptr %iov_len113, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end59, %if.then41.cleanup_crit_edge, %ceph_x_encrypt.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ceph_x_encrypt.exit.cleanup_crit_edge ], [ 0, %if.then41.cleanup_crit_edge ], [ 0, %do.end59 ], [ 0, %if.end97 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_auth_session_key(ptr noundef %ac, i64 noundef %global_id, ptr noundef %p, ptr noundef %end, ptr noundef writeonly %session_key, ptr nocapture noundef writeonly %session_key_len, ptr noundef %con_secret, ptr nocapture noundef writeonly %con_secret_len) unnamed_addr #0 align 64 {
entry:
  %plaintext_len.i.i = alloca i32, align 4
  %dp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp) #8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %end to i32
  %4 = icmp ult ptr %3, %end
  br i1 %4, label %do.end.i, label %entry.cleanup_crit_edge, !prof !214

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %3, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %3, i32 1
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %incdec.ptr.i.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 1
  br i1 %cmp.not.i, label %do.body10.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body10.i:                                      ; preds = %do.end.i
  %cmp.not.i54.i = icmp ule ptr %incdec.ptr.i.i, %end
  %sub.ptr.rhs.cast.i56.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i57.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i57.i)
  %cmp1.i58.i = icmp ugt i32 %sub.ptr.sub.i57.i, 3
  %8 = select i1 %cmp.not.i54.i, i1 %cmp1.i58.i, i1 false
  br i1 %8, label %do.end21.i, label %do.body10.i.cleanup_crit_edge, !prof !214

do.body10.i.cleanup_crit_edge:                    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21.i:                                       ; preds = %do.body10.i
  %9 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %incdec.ptr.i.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 5
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i.i, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_auth_session_key, %if.then34.i)) #8
          to label %while.cond.i [label %if.then34.i], !srcloc !212

if.then34.i:                                      ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 283, i32 noundef %11) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then34.i, %do.end21.i
  %num.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %11, %if.then34.i ], [ %11, %do.end21.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.i)
  %tobool39.not.i = icmp eq i32 %num.0.i, 0
  br i1 %tobool39.not.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i32 %num.0.i, -1
  %call40.i = tail call fastcc i32 @process_one_ticket(ptr noundef %ac, ptr noundef %1, ptr noundef %p, ptr noundef nonnull %end) #8
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.end:                                           ; preds = %while.cond.i
  tail call void @ceph_auth_set_global_id(ptr noundef %ac, i64 noundef %global_id) #8
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %cmp = icmp eq ptr %14, %end
  br i1 %cmp, label %if.then1, label %if.end25

if.then1:                                         ; preds = %if.end
  %tobool2.not = icmp ne ptr %session_key, null
  %tobool3 = icmp ne ptr %con_secret, null
  %spec.select = or i1 %tobool2.not, %tobool3
  br i1 %spec.select, label %do.end, label %if.then1.cleanup_crit_edge, !prof !215

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 619, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 4
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %18, null
  br i1 %tobool.not36.i, label %if.end25.while.end.i_crit_edge, label %if.end25.while.body.i197_crit_edge

if.end25.while.body.i197_crit_edge:               ; preds = %if.end25
  br label %while.body.i197

if.end25.while.end.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i197:                                  ; preds = %if.end6.i.while.body.i197_crit_edge, %if.end25.while.body.i197_crit_edge
  %19 = phi ptr [ %23, %if.end6.i.while.body.i197_crit_edge ], [ %18, %if.end25.while.body.i197_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp.i = icmp ugt i32 %21, 32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i197
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i197
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp3.i.not = icmp eq i32 %21, 32
  br i1 %cmp3.i.not, label %if.else.i.get_ticket_handler.exit_crit_edge, label %if.then4.i

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %22 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i197_crit_edge

if.end6.i.while.body.i197_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i197

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %19 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end25.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end25.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %if.end25.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.if.then28_crit_edge, label %if.end10.i

while.end.i.if.then28_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %service11.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %rb_left.i.i, align 8
  %29 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i198 = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %19, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i199 = icmp ugt ptr %retval.0.i198, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %get_ticket_handler.exit.if.then28_crit_edge, label %if.end30

get_ticket_handler.exit.if.then28_crit_edge:      ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %get_ticket_handler.exit.if.then28_crit_edge, %while.end.i.if.then28_crit_edge
  %retval.0.i198240 = phi ptr [ %retval.0.i198, %get_ticket_handler.exit.if.then28_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.end.i.if.then28_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i198240 to i32
  br label %cleanup

if.end30:                                         ; preds = %get_ticket_handler.exit
  %tobool31.not = icmp eq ptr %session_key, null
  br i1 %tobool31.not, label %if.end30.do.body40_crit_edge, label %if.then32

if.end30.do.body40_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body40

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %key = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i198, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %key, align 8
  %len35 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i198, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len35, align 4
  %35 = call ptr @memcpy(ptr %session_key, ptr %32, i32 %34)
  %36 = load i32, ptr %len35, align 4
  %37 = ptrtoint ptr %session_key_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %session_key_len, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.then32, %if.end30.do.body40_crit_edge
  %38 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p, align 4
  %cmp.not.i200 = icmp ule ptr %39, %end
  %sub.ptr.rhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 3
  %40 = select i1 %cmp.not.i200, i1 %cmp1.i, i1 false
  br i1 %40, label %do.end51, label %do.body40.cleanup_crit_edge, !prof !214

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end51:                                         ; preds = %do.body40
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %39, align 1
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %add.ptr.i = getelementptr i8, ptr %39, i32 4
  %44 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_auth_session_key.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_auth_session_key, %if.then65)) #8
          to label %do.end69 [label %if.then65], !srcloc !212

if.then65:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_auth_session_key.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.45, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 634, ptr noundef nonnull @.str.43, i32 noundef %43) #8
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp70 = icmp sgt i32 %43, 0
  br i1 %cmp70, label %if.then71, label %do.end69.do.body103_crit_edge

do.end69.do.body103_crit_edge:                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body103

if.then71:                                        ; preds = %do.end69
  %45 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %46, i32 13
  %47 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr, ptr %dp, align 4
  %session_key73 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i198, i32 0, i32 2
  %add.ptr74 = getelementptr i8, ptr %46, i32 %43
  %cmp.not.i.i = icmp ule ptr %46, %add.ptr74
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp1.i.i = icmp ugt i32 %43, 3
  %48 = and i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %48, label %do.end.i203, label %if.then71.cleanup_crit_edge, !prof !214

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i203:                                      ; preds = %if.then71
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %46, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  %add.ptr.i.i202 = getelementptr i8, ptr %46, i32 4
  %52 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i.i202, ptr %p, align 4
  %cmp.not.i31.i = icmp ule ptr %add.ptr.i.i202, %add.ptr74
  %gepdiff = add nsw i32 %43, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %gepdiff, i32 %51)
  %cmp1.i35.i = icmp uge i32 %gepdiff, %51
  %53 = select i1 %cmp.not.i31.i, i1 %cmp1.i35.i, i1 false
  br i1 %53, label %do.end17.i, label %do.end.i203.cleanup_crit_edge, !prof !214

do.end.i203.cleanup_crit_edge:                    ; preds = %do.end.i203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17.i:                                       ; preds = %do.end.i203
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  %54 = ptrtoint ptr %plaintext_len.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %plaintext_len.i.i, align 4, !annotation !213
  %call.i.i = call i32 @ceph_crypt(ptr noundef %session_key73, i1 noundef zeroext false, ptr noundef %add.ptr.i.i202, i32 noundef %51, i32 noundef %51, ptr noundef nonnull %plaintext_len.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge

do.end17.i.__ceph_x_decrypt.exit.i_crit_edge:     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_x_decrypt.exit.i

if.end.i.i:                                       ; preds = %do.end17.i
  %magic.i.i = getelementptr i8, ptr %46, i32 5
  %55 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %magic.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 6172788607734776063, i64 %56)
  %cmp.not.i36.i = icmp eq i64 %56, 6172788607734776063
  br i1 %cmp.not.i36.i, label %if.end3.i.i, label %__ceph_x_decrypt.exit.thread.i

__ceph_x_decrypt.exit.thread.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %plaintext_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %plaintext_len.i.i, align 4
  %sub.i.i = add i32 %58, -9
  br label %__ceph_x_decrypt.exit.i

__ceph_x_decrypt.exit.i:                          ; preds = %if.end3.i.i, %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.end3.i.i ], [ %call.i.i, %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i204 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i204, label %__ceph_x_decrypt.exit.i.cleanup_crit_edge, label %do.body79

__ceph_x_decrypt.exit.i.cleanup_crit_edge:        ; preds = %__ceph_x_decrypt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body79:                                        ; preds = %__ceph_x_decrypt.exit.i
  %59 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %p, align 4
  %add.ptr.i205 = getelementptr i8, ptr %60, i32 %51
  store ptr %add.ptr.i205, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_auth_session_key.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_auth_session_key, %if.then91)) #8
          to label %do.end95 [label %if.then91], !srcloc !212

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_auth_session_key.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 641, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i.i) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.body79
  %add.ptr96 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i.i
  %call97 = call fastcc i32 @decode_con_secret(ptr noundef nonnull %dp, ptr noundef %add.ptr96, ptr noundef %con_secret, ptr noundef %con_secret_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.end95.do.body103_crit_edge, label %do.end95.cleanup_crit_edge

do.end95.cleanup_crit_edge:                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end95.do.body103_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body103

do.body103:                                       ; preds = %do.end95.do.body103_crit_edge, %do.end69.do.body103_crit_edge
  %61 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %p, align 4
  %cmp.not.i207 = icmp ule ptr %62, %end
  %sub.ptr.rhs.cast.i209 = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i210 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i209
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i210)
  %cmp1.i211 = icmp ugt i32 %sub.ptr.sub.i210, 3
  %63 = select i1 %cmp.not.i207, i1 %cmp1.i211, i1 false
  br i1 %63, label %do.end114, label %do.body103.cleanup_crit_edge, !prof !214

do.body103.cleanup_crit_edge:                     ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end114:                                        ; preds = %do.body103
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %62, align 1
  %66 = call i32 @llvm.bswap.i32(i32 %65) #8
  %add.ptr.i212 = getelementptr i8, ptr %62, i32 4
  %67 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i212, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_auth_session_key.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_auth_session_key, %if.then130)) #8
          to label %do.end134 [label %if.then130], !srcloc !212

if.then130:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_auth_session_key.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.49, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 651, ptr noundef nonnull @.str.43, i32 noundef %66) #8
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.end114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp135 = icmp sgt i32 %66, 0
  br i1 %cmp135, label %if.then136, label %do.end134.cleanup_crit_edge

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then136:                                       ; preds = %do.end134
  %session_key137 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i198, i32 0, i32 2
  %68 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %p, align 4
  %add.ptr138 = getelementptr i8, ptr %69, i32 %66
  %70 = icmp ult ptr %69, %add.ptr138
  br i1 %70, label %do.end.i216, label %if.then136.cleanup_crit_edge, !prof !214

if.then136.cleanup_crit_edge:                     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i216:                                      ; preds = %if.then136
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %69, align 1
  %incdec.ptr.i.i214 = getelementptr i8, ptr %69, i32 1
  %73 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %incdec.ptr.i.i214, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp.not.i215 = icmp eq i8 %72, 1
  br i1 %cmp.not.i215, label %do.body10.i221, label %do.end.i216.cleanup_crit_edge

do.end.i216.cleanup_crit_edge:                    ; preds = %do.end.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body10.i221:                                   ; preds = %do.end.i216
  %cmp.not.i54.i217 = icmp ule ptr %incdec.ptr.i.i214, %add.ptr138
  %74 = add nsw i32 %66, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %74)
  %cmp1.i58.i220 = icmp ult i32 %74, -4
  %75 = and i1 %cmp1.i58.i220, %cmp.not.i54.i217
  br i1 %75, label %do.end21.i223, label %do.body10.i221.cleanup_crit_edge, !prof !214

do.body10.i221.cleanup_crit_edge:                 ; preds = %do.body10.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21.i223:                                    ; preds = %do.body10.i221
  %76 = ptrtoint ptr %incdec.ptr.i.i214 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %incdec.ptr.i.i214, align 1
  %78 = call i32 @llvm.bswap.i32(i32 %77) #8
  %add.ptr.i.i222 = getelementptr i8, ptr %69, i32 5
  %79 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr.i.i222, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_auth_session_key, %if.then34.i224)) #8
          to label %while.cond.i228 [label %if.then34.i224], !srcloc !212

if.then34.i224:                                   ; preds = %do.end21.i223
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 283, i32 noundef %78) #8
  br label %while.cond.i228

while.cond.i228:                                  ; preds = %while.body.i232.while.cond.i228_crit_edge, %if.then34.i224, %do.end21.i223
  %num.0.i226 = phi i32 [ %dec.i229, %while.body.i232.while.cond.i228_crit_edge ], [ %78, %if.then34.i224 ], [ %78, %do.end21.i223 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.0.i226)
  %tobool39.not.i227 = icmp eq i32 %num.0.i226, 0
  br i1 %tobool39.not.i227, label %while.cond.i228.cleanup_crit_edge, label %while.body.i232

while.cond.i228.cleanup_crit_edge:                ; preds = %while.cond.i228
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i232:                                  ; preds = %while.cond.i228
  %dec.i229 = add i32 %num.0.i226, -1
  %call40.i230 = call fastcc i32 @process_one_ticket(ptr noundef %ac, ptr noundef %session_key137, ptr noundef %p, ptr noundef nonnull %add.ptr138) #8
  %tobool41.not.i231 = icmp eq i32 %call40.i230, 0
  br i1 %tobool41.not.i231, label %while.body.i232.while.cond.i228_crit_edge, label %while.body.i232.cleanup_crit_edge

while.body.i232.cleanup_crit_edge:                ; preds = %while.body.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i232.while.cond.i228_crit_edge:        ; preds = %while.body.i232
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i228

cleanup:                                          ; preds = %while.body.i232.cleanup_crit_edge, %while.cond.i228.cleanup_crit_edge, %do.body10.i221.cleanup_crit_edge, %do.end.i216.cleanup_crit_edge, %if.then136.cleanup_crit_edge, %do.end134.cleanup_crit_edge, %do.body103.cleanup_crit_edge, %do.end95.cleanup_crit_edge, %__ceph_x_decrypt.exit.i.cleanup_crit_edge, %__ceph_x_decrypt.exit.thread.i, %do.end.i203.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %do.body40.cleanup_crit_edge, %if.then28, %do.end, %if.then1.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %do.body10.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then28 ], [ 0, %do.end ], [ 0, %if.then1.cleanup_crit_edge ], [ %call97, %do.end95.cleanup_crit_edge ], [ -22, %do.body103.cleanup_crit_edge ], [ -22, %do.body40.cleanup_crit_edge ], [ 0, %do.end134.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.body10.i.cleanup_crit_edge ], [ -22, %do.end.i.cleanup_crit_edge ], [ -22, %__ceph_x_decrypt.exit.thread.i ], [ -22, %if.then71.cleanup_crit_edge ], [ -22, %do.end.i203.cleanup_crit_edge ], [ %retval.0.i.i, %__ceph_x_decrypt.exit.i.cleanup_crit_edge ], [ -22, %if.then136.cleanup_crit_edge ], [ -22, %do.body10.i221.cleanup_crit_edge ], [ -22, %do.end.i216.cleanup_crit_edge ], [ %call40.i230, %while.body.i232.cleanup_crit_edge ], [ 0, %while.cond.i228.cleanup_crit_edge ], [ %call40.i, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_auth_set_global_id(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_x_decrypt(ptr noundef %secret, ptr nocapture noundef %p, ptr noundef %end) unnamed_addr #0 align 64 {
entry:
  %plaintext_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %cmp.not.i = icmp ule ptr %1, %end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 3
  %2 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %2, label %do.end, label %entry.cleanup_crit_edge, !prof !214

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %1, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %p, align 4
  %cmp.not.i31 = icmp ule ptr %add.ptr.i, %end
  %sub.ptr.rhs.cast.i33 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i34 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i33
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i34, i32 %5)
  %cmp1.i35 = icmp uge i32 %sub.ptr.sub.i34, %5
  %7 = select i1 %cmp.not.i31, i1 %cmp1.i35, i1 false
  br i1 %7, label %do.end17, label %do.end.cleanup_crit_edge, !prof !214

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plaintext_len.i) #8
  %8 = ptrtoint ptr %plaintext_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %plaintext_len.i, align 4, !annotation !213
  %call.i = call i32 @ceph_crypt(ptr noundef %secret, i1 noundef zeroext false, ptr noundef %add.ptr.i, i32 noundef %5, i32 noundef %5, ptr noundef nonnull %plaintext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end17.__ceph_x_decrypt.exit_crit_edge

do.end17.__ceph_x_decrypt.exit_crit_edge:         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_x_decrypt.exit

if.end.i:                                         ; preds = %do.end17
  %magic.i = getelementptr i8, ptr %1, i32 5
  %9 = ptrtoint ptr %magic.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %magic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 6172788607734776063, i64 %10)
  %cmp.not.i36 = icmp eq i64 %10, 6172788607734776063
  br i1 %cmp.not.i36, label %if.end3.i, label %__ceph_x_decrypt.exit.thread

__ceph_x_decrypt.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i) #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %plaintext_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %plaintext_len.i, align 4
  %sub.i = add i32 %12, -9
  br label %__ceph_x_decrypt.exit

__ceph_x_decrypt.exit:                            ; preds = %if.end3.i, %do.end17.__ceph_x_decrypt.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end3.i ], [ %call.i, %do.end17.__ceph_x_decrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %__ceph_x_decrypt.exit.cleanup_crit_edge, label %if.end20

__ceph_x_decrypt.exit.cleanup_crit_edge:          ; preds = %__ceph_x_decrypt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %__ceph_x_decrypt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %5
  store ptr %add.ptr, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %__ceph_x_decrypt.exit.cleanup_crit_edge, %__ceph_x_decrypt.exit.thread, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end20 ], [ %retval.0.i, %__ceph_x_decrypt.exit.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %__ceph_x_decrypt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_con_secret(ptr nocapture noundef %p, ptr noundef %end, ptr noundef writeonly %con_secret, ptr nocapture noundef writeonly %con_secret_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %cmp.not.i = icmp ule ptr %1, %end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 3
  %2 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %2, label %do.end, label %entry.do.end44_crit_edge, !prof !214

entry.do.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %1, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %p, align 4
  %cmp.not.i63 = icmp ule ptr %add.ptr.i, %end
  %sub.ptr.rhs.cast.i65 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i66 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i65
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i66, i32 %5)
  %cmp1.i67 = icmp uge i32 %sub.ptr.sub.i66, %5
  %7 = select i1 %cmp.not.i63, i1 %cmp1.i67, i1 false
  br i1 %7, label %do.body18, label %do.end.do.end44_crit_edge, !prof !214

do.end.do.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

do.body18:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decode_con_secret.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decode_con_secret, %if.then27)) #8
          to label %do.end31 [label %if.then27], !srcloc !212

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decode_con_secret.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 580, ptr noundef nonnull @.str.52, i32 noundef %5) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body18
  %tobool32.not = icmp eq ptr %con_secret, null
  br i1 %tobool32.not, label %do.end31.if.end41_crit_edge, label %if.then33

do.end31.if.end41_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then33:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp = icmp sgt i32 %5, 64
  br i1 %cmp, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %5) #12
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 %5)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %9) #8, !srcloc !220
  br label %do.end44

if.end40:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p, align 4
  %13 = call ptr @memcpy(ptr %con_secret, ptr %12, i32 %5)
  %14 = ptrtoint ptr %con_secret_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %con_secret_len, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %do.end31.if.end41_crit_edge
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p, align 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 %5)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %16) #8, !srcloc !220
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %5
  store ptr %add.ptr, ptr %p, align 4
  br label %cleanup

do.end44:                                         ; preds = %do.end37, %do.end.do.end44_crit_edge, %entry.do.end44_crit_edge
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end41
  %retval.0 = phi i32 [ -22, %do.end44 ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_one_ticket(ptr nocapture noundef readonly %ac, ptr noundef %secret, ptr noundef %p, ptr noundef %end) unnamed_addr #0 align 64 {
entry:
  %plaintext_len.i.i = alloca i32, align 4
  %dp = alloca ptr, align 4
  %tp = alloca ptr, align 4
  %new_session_key = alloca %struct.ceph_crypto_key, align 4
  %new_ticket_blob = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp) #8
  %2 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %dp, align 4, !annotation !213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #8
  %3 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !213
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_session_key) #8
  %4 = call ptr @memset(ptr %new_session_key, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_ticket_blob) #8
  %5 = ptrtoint ptr %new_ticket_blob to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %new_ticket_blob, align 4, !annotation !213
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %cmp.not.i = icmp ule ptr %7, %end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 4
  %8 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %8, label %do.end, label %entry.out_crit_edge, !prof !214

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %7, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr.i, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_one_ticket.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_one_ticket, %if.then12)) #8
          to label %do.end17 [label %if.then12], !srcloc !212

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call ptr @ceph_entity_type_name(i32 noundef %11) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_one_ticket.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 183, i32 noundef %11, ptr noundef %call14) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.end
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %incdec.ptr.i = getelementptr i8, ptr %14, i32 1
  store ptr %incdec.ptr.i, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.not = icmp eq i8 %16, 1
  br i1 %cmp.not, label %if.end21, label %do.end17.out_crit_edge

do.end17.out_crit_edge:                           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %do.end17
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private, align 4
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %20, null
  br i1 %tobool.not36.i, label %if.end21.while.end.i_crit_edge, label %if.end21.while.body.i_crit_edge

if.end21.while.body.i_crit_edge:                  ; preds = %if.end21
  br label %while.body.i

if.end21.while.end.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end21.while.body.i_crit_edge
  %21 = phi ptr [ %25, %if.end6.i.while.body.i_crit_edge ], [ %20, %if.end21.while.body.i_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %11)
  %cmp.i = icmp ugt i32 %23, %11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %11)
  %cmp3.i = icmp ult i32 %23, %11
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.get_ticket_handler.exit_crit_edge

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %21, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %24 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %21 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.end21.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end21.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %if.end21.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.if.then24_crit_edge, label %if.end10.i

while.end.i.if.then24_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %11, ptr %service11.i, align 4
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rb_left.i.i, align 8
  %31 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i321 = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %21, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i322 = icmp ugt ptr %retval.0.i321, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %get_ticket_handler.exit.if.then24_crit_edge, label %if.end26

get_ticket_handler.exit.if.then24_crit_edge:      ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %get_ticket_handler.exit.if.then24_crit_edge, %while.end.i.if.then24_crit_edge
  %retval.0.i321359 = phi ptr [ %retval.0.i321, %get_ticket_handler.exit.if.then24_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.end.i.if.then24_crit_edge ]
  %32 = ptrtoint ptr %retval.0.i321359 to i32
  br label %out

if.end26:                                         ; preds = %get_ticket_handler.exit
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 13
  %35 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %dp, align 4
  %cmp.not.i.i = icmp ule ptr %34, %end
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 3
  %36 = select i1 %cmp.not.i.i, i1 %cmp1.i.i, i1 false
  br i1 %36, label %do.end.i, label %if.end26.out_crit_edge, !prof !214

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end.i:                                         ; preds = %if.end26
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %34, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4
  %40 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i.i, ptr %p, align 4
  %cmp.not.i31.i = icmp ule ptr %add.ptr.i.i, %end
  %sub.ptr.rhs.cast.i33.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i34.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i34.i, i32 %39)
  %cmp1.i35.i = icmp uge i32 %sub.ptr.sub.i34.i, %39
  %41 = select i1 %cmp.not.i31.i, i1 %cmp1.i35.i, i1 false
  br i1 %41, label %do.end17.i, label %do.end.i.out_crit_edge, !prof !214

do.end.i.out_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end17.i:                                       ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  %42 = ptrtoint ptr %plaintext_len.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %plaintext_len.i.i, align 4, !annotation !213
  %call.i.i = call i32 @ceph_crypt(ptr noundef %secret, i1 noundef zeroext false, ptr noundef %add.ptr.i.i, i32 noundef %39, i32 noundef %39, ptr noundef nonnull %plaintext_len.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge

do.end17.i.__ceph_x_decrypt.exit.i_crit_edge:     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_x_decrypt.exit.i

if.end.i.i:                                       ; preds = %do.end17.i
  %magic.i.i = getelementptr i8, ptr %34, i32 5
  %43 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %magic.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 6172788607734776063, i64 %44)
  %cmp.not.i36.i = icmp eq i64 %44, 6172788607734776063
  br i1 %cmp.not.i36.i, label %if.end3.i.i, label %__ceph_x_decrypt.exit.thread.i

__ceph_x_decrypt.exit.thread.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  br label %out

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %plaintext_len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %plaintext_len.i.i, align 4
  %sub.i.i = add i32 %46, -9
  br label %__ceph_x_decrypt.exit.i

__ceph_x_decrypt.exit.i:                          ; preds = %if.end3.i.i, %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.end3.i.i ], [ %call.i.i, %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i323 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i323, label %__ceph_x_decrypt.exit.i.out_crit_edge, label %do.body33

__ceph_x_decrypt.exit.i.out_crit_edge:            ; preds = %__ceph_x_decrypt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body33:                                        ; preds = %__ceph_x_decrypt.exit.i
  %47 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %p, align 4
  %add.ptr.i324 = getelementptr i8, ptr %48, i32 %39
  store ptr %add.ptr.i324, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_one_ticket.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_one_ticket, %if.then45)) #8
          to label %do.end49 [label %if.then45], !srcloc !212

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_one_ticket.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 200, i32 noundef %retval.0.i.i) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then45, %do.body33
  %49 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dp, align 4
  %add.ptr50 = getelementptr i8, ptr %50, i32 %retval.0.i.i
  %cmp.not.i326 = icmp ule ptr %50, %add.ptr50
  %sub.ptr.lhs.cast.i327 = ptrtoint ptr %add.ptr50 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp1.i330 = icmp ne i32 %retval.0.i.i, 0
  %51 = and i1 %cmp1.i330, %cmp.not.i326
  br i1 %51, label %do.end63, label %do.end49.out_crit_edge, !prof !214

do.end49.out_crit_edge:                           ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end63:                                         ; preds = %do.end49
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %50, align 1
  %incdec.ptr.i331 = getelementptr i8, ptr %50, i32 1
  %54 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %incdec.ptr.i331, ptr %dp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp68.not = icmp eq i8 %53, 1
  br i1 %cmp68.not, label %if.end71, label %do.end63.out_crit_edge

do.end63.out_crit_edge:                           ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end71:                                         ; preds = %do.end63
  %call72 = call i32 @ceph_crypto_key_decode(ptr noundef nonnull %new_session_key, ptr noundef nonnull %dp, ptr noundef %add.ptr50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.body76, label %if.end71.out_crit_edge

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body76:                                        ; preds = %if.end71
  %55 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dp, align 4
  %cmp.not.i332 = icmp ule ptr %56, %add.ptr50
  %sub.ptr.rhs.cast.i334 = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i335 = sub i32 %sub.ptr.lhs.cast.i327, %sub.ptr.rhs.cast.i334
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub.i335)
  %cmp1.i336 = icmp ugt i32 %sub.ptr.sub.i335, 7
  %57 = select i1 %cmp.not.i332, i1 %cmp1.i336, i1 false
  br i1 %57, label %do.end87, label %do.body76.out_crit_edge, !prof !214

do.body76.out_crit_edge:                          ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end87:                                         ; preds = %do.body76
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %56, align 1
  %60 = call i32 @llvm.bswap.i32(i32 %59) #8
  %conv.i = zext i32 %60 to i64
  %add.ptr88 = getelementptr i8, ptr %56, i32 8
  %61 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %add.ptr88, ptr %dp, align 4
  %call89 = call i64 @ktime_get_real_seconds() #8
  %add = add i64 %call89, %conv.i
  %div.neg368369370 = lshr i32 %60, 2
  %div.neg368.zext = zext i32 %div.neg368369370 to i64
  %sub = sub i64 %add, %div.neg368.zext
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_one_ticket.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_one_ticket, %if.then103)) #8
          to label %do.body109 [label %if.then103], !srcloc !212

if.then103:                                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_one_ticket.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.68, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 217, i64 noundef %add, i64 noundef %sub) #8
  br label %do.body109

do.body109:                                       ; preds = %if.then103, %do.end87
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %p, align 4
  %64 = icmp ult ptr %63, %end
  br i1 %64, label %do.end120, label %do.body109.out_crit_edge, !prof !214

do.body109.out_crit_edge:                         ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end120:                                        ; preds = %do.body109
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %63, align 1
  %incdec.ptr.i342 = getelementptr i8, ptr %63, i32 1
  %67 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %incdec.ptr.i342, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool124.not = icmp eq i8 %66, 0
  br i1 %tobool124.not, label %do.end120.do.body153_crit_edge, label %if.then125

do.end120.do.body153_crit_edge:                   ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body153

if.then125:                                       ; preds = %do.end120
  %add.ptr127 = getelementptr i8, ptr %63, i32 14
  %68 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr127, ptr %tp, align 4
  %session_key = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 2
  %call128 = call fastcc i32 @ceph_x_decrypt(ptr noundef %session_key, ptr noundef %p, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.then125.out_crit_edge, label %do.body133

if.then125.out_crit_edge:                         ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body133:                                       ; preds = %if.then125
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_one_ticket.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_one_ticket, %if.then145)) #8
          to label %do.end149 [label %if.then145], !srcloc !212

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_one_ticket.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 227, i32 noundef %call128) #8
  br label %do.end149

do.end149:                                        ; preds = %if.then145, %do.body133
  %69 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tp, align 4
  %add.ptr150 = getelementptr i8, ptr %70, i32 %call128
  %.pre = ptrtoint ptr %add.ptr150 to i32
  br label %do.body153

do.body153:                                       ; preds = %do.end149, %do.end120.do.body153_crit_edge
  %sub.ptr.lhs.cast.i344.pre-phi = phi i32 [ %sub.ptr.lhs.cast.i, %do.end120.do.body153_crit_edge ], [ %.pre, %do.end149 ]
  %ptp.0 = phi ptr [ %p, %do.end120.do.body153_crit_edge ], [ %tp, %do.end149 ]
  %tpend.0 = phi ptr [ %end, %do.end120.do.body153_crit_edge ], [ %add.ptr150, %do.end149 ]
  %71 = ptrtoint ptr %ptp.0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptp.0, align 4
  %cmp.not.i343 = icmp ule ptr %72, %tpend.0
  %sub.ptr.rhs.cast.i345 = ptrtoint ptr %72 to i32
  %sub.ptr.sub.i346 = sub i32 %sub.ptr.lhs.cast.i344.pre-phi, %sub.ptr.rhs.cast.i345
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i346)
  %cmp1.i347 = icmp ugt i32 %sub.ptr.sub.i346, 3
  %73 = select i1 %cmp.not.i343, i1 %cmp1.i347, i1 false
  br i1 %73, label %do.end164, label %do.body153.out_crit_edge, !prof !214

do.body153.out_crit_edge:                         ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end164:                                        ; preds = %do.body153
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %72, align 1
  %add.ptr.i348 = getelementptr i8, ptr %72, i32 4
  %76 = ptrtoint ptr %ptp.0 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i348, ptr %ptp.0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_one_ticket.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_one_ticket, %if.then180)) #8
          to label %do.body185 [label %if.then180], !srcloc !212

if.then180:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #10
  %77 = call i32 @llvm.bswap.i32(i32 %75) #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_one_ticket.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.72, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 236, i32 noundef %77) #8
  br label %do.body185

do.body185:                                       ; preds = %if.then180, %do.end164
  %78 = ptrtoint ptr %ptp.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ptp.0, align 4
  %cmp.not.i349 = icmp ule ptr %79, %tpend.0
  %sub.ptr.rhs.cast.i351 = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i352 = sub i32 %sub.ptr.lhs.cast.i344.pre-phi, %sub.ptr.rhs.cast.i351
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i352)
  %cmp1.i353 = icmp ugt i32 %sub.ptr.sub.i352, 8
  %80 = select i1 %cmp.not.i349, i1 %cmp1.i353, i1 false
  br i1 %80, label %do.end196, label %do.body185.out_crit_edge, !prof !214

do.body185.out_crit_edge:                         ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end196:                                        ; preds = %do.body185
  %81 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %79, align 1
  %incdec.ptr.i354 = getelementptr i8, ptr %79, i32 1
  %83 = ptrtoint ptr %ptp.0 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %incdec.ptr.i354, ptr %ptp.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp199.not = icmp eq i8 %82, 1
  br i1 %cmp199.not, label %if.end202, label %do.end196.out_crit_edge

do.end196.out_crit_edge:                          ; preds = %do.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end202:                                        ; preds = %do.end196
  %84 = ptrtoint ptr %incdec.ptr.i354 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %incdec.ptr.i354, align 1
  %86 = call i64 @llvm.bswap.i64(i64 %85) #8
  %add.ptr.i355 = getelementptr i8, ptr %79, i32 9
  %87 = ptrtoint ptr %ptp.0 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr.i355, ptr %ptp.0, align 4
  %call204 = call i32 @ceph_decode_buffer(ptr noundef nonnull %new_ticket_blob, ptr noundef %ptp.0, ptr noundef %tpend.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %if.end202.out_crit_edge

if.end202.out_crit_edge:                          ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end207:                                        ; preds = %if.end202
  %session_key208 = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 2
  call void @ceph_crypto_key_destroy(ptr noundef %session_key208) #8
  %ticket_blob = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 5
  %88 = ptrtoint ptr %ticket_blob to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ticket_blob, align 8
  %tobool209.not = icmp eq ptr %89, null
  br i1 %tobool209.not, label %if.end207.if.end212_crit_edge, label %if.then210

if.end207.if.end212_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end212

if.then210:                                       ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ceph_buffer_put(ptr noundef nonnull %89)
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.end207.if.end212_crit_edge
  %90 = call ptr @memcpy(ptr %session_key208, ptr %new_session_key, i32 24)
  %91 = ptrtoint ptr %new_ticket_blob to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %new_ticket_blob, align 4
  %93 = ptrtoint ptr %ticket_blob to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %ticket_blob, align 8
  %secret_id = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 4
  %94 = ptrtoint ptr %secret_id to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %86, ptr %secret_id, align 8
  %expires = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 7
  %95 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add, ptr %expires, align 8
  %renew_after = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 6
  %96 = ptrtoint ptr %renew_after to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %sub, ptr %renew_after, align 8
  %have_key = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 3
  %97 = ptrtoint ptr %have_key to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %have_key, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_one_ticket.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_one_ticket, %if.then227)) #8
          to label %do.end234 [label %if.then227], !srcloc !212

if.then227:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  %call229 = call ptr @ceph_entity_type_name(i32 noundef %11) #8
  %98 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %secret_id, align 8
  %100 = ptrtoint ptr %ticket_blob to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ticket_blob, align 8
  %iov_len = getelementptr inbounds %struct.ceph_buffer, ptr %101, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %iov_len, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_one_ticket.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.74, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 259, i32 noundef %11, ptr noundef %call229, i64 noundef %99, i32 noundef %103) #8
  br label %do.end234

do.end234:                                        ; preds = %if.then227, %if.end212
  %service = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i321, i32 0, i32 1
  %104 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %service, align 4
  %have_keys = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 3
  %106 = ptrtoint ptr %have_keys to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %have_keys, align 8
  %or = or i32 %107, %105
  store i32 %or, ptr %have_keys, align 8
  br label %cleanup

out:                                              ; preds = %if.end202.out_crit_edge, %do.end196.out_crit_edge, %do.body185.out_crit_edge, %do.body153.out_crit_edge, %if.then125.out_crit_edge, %do.body109.out_crit_edge, %do.body76.out_crit_edge, %if.end71.out_crit_edge, %do.end63.out_crit_edge, %do.end49.out_crit_edge, %__ceph_x_decrypt.exit.i.out_crit_edge, %__ceph_x_decrypt.exit.thread.i, %do.end.i.out_crit_edge, %if.end26.out_crit_edge, %if.then24, %do.end17.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %32, %if.then24 ], [ %call72, %if.end71.out_crit_edge ], [ %call128, %if.then125.out_crit_edge ], [ %call204, %if.end202.out_crit_edge ], [ -22, %do.end196.out_crit_edge ], [ -22, %do.body185.out_crit_edge ], [ -22, %do.body153.out_crit_edge ], [ -22, %do.body109.out_crit_edge ], [ -22, %do.body76.out_crit_edge ], [ -22, %do.end63.out_crit_edge ], [ -22, %do.end49.out_crit_edge ], [ -22, %do.end17.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -22, %__ceph_x_decrypt.exit.thread.i ], [ -22, %if.end26.out_crit_edge ], [ -22, %do.end.i.out_crit_edge ], [ %retval.0.i.i, %__ceph_x_decrypt.exit.i.out_crit_edge ]
  call void @ceph_crypto_key_destroy(ptr noundef nonnull %new_session_key) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end234
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %do.end234 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_ticket_blob) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_session_key) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_crypto_key_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_decode_buffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_x_destroy_authorizer(ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %session_key.i = getelementptr inbounds %struct.ceph_x_authorizer, ptr %a, i32 0, i32 1
  tail call void @ceph_crypto_key_destroy(ptr noundef %session_key.i) #8
  %buf.i = getelementptr inbounds %struct.ceph_x_authorizer, ptr %a, i32 0, i32 2
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ceph_x_authorizer_cleanup.exit_crit_edge, label %if.then.i.i

entry.ceph_x_authorizer_cleanup.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_x_authorizer_cleanup.exit

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #8, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !214

if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_buffer_put.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #8
  br label %ceph_buffer_put.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @ceph_buffer_release(ptr noundef nonnull %1) #8
  br label %ceph_buffer_put.exit.i

ceph_buffer_put.exit.i:                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ceph_buffer_put.exit.i_crit_edge
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %buf.i, align 4
  br label %ceph_x_authorizer_cleanup.exit

ceph_x_authorizer_cleanup.exit:                   ; preds = %ceph_buffer_put.exit.i, %entry.ceph_x_authorizer_cleanup.exit_crit_edge
  tail call void @kfree(ptr noundef %a) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decrypt_authorizer_challenge(ptr noundef %secret, ptr noundef %challenge, i32 noundef %challenge_len, ptr nocapture noundef %server_challenge) unnamed_addr #0 align 64 {
entry:
  %plaintext_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plaintext_len.i) #8
  %0 = ptrtoint ptr %plaintext_len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %plaintext_len.i, align 4, !annotation !213
  %call.i = call i32 @ceph_crypt(ptr noundef %secret, i1 noundef zeroext false, ptr noundef %challenge, i32 noundef %challenge_len, i32 noundef %challenge_len, ptr noundef nonnull %plaintext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__ceph_x_decrypt.exit_crit_edge

entry.__ceph_x_decrypt.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_x_decrypt.exit

if.end.i:                                         ; preds = %entry
  %magic.i = getelementptr inbounds %struct.ceph_x_encrypt_header, ptr %challenge, i32 0, i32 1
  %1 = ptrtoint ptr %magic.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %magic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 6172788607734776063, i64 %2)
  %cmp.not.i = icmp eq i64 %2, 6172788607734776063
  br i1 %cmp.not.i, label %if.end3.i, label %__ceph_x_decrypt.exit.thread

__ceph_x_decrypt.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i) #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %plaintext_len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %plaintext_len.i, align 4
  %sub.i = add i32 %4, -9
  br label %__ceph_x_decrypt.exit

__ceph_x_decrypt.exit:                            ; preds = %if.end3.i, %entry.__ceph_x_decrypt.exit_crit_edge
  %retval.0.i68 = phi i32 [ %sub.i, %if.end3.i ], [ %call.i, %entry.__ceph_x_decrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i68)
  %cmp = icmp slt i32 %retval.0.i68, 0
  br i1 %cmp, label %__ceph_x_decrypt.exit.cleanup_crit_edge, label %do.body

__ceph_x_decrypt.exit.cleanup_crit_edge:          ; preds = %__ceph_x_decrypt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %__ceph_x_decrypt.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decrypt_authorizer_challenge.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decrypt_authorizer_challenge, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !212

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decrypt_authorizer_challenge.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 804, ptr noundef nonnull @.str.83, i32 noundef %retval.0.i68) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %add.ptr = getelementptr i8, ptr %challenge, i32 9
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i68
  %cmp.not.i69 = icmp ule ptr %add.ptr, %add.ptr7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i68)
  %cmp1.i = icmp ne i32 %retval.0.i68, 0
  %5 = and i1 %cmp1.i, %cmp.not.i69
  br i1 %5, label %do.end20, label %do.end.cleanup_crit_edge, !prof !214

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %do.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr7 to i32
  %add.ptr21 = getelementptr i8, ptr %challenge, i32 10
  %cmp.not.i70 = icmp ule ptr %add.ptr21, %add.ptr7
  %sub.ptr.rhs.cast.i72 = ptrtoint ptr %add.ptr21 to i32
  %sub.ptr.sub.i73 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub.i73)
  %cmp1.i74 = icmp ugt i32 %sub.ptr.sub.i73, 7
  %6 = select i1 %cmp.not.i70, i1 %cmp1.i74, i1 false
  br i1 %6, label %do.end36, label %do.end20.cleanup_crit_edge, !prof !214

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end36:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %add.ptr21, align 1
  %9 = call i64 @llvm.bswap.i64(i64 %8) #8
  %10 = ptrtoint ptr %server_challenge to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %server_challenge, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decrypt_authorizer_challenge.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decrypt_authorizer_challenge, %if.then52)) #8
          to label %cleanup [label %if.then52], !srcloc !212

if.then52:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %server_challenge to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %server_challenge, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decrypt_authorizer_challenge.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.85, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 810, ptr noundef nonnull @.str.83, i64 noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %do.end36, %do.end20.cleanup_crit_edge, %do.end.cleanup_crit_edge, %__ceph_x_decrypt.exit.cleanup_crit_edge, %__ceph_x_decrypt.exit.thread
  %retval.0 = phi i32 [ %retval.0.i68, %__ceph_x_decrypt.exit.cleanup_crit_edge ], [ 0, %if.then52 ], [ -22, %do.end20.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %__ceph_x_decrypt.exit.thread ], [ 0, %do.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decrypt_authorizer_reply(ptr noundef %secret, ptr nocapture noundef %p, ptr noundef %end, ptr nocapture noundef %nonce_plus_one, ptr noundef %con_secret, ptr nocapture noundef writeonly %con_secret_len) unnamed_addr #0 align 64 {
entry:
  %plaintext_len.i.i = alloca i32, align 4
  %dp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp) #8
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 13
  %cmp.not.i.i = icmp ule ptr %1, %end
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %end to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.ptr.sub.i.i)
  %cmp1.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 3
  %2 = select i1 %cmp.not.i.i, i1 %cmp1.i.i, i1 false
  br i1 %2, label %do.end.i, label %entry.cleanup_crit_edge, !prof !214

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %1, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i.i, ptr %p, align 4
  %cmp.not.i31.i = icmp ule ptr %add.ptr.i.i, %end
  %sub.ptr.rhs.cast.i33.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i34.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i34.i, i32 %5)
  %cmp1.i35.i = icmp uge i32 %sub.ptr.sub.i34.i, %5
  %7 = select i1 %cmp.not.i31.i, i1 %cmp1.i35.i, i1 false
  br i1 %7, label %do.end17.i, label %do.end.i.cleanup_crit_edge, !prof !214

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17.i:                                       ; preds = %do.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  %8 = ptrtoint ptr %plaintext_len.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %plaintext_len.i.i, align 4, !annotation !213
  %call.i.i = call i32 @ceph_crypt(ptr noundef %secret, i1 noundef zeroext false, ptr noundef %add.ptr.i.i, i32 noundef %5, i32 noundef %5, ptr noundef nonnull %plaintext_len.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge

do.end17.i.__ceph_x_decrypt.exit.i_crit_edge:     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ceph_x_decrypt.exit.i

if.end.i.i:                                       ; preds = %do.end17.i
  %magic.i.i = getelementptr i8, ptr %1, i32 5
  %9 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %magic.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 6172788607734776063, i64 %10)
  %cmp.not.i36.i = icmp eq i64 %10, 6172788607734776063
  br i1 %cmp.not.i36.i, label %if.end3.i.i, label %__ceph_x_decrypt.exit.thread.i

__ceph_x_decrypt.exit.thread.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %plaintext_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %plaintext_len.i.i, align 4
  %sub.i.i = add i32 %12, -9
  br label %__ceph_x_decrypt.exit.i

__ceph_x_decrypt.exit.i:                          ; preds = %if.end3.i.i, %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.end3.i.i ], [ %call.i.i, %do.end17.i.__ceph_x_decrypt.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plaintext_len.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %__ceph_x_decrypt.exit.i.cleanup_crit_edge, label %do.body

__ceph_x_decrypt.exit.i.cleanup_crit_edge:        ; preds = %__ceph_x_decrypt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %__ceph_x_decrypt.exit.i
  %13 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %5
  store ptr %add.ptr.i, ptr %p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decrypt_authorizer_reply.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decrypt_authorizer_reply, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !212

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decrypt_authorizer_reply.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 857, ptr noundef nonnull @.str.88, i32 noundef %retval.0.i.i) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i.i
  %cmp.not.i = icmp ule ptr %add.ptr, %add.ptr8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp1.i = icmp ne i32 %retval.0.i.i, 0
  %15 = and i1 %cmp1.i, %cmp.not.i
  br i1 %15, label %do.end21, label %do.end.cleanup_crit_edge, !prof !214

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %do.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr8 to i32
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr, align 1
  %incdec.ptr.i = getelementptr i8, ptr %1, i32 14
  %cmp.not.i82 = icmp ule ptr %incdec.ptr.i, %add.ptr8
  %sub.ptr.rhs.cast.i84 = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i85 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.ptr.sub.i85)
  %cmp1.i86 = icmp ugt i32 %sub.ptr.sub.i85, 7
  %18 = select i1 %cmp.not.i82, i1 %cmp1.i86, i1 false
  br i1 %18, label %do.end37, label %do.end21.cleanup_crit_edge, !prof !214

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %do.end21
  %19 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %incdec.ptr.i, align 1
  %21 = call i64 @llvm.bswap.i64(i64 %20) #8
  %add.ptr.i87 = getelementptr i8, ptr %1, i32 22
  %22 = ptrtoint ptr %dp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i87, ptr %dp, align 4
  %23 = ptrtoint ptr %nonce_plus_one to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %21, ptr %nonce_plus_one, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @decrypt_authorizer_reply.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@decrypt_authorizer_reply, %if.then53)) #8
          to label %do.end57 [label %if.then53], !srcloc !212

if.then53:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %nonce_plus_one to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %nonce_plus_one, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @decrypt_authorizer_reply.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.90, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 862, ptr noundef nonnull @.str.88, i64 noundef %25) #8
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %do.end37
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp58 = icmp ugt i8 %17, 1
  br i1 %cmp58, label %if.then60, label %do.end57.if.end65_crit_edge

do.end57.if.end65_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then60:                                        ; preds = %do.end57
  %call61 = call fastcc i32 @decode_con_secret(ptr noundef nonnull %dp, ptr noundef %add.ptr8, ptr noundef %con_secret, ptr noundef %con_secret_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.if.end65_crit_edge, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end65:                                         ; preds = %if.then60.if.end65_crit_edge, %do.end57.if.end65_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then60.cleanup_crit_edge, %do.end21.cleanup_crit_edge, %do.end.cleanup_crit_edge, %__ceph_x_decrypt.exit.i.cleanup_crit_edge, %__ceph_x_decrypt.exit.thread.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ %call61, %if.then60.cleanup_crit_edge ], [ -22, %do.end21.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %__ceph_x_decrypt.exit.thread.i ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i.cleanup_crit_edge ], [ %retval.0.i.i, %__ceph_x_decrypt.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @invalidate_ticket(ptr nocapture noundef readonly %ac, i32 noundef %peer_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %ticket_handlers.i = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ticket_handlers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ticket_handlers.i, align 4
  %tobool.not36.i = icmp eq ptr %3, null
  br i1 %tobool.not36.i, label %entry.while.end.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %8, %if.end6.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %service1.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %service1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %service1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %peer_type)
  %cmp.i = icmp ugt i32 %6, %peer_type
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %peer_type)
  %cmp3.i = icmp ult i32 %6, %peer_type
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.get_ticket_handler.exit_crit_edge

if.else.i.get_ticket_handler.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ticket_handler.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %7 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.le.i = ptrtoint ptr %4 to i32
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %entry.while.end.i_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %entry.while.end.i_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %ticket_handlers.i, %entry.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3392, i32 noundef 80) #11
  %tobool7.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not.i, label %while.end.i.cleanup_crit_edge, label %if.end10.i

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %service11.i = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %service11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %peer_type, ptr %service11.i, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %parent.0.lcssa.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rb_left.i.i, align 8
  %14 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef %ticket_handlers.i) #8
  br label %get_ticket_handler.exit

get_ticket_handler.exit:                          ; preds = %if.end10.i, %if.else.i.get_ticket_handler.exit_crit_edge
  %retval.0.i19 = phi ptr [ %call7.i.i.i, %if.end10.i ], [ %4, %if.else.i.get_ticket_handler.exit_crit_edge ]
  %cmp.i20 = icmp ugt ptr %retval.0.i19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20, label %get_ticket_handler.exit.cleanup_crit_edge, label %if.end

get_ticket_handler.exit.cleanup_crit_edge:        ; preds = %get_ticket_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %get_ticket_handler.exit
  %have_key = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i19, i32 0, i32 3
  %15 = ptrtoint ptr %have_key to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %have_key, align 8, !range !216
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @invalidate_ticket.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@invalidate_ticket, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !212

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %service = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i19, i32 0, i32 1
  %17 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %service, align 4
  %call10 = tail call ptr @ceph_entity_type_name(i32 noundef %18) #8
  %secret_id = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %retval.0.i19, i32 0, i32 4
  %19 = ptrtoint ptr %secret_id to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %secret_id, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @invalidate_ticket.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 944, i32 noundef %18, ptr noundef %call10, i64 noundef %20) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %21 = ptrtoint ptr %have_key to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %have_key, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %get_ticket_handler.exit.cleanup_crit_edge, %while.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_ticket_handler(ptr nocapture noundef readonly %ac, ptr noundef %th) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_auth_client, ptr %ac, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @remove_ticket_handler.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@remove_ticket_handler, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %service = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 1
  %2 = ptrtoint ptr %service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @remove_ticket_handler.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 152, ptr noundef %th, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ticket_handlers = getelementptr inbounds %struct.ceph_x_info, ptr %1, i32 0, i32 4
  tail call void @rb_erase(ptr noundef %th, ptr noundef %ticket_handlers) #8
  %session_key = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 2
  tail call void @ceph_crypto_key_destroy(ptr noundef %session_key) #8
  %ticket_blob = getelementptr inbounds %struct.ceph_x_ticket_handler, ptr %th, i32 0, i32 5
  %4 = ptrtoint ptr %ticket_blob to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ticket_blob, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then.i

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.i:                                        ; preds = %do.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #8, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i.i, !prof !214

if.end5.i.i.i.i.i.if.end7_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #8
  br label %if.end7

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @ceph_buffer_release(ptr noundef nonnull %5) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end7_crit_edge, %do.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef %th) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_signature(ptr noundef %au, ptr nocapture noundef readonly %msg, ptr nocapture noundef writeonly %psig) unnamed_addr #0 align 64 {
entry:
  %ciphertext_len.i = alloca i32, align 4
  %ciphertext_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_buf1 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6
  %con = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 9
  %0 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con, align 4
  %peer_features = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %peer_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %peer_features, align 8
  %and = and i64 %3, 2305843009213693952
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp.not = icmp eq i64 %and, 0
  br i1 %cmp.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 268435456, ptr %add.ptr, align 1
  %crc = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 12
  %5 = ptrtoint ptr %crc to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %crc, align 1
  %header_crc = getelementptr %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 17
  %7 = ptrtoint ptr %header_crc to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %header_crc, align 1
  %8 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %8, align 1
  %front_crc2 = getelementptr %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 21
  %11 = ptrtoint ptr %front_crc2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %front_crc2, align 1
  %middle_crc = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %middle_crc to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %middle_crc, align 1
  %middle_crc3 = getelementptr %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 25
  %14 = ptrtoint ptr %middle_crc3 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %middle_crc3, align 1
  %data_crc = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %data_crc to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %data_crc, align 1
  %data_crc4 = getelementptr %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 29
  %17 = ptrtoint ptr %data_crc4 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %data_crc4, align 1
  %session_key = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 1
  %add.ptr.i = getelementptr %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ciphertext_len.i) #8
  %18 = ptrtoint ptr %ciphertext_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %ciphertext_len.i, align 4, !annotation !213
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %add.ptr.i, align 1
  %magic.i = getelementptr %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %magic.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 6172788607734776063, ptr %magic.i, align 1
  %call.i = call i32 @ceph_crypt(ptr noundef %session_key, i1 noundef zeroext true, ptr noundef %add.ptr.i, i32 noundef 124, i32 noundef 29, ptr noundef nonnull %ciphertext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.ceph_x_encrypt.exit_crit_edge

if.then.ceph_x_encrypt.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_x_encrypt.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ciphertext_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ciphertext_len.i, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %enc_buf1 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %enc_buf1, align 1
  %add2.i = add i32 %22, 4
  br label %ceph_x_encrypt.exit

ceph_x_encrypt.exit:                              ; preds = %if.end.i, %if.then.ceph_x_encrypt.exit_crit_edge
  %retval.0.i = phi i32 [ %add2.i, %if.end.i ], [ %call.i, %if.then.ceph_x_encrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ciphertext_len.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp6 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp6, label %ceph_x_encrypt.exit.cleanup38_crit_edge, label %if.end

ceph_x_encrypt.exit.cleanup38_crit_edge:          ; preds = %ceph_x_encrypt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end:                                           ; preds = %ceph_x_encrypt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr.i, align 8
  %27 = ptrtoint ptr %psig to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %psig, align 8
  br label %cleanup38

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ciphertext_len) #8
  %28 = ptrtoint ptr %ciphertext_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %ciphertext_len, align 4, !annotation !213
  %crc11 = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 12
  %29 = ptrtoint ptr %crc11 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %crc11, align 1
  %31 = ptrtoint ptr %enc_buf1 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %enc_buf1, align 1
  %32 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %32, align 1
  %front_crc14 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %front_crc14 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %front_crc14, align 1
  %front_len = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 5
  %36 = ptrtoint ptr %front_len to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %front_len, align 2
  %front_len16 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 8
  %38 = ptrtoint ptr %front_len16 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %front_len16, align 1
  %middle_crc17 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %middle_crc17 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %middle_crc17, align 1
  %middle_crc18 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 12
  %41 = ptrtoint ptr %middle_crc18 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %middle_crc18, align 1
  %middle_len = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 6
  %42 = ptrtoint ptr %middle_len to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %middle_len, align 2
  %middle_len20 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 16
  %44 = ptrtoint ptr %middle_len20 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %middle_len20, align 1
  %data_crc21 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %data_crc21 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %data_crc21, align 1
  %data_crc22 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 20
  %47 = ptrtoint ptr %data_crc22 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %data_crc22, align 1
  %data_len = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 7
  %48 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %data_len, align 2
  %data_len24 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 24
  %50 = ptrtoint ptr %data_len24 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %data_len24, align 1
  %51 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %msg, align 4
  %seq_lower_word = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 6, i32 28
  %53 = ptrtoint ptr %seq_lower_word to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %seq_lower_word, align 1
  %session_key26 = getelementptr inbounds %struct.ceph_x_authorizer, ptr %au, i32 0, i32 1
  %call27 = call i32 @ceph_crypt(ptr noundef %session_key26, i1 noundef zeroext true, ptr noundef %enc_buf1, i32 noundef 128, i32 noundef 32, ptr noundef nonnull %ciphertext_len) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool.not = icmp eq i32 %call27, 0
  br i1 %tobool.not, label %if.end29, label %cleanup38.critedge79

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %enc_buf1 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %enc_buf1, align 1
  %56 = ptrtoint ptr %front_len16 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %front_len16, align 1
  %xor = xor i64 %57, %55
  %58 = ptrtoint ptr %middle_len20 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %middle_len20, align 1
  %xor30 = xor i64 %xor, %59
  %60 = ptrtoint ptr %data_len24 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %data_len24, align 1
  %xor31 = xor i64 %xor30, %61
  %62 = ptrtoint ptr %psig to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %xor31, ptr %psig, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ciphertext_len) #8
  br label %cleanup38

cleanup38.critedge79:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ciphertext_len) #8
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup38.critedge79, %if.end29, %if.end, %ceph_x_encrypt.exit.cleanup38_crit_edge
  %retval.2 = phi i32 [ %call27, %cleanup38.critedge79 ], [ 0, %if.end29 ], [ 0, %if.end ], [ %retval.0.i, %ceph_x_encrypt.exit.cleanup38_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/auth_x.c", i32 1092, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_x_init.__UNIQUE_ID_ddebug343, !1, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/auth_x.c", i32 1100, i32 3}
!10 = !{ptr @ceph_x_init._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ceph_x_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ceph/auth_x.c", i32 1106, i32 3}
!14 = !{ptr @ceph_x_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ceph_x_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @ceph_x_ops, !17, !"ceph_x_ops", i1 false, i1 false}
!17 = !{!"../net/ceph/auth_x.c", i32 1070, i32 42}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ceph/auth_x.c", i32 31, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ceph_x_is_authenticated.__UNIQUE_ID_ddebug308, !19, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!22 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ceph/auth_x.c", i32 450, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @have_key.__UNIQUE_ID_ddebug322, !24, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!27 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ceph/auth_x.c", i32 42, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ceph_x_should_authenticate.__UNIQUE_ID_ddebug309, !29, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!32 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/ceph/auth_x.c", i32 503, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ceph_x_build_request.__UNIQUE_ID_ddebug323, !34, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!37 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ceph/auth_x.c", i32 517, i32 3}
!40 = !{ptr @ceph_x_build_request.__UNIQUE_ID_ddebug324, !39, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!41 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ceph/auth_x.c", i32 533, i32 3}
!44 = !{ptr @ceph_x_build_request.__UNIQUE_ID_ddebug325, !43, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!45 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ceph/auth_x.c", i32 550, i32 3}
!48 = !{ptr @ceph_x_build_request.__UNIQUE_ID_ddebug326, !47, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!49 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ceph/auth_x.c", i32 362, i32 2}
!52 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug318, !51, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!54 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/ceph/auth_x.c", i32 372, i32 2}
!57 = !{ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug319, !56, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!58 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ceph/auth_x.c", i32 399, i32 2}
!61 = !{ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug320, !60, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!62 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ceph/auth_x.c", i32 405, i32 3}
!65 = !{ptr @ceph_x_build_authorizer._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ceph_x_build_authorizer._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ceph/auth_x.c", i32 409, i32 2}
!69 = !{ptr @ceph_x_build_authorizer.__UNIQUE_ID_ddebug321, !68, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!70 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/ceph/auth_x.c", i32 685, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ceph_x_handle_reply.__UNIQUE_ID_ddebug331, !72, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!75 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/ceph/auth_x.c", i32 695, i32 2}
!78 = !{ptr @ceph_x_handle_reply.__UNIQUE_ID_ddebug332, !77, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!79 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/ceph/auth_x.c", i32 634, i32 2}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @handle_auth_session_key.__UNIQUE_ID_ddebug328, !81, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!84 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/ceph/auth_x.c", i32 641, i32 3}
!87 = !{ptr @handle_auth_session_key.__UNIQUE_ID_ddebug329, !86, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!88 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/ceph/auth_x.c", i32 651, i32 2}
!91 = !{ptr @handle_auth_session_key.__UNIQUE_ID_ddebug330, !90, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!92 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/ceph/auth_x.c", i32 90, i32 3}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__ceph_x_decrypt._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @__ceph_x_decrypt._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/ceph/auth_x.c", i32 580, i32 2}
!100 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @decode_con_secret.__UNIQUE_ID_ddebug327, !99, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!102 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/ceph/auth_x.c", i32 583, i32 4}
!105 = !{ptr @decode_con_secret._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @decode_con_secret._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/ceph/auth_x.c", i32 596, i32 2}
!109 = !{ptr @decode_con_secret._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @decode_con_secret._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/ceph/auth_x.c", i32 283, i32 2}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ceph_x_proc_ticket_reply.__UNIQUE_ID_ddebug317, !112, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!115 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/ceph/auth_x.c", i32 183, i32 2}
!118 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @process_one_ticket.__UNIQUE_ID_ddebug311, !117, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!120 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/ceph/auth_x.c", i32 200, i32 2}
!123 = !{ptr @process_one_ticket.__UNIQUE_ID_ddebug312, !122, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!124 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/ceph/auth_x.c", i32 216, i32 2}
!127 = !{ptr @process_one_ticket.__UNIQUE_ID_ddebug313, !126, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!128 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/ceph/auth_x.c", i32 227, i32 3}
!131 = !{ptr @process_one_ticket.__UNIQUE_ID_ddebug314, !130, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!132 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/ceph/auth_x.c", i32 236, i32 2}
!135 = !{ptr @process_one_ticket.__UNIQUE_ID_ddebug315, !134, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!136 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/ceph/auth_x.c", i32 257, i32 2}
!139 = !{ptr @process_one_ticket.__UNIQUE_ID_ddebug316, !138, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!140 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/ceph/auth_x.c", i32 782, i32 3}
!143 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @ceph_x_update_authorizer.__UNIQUE_ID_ddebug333, !142, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!145 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/ceph/auth_x.c", i32 828, i32 3}
!148 = !{ptr @.str.79, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ceph_x_add_authorizer_challenge._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @ceph_x_add_authorizer_challenge._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/ceph/auth_x.c", i32 834, i32 3}
!153 = !{ptr @ceph_x_add_authorizer_challenge._entry.80, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @ceph_x_add_authorizer_challenge._entry_ptr.82, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/ceph/auth_x.c", i32 804, i32 2}
!157 = !{ptr @decrypt_authorizer_challenge.__UNIQUE_ID_ddebug334, !156, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/ceph/auth_x.c", i32 810, i32 2}
!160 = !{ptr @decrypt_authorizer_challenge.__UNIQUE_ID_ddebug335, !159, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!161 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/ceph/auth_x.c", i32 897, i32 3}
!164 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @ceph_x_verify_authorizer_reply._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @ceph_x_verify_authorizer_reply._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/ceph/auth_x.c", i32 857, i32 2}
!169 = !{ptr @decrypt_authorizer_reply.__UNIQUE_ID_ddebug336, !168, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/ceph/auth_x.c", i32 862, i32 2}
!172 = !{ptr @decrypt_authorizer_reply.__UNIQUE_ID_ddebug337, !171, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!173 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/ceph/auth_x.c", i32 942, i32 3}
!176 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @invalidate_ticket.__UNIQUE_ID_ddebug340, !175, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!178 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/ceph/auth_x.c", i32 908, i32 2}
!181 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @ceph_x_reset.__UNIQUE_ID_ddebug338, !180, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!183 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/ceph/auth_x.c", i32 918, i32 2}
!186 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @ceph_x_destroy.__UNIQUE_ID_ddebug339, !185, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!188 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.100, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/ceph/auth_x.c", i32 152, i32 2}
!191 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @remove_ticket_handler.__UNIQUE_ID_ddebug310, !190, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!193 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.103, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/ceph/auth_x.c", i32 1062, i32 3}
!196 = !{ptr @.str.104, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @ceph_x_check_message_signature.__UNIQUE_ID_ddebug341, !195, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!198 = !{ptr @.str.105, !195, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.106, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/ceph/auth_x.c", i32 1065, i32 3}
!201 = !{ptr @ceph_x_check_message_signature.__UNIQUE_ID_ddebug342, !200, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!202 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!203 = !{i32 1, !"wchar_size", i32 2}
!204 = !{i32 1, !"min_enum_size", i32 4}
!205 = !{i32 8, !"branch-target-enforcement", i32 0}
!206 = !{i32 8, !"sign-return-address", i32 0}
!207 = !{i32 8, !"sign-return-address-all", i32 0}
!208 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!209 = !{i32 7, !"uwtable", i32 1}
!210 = !{i32 7, !"frame-pointer", i32 2}
!211 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!212 = !{i64 2148995167, i64 2148995172, i64 2148995185, i64 2148995229, i64 2148995263, i64 2148995284}
!213 = !{!"auto-init"}
!214 = !{!"branch_weights", i32 2000, i32 1}
!215 = !{!"branch_weights", i32 1, i32 2000}
!216 = !{i8 0, i8 2}
!217 = !{i64 2148471659}
!218 = !{i64 2148386099, i64 2148386131, i64 2148386160, i64 2148386194, i64 2148386225, i64 2148386248}
!219 = !{i64 2149332110}
!220 = !{i64 2148055967}
