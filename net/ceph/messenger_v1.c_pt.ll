; ModuleID = '/llk/IR_all_yes/net/ceph/messenger_v1.c_pt.bc'
source_filename = "../net/ceph/messenger_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.54, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.23, %union.anon.24 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { i64 }
%union.anon.54 = type { ptr }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.142 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.140 }
%union.anon.140 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.142 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.143 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.137 }
%union.anon.137 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.143 = type { i8, %union.anon.144 }
%union.anon.144 = type <{ %struct.anon.145, [3 x i8] }>
%struct.anon.145 = type { i32, i32, i32 }
%struct.ceph_connection_v1_info = type <{ [8 x %struct.kvec], ptr, i32, i32, i32, i8, i8, [2 x i8], ptr, i32, [30 x i8], %struct.ceph_entity_addr, %struct.ceph_entity_addr, %struct.ceph_msg_connect, %struct.ceph_msg_connect_reply, [3 x i8], i32, i8, %struct.ceph_msg_header, [6 x i8], i64, %struct.ceph_msg_header, [3 x i8], i64, %struct.ceph_timespec, i32, i32 }>
%struct.ceph_msg_connect = type <{ i64, i32, i32, i32, i32, i32, i32, i8 }>
%struct.ceph_msg_connect_reply = type <{ i8, i64, i32, i32, i32, i32, i8 }>
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%struct.ceph_timespec = type { i32, i32 }
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_connection_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_msg = type { %struct.ceph_msg_header, %union.anon, %struct.kvec, ptr, i32, ptr, i32, i32, %struct.ceph_msg_data_cursor, ptr, %struct.list_head, %struct.kref, i8, i8, i32, ptr }
%union.anon = type { %struct.ceph_msg_footer }
%struct.ceph_msg_footer = type <{ i32, i32, i32, i64, i8 }>
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ceph_buffer = type { %struct.kref, %struct.kvec, i32 }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.possible_net_t = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.9, %union.anon.122, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.122 = type { %struct.atomic_t }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ceph_con_v1_try_read.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_con_v1_try_read\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ceph/messenger_v1.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : try_read start %p state %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"libceph: %.*s %12.12s:%-4d : try_read start %p state %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_read.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : try_read tag %d in_base_pos %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"libceph: %.*s %12.12s:%-4d : try_read tag %d in_base_pos %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_read.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : skipped %d / %d bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"libceph: %.*s %12.12s:%-4d : skipped %d / %d bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_read.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : try_read got tag %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libceph: %.*s %12.12s:%-4d : try_read got tag %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad crc/signature\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io error\00", [23 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_read.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 1, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : try_read done on %p ret %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"libceph: %.*s %12.12s:%-4d : try_read done on %p ret %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013libceph: try_read bad tag %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_read._entry_ptr = internal global ptr @ceph_con_v1_try_read._entry, section ".printk_index", align 4
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"protocol error, garbage tag\00", [36 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_write.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_con_v1_try_write\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : try_write start %p state %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : try_write start %p state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_write.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 1, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : try_write initiating connect on %p new state %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"libceph: %.*s %12.12s:%-4d : try_write initiating connect on %p new state %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"connect error\00", [18 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_write.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.24, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : try_write out_kvec_bytes %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : try_write out_kvec_bytes %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_write.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.26, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%.*s %12.12s:%-4d : try_write write_partial_message_data err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"libceph: %.*s %12.12s:%-4d : try_write write_partial_message_data err %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_write.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.28, i8 1, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : try_write nothing else to write.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"libceph: %.*s %12.12s:%-4d : try_write nothing else to write.\0A\00", [33 x i8] zeroinitializer }, align 32
@ceph_con_v1_try_write.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.30, i8 1, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : try_write done on %p ret %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : try_write done on %p ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_con_v1_revoke.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_con_v1_revoke\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : %s con %p out_kvec_bytes %d out_skip %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p out_kvec_bytes %d out_skip %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ceph_con_v1_revoke_incoming.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ceph_con_v1_revoke_incoming\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : %s con %p in_base_pos %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p in_base_pos %d\0A\00", [41 x i8] zeroinitializer }, align 32
@read_partial_banner.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"read_partial_banner\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : read_partial_banner %p at %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"libceph: %.*s %12.12s:%-4d : read_partial_banner %p at %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/ceph/decode.h\00", [36 x i8] zeroinitializer }, align 32
@process_banner.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"process_banner\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : process_banner on %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"libceph: %.*s %12.12s:%-4d : process_banner on %p\0A\00", [45 x i8] zeroinitializer }, align 32
@process_banner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014libceph: wrong peer, want %s/%u, got %s/%u\0A\00", [50 x i8] zeroinitializer }, align 32
@process_banner._entry_ptr = internal global ptr @process_banner._entry, section ".printk_index", align 4
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wrong peer at address\00", [42 x i8] zeroinitializer }, align 32
@process_banner.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.47, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : process_banner learned my addr is %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"libceph: %.*s %12.12s:%-4d : process_banner learned my addr is %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ceph v027\00", [22 x i8] zeroinitializer }, align 32
@verify_hello._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013libceph: connect to %s got bad banner\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"verify_hello\00", [19 x i8] zeroinitializer }, align 32
@verify_hello._entry_ptr = internal global ptr @verify_hello._entry, section ".printk_index", align 4
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"protocol error, bad banner\00", [37 x i8] zeroinitializer }, align 32
@prepare_write_connect.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prepare_write_connect\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%.*s %12.12s:%-4d : prepare_write_connect %p cseq=%d gseq=%d proto=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_write_connect %p cseq=%d gseq=%d proto=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@prepare_read_connect.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prepare_read_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : prepare_read_connect %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_read_connect %p\0A\00", [42 x i8] zeroinitializer }, align 32
@read_partial_connect.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_partial_connect\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : read_partial_connect %p at %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"libceph: %.*s %12.12s:%-4d : read_partial_connect %p at %d\0A\00", [36 x i8] zeroinitializer }, align 32
@read_partial_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013libceph: authorizer reply too big: %d > %zu\0A\00", [49 x i8] zeroinitializer }, align 32
@read_partial_connect._entry_ptr = internal global ptr @read_partial_connect._entry, section ".printk_index", align 4
@read_partial_connect.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.63, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%.*s %12.12s:%-4d : read_partial_connect %p tag %d, con_seq = %u, g_seq = %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"libceph: %.*s %12.12s:%-4d : read_partial_connect %p tag %d, con_seq = %u, g_seq = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@process_connect.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"process_connect\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : process_connect on %p tag %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"libceph: %.*s %12.12s:%-4d : process_connect on %p tag %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bad authorize reply\00", [44 x i8] zeroinitializer }, align 32
@process_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.65, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013libceph: %s%lld %s feature set mismatch, my %llx < server's %llx, missing %llx\0A\00", [46 x i8] zeroinitializer }, align 32
@process_connect._entry_ptr = internal global ptr @process_connect._entry, section ".printk_index", align 4
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing required protocol features\00", [61 x i8] zeroinitializer }, align 32
@process_connect._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.65, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013libceph: %s%lld %s protocol version mismatch, my %d != server's %d\0A\00", [58 x i8] zeroinitializer }, align 32
@process_connect._entry_ptr.73 = internal global ptr @process_connect._entry.71, section ".printk_index", align 4
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"protocol version mismatch\00", [38 x i8] zeroinitializer }, align 32
@process_connect.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.75, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : process_connect %p got BADAUTHORIZER attempt %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"libceph: %.*s %12.12s:%-4d : process_connect %p got BADAUTHORIZER attempt %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"connect authorization failure\00", [34 x i8] zeroinitializer }, align 32
@process_connect.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.78, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : process_connect got RESET peer seq %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"libceph: %.*s %12.12s:%-4d : process_connect got RESET peer seq %u\0A\00", [60 x i8] zeroinitializer }, align 32
@process_connect._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.65, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016libceph: %s%lld %s session reset\0A\00", [60 x i8] zeroinitializer }, align 32
@process_connect._entry_ptr.82 = internal global ptr @process_connect._entry.80, section ".printk_index", align 4
@process_connect.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.83, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%.*s %12.12s:%-4d : process_connect got RETRY_SESSION my seq %u, peer %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"libceph: %.*s %12.12s:%-4d : process_connect got RETRY_SESSION my seq %u, peer %u\0A\00", [45 x i8] zeroinitializer }, align 32
@process_connect.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.85, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%.*s %12.12s:%-4d : process_connect got RETRY_GLOBAL my %u peer_gseq %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"libceph: %.*s %12.12s:%-4d : process_connect got RETRY_GLOBAL my %u peer_gseq %u\0A\00", [46 x i8] zeroinitializer }, align 32
@process_connect._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.65, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013libceph: %s%lld %s protocol feature mismatch, my required %llx > server's %llx, need %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@process_connect._entry_ptr.89 = internal global ptr @process_connect._entry.87, section ".printk_index", align 4
@process_connect.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.90, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%.*s %12.12s:%-4d : process_connect got READY gseq %d cseq %d (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"libceph: %.*s %12.12s:%-4d : process_connect got READY gseq %d cseq %d (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"protocol error, got WAIT as client\00", [61 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"protocol error, garbage tag during connect\00", [53 x i8] zeroinitializer }, align 32
@prepare_write_seq.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prepare_write_seq\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : prepare_write_seq %p %llu -> %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_write_seq %p %llu -> %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@prepare_read_seq.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prepare_read_seq\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : prepare_read_seq %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_read_seq %p\0A\00", [46 x i8] zeroinitializer }, align 32
@prepare_read_message.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"prepare_read_message\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : prepare_read_message %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_read_message %p\0A\00", [42 x i8] zeroinitializer }, align 32
@prepare_read_ack.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prepare_read_ack\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : prepare_read_ack %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_read_ack %p\0A\00", [46 x i8] zeroinitializer }, align 32
@prepare_read_keepalive_ack.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"prepare_read_keepalive_ack\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : prepare_read_keepalive_ack %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_read_keepalive_ack %p\0A\00", [36 x i8] zeroinitializer }, align 32
@read_partial_message.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read_partial_message\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : read_partial_message con %p msg %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"libceph: %.*s %12.12s:%-4d : read_partial_message con %p msg %p\0A\00", [63 x i8] zeroinitializer }, align 32
@read_partial_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.109, ptr @.str.2, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013libceph: read_partial_message bad hdr crc %u != expected %u\0A\00", [33 x i8] zeroinitializer }, align 32
@read_partial_message._entry_ptr = internal global ptr @read_partial_message._entry, section ".printk_index", align 4
@read_partial_message._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016libceph: skipping %s%lld %s seq %lld expected %lld\0A\00", [42 x i8] zeroinitializer }, align 32
@read_partial_message._entry_ptr.115 = internal global ptr @read_partial_message._entry.113, section ".printk_index", align 4
@read_partial_message._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013libceph: read_partial_message bad seq %lld expected %lld\0A\00", [36 x i8] zeroinitializer }, align 32
@read_partial_message._entry_ptr.118 = internal global ptr @read_partial_message._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bad message sequence # for incoming message\00", [52 x i8] zeroinitializer }, align 32
@read_partial_message.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.120, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : got hdr type %d front %d data %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"libceph: %.*s %12.12s:%-4d : got hdr type %d front %d data %d\0A\00", [33 x i8] zeroinitializer }, align 32
@read_partial_message.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.122, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : alloc_msg said skip message\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : alloc_msg said skip message\0A\00", [38 x i8] zeroinitializer }, align 32
@read_partial_message.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.124, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%.*s %12.12s:%-4d : read_partial_message got msg %p %d (%u) + %d (%u) + %d (%u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"libceph: %.*s %12.12s:%-4d : read_partial_message got msg %p %d (%u) + %d (%u) + %d (%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@read_partial_message._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.109, ptr @.str.2, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013libceph: read_partial_message %p front crc %u != exp. %u\0A\00", [36 x i8] zeroinitializer }, align 32
@read_partial_message._entry_ptr.128 = internal global ptr @read_partial_message._entry.126, section ".printk_index", align 4
@read_partial_message._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.109, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013libceph: read_partial_message %p middle crc %u != exp %u\0A\00", [36 x i8] zeroinitializer }, align 32
@read_partial_message._entry_ptr.131 = internal global ptr @read_partial_message._entry.129, section ".printk_index", align 4
@read_partial_message._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.109, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013libceph: read_partial_message %p data crc %u != exp. %u\0A\00", [37 x i8] zeroinitializer }, align 32
@read_partial_message._entry_ptr.134 = internal global ptr @read_partial_message._entry.132, section ".printk_index", align 4
@read_partial_message._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.109, ptr @.str.2, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013libceph: read_partial_message %p signature check failed\0A\00", [37 x i8] zeroinitializer }, align 32
@read_partial_message._entry_ptr.137 = internal global ptr @read_partial_message._entry.135, section ".printk_index", align 4
@read_partial_msg_data_bounce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013libceph: failed to allocate bounce page\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"read_partial_msg_data_bounce\00", [35 x i8] zeroinitializer }, align 32
@read_partial_msg_data_bounce._entry_ptr = internal global ptr @read_partial_msg_data_bounce._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@prepare_read_tag.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.142, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"prepare_read_tag\00", [47 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : prepare_read_tag %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_read_tag %p\0A\00", [46 x i8] zeroinitializer }, align 32
@prepare_read_banner.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.2, ptr @.str.145, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"prepare_read_banner\00", [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : prepare_read_banner %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_read_banner %p\0A\00", [43 x i8] zeroinitializer }, align 32
@write_partial_kvec.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.147, ptr @.str.2, ptr @.str.148, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write_partial_kvec\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : write_partial_kvec %p %d left\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"libceph: %.*s %12.12s:%-4d : write_partial_kvec %p %d left\0A\00", [36 x i8] zeroinitializer }, align 32
@write_partial_kvec.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.147, ptr @.str.2, ptr @.str.150, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : write_partial_kvec %p %d left in %d kvecs ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"libceph: %.*s %12.12s:%-4d : write_partial_kvec %p %d left in %d kvecs ret = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@write_partial_skip.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.152, ptr @.str.2, ptr @.str.153, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write_partial_skip\00", [45 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.*s %12.12s:%-4d : %s %p %d left\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p %d left\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str.155 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@write_partial_message_data.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.2, ptr @.str.157, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"write_partial_message_data\00", [37 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : %s %p msg %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p msg %p\0A\00", [53 x i8] zeroinitializer }, align 32
@write_partial_message_data.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.156, ptr @.str.2, ptr @.str.159, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : %s %p msg %p done\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p msg %p done\0A\00", [48 x i8] zeroinitializer }, align 32
@prepare_write_message_footer.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.161, ptr @.str.2, ptr @.str.162, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"prepare_write_message_footer\00", [35 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : prepare_write_message_footer %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_write_message_footer %p\0A\00", [34 x i8] zeroinitializer }, align 32
@prepare_write_keepalive.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.164, ptr @.str.2, ptr @.str.165, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prepare_write_keepalive\00", [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : prepare_write_keepalive %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_write_keepalive %p\0A\00", [39 x i8] zeroinitializer }, align 32
@tag_keepalive2 = internal global { i8, [31 x i8] } { i8 14, [31 x i8] zeroinitializer }, align 32
@tag_keepalive = internal global { i8, [31 x i8] } { i8 9, [31 x i8] zeroinitializer }, align 32
@tag_ack = internal global { i8, [31 x i8] } { i8 8, [31 x i8] zeroinitializer }, align 32
@prepare_write_message.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.167, ptr @.str.2, ptr @.str.168, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"prepare_write_message\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%.*s %12.12s:%-4d : prepare_write_message %p seq %lld type %d len %d+%d+%zd\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_write_message %p seq %lld type %d len %d+%d+%zd\0A\00", [42 x i8] zeroinitializer }, align 32
@tag_msg = internal global { i8, [31 x i8] } { i8 7, [31 x i8] zeroinitializer }, align 32
@prepare_write_message.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.167, ptr @.str.2, ptr @.str.170, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : %s front_crc %u middle_crc %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"libceph: %.*s %12.12s:%-4d : %s front_crc %u middle_crc %u\0A\00", [36 x i8] zeroinitializer }, align 32
@prepare_write_ack.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.172, ptr @.str.2, ptr @.str.173, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prepare_write_ack\00", [46 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : prepare_write_ack %p %llu -> %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"libceph: %.*s %12.12s:%-4d : prepare_write_ack %p %llu -> %llu\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.176 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 7, i64 8, i64 15]
@__sancov_gen_cov_switch_values.177 = internal global [6 x i64] [i64 4, i64 8, i64 7, i64 8, i64 13, i64 15]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 32, i64 4294967222, i64 4294967244, i64 4294967291]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.180 = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.181 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 12]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1255, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1263, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1309, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1321, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1345, i32 22 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1351, i32 22 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1383, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1387, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1388, i32 19 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1401, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1419, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1423, i32 21 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1429, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1458, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1484, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1487, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1510, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1531, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 628, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [31 x i8] c"../include/linux/ceph/decode.h\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 238, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 711, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 725, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 730, i32 20 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 743, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 698, i32 32 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 699, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 701, i32 20 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 396, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 563, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 661, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 672, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 685, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 757, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 785, i32 22 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 793, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 798, i32 20 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 802, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 808, i32 20 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 813, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 816, i32 21 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 834, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 836, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 860, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 876, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 891, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 907, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 934, i32 20 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 938, i32 20 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 290, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 575, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 598, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 569, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 589, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1085, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1096, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1114, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1123, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1125, i32 20 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1133, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1142, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1203, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1209, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1214, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1221, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1228, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 1041, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 582, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 557, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 425, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 453, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 535, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 428, i32 1 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 473, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 514, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 178, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 308, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [15 x i8] c"tag_keepalive2\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 19, i32 13 }
@___asan_gen_.678 = private unnamed_addr constant [14 x i8] c"tag_keepalive\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 18, i32 13 }
@___asan_gen_.681 = private unnamed_addr constant [8 x i8] c"tag_ack\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 17, i32 13 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 216, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant [8 x i8] c"tag_msg\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 16, i32 13 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 246, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.709 = private constant [27 x i8] c"../net/ceph/messenger_v1.c\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 269, i32 2 }
@llvm.compiler.used = appending global [192 x ptr] [ptr @ceph_con_v1_try_read._entry, ptr @ceph_con_v1_try_read._entry_ptr, ptr @process_banner._entry, ptr @process_banner._entry_ptr, ptr @process_connect._entry, ptr @process_connect._entry.71, ptr @process_connect._entry.80, ptr @process_connect._entry.87, ptr @process_connect._entry_ptr, ptr @process_connect._entry_ptr.73, ptr @process_connect._entry_ptr.82, ptr @process_connect._entry_ptr.89, ptr @read_partial_connect._entry, ptr @read_partial_connect._entry_ptr, ptr @read_partial_message._entry, ptr @read_partial_message._entry.113, ptr @read_partial_message._entry.116, ptr @read_partial_message._entry.126, ptr @read_partial_message._entry.129, ptr @read_partial_message._entry.132, ptr @read_partial_message._entry.135, ptr @read_partial_message._entry_ptr, ptr @read_partial_message._entry_ptr.115, ptr @read_partial_message._entry_ptr.118, ptr @read_partial_message._entry_ptr.128, ptr @read_partial_message._entry_ptr.131, ptr @read_partial_message._entry_ptr.134, ptr @read_partial_message._entry_ptr.137, ptr @read_partial_msg_data_bounce._entry, ptr @read_partial_msg_data_bounce._entry_ptr, ptr @verify_hello._entry, ptr @verify_hello._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @tag_keepalive2, ptr @tag_keepalive, ptr @tag_ack, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @tag_msg, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_con_v1_try_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_banner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_hello._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_connect._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_connect._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_connect._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_message._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_message._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_message._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_message._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_message._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_message._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_partial_msg_data_bounce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tag_keepalive2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tag_keepalive to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tag_ack to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tag_msg to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_con_v1_try_read(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  %iov.i.i.i = alloca %struct.kvec, align 4
  %msg.i.i.i = alloca %struct.msghdr, align 8
  %iov.i351 = alloca %struct.kvec, align 4
  %msg.i352 = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %in_tag = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %in_base_pos = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %0 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %1 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.kvec, ptr %iov.i351, i32 0, i32 1
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i352, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %in_tag, null
  %spec.store.select = select i1 %tobool.not.i, i32 16480, i32 16448
  %msg_iter.i355 = getelementptr inbounds %struct.msghdr, ptr %msg.i352, i32 0, i32 2
  %in_msg.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %in_data_crc.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 24
  %in_middle_crc.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 23
  %in_front_crc.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 22
  %in_temp_ack.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 31
  %4 = getelementptr inbounds %struct.kvec, ptr %iov.i.i.i, i32 0, i32 1
  %5 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i.i, i32 0, i32 7
  %msg_iter.i.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i.i, i32 0, i32 2
  br label %more

more:                                             ; preds = %more.backedge, %entry
  %ret.0 = phi i32 [ -1, %entry ], [ %ret.0.be, %more.backedge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %more
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_read.__UNIQUE_ID_ddebug497, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1255, ptr noundef %con, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %more
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end.cleanup_crit_edge [
    i32 3, label %do.end.do.body12_crit_edge
    i32 4, label %do.end.do.body12_crit_edge423
    i32 12, label %do.end.do.body12_crit_edge424
  ]

do.end.do.body12_crit_edge424:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.end.do.body12_crit_edge423:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.end.do.body12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body12:                                        ; preds = %do.end.do.body12_crit_edge, %do.end.do.body12_crit_edge423, %do.end.do.body12_crit_edge424
  %11 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sock, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %do.body23, label %do.body32, !prof !335

do.body23:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1261, 0\0A.popsection", ""() #8, !srcloc !336
  unreachable

do.body32:                                        ; preds = %do.body12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then44)) #8
          to label %do.end48 [label %if.then44], !srcloc !334

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_tag, align 4
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in_base_pos, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_read.__UNIQUE_ID_ddebug498, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1264, i32 noundef %conv, i32 noundef %16) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body32
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %18, label %do.end103 [
    i32 3, label %if.then52
    i32 4, label %if.then73
    i32 12, label %do.end48.if.end109_crit_edge
  ], !prof !337

do.end48.if.end109_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then52:                                        ; preds = %do.end48
  %call53 = call fastcc i32 @read_partial_banner(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 1
  br i1 %cmp54, label %if.then52.do.body246_crit_edge, label %if.end57

if.then52.do.body246_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

if.end57:                                         ; preds = %if.then52
  %call58 = call fastcc i32 @process_banner(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.do.body246_crit_edge, label %if.end62

if.end57.do.body246_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

if.end62:                                         ; preds = %if.end57
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %state, align 4
  %call64 = call fastcc i32 @prepare_write_connect(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end62.do.body246_crit_edge, label %if.end68

if.end62.do.body246_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

if.end68:                                         ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_connect.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then.i)) #8
          to label %prepare_read_connect.exit [label %if.then.i], !srcloc !334

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_connect.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 563, ptr noundef %con) #8
  br label %prepare_read_connect.exit

prepare_read_connect.exit:                        ; preds = %if.then.i, %if.end68
  %21 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %in_base_pos, align 8
  br label %do.body246

if.then73:                                        ; preds = %do.end48
  %call74 = call fastcc i32 @read_partial_connect(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 1
  br i1 %cmp75, label %if.then73.do.body246_crit_edge, label %if.end78

if.then73.do.body246_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

if.end78:                                         ; preds = %if.then73
  %call79 = call fastcc i32 @process_connect(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end78.do.body246_crit_edge, label %if.end78.more.backedge_crit_edge

if.end78.more.backedge_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %more.backedge

if.end78.do.body246_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

do.end103:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1300, i32 noundef 9, ptr noundef null) #8
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %do.end48.if.end109_crit_edge
  %22 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in_base_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp118 = icmp slt i32 %23, 0
  br i1 %cmp118, label %if.then120, label %if.end109.if.end152_crit_edge

if.end109.if.end152_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.then120:                                       ; preds = %if.end109
  %24 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock, align 4
  %sub = sub i32 0, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #8
  %26 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %iov.i, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %28 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16480, ptr %1, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %sub) #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %call.i = call i32 @sock_recvmsg(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -11
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp124 = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp124, label %if.then120.do.body246_crit_edge, label %do.body128

if.then120.do.body246_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

do.body128:                                       ; preds = %if.then120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then140)) #8
          to label %do.end146 [label %if.then140], !srcloc !334

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_base_pos, align 8
  %sub143 = sub i32 0, %33
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_read.__UNIQUE_ID_ddebug499, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1309, i32 noundef %spec.store.select.i, i32 noundef %sub143) #8
  br label %do.end146

do.end146:                                        ; preds = %if.then140, %do.body128
  %34 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %in_base_pos, align 8
  %add = add i32 %35, %spec.store.select.i
  store i32 %add, ptr %in_base_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool149.not = icmp eq i32 %add, 0
  br i1 %tobool149.not, label %do.end146.if.end152_crit_edge, label %do.end146.more.backedge_crit_edge

do.end146.more.backedge_crit_edge:                ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %more.backedge

do.end146.if.end152_crit_edge:                    ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end152

if.end152:                                        ; preds = %do.end146.if.end152_crit_edge, %if.end109.if.end152_crit_edge
  %ret.1 = phi i32 [ %call.i, %do.end146.if.end152_crit_edge ], [ %ret.0, %if.end109.if.end152_crit_edge ]
  %36 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %in_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp155 = icmp eq i8 %37, 1
  br i1 %cmp155, label %if.then157, label %if.end152.if.end192_crit_edge

if.end152.if.end192_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then157:                                       ; preds = %if.end152
  %38 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sock, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i351) #8
  %40 = ptrtoint ptr %iov.i351 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %in_tag, ptr %iov.i351, align 4
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i352) #8
  %42 = call ptr @memset(ptr %msg.i352, i32 0, i32 56)
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.store.select, ptr %3, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i355, i32 noundef 0, ptr noundef nonnull %iov.i351, i32 noundef 1, i32 noundef 1) #8
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %3, align 4
  %call.i356 = call i32 @sock_recvmsg(ptr noundef %39, ptr noundef nonnull %msg.i352, i32 noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i356)
  %cmp.i357 = icmp eq i32 %call.i356, -11
  %spec.store.select.i358 = select i1 %cmp.i357, i32 0, i32 %call.i356
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i352) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i351) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i358)
  %cmp161 = icmp slt i32 %spec.store.select.i358, 1
  br i1 %cmp161, label %if.then157.do.body246_crit_edge, label %do.body165

if.then157.do.body246_crit_edge:                  ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

do.body165:                                       ; preds = %if.then157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then177)) #8
          to label %do.end183 [label %if.then177], !srcloc !334

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %in_tag, align 4
  %conv180 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_read.__UNIQUE_ID_ddebug500, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1321, i32 noundef %conv180) #8
  br label %do.end183

do.end183:                                        ; preds = %if.then177, %do.body165
  %48 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %in_tag, align 4
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %49, label %do.end265 [
    i8 7, label %sw.bb
    i8 8, label %sw.bb187
    i8 15, label %sw.bb188
    i8 6, label %sw.bb189
  ]

sw.bb:                                            ; preds = %do.end183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_message.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then.i359)) #8
          to label %do.body4.i [label %if.then.i359], !srcloc !334

if.then.i359:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_message.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.102, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 598, ptr noundef %con) #8
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then.i359, %sw.bb
  %51 = ptrtoint ptr %in_msg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %in_msg.i, align 8
  %cmp.not.i = icmp eq ptr %52, null
  br i1 %cmp.not.i, label %prepare_read_message.exit, label %do.body12.i, !prof !338

do.body12.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 599, 0\0A.popsection", ""() #8, !srcloc !339
  unreachable

prepare_read_message.exit:                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %in_base_pos, align 8
  %54 = ptrtoint ptr %in_data_crc.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %in_data_crc.i, align 4
  %55 = ptrtoint ptr %in_middle_crc.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %in_middle_crc.i, align 8
  %56 = ptrtoint ptr %in_front_crc.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %in_front_crc.i, align 4
  br label %if.end192thread-pre-split

sw.bb187:                                         ; preds = %do.end183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_ack.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then.i361)) #8
          to label %prepare_read_ack.exit [label %if.then.i361], !srcloc !334

if.then.i361:                                     ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_ack.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.105, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 569, ptr noundef %con) #8
  br label %prepare_read_ack.exit

prepare_read_ack.exit:                            ; preds = %if.then.i361, %sw.bb187
  %57 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %in_base_pos, align 8
  br label %if.end192thread-pre-split

sw.bb188:                                         ; preds = %do.end183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_keepalive_ack.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then.i363)) #8
          to label %prepare_read_keepalive_ack.exit [label %if.then.i363], !srcloc !334

if.then.i363:                                     ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_keepalive_ack.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.108, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 589, ptr noundef %con) #8
  br label %prepare_read_keepalive_ack.exit

prepare_read_keepalive_ack.exit:                  ; preds = %if.then.i363, %sw.bb188
  %58 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %in_base_pos, align 8
  br label %if.end192thread-pre-split

sw.bb189:                                         ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #10
  %call190 = call i32 @ceph_con_close_socket(ptr noundef %con) #8
  %59 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %state, align 4
  br label %do.body246

if.end192thread-pre-split:                        ; preds = %prepare_read_keepalive_ack.exit, %prepare_read_ack.exit, %prepare_read_message.exit
  %60 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %60)
  %.pr = load i8, ptr %in_tag, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.end192thread-pre-split, %if.end152.if.end192_crit_edge
  %61 = phi i8 [ %.pr, %if.end192thread-pre-split ], [ %37, %if.end152.if.end192_crit_edge ]
  %ret.2 = phi i32 [ %call.i356, %if.end192thread-pre-split ], [ %ret.1, %if.end152.if.end192_crit_edge ]
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %61, label %if.end192.do.body246_crit_edge [
    i8 7, label %if.then197
    i8 8, label %if.end192.if.then228_crit_edge
    i8 13, label %if.end192.if.then228_crit_edge425
    i8 15, label %if.then239
  ]

if.end192.if.then228_crit_edge425:                ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then228

if.end192.if.then228_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then228

if.end192.do.body246_crit_edge:                   ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

if.then197:                                       ; preds = %if.end192
  %call198 = call fastcc i32 @read_partial_message(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call198)
  %cmp199 = icmp slt i32 %call198, 1
  br i1 %cmp199, label %if.then201, label %if.end207

if.then201:                                       ; preds = %if.then197
  %63 = zext i32 %call198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %call198, label %if.then201.do.body246_crit_edge [
    i32 -74, label %sw.bb202
    i32 -52, label %if.then201.sw.bb203_crit_edge
    i32 -5, label %sw.bb204
  ]

if.then201.sw.bb203_crit_edge:                    ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb203

if.then201.do.body246_crit_edge:                  ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

sw.bb202:                                         ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  %error_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %64 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.12, ptr %error_msg, align 4
  br label %sw.bb203

sw.bb203:                                         ; preds = %sw.bb202, %if.then201.sw.bb203_crit_edge
  br label %do.body246

sw.bb204:                                         ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  %error_msg205 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %65 = ptrtoint ptr %error_msg205 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.13, ptr %error_msg205, align 4
  br label %do.body246

if.end207:                                        ; preds = %if.then197
  %66 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %in_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp210 = icmp eq i8 %67, 1
  br i1 %cmp210, label %if.end207.more.backedge_crit_edge, label %if.end213

if.end207.more.backedge_crit_edge:                ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %more.backedge

if.end213:                                        ; preds = %if.end207
  call void @ceph_con_process_message(ptr noundef %con) #8
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %69)
  %cmp215 = icmp eq i32 %69, 12
  br i1 %cmp215, label %if.then217, label %if.end213.more.backedge_crit_edge

if.end213.more.backedge_crit_edge:                ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %more.backedge

if.then217:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_tag.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %more.backedge.sink.split.sink.split)) #8
          to label %more.backedge.sink.split [label %more.backedge.sink.split.sink.split], !srcloc !334

more.backedge.sink.split.sink.split:              ; preds = %if.end.i, %if.then217
  %ret.0.be.ph.ph = phi i32 [ 1, %if.end.i ], [ %call198, %if.then217 ]
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_tag.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.143, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 582, ptr noundef %con) #8
  br label %more.backedge.sink.split

more.backedge.sink.split:                         ; preds = %if.end.i, %more.backedge.sink.split.sink.split, %if.then217
  %ret.0.be.ph = phi i32 [ 1, %if.end.i ], [ %call198, %if.then217 ], [ %ret.0.be.ph.ph, %more.backedge.sink.split.sink.split ]
  %70 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %in_base_pos, align 8
  %71 = ptrtoint ptr %in_tag to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %in_tag, align 4
  br label %more.backedge

more.backedge:                                    ; preds = %if.then239.more.backedge_crit_edge, %more.backedge.sink.split, %if.end213.more.backedge_crit_edge, %if.end207.more.backedge_crit_edge, %do.end146.more.backedge_crit_edge, %if.end78.more.backedge_crit_edge
  %ret.0.be = phi i32 [ %call79, %if.end78.more.backedge_crit_edge ], [ %call.i, %do.end146.more.backedge_crit_edge ], [ %call198, %if.end207.more.backedge_crit_edge ], [ %call240, %if.then239.more.backedge_crit_edge ], [ %call198, %if.end213.more.backedge_crit_edge ], [ %ret.0.be.ph, %more.backedge.sink.split ]
  br label %more

if.then228:                                       ; preds = %if.end192.if.then228_crit_edge, %if.end192.if.then228_crit_edge425
  %72 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %in_base_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %73)
  %cmp16.i.i = icmp slt i32 %73, 8
  br i1 %cmp16.i.i, label %if.then228.while.body.i.i_crit_edge, label %if.then228.if.end233_crit_edge

if.then228.if.end233_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233

if.then228.while.body.i.i_crit_edge:              ; preds = %if.then228
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then228.while.body.i.i_crit_edge
  %74 = phi i32 [ %add.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %73, %if.then228.while.body.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %74
  %75 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sock, align 4
  %add.ptr.i.i = getelementptr i8, ptr %in_temp_ack.i, i32 %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i.i) #8
  %77 = ptrtoint ptr %iov.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i, ptr %iov.i.i.i, align 4
  %78 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub.i.i, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %79 = call ptr @memset(ptr %msg.i.i.i, i32 0, i32 56)
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i, null
  %spec.store.select.i.i = select i1 %tobool.not.i.i.i, i32 16480, i32 16448
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.store.select.i.i, ptr %5, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i.i, i32 noundef 0, ptr noundef nonnull %iov.i.i.i, i32 noundef 1, i32 noundef %sub.i.i) #8
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %5, align 4
  %call.i.i.i = call i32 @sock_recvmsg(ptr noundef %76, ptr noundef nonnull %msg.i.i.i, i32 noundef %82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, -11
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %call.i.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i.i)
  %cmp3.i.i = icmp slt i32 %spec.store.select.i.i.i, 1
  br i1 %cmp3.i.i, label %while.body.i.i.do.body246_crit_edge, label %cleanup.i.i

while.body.i.i.do.body246_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

cleanup.i.i:                                      ; preds = %while.body.i.i
  %83 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %in_base_pos, align 8
  %add.i.i = add i32 %84, %spec.store.select.i.i.i
  store i32 %add.i.i, ptr %in_base_pos, align 8
  %cmp.i.i = icmp slt i32 %add.i.i, 8
  br i1 %cmp.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.if.end233_crit_edge

cleanup.i.i.if.end233_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end233:                                        ; preds = %cleanup.i.i.if.end233_crit_edge, %if.then228.if.end233_crit_edge
  %85 = ptrtoint ptr %in_temp_ack.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %in_temp_ack.i, align 8
  %87 = call i64 @llvm.bswap.i64(i64 %86) #8
  %88 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %in_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %89)
  %cmp.i369 = icmp eq i8 %89, 8
  br i1 %cmp.i369, label %if.then.i370, label %if.else.i

if.then.i370:                                     ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  call void @ceph_con_discard_sent(ptr noundef %con, i64 noundef %87) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  call void @ceph_con_discard_requeued(ptr noundef %con, i64 noundef %87) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_tag.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %more.backedge.sink.split.sink.split)) #8
          to label %more.backedge.sink.split [label %more.backedge.sink.split.sink.split], !srcloc !334

if.then239:                                       ; preds = %if.end192
  %call240 = call fastcc i32 @read_keepalive_ack(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call240)
  %cmp241 = icmp slt i32 %call240, 1
  br i1 %cmp241, label %if.then239.do.body246_crit_edge, label %if.then239.more.backedge_crit_edge

if.then239.more.backedge_crit_edge:               ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  br label %more.backedge

if.then239.do.body246_crit_edge:                  ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body246

do.body246:                                       ; preds = %do.end265, %if.then239.do.body246_crit_edge, %while.body.i.i.do.body246_crit_edge, %sw.bb204, %sw.bb203, %if.then201.do.body246_crit_edge, %if.end192.do.body246_crit_edge, %sw.bb189, %if.then157.do.body246_crit_edge, %if.then120.do.body246_crit_edge, %if.end78.do.body246_crit_edge, %if.then73.do.body246_crit_edge, %prepare_read_connect.exit, %if.end62.do.body246_crit_edge, %if.end57.do.body246_crit_edge, %if.then52.do.body246_crit_edge
  %ret.3 = phi i32 [ %call53, %if.then52.do.body246_crit_edge ], [ %call58, %if.end57.do.body246_crit_edge ], [ %call64, %if.end62.do.body246_crit_edge ], [ %call64, %prepare_read_connect.exit ], [ -1, %do.end265 ], [ %call.i356, %sw.bb189 ], [ %call198, %if.then201.do.body246_crit_edge ], [ -5, %sw.bb204 ], [ -5, %sw.bb203 ], [ %spec.store.select.i.i.i, %while.body.i.i.do.body246_crit_edge ], [ %ret.2, %if.end192.do.body246_crit_edge ], [ %call240, %if.then239.do.body246_crit_edge ], [ %spec.store.select.i358, %if.then157.do.body246_crit_edge ], [ %spec.store.select.i, %if.then120.do.body246_crit_edge ], [ %call79, %if.end78.do.body246_crit_edge ], [ %call74, %if.then73.do.body246_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_read, %if.then258)) #8
          to label %cleanup [label %if.then258], !srcloc !334

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_read.__UNIQUE_ID_ddebug501, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1383, ptr noundef %con, i32 noundef %ret.3) #8
  br label %cleanup

do.end265:                                        ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #10
  %conv185 = zext i8 %49 to i32
  %call269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv185) #11
  %error_msg270 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %90 = ptrtoint ptr %error_msg270 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.17, ptr %error_msg270, align 4
  br label %do.body246

cleanup:                                          ; preds = %if.then258, %do.body246, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %if.then258 ], [ %ret.3, %do.body246 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_partial_banner(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %iov.i.i61 = alloca %struct.kvec, align 4
  %msg.i.i62 = alloca %struct.msghdr, align 8
  %iov.i.i39 = alloca %struct.kvec, align 4
  %msg.i.i40 = alloca %struct.msghdr, align 8
  %iov.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_partial_banner.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_partial_banner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %in_base_pos = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %0 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_base_pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_partial_banner.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 628, ptr noundef %con, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %in_banner = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 5, i32 3
  %in_base_pos.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %3 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_base_pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp16.i = icmp slt i32 %4, 9
  br i1 %cmp16.i, label %while.body.lr.ph.i, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

while.body.lr.ph.i:                               ; preds = %do.end
  %sock.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %5 = getelementptr inbounds %struct.kvec, ptr %iov.i.i, i32 0, i32 1
  %6 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i, i32 0, i32 7
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %7 = phi i32 [ %4, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %sub.i = sub i32 9, %7
  %8 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock.i, align 4
  %add.ptr.i = getelementptr i8, ptr %in_banner, i32 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #8
  %10 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %iov.i.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %12 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  %spec.store.select.i = select i1 %tobool.not.i.i, i32 16480, i32 16448
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select.i, ptr %6, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i, i32 noundef 0, ptr noundef nonnull %iov.i.i, i32 noundef 1, i32 noundef %sub.i) #8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %call.i.i = call i32 @sock_recvmsg(ptr noundef %9, ptr noundef nonnull %msg.i.i, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -11
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i)
  %cmp3.i = icmp slt i32 %spec.store.select.i.i, 1
  br i1 %cmp3.i, label %while.body.i.out_crit_edge, label %cleanup.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.i:                                        ; preds = %while.body.i
  %16 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_base_pos.i, align 8
  %add.i = add i32 %17, %spec.store.select.i.i
  store i32 %add.i, ptr %in_base_pos.i, align 8
  %cmp.i = icmp slt i32 %add.i, 9
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end6_crit_edge

cleanup.i.if.end6_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end6:                                          ; preds = %cleanup.i.if.end6_crit_edge, %do.end.if.end6_crit_edge
  %18 = phi i32 [ %4, %do.end.if.end6_crit_edge ], [ %add.i, %cleanup.i.if.end6_crit_edge ]
  %actual_peer_addr = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 145, i32 %18)
  %cmp16.i42 = icmp ult i32 %18, 145
  br i1 %cmp16.i42, label %while.body.lr.ph.i45, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

while.body.lr.ph.i45:                             ; preds = %if.end6
  %sock.i43 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %19 = getelementptr inbounds %struct.kvec, ptr %iov.i.i39, i32 0, i32 1
  %20 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i40, i32 0, i32 7
  %msg_iter.i.i44 = getelementptr inbounds %struct.msghdr, ptr %msg.i.i40, i32 0, i32 2
  br label %while.body.i54

while.body.i54:                                   ; preds = %cleanup.i57.while.body.i54_crit_edge, %while.body.lr.ph.i45
  %21 = phi i32 [ %18, %while.body.lr.ph.i45 ], [ %add.i55, %cleanup.i57.while.body.i54_crit_edge ]
  %sub.i46 = sub i32 145, %21
  %sub2.i = add i32 %21, -9
  %22 = ptrtoint ptr %sock.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sock.i43, align 4
  %add.ptr.i47 = getelementptr i8, ptr %actual_peer_addr, i32 %sub2.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i39) #8
  %24 = ptrtoint ptr %iov.i.i39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i47, ptr %iov.i.i39, align 4
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i46, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i40) #8
  %26 = call ptr @memset(ptr %msg.i.i40, i32 0, i32 56)
  %tobool.not.i.i48 = icmp eq ptr %add.ptr.i47, null
  %spec.store.select.i49 = select i1 %tobool.not.i.i48, i32 16480, i32 16448
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select.i49, ptr %20, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i44, i32 noundef 0, ptr noundef nonnull %iov.i.i39, i32 noundef 1, i32 noundef %sub.i46) #8
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %20, align 4
  %call.i.i50 = call i32 @sock_recvmsg(ptr noundef %23, ptr noundef nonnull %msg.i.i40, i32 noundef %29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i50)
  %cmp.i.i51 = icmp eq i32 %call.i.i50, -11
  %spec.store.select.i.i52 = select i1 %cmp.i.i51, i32 0, i32 %call.i.i50
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i40) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i52)
  %cmp3.i53 = icmp slt i32 %spec.store.select.i.i52, 1
  br i1 %cmp3.i53, label %while.body.i54.out_crit_edge, label %cleanup.i57

while.body.i54.out_crit_edge:                     ; preds = %while.body.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.i57:                                      ; preds = %while.body.i54
  %30 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %in_base_pos.i, align 8
  %add.i55 = add i32 %31, %spec.store.select.i.i52
  store i32 %add.i55, ptr %in_base_pos.i, align 8
  %cmp.i56 = icmp slt i32 %add.i55, 145
  br i1 %cmp.i56, label %cleanup.i57.while.body.i54_crit_edge, label %cleanup.i57.if.end10_crit_edge

cleanup.i57.if.end10_crit_edge:                   ; preds = %cleanup.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

cleanup.i57.while.body.i54_crit_edge:             ; preds = %cleanup.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i54

if.end10:                                         ; preds = %cleanup.i57.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %in_addr.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %in_addr.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %in_addr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %33)
  %cmp.i60 = icmp eq i16 %33, 512
  br i1 %cmp.i60, label %do.end.i, label %if.end10.ceph_decode_banner_addr.exit_crit_edge, !prof !335

if.end10.ceph_decode_banner_addr.exit_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_decode_banner_addr.exit

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %ceph_decode_banner_addr.exit

ceph_decode_banner_addr.exit:                     ; preds = %do.end.i, %if.end10.ceph_decode_banner_addr.exit_crit_edge
  %34 = ptrtoint ptr %actual_peer_addr to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 16777216, ptr %actual_peer_addr, align 1
  %peer_addr_for_me = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 12
  %35 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_base_pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 281, i32 %36)
  %cmp16.i64 = icmp slt i32 %36, 281
  br i1 %cmp16.i64, label %while.body.lr.ph.i67, label %ceph_decode_banner_addr.exit.if.end16_crit_edge

ceph_decode_banner_addr.exit.if.end16_crit_edge:  ; preds = %ceph_decode_banner_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

while.body.lr.ph.i67:                             ; preds = %ceph_decode_banner_addr.exit
  %sock.i65 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %37 = getelementptr inbounds %struct.kvec, ptr %iov.i.i61, i32 0, i32 1
  %38 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i62, i32 0, i32 7
  %msg_iter.i.i66 = getelementptr inbounds %struct.msghdr, ptr %msg.i.i62, i32 0, i32 2
  br label %while.body.i77

while.body.i77:                                   ; preds = %cleanup.i80.while.body.i77_crit_edge, %while.body.lr.ph.i67
  %39 = phi i32 [ %36, %while.body.lr.ph.i67 ], [ %add.i78, %cleanup.i80.while.body.i77_crit_edge ]
  %sub.i68 = sub i32 281, %39
  %sub2.i69 = add i32 %39, -145
  %40 = ptrtoint ptr %sock.i65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sock.i65, align 4
  %add.ptr.i70 = getelementptr i8, ptr %peer_addr_for_me, i32 %sub2.i69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i61) #8
  %42 = ptrtoint ptr %iov.i.i61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i70, ptr %iov.i.i61, align 4
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i68, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i62) #8
  %44 = call ptr @memset(ptr %msg.i.i62, i32 0, i32 56)
  %tobool.not.i.i71 = icmp eq ptr %add.ptr.i70, null
  %spec.store.select.i72 = select i1 %tobool.not.i.i71, i32 16480, i32 16448
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.store.select.i72, ptr %38, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i66, i32 noundef 0, ptr noundef nonnull %iov.i.i61, i32 noundef 1, i32 noundef %sub.i68) #8
  %46 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %38, align 4
  %call.i.i73 = call i32 @sock_recvmsg(ptr noundef %41, ptr noundef nonnull %msg.i.i62, i32 noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i73)
  %cmp.i.i74 = icmp eq i32 %call.i.i73, -11
  %spec.store.select.i.i75 = select i1 %cmp.i.i74, i32 0, i32 %call.i.i73
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i62) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i75)
  %cmp3.i76 = icmp slt i32 %spec.store.select.i.i75, 1
  br i1 %cmp3.i76, label %while.body.i77.out_crit_edge, label %cleanup.i80

while.body.i77.out_crit_edge:                     ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.i80:                                      ; preds = %while.body.i77
  %48 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %in_base_pos.i, align 8
  %add.i78 = add i32 %49, %spec.store.select.i.i75
  store i32 %add.i78, ptr %in_base_pos.i, align 8
  %cmp.i79 = icmp slt i32 %add.i78, 281
  br i1 %cmp.i79, label %cleanup.i80.while.body.i77_crit_edge, label %cleanup.i80.if.end16_crit_edge

cleanup.i80.if.end16_crit_edge:                   ; preds = %cleanup.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

cleanup.i80.while.body.i77_crit_edge:             ; preds = %cleanup.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i77

if.end16:                                         ; preds = %cleanup.i80.if.end16_crit_edge, %ceph_decode_banner_addr.exit.if.end16_crit_edge
  %in_addr.i83 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 12, i32 2
  %50 = ptrtoint ptr %in_addr.i83 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %in_addr.i83, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %51)
  %cmp.i84 = icmp eq i16 %51, 512
  br i1 %cmp.i84, label %do.end.i85, label %if.end16.ceph_decode_banner_addr.exit86_crit_edge, !prof !335

if.end16.ceph_decode_banner_addr.exit86_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_decode_banner_addr.exit86

do.end.i85:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %ceph_decode_banner_addr.exit86

ceph_decode_banner_addr.exit86:                   ; preds = %do.end.i85, %if.end16.ceph_decode_banner_addr.exit86_crit_edge
  %52 = ptrtoint ptr %peer_addr_for_me to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 16777216, ptr %peer_addr_for_me, align 1
  br label %out

out:                                              ; preds = %ceph_decode_banner_addr.exit86, %while.body.i77.out_crit_edge, %while.body.i54.out_crit_edge, %while.body.i.out_crit_edge
  %ret.0 = phi i32 [ 1, %ceph_decode_banner_addr.exit86 ], [ %spec.store.select.i.i75, %while.body.i77.out_crit_edge ], [ %spec.store.select.i.i52, %while.body.i54.out_crit_edge ], [ %spec.store.select.i.i, %while.body.i.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_banner(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %0 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgr, align 8
  %addr = getelementptr inbounds %struct.ceph_entity_inst, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_banner.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_banner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_banner.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 711, ptr noundef %con) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_banner.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 5, i32 3
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(9) %in_banner.i, ptr noundef nonnull dereferenceable(9) @.str.49, i32 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  %peer_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  br i1 %tobool.not.i, label %if.end6, label %verify_hello.exit.thread

verify_hello.exit.thread:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr) #8
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %call1.i) #11
  %error_msg.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %2 = ptrtoint ptr %error_msg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.52, ptr %error_msg.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %3 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %actual_peer_addr = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %3, i32 0, i32 11
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(136) %peer_addr, ptr noundef dereferenceable(136) %actual_peer_addr, i32 136) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp8.not = icmp eq i32 %bcmp, 0
  br i1 %cmp8.not, label %if.end6.if.end30_crit_edge, label %land.lhs.true

if.end6.if.end30_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end6
  %call10 = tail call zeroext i1 @ceph_addr_is_blank(ptr noundef %actual_peer_addr) #8
  br i1 %call10, label %land.lhs.true11, label %land.lhs.true.do.end19_crit_edge

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

land.lhs.true11:                                  ; preds = %land.lhs.true
  %nonce = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %3, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %nonce to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %nonce, align 2
  %nonce14 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %nonce14 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nonce14, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp15 = icmp eq i32 %5, %7
  br i1 %cmp15, label %land.lhs.true11.if.end30_crit_edge, label %land.lhs.true11.do.end19_crit_edge

land.lhs.true11.do.end19_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

land.lhs.true11.if.end30_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end19:                                         ; preds = %land.lhs.true11.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge
  %call22 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr) #8
  %nonce24 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %nonce24 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %nonce24, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %call26 = tail call ptr @ceph_pr_addr(ptr noundef %actual_peer_addr) #8
  %nonce28 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %3, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %nonce28 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %nonce28, align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %call22, i32 noundef %10, ptr noundef %call26, i32 noundef %13) #11
  %error_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %14 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.46, ptr %error_msg, align 4
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true11.if.end30_crit_edge, %if.end6.if.end30_crit_edge
  %call31 = tail call zeroext i1 @ceph_addr_is_blank(ptr noundef %addr) #8
  br i1 %call31, label %if.then32, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %in_addr = getelementptr inbounds %struct.ceph_entity_inst, ptr %1, i32 0, i32 1, i32 2
  %in_addr33 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %3, i32 0, i32 12, i32 2
  %15 = call ptr @memcpy(ptr %in_addr, ptr %in_addr33, i32 128)
  tail call void @ceph_addr_set_port(ptr noundef %addr, i32 noundef 0) #8
  %16 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msgr, align 8
  tail call void @ceph_encode_my_addr(ptr noundef %17) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_banner.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_banner, %if.then47)) #8
          to label %cleanup [label %if.then47], !srcloc !334

if.then47:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call ptr @ceph_pr_addr(ptr noundef %addr) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_banner.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 744, ptr noundef %call49) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.then32, %if.end30.cleanup_crit_edge, %do.end19, %verify_hello.exit.thread
  %retval.0 = phi i32 [ -1, %do.end19 ], [ 0, %if.then47 ], [ 0, %if.end30.cleanup_crit_edge ], [ -1, %verify_hello.exit.thread ], [ 0, %if.then32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prepare_write_connect(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %auth_proto.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %0 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgr, align 8
  %call = tail call i32 @ceph_get_global_seq(ptr noundef %1, i32 noundef 0) #8
  %peer_name = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %2 = ptrtoint ptr %peer_name to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %peer_name, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.179)
  switch i8 %3, label %do.body [
    i8 1, label %entry.do.body6_crit_edge
    i8 4, label %sw.bb1
    i8 2, label %sw.bb2
  ]

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 393, 0\0A.popsection", ""() #8, !srcloc !340
  unreachable

do.body6:                                         ; preds = %sw.bb2, %sw.bb1, %entry.do.body6_crit_edge
  %proto.0 = phi i32 [ 32, %sw.bb2 ], [ 24, %sw.bb1 ], [ 15, %entry.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_write_connect.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_write_connect, %if.then)) #8
          to label %do.end12 [label %if.then], !srcloc !334

if.then:                                          ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %connect_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %5 = ptrtoint ptr %connect_seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connect_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_write_connect.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.55, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 397, ptr noundef %con, i32 noundef %6, i32 noundef %call, i32 noundef %proto.0) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then, %do.body6
  %7 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msgr, align 8
  %supported_features = getelementptr i8, ptr %8, i32 -16
  %9 = ptrtoint ptr %supported_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %supported_features, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %out_connect = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %out_connect to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %11, ptr %out_connect, align 2
  %host_type = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %host_type to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 134217728, ptr %host_type, align 2
  %connect_seq16 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %15 = ptrtoint ptr %connect_seq16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %connect_seq16, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %connect_seq18 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 3
  %18 = ptrtoint ptr %connect_seq18 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %connect_seq18, align 2
  %19 = tail call i32 @llvm.bswap.i32(i32 %call)
  %global_seq20 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %global_seq20 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %global_seq20, align 2
  %21 = shl nuw nsw i32 %proto.0, 24
  %protocol_version = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 4
  %22 = ptrtoint ptr %protocol_version to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %protocol_version, align 2
  %flags = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 7
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %flags, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %auth_proto.i) #8
  %24 = ptrtoint ptr %auth_proto.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %auth_proto.i, align 4, !annotation !341
  %ops.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %get_authorizer.i = getelementptr inbounds %struct.ceph_connection_operations, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %get_authorizer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_authorizer.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  %auth1.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 8
  %29 = ptrtoint ptr %auth1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %auth1.i, align 4
  %authorizer_protocol.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 5
  %30 = ptrtoint ptr %authorizer_protocol.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %authorizer_protocol.i, align 2
  br label %get_connect_authorizer.exit.thread

if.end.i:                                         ; preds = %do.end12
  %auth_retry.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 5
  %31 = ptrtoint ptr %auth_retry.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %auth_retry.i, align 8
  %call.i = call ptr %28(ptr noundef %con, ptr noundef nonnull %auth_proto.i, i32 noundef %32) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_connect_authorizer.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %auth9.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 8
  %33 = ptrtoint ptr %auth9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %auth9.i, align 4
  %34 = ptrtoint ptr %auth_proto.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %auth_proto.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #8
  %authorizer_protocol11.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 5
  %37 = ptrtoint ptr %authorizer_protocol11.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %authorizer_protocol11.i, align 2
  %authorizer_buf_len.i = getelementptr inbounds %struct.ceph_auth_handshake, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %authorizer_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %authorizer_buf_len.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  br label %get_connect_authorizer.exit.thread

get_connect_authorizer.exit.thread:               ; preds = %if.end8.i, %if.then.i
  %.sink = phi i32 [ %40, %if.end8.i ], [ 0, %if.then.i ]
  %authorizer_len13.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 13, i32 6
  %41 = ptrtoint ptr %authorizer_len13.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %.sink, ptr %authorizer_len13.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_proto.i) #8
  %out_kvec_left.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %out_kvec_left.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %out_kvec_left.i.i, align 4
  %out_skip.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %out_skip.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %out_skip.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i, label %do.body9.i.i, label %do.body3.i.i, !prof !338

get_connect_authorizer.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %auth_proto.i) #8
  br label %cleanup

do.body3.i.i:                                     ; preds = %get_connect_authorizer.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i.i:                                     ; preds = %get_connect_authorizer.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp.i.i46 = icmp ugt i32 %43, 7
  br i1 %cmp.i.i46, label %do.body17.i.i, label %con_out_kvec_add.exit.i, !prof !335

do.body17.i.i:                                    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit.i:                          ; preds = %do.body9.i.i
  %arrayidx.i.i = getelementptr [8 x %struct.kvec], ptr %12, i32 0, i32 %43
  %iov_len.i.i = getelementptr [8 x %struct.kvec], ptr %12, i32 0, i32 %43, i32 1
  %47 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 33, ptr %iov_len.i.i, align 4
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %out_connect, ptr %arrayidx.i.i, align 8
  %49 = ptrtoint ptr %out_kvec_left.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %out_kvec_left.i.i, align 4
  %inc.i.i = add i32 %50, 1
  store i32 %inc.i.i, ptr %out_kvec_left.i.i, align 4
  %out_kvec_bytes.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %51 = ptrtoint ptr %out_kvec_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %out_kvec_bytes.i.i, align 4
  %add.i.i = add i32 %52, 33
  store i32 %add.i.i, ptr %out_kvec_bytes.i.i, align 4
  %auth.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 8
  %53 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %auth.i, align 4
  %tobool.not.i47 = icmp eq ptr %54, null
  br i1 %tobool.not.i47, label %con_out_kvec_add.exit.i.__prepare_write_connect.exit_crit_edge, label %if.then.i49

con_out_kvec_add.exit.i.__prepare_write_connect.exit_crit_edge: ; preds = %con_out_kvec_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__prepare_write_connect.exit

if.then.i49:                                      ; preds = %con_out_kvec_add.exit.i
  %authorizer_buf_len.i48 = getelementptr inbounds %struct.ceph_auth_handshake, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %authorizer_buf_len.i48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %authorizer_buf_len.i48, align 4
  %authorizer_buf.i = getelementptr inbounds %struct.ceph_auth_handshake, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %authorizer_buf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %authorizer_buf.i, align 4
  %59 = ptrtoint ptr %out_skip.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out_skip.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i12.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i12.i, label %do.body9.i15.i, label %do.body3.i13.i, !prof !338

do.body3.i13.i:                                   ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i15.i:                                   ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc.i.i)
  %cmp.i14.i = icmp ugt i32 %inc.i.i, 7
  br i1 %cmp.i14.i, label %do.body17.i16.i, label %con_out_kvec_add.exit22.i, !prof !335

do.body17.i16.i:                                  ; preds = %do.body9.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit22.i:                        ; preds = %do.body9.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i17.i = getelementptr [8 x %struct.kvec], ptr %12, i32 0, i32 %inc.i.i
  %iov_len.i18.i = getelementptr [8 x %struct.kvec], ptr %12, i32 0, i32 %inc.i.i, i32 1
  %61 = ptrtoint ptr %iov_len.i18.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %56, ptr %iov_len.i18.i, align 4
  %62 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %58, ptr %arrayidx.i17.i, align 8
  %63 = ptrtoint ptr %out_kvec_left.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %out_kvec_left.i.i, align 4
  %inc.i19.i = add i32 %64, 1
  store i32 %inc.i19.i, ptr %out_kvec_left.i.i, align 4
  %65 = ptrtoint ptr %out_kvec_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %out_kvec_bytes.i.i, align 4
  %add.i21.i = add i32 %66, %56
  store i32 %add.i21.i, ptr %out_kvec_bytes.i.i, align 4
  br label %__prepare_write_connect.exit

__prepare_write_connect.exit:                     ; preds = %con_out_kvec_add.exit22.i, %con_out_kvec_add.exit.i.__prepare_write_connect.exit_crit_edge
  %out_more.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 4
  %67 = ptrtoint ptr %out_more.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %out_more.i, align 8
  call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %__prepare_write_connect.exit, %get_connect_authorizer.exit
  %retval.0 = phi i32 [ 0, %__prepare_write_connect.exit ], [ %46, %get_connect_authorizer.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_read_connect(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_connect.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_read_connect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_connect.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 563, ptr noundef %con) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_base_pos = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %0 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %in_base_pos, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_partial_connect(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %iov.i.i74 = alloca %struct.kvec, align 4
  %msg.i.i75 = alloca %struct.msghdr, align 8
  %iov.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_partial_connect.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_partial_connect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %in_base_pos = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %0 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_base_pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_partial_connect.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.61, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 661, ptr noundef %con, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %in_reply = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 14
  %in_base_pos.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %3 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_base_pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %4)
  %cmp16.i = icmp slt i32 %4, 26
  br i1 %cmp16.i, label %while.body.lr.ph.i, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

while.body.lr.ph.i:                               ; preds = %do.end
  %sock.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %5 = getelementptr inbounds %struct.kvec, ptr %iov.i.i, i32 0, i32 1
  %6 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i, i32 0, i32 7
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %7 = phi i32 [ %4, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %sub.i = sub i32 26, %7
  %8 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock.i, align 4
  %add.ptr.i = getelementptr i8, ptr %in_reply, i32 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #8
  %10 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %iov.i.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %12 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  %spec.store.select.i = select i1 %tobool.not.i.i, i32 16480, i32 16448
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select.i, ptr %6, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i, i32 noundef 0, ptr noundef nonnull %iov.i.i, i32 noundef 1, i32 noundef %sub.i) #8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %call.i.i = call i32 @sock_recvmsg(ptr noundef %9, ptr noundef nonnull %msg.i.i, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -11
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i)
  %cmp3.i = icmp slt i32 %spec.store.select.i.i, 1
  br i1 %cmp3.i, label %while.body.i.out_crit_edge, label %cleanup.i

while.body.i.out_crit_edge:                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.i:                                        ; preds = %while.body.i
  %16 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_base_pos.i, align 8
  %add.i = add i32 %17, %spec.store.select.i.i
  store i32 %add.i, ptr %in_base_pos.i, align 8
  %cmp.i = icmp slt i32 %add.i, 26
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end6_crit_edge

cleanup.i.if.end6_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end6:                                          ; preds = %cleanup.i.if.end6_crit_edge, %do.end.if.end6_crit_edge
  %auth = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 8
  %18 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %auth, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.end6.do.body27_crit_edge, label %if.then8

if.end6.do.body27_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

if.then8:                                         ; preds = %if.end6
  %authorizer_len = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 28
  %20 = ptrtoint ptr %authorizer_len to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %authorizer_len, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %authorizer_reply_buf_len = getelementptr inbounds %struct.ceph_auth_handshake, ptr %19, i32 0, i32 4
  %23 = ptrtoint ptr %authorizer_reply_buf_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %authorizer_reply_buf_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp11 = icmp ugt i32 %22, %24
  br i1 %cmp11, label %do.end15, label %if.end20

do.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %22, i32 noundef %24) #11
  br label %out

if.end20:                                         ; preds = %if.then8
  %add = add i32 %22, 26
  %authorizer_reply_buf = getelementptr inbounds %struct.ceph_auth_handshake, ptr %19, i32 0, i32 3
  %25 = ptrtoint ptr %authorizer_reply_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %authorizer_reply_buf, align 4
  %27 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %in_base_pos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add)
  %cmp16.i77 = icmp slt i32 %28, %add
  br i1 %cmp16.i77, label %while.body.lr.ph.i80, label %if.end20.do.body27_crit_edge

if.end20.do.body27_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

while.body.lr.ph.i80:                             ; preds = %if.end20
  %sock.i78 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %29 = getelementptr inbounds %struct.kvec, ptr %iov.i.i74, i32 0, i32 1
  %30 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i75, i32 0, i32 7
  %msg_iter.i.i79 = getelementptr inbounds %struct.msghdr, ptr %msg.i.i75, i32 0, i32 2
  br label %while.body.i89

while.body.i89:                                   ; preds = %cleanup.i92.while.body.i89_crit_edge, %while.body.lr.ph.i80
  %31 = phi i32 [ %28, %while.body.lr.ph.i80 ], [ %add.i90, %cleanup.i92.while.body.i89_crit_edge ]
  %sub.i81 = sub i32 %add, %31
  %sub2.i = sub i32 %22, %sub.i81
  %32 = ptrtoint ptr %sock.i78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sock.i78, align 4
  %add.ptr.i82 = getelementptr i8, ptr %26, i32 %sub2.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i74) #8
  %34 = ptrtoint ptr %iov.i.i74 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i82, ptr %iov.i.i74, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i81, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i75) #8
  %36 = call ptr @memset(ptr %msg.i.i75, i32 0, i32 56)
  %tobool.not.i.i83 = icmp eq ptr %add.ptr.i82, null
  %spec.store.select.i84 = select i1 %tobool.not.i.i83, i32 16480, i32 16448
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.store.select.i84, ptr %30, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i79, i32 noundef 0, ptr noundef nonnull %iov.i.i74, i32 noundef 1, i32 noundef %sub.i81) #8
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %30, align 4
  %call.i.i85 = call i32 @sock_recvmsg(ptr noundef %33, ptr noundef nonnull %msg.i.i75, i32 noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i85)
  %cmp.i.i86 = icmp eq i32 %call.i.i85, -11
  %spec.store.select.i.i87 = select i1 %cmp.i.i86, i32 0, i32 %call.i.i85
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i75) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i87)
  %cmp3.i88 = icmp slt i32 %spec.store.select.i.i87, 1
  br i1 %cmp3.i88, label %while.body.i89.out_crit_edge, label %cleanup.i92

while.body.i89.out_crit_edge:                     ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.i92:                                      ; preds = %while.body.i89
  %40 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %in_base_pos.i, align 8
  %add.i90 = add i32 %41, %spec.store.select.i.i87
  store i32 %add.i90, ptr %in_base_pos.i, align 8
  %cmp.i91 = icmp slt i32 %add.i90, %add
  br i1 %cmp.i91, label %cleanup.i92.while.body.i89_crit_edge, label %cleanup.i92.do.body27_crit_edge

cleanup.i92.do.body27_crit_edge:                  ; preds = %cleanup.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

cleanup.i92.while.body.i89_crit_edge:             ; preds = %cleanup.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i89

do.body27:                                        ; preds = %cleanup.i92.do.body27_crit_edge, %if.end20.do.body27_crit_edge, %if.end6.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_partial_connect.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_partial_connect, %if.then39)) #8
          to label %out [label %if.then39], !srcloc !334

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %in_reply to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %in_reply, align 1
  %conv = zext i8 %43 to i32
  %connect_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 26
  %44 = ptrtoint ptr %connect_seq to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %connect_seq, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %global_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 25
  %47 = ptrtoint ptr %global_seq to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %global_seq, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_partial_connect.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.64, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 688, ptr noundef %con, i32 noundef %conv, i32 noundef %46, i32 noundef %49) #8
  br label %out

out:                                              ; preds = %if.then39, %do.body27, %while.body.i89.out_crit_edge, %do.end15, %while.body.i.out_crit_edge
  %ret.1 = phi i32 [ -22, %do.end15 ], [ 1, %if.then39 ], [ 1, %do.body27 ], [ %spec.store.select.i.i87, %while.body.i89.out_crit_edge ], [ %spec.store.select.i.i, %while.body.i.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_connect(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %0 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgr, align 8
  %supported_features = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %supported_features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %supported_features, align 8
  %required_features = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %required_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %required_features, align 8
  %6 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %in_reply = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %6, i32 0, i32 14
  %features = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %features, align 1
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_connect.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %in_tag = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %10 = ptrtoint ptr %in_tag to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_tag, align 4
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_connect.__UNIQUE_ID_ddebug487, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 757, ptr noundef %con, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %auth = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %6, i32 0, i32 8
  %12 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %auth, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %do.end.if.end32thread-pre-split_crit_edge, label %if.then10

do.end.if.end32thread-pre-split_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32thread-pre-split

if.then10:                                        ; preds = %do.end
  %authorizer_len = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 28
  %14 = ptrtoint ptr %authorizer_len to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %authorizer_len, align 1
  %16 = ptrtoint ptr %in_reply to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %in_reply, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %17)
  %cmp = icmp eq i8 %17, 16
  br i1 %cmp, label %if.then15, label %if.end22

if.then15:                                        ; preds = %if.then10
  %18 = tail call i32 @llvm.bswap.i32(i32 %15)
  %ops = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %add_authorizer_challenge = getelementptr inbounds %struct.ceph_connection_operations, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %add_authorizer_challenge to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add_authorizer_challenge, align 4
  %authorizer_reply_buf = getelementptr inbounds %struct.ceph_auth_handshake, ptr %13, i32 0, i32 3
  %23 = ptrtoint ptr %authorizer_reply_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %authorizer_reply_buf, align 4
  %call17 = tail call i32 %22(ptr noundef %con, ptr noundef %24, i32 noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then15.cleanup332_crit_edge, label %if.end21

if.then15.cleanup332_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup332

if.end21:                                         ; preds = %if.then15
  %out_skip.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %con_out_kvec_add.exit.i, label %do.body3.i, !prof !338

do.body3.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_add.exit.i:                          ; preds = %if.end21
  %out_kvec_left.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %out_kvec_bytes.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %out_kvec_cur.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %27 = ptrtoint ptr %out_kvec_cur.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %6, ptr %out_kvec_cur.i, align 8
  %out_connect.i = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %6, i32 0, i32 13
  %iov_len.i.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 33, ptr %iov_len.i.i, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %out_connect.i, ptr %6, align 8
  %30 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %out_kvec_left.i, align 4
  %31 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 33, ptr %out_kvec_bytes.i, align 4
  %32 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %auth, align 4
  %tobool.not.i462 = icmp eq ptr %33, null
  br i1 %tobool.not.i462, label %con_out_kvec_add.exit.i.__prepare_write_connect.exit_crit_edge, label %con_out_kvec_add.exit22.i

con_out_kvec_add.exit.i.__prepare_write_connect.exit_crit_edge: ; preds = %con_out_kvec_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__prepare_write_connect.exit

con_out_kvec_add.exit22.i:                        ; preds = %con_out_kvec_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %authorizer_buf_len.i = getelementptr inbounds %struct.ceph_auth_handshake, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %authorizer_buf_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %authorizer_buf_len.i, align 4
  %authorizer_buf.i = getelementptr inbounds %struct.ceph_auth_handshake, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %authorizer_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %authorizer_buf.i, align 4
  %arrayidx.i17.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 4
  %iov_len.i18.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 5
  %38 = ptrtoint ptr %iov_len.i18.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %iov_len.i18.i, align 4
  %39 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %arrayidx.i17.i, align 8
  %40 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %out_kvec_left.i, align 4
  %add.i21.i = add i32 %35, 33
  %41 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i21.i, ptr %out_kvec_bytes.i, align 4
  br label %__prepare_write_connect.exit

__prepare_write_connect.exit:                     ; preds = %con_out_kvec_add.exit22.i, %con_out_kvec_add.exit.i.__prepare_write_connect.exit_crit_edge
  %out_more.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 4
  %42 = ptrtoint ptr %out_more.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %out_more.i, align 8
  tail call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_connect.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then.i463)) #8
          to label %prepare_read_connect.exit [label %if.then.i463], !srcloc !334

if.then.i463:                                     ; preds = %__prepare_write_connect.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_connect.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 563, ptr noundef %con) #8
  br label %prepare_read_connect.exit

prepare_read_connect.exit:                        ; preds = %if.then.i463, %__prepare_write_connect.exit
  %in_base_pos.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %43 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %in_base_pos.i, align 8
  br label %cleanup332

if.end22:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool23.not = icmp eq i32 %15, 0
  br i1 %tobool23.not, label %if.end22.if.end32_crit_edge, label %if.then24

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then24:                                        ; preds = %if.end22
  %ops25 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %44 = ptrtoint ptr %ops25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops25, align 4
  %verify_authorizer_reply = getelementptr inbounds %struct.ceph_connection_operations, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %verify_authorizer_reply to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %verify_authorizer_reply, align 4
  %call26 = tail call i32 %47(ptr noundef %con) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.then24.if.end32thread-pre-split_crit_edge

if.then24.if.end32thread-pre-split_crit_edge:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32thread-pre-split

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %error_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %48 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.68, ptr %error_msg, align 4
  br label %cleanup332

if.end32thread-pre-split:                         ; preds = %if.then24.if.end32thread-pre-split_crit_edge, %do.end.if.end32thread-pre-split_crit_edge
  %49 = ptrtoint ptr %in_reply to i32
  call void @__asan_load1_noabort(i32 %49)
  %.pr = load i8, ptr %in_reply, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.end32thread-pre-split, %if.end22.if.end32_crit_edge
  %50 = phi i8 [ %.pr, %if.end32thread-pre-split ], [ %17, %if.end22.if.end32_crit_edge ]
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %50, label %sw.default [
    i8 12, label %do.end38
    i8 10, label %do.end49
    i8 11, label %sw.bb63
    i8 2, label %do.body94
    i8 4, label %do.body142
    i8 5, label %do.body172
    i8 13, label %if.end32.sw.bb199_crit_edge
    i8 1, label %if.end32.sw.bb199_crit_edge524
    i8 3, label %sw.bb329
  ]

if.end32.sw.bb199_crit_edge524:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb199

if.end32.sw.bb199_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb199

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %peer_name = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %52 = ptrtoint ptr %peer_name to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %peer_name, align 8
  %conv40 = zext i8 %53 to i32
  %call41 = tail call ptr @ceph_entity_type_name(i32 noundef %conv40) #8
  %num = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %num, align 1
  %56 = tail call i64 @llvm.bswap.i64(i64 %55)
  %peer_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call43 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr) #8
  %neg = xor i64 %3, -1
  %and = and i64 %9, %neg
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %call41, i64 noundef %56, ptr noundef %call43, i64 noundef %3, i64 noundef %9, i64 noundef %and) #11
  %error_msg45 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %57 = ptrtoint ptr %error_msg45 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.70, ptr %error_msg45, align 4
  br label %cleanup332

do.end49:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %peer_name51 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %58 = ptrtoint ptr %peer_name51 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %peer_name51, align 8
  %conv53 = zext i8 %59 to i32
  %call54 = tail call ptr @ceph_entity_type_name(i32 noundef %conv53) #8
  %num56 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %60 = ptrtoint ptr %num56 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %num56, align 1
  %62 = tail call i64 @llvm.bswap.i64(i64 %61)
  %peer_addr57 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call58 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr57) #8
  %protocol_version = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %6, i32 0, i32 13, i32 4
  %63 = ptrtoint ptr %protocol_version to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %protocol_version, align 2
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %protocol_version60 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 27
  %66 = ptrtoint ptr %protocol_version60 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %protocol_version60, align 1
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %call54, i64 noundef %62, ptr noundef %call58, i32 noundef %65, i32 noundef %68) #11
  %error_msg62 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %69 = ptrtoint ptr %error_msg62 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.74, ptr %error_msg62, align 4
  br label %cleanup332

sw.bb63:                                          ; preds = %if.end32
  %auth_retry = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 5
  %70 = ptrtoint ptr %auth_retry to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %auth_retry, align 8
  %inc = add i32 %71, 1
  store i32 %inc, ptr %auth_retry, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_connect.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then76)) #8
          to label %do.end81 [label %if.then76], !srcloc !334

if.then76:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %auth_retry to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %auth_retry, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_connect.__UNIQUE_ID_ddebug488, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 814, ptr noundef %con, i32 noundef %73) #8
  br label %do.end81

do.end81:                                         ; preds = %if.then76, %sw.bb63
  %74 = ptrtoint ptr %auth_retry to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %auth_retry, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp83 = icmp eq i32 %75, 2
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  %error_msg86 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %76 = ptrtoint ptr %error_msg86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.77, ptr %error_msg86, align 4
  br label %cleanup332

if.end87:                                         ; preds = %do.end81
  %out_skip.i464 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %77 = ptrtoint ptr %out_skip.i464 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %out_skip.i464, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i465 = icmp eq i32 %78, 0
  br i1 %tobool.not.i465, label %con_out_kvec_reset.exit470, label %do.body3.i466, !prof !338

do.body3.i466:                                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_reset.exit470:                       ; preds = %if.end87
  %out_kvec_left.i467 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %out_kvec_left.i467 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %out_kvec_left.i467, align 4
  %out_kvec_bytes.i468 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %80 = ptrtoint ptr %out_kvec_bytes.i468 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %out_kvec_bytes.i468, align 4
  %out_kvec_cur.i469 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %81 = ptrtoint ptr %out_kvec_cur.i469 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %6, ptr %out_kvec_cur.i469, align 8
  %call88 = tail call fastcc i32 @prepare_write_connect(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %con_out_kvec_reset.exit470.cleanup332_crit_edge, label %if.end92

con_out_kvec_reset.exit470.cleanup332_crit_edge:  ; preds = %con_out_kvec_reset.exit470
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup332

if.end92:                                         ; preds = %con_out_kvec_reset.exit470
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_connect.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then.i471)) #8
          to label %prepare_read_connect.exit473 [label %if.then.i471], !srcloc !334

if.then.i471:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_connect.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 563, ptr noundef %con) #8
  br label %prepare_read_connect.exit473

prepare_read_connect.exit473:                     ; preds = %if.then.i471, %if.end92
  %in_base_pos.i472 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %82 = ptrtoint ptr %in_base_pos.i472 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %in_base_pos.i472, align 8
  br label %sw.epilog

do.body94:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_connect.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then106)) #8
          to label %do.end114 [label %if.then106], !srcloc !334

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %connect_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 26
  %83 = ptrtoint ptr %connect_seq to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %connect_seq, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_connect.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.79, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 835, i32 noundef %85) #8
  br label %do.end114

do.end114:                                        ; preds = %if.then106, %do.body94
  %peer_name116 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %86 = ptrtoint ptr %peer_name116 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %peer_name116, align 8
  %conv118 = zext i8 %87 to i32
  %call119 = tail call ptr @ceph_entity_type_name(i32 noundef %conv118) #8
  %num121 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %88 = ptrtoint ptr %num121 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 8)
  %89 = load i64, ptr %num121, align 1
  %90 = tail call i64 @llvm.bswap.i64(i64 %89)
  %peer_addr122 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call123 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr122) #8
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %call119, i64 noundef %90, ptr noundef %call123) #11
  tail call void @ceph_con_reset_session(ptr noundef %con) #8
  %out_skip.i474 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %out_skip.i474 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %out_skip.i474, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i475 = icmp eq i32 %92, 0
  br i1 %tobool.not.i475, label %con_out_kvec_reset.exit480, label %do.body3.i476, !prof !338

do.body3.i476:                                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_reset.exit480:                       ; preds = %do.end114
  %out_kvec_left.i477 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %93 = ptrtoint ptr %out_kvec_left.i477 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %out_kvec_left.i477, align 4
  %out_kvec_bytes.i478 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %94 = ptrtoint ptr %out_kvec_bytes.i478 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %out_kvec_bytes.i478, align 4
  %out_kvec_cur.i479 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %95 = ptrtoint ptr %out_kvec_cur.i479 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %6, ptr %out_kvec_cur.i479, align 8
  %call125 = tail call fastcc i32 @prepare_write_connect(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %con_out_kvec_reset.exit480.cleanup332_crit_edge, label %if.end129

con_out_kvec_reset.exit480.cleanup332_crit_edge:  ; preds = %con_out_kvec_reset.exit480
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup332

if.end129:                                        ; preds = %con_out_kvec_reset.exit480
  tail call fastcc void @prepare_read_connect(ptr noundef %con)
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %ops130 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %96 = ptrtoint ptr %ops130 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops130, align 4
  %peer_reset = getelementptr inbounds %struct.ceph_connection_operations, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %peer_reset to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %peer_reset, align 4
  %tobool131.not = icmp eq ptr %99, null
  br i1 %tobool131.not, label %if.end129.if.end135_crit_edge, label %if.then132

if.end129.if.end135_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %99(ptr noundef %con) #8
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end129.if.end135_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %100 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %101)
  %cmp137.not = icmp eq i32 %101, 4
  br i1 %cmp137.not, label %if.end135.sw.epilog_crit_edge, label %if.end135.cleanup332_crit_edge

if.end135.cleanup332_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup332

if.end135.sw.epilog_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body142:                                       ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_connect.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then154)) #8
          to label %do.end162 [label %if.then154], !srcloc !334

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #10
  %connect_seq157 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %6, i32 0, i32 13, i32 3
  %102 = ptrtoint ptr %connect_seq157 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %connect_seq157, align 2
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %connect_seq159 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 26
  %105 = ptrtoint ptr %connect_seq159 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %connect_seq159, align 1
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_connect.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.84, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 862, i32 noundef %104, i32 noundef %107) #8
  br label %do.end162

do.end162:                                        ; preds = %if.then154, %do.body142
  %connect_seq164 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 26
  %108 = ptrtoint ptr %connect_seq164 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %connect_seq164, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %connect_seq165 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %111 = ptrtoint ptr %connect_seq165 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %connect_seq165, align 8
  %out_skip.i481 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %112 = ptrtoint ptr %out_skip.i481 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %out_skip.i481, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i482 = icmp eq i32 %113, 0
  br i1 %tobool.not.i482, label %con_out_kvec_reset.exit487, label %do.body3.i483, !prof !338

do.body3.i483:                                    ; preds = %do.end162
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_reset.exit487:                       ; preds = %do.end162
  %out_kvec_left.i484 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %114 = ptrtoint ptr %out_kvec_left.i484 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %out_kvec_left.i484, align 4
  %out_kvec_bytes.i485 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %115 = ptrtoint ptr %out_kvec_bytes.i485 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %out_kvec_bytes.i485, align 4
  %out_kvec_cur.i486 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %116 = ptrtoint ptr %out_kvec_cur.i486 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %6, ptr %out_kvec_cur.i486, align 8
  %call166 = tail call fastcc i32 @prepare_write_connect(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %con_out_kvec_reset.exit487.cleanup332_crit_edge, label %if.end170

con_out_kvec_reset.exit487.cleanup332_crit_edge:  ; preds = %con_out_kvec_reset.exit487
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup332

if.end170:                                        ; preds = %con_out_kvec_reset.exit487
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_connect.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then.i488)) #8
          to label %prepare_read_connect.exit490 [label %if.then.i488], !srcloc !334

if.then.i488:                                     ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_connect.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 563, ptr noundef %con) #8
  br label %prepare_read_connect.exit490

prepare_read_connect.exit490:                     ; preds = %if.then.i488, %if.end170
  %in_base_pos.i489 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %117 = ptrtoint ptr %in_base_pos.i489 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %in_base_pos.i489, align 8
  br label %sw.epilog

do.body172:                                       ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_connect.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then184)) #8
          to label %do.end189 [label %if.then184], !srcloc !334

if.then184:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #10
  %peer_global_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 2
  %118 = ptrtoint ptr %peer_global_seq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %peer_global_seq, align 4
  %global_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 25
  %120 = ptrtoint ptr %global_seq to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %global_seq, align 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_connect.__UNIQUE_ID_ddebug491, ptr noundef nonnull @.str.86, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 878, i32 noundef %119, i32 noundef %122) #8
  br label %do.end189

do.end189:                                        ; preds = %if.then184, %do.body172
  %123 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %msgr, align 8
  %global_seq192 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 25
  %125 = ptrtoint ptr %global_seq192 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %global_seq192, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %call193 = tail call i32 @ceph_get_global_seq(ptr noundef %124, i32 noundef %127) #8
  %out_skip.i491 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %128 = ptrtoint ptr %out_skip.i491 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %out_skip.i491, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i492 = icmp eq i32 %129, 0
  br i1 %tobool.not.i492, label %con_out_kvec_reset.exit497, label %do.body3.i493, !prof !338

do.body3.i493:                                    ; preds = %do.end189
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_reset.exit497:                       ; preds = %do.end189
  %out_kvec_left.i494 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %130 = ptrtoint ptr %out_kvec_left.i494 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %out_kvec_left.i494, align 4
  %out_kvec_bytes.i495 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %131 = ptrtoint ptr %out_kvec_bytes.i495 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %out_kvec_bytes.i495, align 4
  %out_kvec_cur.i496 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %132 = ptrtoint ptr %out_kvec_cur.i496 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %6, ptr %out_kvec_cur.i496, align 8
  %call194 = tail call fastcc i32 @prepare_write_connect(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %con_out_kvec_reset.exit497.cleanup332_crit_edge, label %if.end198

con_out_kvec_reset.exit497.cleanup332_crit_edge:  ; preds = %con_out_kvec_reset.exit497
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup332

if.end198:                                        ; preds = %con_out_kvec_reset.exit497
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_connect.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then.i498)) #8
          to label %prepare_read_connect.exit500 [label %if.then.i498], !srcloc !334

if.then.i498:                                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_connect.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 563, ptr noundef %con) #8
  br label %prepare_read_connect.exit500

prepare_read_connect.exit500:                     ; preds = %if.then.i498, %if.end198
  %in_base_pos.i499 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %133 = ptrtoint ptr %in_base_pos.i499 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %in_base_pos.i499, align 8
  br label %sw.epilog

sw.bb199:                                         ; preds = %if.end32.sw.bb199_crit_edge, %if.end32.sw.bb199_crit_edge524
  %neg200 = xor i64 %9, -1
  %and201 = and i64 %5, %neg200
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and201)
  %tobool202.not = icmp eq i64 %and201, 0
  br i1 %tobool202.not, label %if.end220, label %do.end206

do.end206:                                        ; preds = %sw.bb199
  call void @__sanitizer_cov_trace_pc() #10
  %peer_name208 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %134 = ptrtoint ptr %peer_name208 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %peer_name208, align 8
  %conv210 = zext i8 %135 to i32
  %call211 = tail call ptr @ceph_entity_type_name(i32 noundef %conv210) #8
  %num213 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %136 = ptrtoint ptr %num213 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %num213, align 1
  %138 = tail call i64 @llvm.bswap.i64(i64 %137)
  %peer_addr214 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call215 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr214) #8
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %call211, i64 noundef %138, ptr noundef %call215, i64 noundef %5, i64 noundef %9, i64 noundef %and201) #11
  %error_msg219 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %139 = ptrtoint ptr %error_msg219 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @.str.70, ptr %error_msg219, align 4
  br label %cleanup332

if.end220:                                        ; preds = %sw.bb199
  %state221 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %140 = ptrtoint ptr %state221 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %state221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %141)
  %cmp222.not = icmp eq i32 %141, 4
  br i1 %cmp222.not, label %if.end220.if.end245_crit_edge, label %do.end239, !prof !338

if.end220.if.end245_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

do.end239:                                        ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 900, i32 noundef 9, ptr noundef null) #8
  br label %if.end245

if.end245:                                        ; preds = %do.end239, %if.end220.if.end245_crit_edge
  %142 = ptrtoint ptr %state221 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 12, ptr %state221, align 4
  %auth_retry254 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 5
  %143 = ptrtoint ptr %auth_retry254 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %auth_retry254, align 8
  %global_seq256 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 25
  %144 = ptrtoint ptr %global_seq256 to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %global_seq256, align 1
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %peer_global_seq257 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 2
  %147 = ptrtoint ptr %peer_global_seq257 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %peer_global_seq257, align 4
  %connect_seq258 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %148 = ptrtoint ptr %connect_seq258 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %connect_seq258, align 8
  %inc259 = add i32 %149, 1
  store i32 %inc259, ptr %connect_seq258, align 8
  %peer_features = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 11
  %150 = ptrtoint ptr %peer_features to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %9, ptr %peer_features, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_connect.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then272)) #8
          to label %do.end280 [label %if.then272], !srcloc !334

if.then272:                                       ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %peer_global_seq257 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %peer_global_seq257, align 4
  %connect_seq276 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 26
  %153 = ptrtoint ptr %connect_seq276 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %connect_seq276, align 1
  %155 = tail call i32 @llvm.bswap.i32(i32 %154)
  %156 = ptrtoint ptr %connect_seq258 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %connect_seq258, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_connect.__UNIQUE_ID_ddebug492, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 910, i32 noundef %152, i32 noundef %155, i32 noundef %157) #8
  br label %do.end280

do.end280:                                        ; preds = %if.then272, %if.end245
  %158 = ptrtoint ptr %connect_seq258 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %connect_seq258, align 8
  %connect_seq284 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 26
  %160 = ptrtoint ptr %connect_seq284 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %connect_seq284, align 1
  %162 = tail call i32 @llvm.bswap.i32(i32 %161)
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %162)
  %cmp285.not = icmp eq i32 %159, %162
  br i1 %cmp285.not, label %do.end280.if.end308_crit_edge, label %do.end302, !prof !338

do.end280.if.end308_crit_edge:                    ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end308

do.end302:                                        ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 912, i32 noundef 9, ptr noundef null) #8
  br label %if.end308

if.end308:                                        ; preds = %do.end302, %do.end280.if.end308_crit_edge
  %flags = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 29
  %163 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %flags, align 1
  %165 = and i8 %164, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool319.not = icmp eq i8 %165, 0
  br i1 %tobool319.not, label %if.end308.if.end321_crit_edge, label %if.then320

if.end308.if.end321_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

if.then320:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 0) #8
  br label %if.end321

if.end321:                                        ; preds = %if.then320, %if.end308.if.end321_crit_edge
  %delay = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 27
  %166 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %delay, align 4
  %167 = ptrtoint ptr %in_reply to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %in_reply, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %168)
  %cmp325 = icmp eq i8 %168, 13
  br i1 %cmp325, label %if.then327, label %if.else

if.then327:                                       ; preds = %if.end321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_write_seq.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then.i501)) #8
          to label %do.end.i [label %if.then.i501], !srcloc !334

if.then.i501:                                     ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #10
  %in_seq_acked.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 18
  %169 = ptrtoint ptr %in_seq_acked.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %in_seq_acked.i, align 8
  %in_seq.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 17
  %171 = ptrtoint ptr %in_seq.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %in_seq.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_write_seq.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.96, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 291, ptr noundef %con, i64 noundef %170, i64 noundef %172) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i501, %if.then327
  %in_seq4.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 17
  %173 = ptrtoint ptr %in_seq4.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %in_seq4.i, align 8
  %in_seq_acked5.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 18
  %175 = ptrtoint ptr %in_seq_acked5.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %in_seq_acked5.i, align 8
  %out_skip.i.i502 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %176 = ptrtoint ptr %out_skip.i.i502 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %out_skip.i.i502, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i.i503 = icmp eq i32 %177, 0
  br i1 %tobool.not.i.i503, label %prepare_write_seq.exit, label %do.body3.i.i504, !prof !338

do.body3.i.i504:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

prepare_write_seq.exit:                           ; preds = %do.end.i
  %out_kvec_left.i.i505 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %out_kvec_bytes.i.i506 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %out_kvec_cur.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %178 = ptrtoint ptr %out_kvec_cur.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %6, ptr %out_kvec_cur.i.i, align 8
  %179 = tail call i64 @llvm.bswap.i64(i64 %174) #8
  %out_temp_ack.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 32, i32 7, i32 1
  %180 = ptrtoint ptr %out_temp_ack.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %out_temp_ack.i, align 8
  %iov_len.i.i507 = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 3
  %181 = ptrtoint ptr %iov_len.i.i507 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 8, ptr %iov_len.i.i507, align 4
  %182 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %out_temp_ack.i, ptr %6, align 8
  %183 = ptrtoint ptr %out_kvec_left.i.i505 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 1, ptr %out_kvec_left.i.i505, align 4
  %184 = ptrtoint ptr %out_kvec_bytes.i.i506 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 8, ptr %out_kvec_bytes.i.i506, align 4
  tail call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_seq.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then.i509)) #8
          to label %prepare_read_seq.exit [label %if.then.i509], !srcloc !334

if.then.i509:                                     ; preds = %prepare_write_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_seq.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 575, ptr noundef %con) #8
  br label %prepare_read_seq.exit

prepare_read_seq.exit:                            ; preds = %if.then.i509, %prepare_write_seq.exit
  %in_base_pos.i510 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %185 = ptrtoint ptr %in_base_pos.i510 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %in_base_pos.i510, align 8
  %in_tag.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %186 = ptrtoint ptr %in_tag.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 13, ptr %in_tag.i, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end321
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_tag.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_connect, %if.then.i512)) #8
          to label %prepare_read_tag.exit [label %if.then.i512], !srcloc !334

if.then.i512:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_tag.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.143, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 582, ptr noundef %con) #8
  br label %prepare_read_tag.exit

prepare_read_tag.exit:                            ; preds = %if.then.i512, %if.else
  %in_base_pos.i513 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %187 = ptrtoint ptr %in_base_pos.i513 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %in_base_pos.i513, align 8
  %in_tag.i514 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %188 = ptrtoint ptr %in_tag.i514 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %in_tag.i514, align 4
  br label %sw.epilog

sw.bb329:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %error_msg330 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %189 = ptrtoint ptr %error_msg330 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @.str.92, ptr %error_msg330, align 4
  br label %cleanup332

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %error_msg331 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %190 = ptrtoint ptr %error_msg331 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @.str.93, ptr %error_msg331, align 4
  br label %cleanup332

sw.epilog:                                        ; preds = %prepare_read_tag.exit, %prepare_read_seq.exit, %prepare_read_connect.exit500, %prepare_read_connect.exit490, %if.end135.sw.epilog_crit_edge, %prepare_read_connect.exit473
  br label %cleanup332

cleanup332:                                       ; preds = %sw.epilog, %sw.default, %sw.bb329, %do.end206, %con_out_kvec_reset.exit497.cleanup332_crit_edge, %con_out_kvec_reset.exit487.cleanup332_crit_edge, %if.end135.cleanup332_crit_edge, %con_out_kvec_reset.exit480.cleanup332_crit_edge, %con_out_kvec_reset.exit470.cleanup332_crit_edge, %if.then85, %do.end49, %do.end38, %if.then29, %prepare_read_connect.exit, %if.then15.cleanup332_crit_edge
  %retval.1 = phi i32 [ -1, %sw.default ], [ -1, %sw.bb329 ], [ -1, %do.end206 ], [ 0, %sw.epilog ], [ -1, %if.then85 ], [ -1, %do.end49 ], [ -1, %do.end38 ], [ %call88, %con_out_kvec_reset.exit470.cleanup332_crit_edge ], [ %call125, %con_out_kvec_reset.exit480.cleanup332_crit_edge ], [ -11, %if.end135.cleanup332_crit_edge ], [ %call166, %con_out_kvec_reset.exit487.cleanup332_crit_edge ], [ %call194, %con_out_kvec_reset.exit497.cleanup332_crit_edge ], [ %call17, %if.then15.cleanup332_crit_edge ], [ 0, %prepare_read_connect.exit ], [ %call26, %if.then29 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_con_close_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_partial_message(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %iov.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %skip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %0 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_msg, align 8
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %2 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgr, align 8
  %options = getelementptr i8, ptr %3, i32 -176
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %options, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %peer_features = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 11
  %8 = ptrtoint ptr %peer_features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %peer_features, align 8
  %and3 = and i64 %9, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_partial_message.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_partial_message, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_partial_message.__UNIQUE_ID_ddebug493, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1085, ptr noundef %con, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %in_hdr = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %10, i32 0, i32 18
  %in_base_pos.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %11 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in_base_pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %12)
  %cmp16.i = icmp slt i32 %12, 53
  br i1 %cmp16.i, label %while.body.lr.ph.i, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

while.body.lr.ph.i:                               ; preds = %do.end
  %sock.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %13 = getelementptr inbounds %struct.kvec, ptr %iov.i.i, i32 0, i32 1
  %14 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i, i32 0, i32 7
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %15 = phi i32 [ %12, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %sub.i = sub i32 53, %15
  %16 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sock.i, align 4
  %add.ptr.i = getelementptr i8, ptr %in_hdr, i32 %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #8
  %18 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %iov.i.i, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %20 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  %spec.store.select.i = select i1 %tobool.not.i.i, i32 16480, i32 16448
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select.i, ptr %14, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i, i32 noundef 0, ptr noundef nonnull %iov.i.i, i32 noundef 1, i32 noundef %sub.i) #8
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %14, align 4
  %call.i.i = call i32 @sock_recvmsg(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -11
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i)
  %cmp3.i = icmp slt i32 %spec.store.select.i.i, 1
  br i1 %cmp3.i, label %while.body.i.cleanup340_crit_edge, label %cleanup.i

while.body.i.cleanup340_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

cleanup.i:                                        ; preds = %while.body.i
  %24 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_base_pos.i, align 8
  %add.i = add i32 %25, %spec.store.select.i.i
  store i32 %add.i, ptr %in_base_pos.i, align 8
  %cmp.i = icmp slt i32 %add.i, 53
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end15_crit_edge

cleanup.i.if.end15_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end15:                                         ; preds = %cleanup.i.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %call17 = call i32 @crc32c(i32 noundef 0, ptr noundef %in_hdr, i32 noundef 49) #8
  %26 = call i32 @llvm.bswap.i32(i32 %call17)
  %crc19 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %10, i32 0, i32 18, i32 12
  %27 = ptrtoint ptr %crc19 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %crc19, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp20.not = icmp eq i32 %26, %28
  br i1 %cmp20.not, label %if.end29, label %do.end24

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, i32 noundef %call17, i32 noundef %28) #11
  br label %cleanup340

if.end29:                                         ; preds = %if.end15
  %front_len31 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %10, i32 0, i32 18, i32 5
  %29 = ptrtoint ptr %front_len31 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %front_len31, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %31)
  %cmp32 = icmp ugt i32 %31, 16777216
  br i1 %cmp32, label %if.end29.cleanup340_crit_edge, label %if.end34

if.end29.cleanup340_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end34:                                         ; preds = %if.end29
  %middle_len36 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %10, i32 0, i32 18, i32 6
  %32 = ptrtoint ptr %middle_len36 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %middle_len36, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %34)
  %cmp37 = icmp ugt i32 %34, 16777216
  br i1 %cmp37, label %if.end34.cleanup340_crit_edge, label %if.end39

if.end34.cleanup340_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end39:                                         ; preds = %if.end34
  %data_len41 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %10, i32 0, i32 18, i32 7
  %35 = ptrtoint ptr %data_len41 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %data_len41, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %37)
  %cmp42 = icmp ugt i32 %37, 67108864
  br i1 %cmp42, label %if.end39.cleanup340_crit_edge, label %if.end44

if.end39.cleanup340_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end44:                                         ; preds = %if.end39
  %38 = ptrtoint ptr %in_hdr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %in_hdr, align 1
  %40 = call i64 @llvm.bswap.i64(i64 %39)
  %in_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 17
  %41 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %in_seq, align 8
  %sub = sub i64 %40, %42
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub)
  %cmp47 = icmp slt i64 %sub, 1
  br i1 %cmp47, label %do.end51, label %if.else

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %peer_name = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %43 = ptrtoint ptr %peer_name to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %peer_name, align 8
  %conv = zext i8 %44 to i32
  %call53 = call ptr @ceph_entity_type_name(i32 noundef %conv) #8
  %num = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %num, align 1
  %47 = call i64 @llvm.bswap.i64(i64 %46)
  %peer_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call55 = call ptr @ceph_pr_addr(ptr noundef %peer_addr) #8
  %48 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %in_seq, align 8
  %add = add i64 %49, 1
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef %call53, i64 noundef %47, ptr noundef %call55, i64 noundef %40, i64 noundef %add) #11
  %50 = ptrtoint ptr %peer_features to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %peer_features, align 8
  %and.i = and i64 %51, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i.neg = select i1 %tobool.not.i, i32 -13, i32 -21
  %52 = add nuw nsw i32 %34, %31
  %53 = add nuw nsw i32 %52, %37
  %.neg505 = sub nuw nsw i32 %cond.i.neg, %53
  %54 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.neg505, ptr %in_base_pos.i, align 8
  %in_tag = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %55 = ptrtoint ptr %in_tag to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %in_tag, align 4
  br label %cleanup340

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub)
  %cmp65.not = icmp eq i64 %sub, 1
  br i1 %cmp65.not, label %if.end76, label %do.end70

do.end70:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add73 = add i64 %42, 1
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i64 noundef %40, i64 noundef %add73) #11
  %error_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %56 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.119, ptr %error_msg, align 4
  br label %cleanup340

if.end76:                                         ; preds = %if.else
  %57 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %in_msg, align 8
  %tobool78.not = icmp eq ptr %58, null
  br i1 %tobool78.not, label %if.then79, label %if.end76.if.end208_crit_edge

if.end76.if.end208_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.then79:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip) #8
  %59 = ptrtoint ptr %skip to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %skip, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_partial_message.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_partial_message, %if.then92)) #8
          to label %do.end99 [label %if.then92], !srcloc !334

if.then92:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %type95 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %10, i32 0, i32 18, i32 2
  %60 = ptrtoint ptr %type95 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %type95, align 1
  %conv96 = zext i16 %61 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_partial_message.__UNIQUE_ID_ddebug494, ptr noundef nonnull @.str.121, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1134, i32 noundef %conv96, i32 noundef %31, i32 noundef %37) #8
  br label %do.end99

do.end99:                                         ; preds = %if.then92, %if.then79
  %call101 = call i32 @ceph_con_in_msg_alloc(ptr noundef %con, ptr noundef %in_hdr, ptr noundef nonnull %skip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %do.end99.cleanup_crit_edge, label %do.body106

do.end99.cleanup_crit_edge:                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body106:                                       ; preds = %do.end99
  %62 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %in_msg, align 8
  %tobool108.not = icmp eq ptr %63, null
  %lnot.ext110 = zext i1 %tobool108.not to i32
  %64 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %lnot.ext110)
  %tobool111.not = icmp eq i32 %65, %lnot.ext110
  br i1 %tobool111.not, label %do.end127, label %do.body119, !prof !338

do.body119:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1139, 0\0A.popsection", ""() #8, !srcloc !345
  unreachable

do.end127:                                        ; preds = %do.body106
  br i1 %tobool108.not, label %do.body130, label %do.body177

do.body130:                                       ; preds = %do.end127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_partial_message.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_partial_message, %if.then142)) #8
          to label %do.end146 [label %if.then142], !srcloc !334

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_partial_message.__UNIQUE_ID_ddebug495, ptr noundef nonnull @.str.123, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1142) #8
  br label %do.end146

do.end146:                                        ; preds = %if.then142, %do.body130
  %66 = ptrtoint ptr %peer_features to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %peer_features, align 8
  %and.i489 = and i64 %67, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i489)
  %tobool.not.i490 = icmp eq i64 %and.i489, 0
  %cond.i491.neg = select i1 %tobool.not.i490, i32 -13, i32 -21
  %68 = add nuw nsw i32 %34, %31
  %69 = add nuw nsw i32 %68, %37
  %.neg = sub nuw nsw i32 %cond.i491.neg, %69
  %70 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %.neg, ptr %in_base_pos.i, align 8
  %in_tag153 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %71 = ptrtoint ptr %in_tag153 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %in_tag153, align 4
  %72 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %in_seq, align 8
  %inc = add i64 %73, 1
  store i64 %inc, ptr %in_seq, align 8
  br label %cleanup

do.body177:                                       ; preds = %do.end127
  %con179 = getelementptr inbounds %struct.ceph_msg, ptr %63, i32 0, i32 9
  %74 = ptrtoint ptr %con179 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %con179, align 4
  %cmp180.not = icmp eq ptr %75, %con
  br i1 %cmp180.not, label %do.end197, label %do.body189, !prof !338

do.body189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1151, 0\0A.popsection", ""() #8, !srcloc !346
  unreachable

do.end197:                                        ; preds = %do.body177
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %63, i32 0, i32 2, i32 1
  %76 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %iov_len, align 4
  %middle = getelementptr inbounds %struct.ceph_msg, ptr %63, i32 0, i32 3
  %77 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %middle, align 4
  %tobool199.not = icmp eq ptr %78, null
  br i1 %tobool199.not, label %do.end197.if.end203_crit_edge, label %if.then200

do.end197.if.end203_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.then200:                                       ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #10
  %iov_len202 = getelementptr inbounds %struct.ceph_buffer, ptr %78, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %iov_len202 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %iov_len202, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then200, %do.end197.if.end203_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool204.not = icmp eq i32 %36, 0
  br i1 %tobool204.not, label %if.end203.cleanup.thread_crit_edge, label %if.then205

if.end203.cleanup.thread_crit_edge:               ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then205:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in_msg, align 8
  %cursor.i = getelementptr inbounds %struct.ceph_msg, ptr %81, i32 0, i32 8
  call void @ceph_msg_data_cursor_init(ptr noundef %cursor.i, ptr noundef %81, i32 noundef %37) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then205, %if.end203.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip) #8
  br label %if.end208

cleanup:                                          ; preds = %do.end146, %do.end99.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end146 ], [ %call101, %do.end99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip) #8
  br label %cleanup340

if.end208:                                        ; preds = %cleanup.thread, %if.end76.if.end208_crit_edge
  %m.1 = phi ptr [ %1, %if.end76.if.end208_crit_edge ], [ %63, %cleanup.thread ]
  %front209 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 2
  %in_front_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 22
  %call210 = call fastcc i32 @read_partial_message_section(ptr noundef %con, ptr noundef %front209, i32 noundef %31, ptr noundef %in_front_crc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call210)
  %cmp211 = icmp slt i32 %call210, 1
  br i1 %cmp211, label %if.end208.cleanup340_crit_edge, label %if.end214

if.end208.cleanup340_crit_edge:                   ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end214:                                        ; preds = %if.end208
  %middle215 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 3
  %82 = ptrtoint ptr %middle215 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %middle215, align 4
  %tobool216.not = icmp eq ptr %83, null
  br i1 %tobool216.not, label %if.end214.if.end225_crit_edge, label %if.then217

if.end214.if.end225_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225

if.then217:                                       ; preds = %if.end214
  %vec219 = getelementptr inbounds %struct.ceph_buffer, ptr %83, i32 0, i32 1
  %in_middle_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 23
  %call220 = call fastcc i32 @read_partial_message_section(ptr noundef %con, ptr noundef %vec219, i32 noundef %34, ptr noundef %in_middle_crc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call220)
  %cmp221 = icmp slt i32 %call220, 1
  br i1 %cmp221, label %if.then217.cleanup340_crit_edge, label %if.then217.if.end225_crit_edge

if.then217.if.end225_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end225

if.then217.cleanup340_crit_edge:                  ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end225:                                        ; preds = %if.then217.if.end225_crit_edge, %if.end214.if.end225_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool226.not = icmp eq i32 %36, 0
  br i1 %tobool226.not, label %if.end225.if.end248_crit_edge, label %if.then227

if.end225.if.end248_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then227:                                       ; preds = %if.end225
  %num_data_items = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 6
  %84 = ptrtoint ptr %num_data_items to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_data_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool228.not = icmp eq i32 %85, 0
  br i1 %tobool228.not, label %if.then227.cleanup340_crit_edge, label %if.end230

if.then227.cleanup340_crit_edge:                  ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end230:                                        ; preds = %if.then227
  %86 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %msgr, align 8
  %options235 = getelementptr i8, ptr %87, i32 -176
  %88 = ptrtoint ptr %options235 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %options235, align 8
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %and237 = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.else241, label %if.then239

if.then239:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %call240 = call fastcc i32 @read_partial_msg_data_bounce(ptr noundef %con)
  br label %if.end243

if.else241:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #10
  %call242 = call fastcc i32 @read_partial_msg_data(ptr noundef %con)
  br label %if.end243

if.end243:                                        ; preds = %if.else241, %if.then239
  %ret.0 = phi i32 [ %call240, %if.then239 ], [ %call242, %if.else241 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp244 = icmp slt i32 %ret.0, 1
  br i1 %cmp244, label %if.end243.cleanup340_crit_edge, label %if.end243.if.end248_crit_edge

if.end243.if.end248_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.end243.cleanup340_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end248:                                        ; preds = %if.end243.if.end248_crit_edge, %if.end225.if.end248_crit_edge
  %92 = ptrtoint ptr %peer_features to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %peer_features, align 8
  %and.i493 = and i64 %93, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i493)
  %tobool.not.i494 = icmp eq i64 %and.i493, 0
  %cond.i495 = select i1 %tobool.not.i494, i32 13, i32 21
  %add250 = add nuw nsw i32 %cond.i495, 53
  %94 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1
  %call251 = call fastcc i32 @read_partial(ptr noundef %con, i32 noundef %add250, i32 noundef %cond.i495, ptr noundef %94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call251)
  %cmp252 = icmp slt i32 %call251, 1
  br i1 %cmp252, label %if.end248.cleanup340_crit_edge, label %if.end255

if.end248.cleanup340_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

if.end255:                                        ; preds = %if.end248
  br i1 %tobool4.not, label %if.then257, label %if.end255.do.body261_crit_edge

if.end255.do.body261_crit_edge:                   ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body261

if.then257:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #10
  %flags258 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1, i32 0, i32 3
  %95 = ptrtoint ptr %flags258 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %flags258, align 1
  %flags259 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1, i32 0, i32 4
  %97 = ptrtoint ptr %flags259 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %flags259, align 1
  store i64 0, ptr %flags258, align 1
  br label %do.body261

do.body261:                                       ; preds = %if.then257, %if.end255.do.body261_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_partial_message.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_partial_message, %if.then273)) #8
          to label %do.end277 [label %if.then273], !srcloc !334

if.then273:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %94, align 1
  %middle_crc = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %middle_crc to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %middle_crc, align 1
  %data_crc = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1, i32 0, i32 2
  %102 = ptrtoint ptr %data_crc to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %data_crc, align 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_partial_message.__UNIQUE_ID_ddebug496, ptr noundef nonnull @.str.125, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1205, ptr noundef %m.1, i32 noundef %31, i32 noundef %99, i32 noundef %34, i32 noundef %101, i32 noundef %37, i32 noundef %103) #8
  br label %do.end277

do.end277:                                        ; preds = %if.then273, %do.body261
  %104 = ptrtoint ptr %in_front_crc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %in_front_crc, align 4
  %106 = ptrtoint ptr %94 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %94, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107)
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %108)
  %cmp280.not = icmp eq i32 %105, %108
  br i1 %cmp280.not, label %if.end290, label %do.end285

do.end285:                                        ; preds = %do.end277
  call void @__sanitizer_cov_trace_pc() #10
  %call289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %m.1, i32 noundef %105, i32 noundef %107) #11
  br label %cleanup340

if.end290:                                        ; preds = %do.end277
  %in_middle_crc291 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 23
  %109 = ptrtoint ptr %in_middle_crc291 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %in_middle_crc291, align 8
  %middle_crc292 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1, i32 0, i32 1
  %111 = ptrtoint ptr %middle_crc292 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %middle_crc292, align 1
  %113 = call i32 @llvm.bswap.i32(i32 %112)
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %113)
  %cmp293.not = icmp eq i32 %110, %113
  br i1 %cmp293.not, label %if.end303, label %do.end298

do.end298:                                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #10
  %call302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %m.1, i32 noundef %110, i32 noundef %112) #11
  br label %cleanup340

if.end303:                                        ; preds = %if.end290
  br i1 %tobool.not, label %land.lhs.true, label %if.end303.if.end323_crit_edge

if.end303.if.end323_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

land.lhs.true:                                    ; preds = %if.end303
  %flags306 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1, i32 0, i32 4
  %114 = ptrtoint ptr %flags306 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %flags306, align 1
  %116 = and i8 %115, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp309 = icmp eq i8 %116, 0
  br i1 %cmp309, label %land.lhs.true311, label %land.lhs.true.if.end323_crit_edge

land.lhs.true.if.end323_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

land.lhs.true311:                                 ; preds = %land.lhs.true
  %in_data_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 24
  %117 = ptrtoint ptr %in_data_crc to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %in_data_crc, align 4
  %data_crc312 = getelementptr inbounds %struct.ceph_msg, ptr %m.1, i32 0, i32 1, i32 0, i32 2
  %119 = ptrtoint ptr %data_crc312 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %data_crc312, align 1
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %121)
  %cmp313.not = icmp eq i32 %118, %121
  br i1 %cmp313.not, label %land.lhs.true311.if.end323_crit_edge, label %do.end318

land.lhs.true311.if.end323_crit_edge:             ; preds = %land.lhs.true311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end323

do.end318:                                        ; preds = %land.lhs.true311
  call void @__sanitizer_cov_trace_pc() #10
  %call322 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %m.1, i32 noundef %118, i32 noundef %121) #11
  br label %cleanup340

if.end323:                                        ; preds = %land.lhs.true311.if.end323_crit_edge, %land.lhs.true.if.end323_crit_edge, %if.end303.if.end323_crit_edge
  br i1 %tobool4.not, label %if.end323.cleanup340_crit_edge, label %land.lhs.true326

if.end323.cleanup340_crit_edge:                   ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

land.lhs.true326:                                 ; preds = %if.end323
  %ops = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %122 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops, align 4
  %check_message_signature = getelementptr inbounds %struct.ceph_connection_operations, ptr %123, i32 0, i32 12
  %124 = ptrtoint ptr %check_message_signature to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %check_message_signature, align 4
  %tobool327.not = icmp eq ptr %125, null
  br i1 %tobool327.not, label %land.lhs.true326.cleanup340_crit_edge, label %land.lhs.true328

land.lhs.true326.cleanup340_crit_edge:            ; preds = %land.lhs.true326
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

land.lhs.true328:                                 ; preds = %land.lhs.true326
  %call331 = call i32 %125(ptr noundef %m.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %land.lhs.true328.cleanup340_crit_edge, label %do.end336

land.lhs.true328.cleanup340_crit_edge:            ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup340

do.end336:                                        ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #10
  %call338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %m.1) #11
  br label %cleanup340

cleanup340:                                       ; preds = %do.end336, %land.lhs.true328.cleanup340_crit_edge, %land.lhs.true326.cleanup340_crit_edge, %if.end323.cleanup340_crit_edge, %do.end318, %do.end298, %do.end285, %if.end248.cleanup340_crit_edge, %if.end243.cleanup340_crit_edge, %if.then227.cleanup340_crit_edge, %if.then217.cleanup340_crit_edge, %if.end208.cleanup340_crit_edge, %cleanup, %do.end70, %do.end51, %if.end39.cleanup340_crit_edge, %if.end34.cleanup340_crit_edge, %if.end29.cleanup340_crit_edge, %do.end24, %while.body.i.cleanup340_crit_edge
  %retval.1 = phi i32 [ -74, %do.end24 ], [ 1, %do.end51 ], [ -52, %do.end70 ], [ -74, %do.end285 ], [ -74, %do.end298 ], [ -74, %do.end318 ], [ -74, %do.end336 ], [ %retval.0, %cleanup ], [ -5, %if.end29.cleanup340_crit_edge ], [ -5, %if.end34.cleanup340_crit_edge ], [ -5, %if.end39.cleanup340_crit_edge ], [ %call210, %if.end208.cleanup340_crit_edge ], [ %call220, %if.then217.cleanup340_crit_edge ], [ -5, %if.then227.cleanup340_crit_edge ], [ %ret.0, %if.end243.cleanup340_crit_edge ], [ %call251, %if.end248.cleanup340_crit_edge ], [ 1, %land.lhs.true328.cleanup340_crit_edge ], [ 1, %land.lhs.true326.cleanup340_crit_edge ], [ 1, %if.end323.cleanup340_crit_edge ], [ %spec.store.select.i.i, %while.body.i.cleanup340_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_process_message(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_keepalive_ack(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %iov.i.i = alloca %struct.kvec, align 4
  %msg.i.i = alloca %struct.msghdr, align 8
  %ceph_ts = alloca %struct.ceph_timespec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ceph_ts) #8
  %0 = ptrtoint ptr %ceph_ts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ceph_ts, align 4, !annotation !341
  %1 = getelementptr inbounds %struct.ceph_timespec, ptr %ceph_ts, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !341
  %in_base_pos.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %3 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_base_pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp16.i = icmp slt i32 %4, 8
  br i1 %cmp16.i, label %while.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %sock.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %5 = getelementptr inbounds %struct.kvec, ptr %iov.i.i, i32 0, i32 1
  %6 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i.i, i32 0, i32 7
  %msg_iter.i.i = getelementptr inbounds %struct.msghdr, ptr %msg.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %7 = phi i32 [ %4, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %sub.i = sub i32 8, %7
  %8 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock.i, align 4
  %add.ptr.i = getelementptr i8, ptr %ceph_ts, i32 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i.i) #8
  %10 = ptrtoint ptr %iov.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %iov.i.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %12 = call ptr @memset(ptr %msg.i.i, i32 0, i32 56)
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  %spec.store.select.i = select i1 %tobool.not.i.i, i32 16480, i32 16448
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select.i, ptr %6, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i.i, i32 noundef 0, ptr noundef nonnull %iov.i.i, i32 noundef 1, i32 noundef %sub.i) #8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %call.i.i = call i32 @sock_recvmsg(ptr noundef %9, ptr noundef nonnull %msg.i.i, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -11
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 0, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i.i)
  %cmp3.i = icmp slt i32 %spec.store.select.i.i, 1
  br i1 %cmp3.i, label %while.body.i.cleanup_crit_edge, label %cleanup.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.i:                                        ; preds = %while.body.i
  %16 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_base_pos.i, align 8
  %add.i = add i32 %17, %spec.store.select.i.i
  store i32 %add.i, ptr %in_base_pos.i, align 8
  %cmp.i = icmp slt i32 %add.i, 8
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  %last_keepalive_ack = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 25
  %18 = ptrtoint ptr %ceph_ts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ceph_ts, align 4
  %20 = call i32 @llvm.bswap.i32(i32 %19) #8
  %conv.i = zext i32 %20 to i64
  %21 = ptrtoint ptr %last_keepalive_ack to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv.i, ptr %last_keepalive_ack, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #8
  %tv_nsec2.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 25, i32 1
  %25 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tv_nsec2.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_tag.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_keepalive_ack, %if.then.i)) #8
          to label %prepare_read_tag.exit [label %if.then.i], !srcloc !334

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_tag.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.143, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 582, ptr noundef %con) #8
  br label %prepare_read_tag.exit

prepare_read_tag.exit:                            ; preds = %if.then.i, %if.end
  %26 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %in_base_pos.i, align 8
  %in_tag.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %27 = ptrtoint ptr %in_tag.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %in_tag.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %prepare_read_tag.exit, %while.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %prepare_read_tag.exit ], [ %spec.store.select.i.i, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ceph_ts) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_con_v1_try_write(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_write.__UNIQUE_ID_ddebug502, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1401, ptr noundef %con, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state4 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %2 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state4, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %3, label %do.end.cleanup_crit_edge [
    i32 2, label %do.body18
    i32 3, label %do.end.if.end77_crit_edge
    i32 4, label %do.end.if.end77_crit_edge289
    i32 12, label %do.end.if.end77_crit_edge290
  ]

do.end.if.end77_crit_edge290:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end.if.end77_crit_edge289:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end.if.end77_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body18:                                        ; preds = %do.end
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %5 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sock, align 4
  %tobool19.not = icmp eq ptr %6, null
  br i1 %tobool19.not, label %do.end35, label %do.body27, !prof !338

do.body27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1410, 0\0A.popsection", ""() #8, !srcloc !347
  unreachable

do.end35:                                         ; preds = %do.body18
  %7 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state4, align 4
  %out_skip.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %prepare_write_banner.exit, label %do.body3.i, !prof !338

do.body3.i:                                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

prepare_write_banner.exit:                        ; preds = %do.end35
  %10 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %out_kvec_left.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %out_kvec_bytes.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %out_kvec_cur.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %11 = ptrtoint ptr %out_kvec_cur.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %out_kvec_cur.i, align 8
  %iov_len.i.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 9, ptr %iov_len.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.49, ptr %10, align 8
  %msgr.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %14 = ptrtoint ptr %msgr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msgr.i, align 8
  %my_enc_addr.i = getelementptr inbounds %struct.ceph_messenger, ptr %15, i32 0, i32 1
  %arrayidx.i12.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 4
  %iov_len.i13.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 5
  %16 = ptrtoint ptr %iov_len.i13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 136, ptr %iov_len.i13.i, align 4
  %17 = ptrtoint ptr %arrayidx.i12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %my_enc_addr.i, ptr %arrayidx.i12.i, align 8
  %18 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %out_kvec_left.i, align 4
  %19 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 145, ptr %out_kvec_bytes.i, align 4
  %out_more.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 4
  %20 = ptrtoint ptr %out_more.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %out_more.i, align 8
  tail call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_read_banner.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then.i)) #8
          to label %prepare_read_banner.exit [label %if.then.i], !srcloc !334

if.then.i:                                        ; preds = %prepare_write_banner.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_read_banner.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.146, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 557, ptr noundef %con) #8
  br label %prepare_read_banner.exit

prepare_read_banner.exit:                         ; preds = %if.then.i, %prepare_write_banner.exit
  %in_base_pos.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %21 = ptrtoint ptr %in_base_pos.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %in_base_pos.i, align 8
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %22 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_msg, align 8
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %do.end54, label %do.body46, !prof !338

do.body46:                                        ; preds = %prepare_read_banner.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1417, 0\0A.popsection", ""() #8, !srcloc !348
  unreachable

do.end54:                                         ; preds = %prepare_read_banner.exit
  %in_tag = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %24 = ptrtoint ptr %in_tag to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %in_tag, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then67)) #8
          to label %do.end72 [label %if.then67], !srcloc !334

if.then67:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_write.__UNIQUE_ID_ddebug503, ptr noundef nonnull @.str.22, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1420, ptr noundef %con, i32 noundef %26) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.end54
  %call73 = tail call i32 @ceph_tcp_connect(ptr noundef %con) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then75, label %do.end72.if.end77_crit_edge

do.end72.if.end77_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then75:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  %error_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %27 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.23, ptr %error_msg, align 4
  br label %do.body196

if.end77:                                         ; preds = %do.end72.if.end77_crit_edge, %do.end.if.end77_crit_edge, %do.end.if.end77_crit_edge289, %do.end.if.end77_crit_edge290
  %out_kvec_bytes = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %sock96 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %28 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %out_kvec_left = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %out_skip = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %out_msg_done = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %28, i32 0, i32 6
  %out_queue = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13
  %in_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 17
  %in_seq_acked = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 18
  %out_kvec_cur.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %iov_len.i.i281 = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 3
  %out_temp_ack.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 32, i32 7, i32 1
  %arrayidx.i32.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 4
  %iov_len.i33.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 5
  %out_more.i282 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 4
  br label %more

more:                                             ; preds = %more.backedge, %if.end77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then90)) #8
          to label %do.body95 [label %if.then90], !srcloc !334

if.then90:                                        ; preds = %more
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %out_kvec_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %out_kvec_bytes, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_write.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1429, i32 noundef %30) #8
  br label %do.body95

do.body95:                                        ; preds = %if.then90, %more
  %31 = ptrtoint ptr %sock96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sock96, align 4
  %tobool97.not = icmp eq ptr %32, null
  br i1 %tobool97.not, label %do.body107, label %do.end115, !prof !335

do.body107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1430, 0\0A.popsection", ""() #8, !srcloc !349
  unreachable

do.end115:                                        ; preds = %do.body95
  %33 = ptrtoint ptr %out_kvec_left to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out_kvec_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool116.not = icmp eq i32 %34, 0
  br i1 %tobool116.not, label %do.end115.if.end122_crit_edge, label %if.then117

do.end115.if.end122_crit_edge:                    ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then117:                                       ; preds = %do.end115
  %call118 = tail call fastcc i32 @write_partial_kvec(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 1
  br i1 %cmp119, label %if.then117.do.body196_crit_edge, label %if.then117.if.end122_crit_edge

if.then117.if.end122_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then117.do.body196_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body196

if.end122:                                        ; preds = %if.then117.if.end122_crit_edge, %do.end115.if.end122_crit_edge
  %35 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out_skip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool123.not = icmp eq i32 %36, 0
  br i1 %tobool123.not, label %if.end122.if.end129_crit_edge, label %if.then124

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then124:                                       ; preds = %if.end122
  %call125 = tail call fastcc i32 @write_partial_skip(ptr noundef %con)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 1
  br i1 %cmp126, label %if.then124.do.body196_crit_edge, label %if.then124.if.end129_crit_edge

if.then124.if.end129_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then124.do.body196_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body196

if.end129:                                        ; preds = %if.then124.if.end129_crit_edge, %if.end122.if.end129_crit_edge
  %37 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out_msg, align 4
  %tobool130.not = icmp eq ptr %38, null
  br i1 %tobool130.not, label %if.end129.do_next_crit_edge, label %if.then131

if.end129.do_next_crit_edge:                      ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_next

if.then131:                                       ; preds = %if.end129
  %39 = ptrtoint ptr %out_msg_done to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %out_msg_done, align 1, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool132.not = icmp eq i8 %40, 0
  br i1 %tobool132.not, label %if.end136, label %if.then133

if.then133:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ceph_msg_put(ptr noundef nonnull %38) #8
  %41 = ptrtoint ptr %out_msg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %out_msg, align 4
  br label %do_next

if.end136:                                        ; preds = %if.then131
  %call137 = tail call fastcc i32 @write_partial_message_data(ptr noundef %con)
  %42 = zext i32 %call137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call137, label %if.end143 [
    i32 1, label %if.end136.more.backedge_crit_edge
    i32 0, label %if.end136.do.body196_crit_edge
  ]

if.end136.do.body196_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body196

if.end136.more.backedge_crit_edge:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %more.backedge

if.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp144 = icmp slt i32 %call137, 0
  br i1 %cmp144, label %do.body146, label %if.end143.do_next_crit_edge

if.end143.do_next_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_next

do.body146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then158)) #8
          to label %do.body196 [label %if.then158], !srcloc !334

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_write.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1459, i32 noundef %call137) #8
  br label %do.body196

do_next:                                          ; preds = %if.end143.do_next_crit_edge, %if.then133, %if.end129.do_next_crit_edge
  %43 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %44)
  %cmp166 = icmp eq i32 %44, 12
  br i1 %cmp166, label %if.then167, label %do_next.if.end178_crit_edge

do_next.if.end178_crit_edge:                      ; preds = %do_next
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then167:                                       ; preds = %do_next
  %call168 = tail call zeroext i1 @ceph_con_flag_test_and_clear(ptr noundef %con, i32 noundef 1) #8
  br i1 %call168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @prepare_write_keepalive(ptr noundef %con)
  br label %more.backedge

more.backedge:                                    ; preds = %prepare_write_ack.exit, %if.then173, %if.then169, %if.end136.more.backedge_crit_edge
  br label %more

if.end170:                                        ; preds = %if.then167
  %45 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %out_queue, align 4
  %cmp.i.not = icmp eq ptr %46, %out_queue
  br i1 %cmp.i.not, label %if.end174, label %if.then173

if.then173:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @prepare_write_message(ptr noundef %con)
  br label %more.backedge

if.end174:                                        ; preds = %if.end170
  %47 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %in_seq, align 8
  %49 = ptrtoint ptr %in_seq_acked to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %in_seq_acked, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp175 = icmp ugt i64 %48, %50
  br i1 %cmp175, label %if.then176, label %if.end174.if.end178_crit_edge

if.end174.if.end178_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then176:                                       ; preds = %if.end174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_write_ack.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then.i275)) #8
          to label %do.end.i [label %if.then.i275], !srcloc !334

if.then.i275:                                     ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %in_seq_acked to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %in_seq_acked, align 8
  %53 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %in_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_write_ack.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.174, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 270, ptr noundef %con, i64 noundef %52, i64 noundef %54) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i275, %if.then176
  %55 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %in_seq, align 8
  %57 = ptrtoint ptr %in_seq_acked to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %in_seq_acked, align 8
  %58 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out_skip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i277 = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i277, label %prepare_write_ack.exit, label %do.body3.i.i278, !prof !338

do.body3.i.i278:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

prepare_write_ack.exit:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %out_kvec_cur.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %28, ptr %out_kvec_cur.i.i, align 8
  %61 = ptrtoint ptr %iov_len.i.i281 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %iov_len.i.i281, align 4
  %62 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @tag_ack, ptr %28, align 8
  %63 = tail call i64 @llvm.bswap.i64(i64 %56) #8
  %64 = ptrtoint ptr %out_temp_ack.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %out_temp_ack.i, align 8
  %65 = ptrtoint ptr %iov_len.i33.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8, ptr %iov_len.i33.i, align 4
  %66 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %out_temp_ack.i, ptr %arrayidx.i32.i, align 8
  %67 = ptrtoint ptr %out_kvec_left to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %out_kvec_left, align 4
  %68 = ptrtoint ptr %out_kvec_bytes to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 9, ptr %out_kvec_bytes, align 4
  %69 = ptrtoint ptr %out_more.i282 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %out_more.i282, align 8
  tail call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 2) #8
  br label %more.backedge

if.end178:                                        ; preds = %if.end174.if.end178_crit_edge, %do_next.if.end178_crit_edge
  tail call void @ceph_con_flag_clear(ptr noundef %con, i32 noundef 2) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then191)) #8
          to label %do.body196 [label %if.then191], !srcloc !334

if.then191:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_write.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.29, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1484) #8
  br label %do.body196

do.body196:                                       ; preds = %if.then191, %if.end178, %if.then158, %do.body146, %if.end136.do.body196_crit_edge, %if.then124.do.body196_crit_edge, %if.then117.do.body196_crit_edge, %if.then75
  %ret.0 = phi i32 [ %call73, %if.then75 ], [ %call137, %if.then158 ], [ 0, %if.then191 ], [ %call137, %do.body146 ], [ 0, %if.end178 ], [ %call137, %if.end136.do.body196_crit_edge ], [ %call125, %if.then124.do.body196_crit_edge ], [ %call118, %if.then117.do.body196_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_try_write, %if.then208)) #8
          to label %cleanup [label %if.then208], !srcloc !334

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_try_write.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1487, ptr noundef %con, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then208, %do.body196, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %ret.0, %if.then208 ], [ %ret.0, %do.body196 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_tcp_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_partial_kvec(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_partial_kvec.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_partial_kvec, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %out_kvec_bytes = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %0 = ptrtoint ptr %out_kvec_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_kvec_bytes, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_partial_kvec.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.149, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 425, ptr noundef %con, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out_kvec_bytes4 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %2 = ptrtoint ptr %out_kvec_bytes4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_kvec_bytes4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp121 = icmp sgt i32 %3, 0
  br i1 %cmp121, label %while.body.lr.ph, label %do.end.while.end53_crit_edge

do.end.while.end53_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end53

while.body.lr.ph:                                 ; preds = %do.end
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %out_kvec_cur = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %out_kvec_left = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %out_more = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 4
  %4 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %3, %while.body.lr.ph ], [ %36, %if.end52.while.body_crit_edge ]
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock, align 4
  %8 = ptrtoint ptr %out_kvec_cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_kvec_cur, align 8
  %10 = ptrtoint ptr %out_kvec_left to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_kvec_left, align 4
  %12 = ptrtoint ptr %out_more to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %out_more, align 8, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %14 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %or2.i = select i1 %tobool6.not, i32 16576, i32 49216
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or2.i, ptr %4, align 4
  %call.i = call i32 @kernel_sendmsg(ptr noundef %7, ptr noundef nonnull %msg.i, ptr noundef %9, i32 noundef %11, i32 noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -11
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp8 = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp8, label %while.body.do.body55_crit_edge, label %if.end10

while.body.do.body55_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.end10:                                         ; preds = %while.body
  %16 = ptrtoint ptr %out_kvec_bytes4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out_kvec_bytes4, align 4
  %sub = sub i32 %17, %spec.store.select.i
  store i32 %sub, ptr %out_kvec_bytes4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %spec.store.select.i)
  %tobool13.not = icmp eq i32 %17, %spec.store.select.i
  br i1 %tobool13.not, label %if.end10.while.end53_crit_edge, label %while.cond16.preheader

if.end10.while.end53_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end53

while.cond16.preheader:                           ; preds = %if.end10
  %18 = ptrtoint ptr %out_kvec_cur to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_kvec_cur, align 8
  %iov_len116 = getelementptr inbounds %struct.kvec, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len116 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %21)
  %cmp18.not117 = icmp ult i32 %call.i, %21
  br i1 %cmp18.not117, label %while.cond16.preheader.while.end_crit_edge, label %do.body20.preheader

while.cond16.preheader.while.end_crit_edge:       ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body20.preheader:                              ; preds = %while.cond16.preheader
  %22 = ptrtoint ptr %out_kvec_left to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %out_kvec_left, align 4
  br label %do.body20

do.body20:                                        ; preds = %do.end40.do.body20_crit_edge, %do.body20.preheader
  %23 = phi i32 [ %.pr, %do.body20.preheader ], [ %dec, %do.end40.do.body20_crit_edge ]
  %24 = phi i32 [ %21, %do.body20.preheader ], [ %29, %do.end40.do.body20_crit_edge ]
  %25 = phi ptr [ %19, %do.body20.preheader ], [ %incdec.ptr, %do.end40.do.body20_crit_edge ]
  %ret.0118 = phi i32 [ %call.i, %do.body20.preheader ], [ %sub43, %do.end40.do.body20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool22.not = icmp eq i32 %23, 0
  br i1 %tobool22.not, label %do.body32, label %do.end40, !prof !335

do.body32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 439, 0\0A.popsection", ""() #8, !srcloc !351
  unreachable

do.end40:                                         ; preds = %do.body20
  %sub43 = sub i32 %ret.0118, %24
  %incdec.ptr = getelementptr %struct.kvec, ptr %25, i32 1
  %26 = ptrtoint ptr %out_kvec_cur to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %incdec.ptr, ptr %out_kvec_cur, align 8
  %dec = add i32 %23, -1
  %27 = ptrtoint ptr %out_kvec_left to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec, ptr %out_kvec_left, align 4
  %iov_len = getelementptr %struct.kvec, ptr %25, i32 1, i32 1
  %28 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iov_len, align 4
  %cmp18.not = icmp ult i32 %sub43, %29
  br i1 %cmp18.not, label %do.end40.while.end_crit_edge, label %do.end40.do.body20_crit_edge

do.end40.do.body20_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.end40.while.end_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end40.while.end_crit_edge, %while.cond16.preheader.while.end_crit_edge
  %.lcssa115 = phi ptr [ %19, %while.cond16.preheader.while.end_crit_edge ], [ %incdec.ptr, %do.end40.while.end_crit_edge ]
  %ret.0.lcssa = phi i32 [ %call.i, %while.cond16.preheader.while.end_crit_edge ], [ %sub43, %do.end40.while.end_crit_edge ]
  %.lcssa = phi i32 [ %21, %while.cond16.preheader.while.end_crit_edge ], [ %29, %do.end40.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool46.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool46.not, label %while.end.if.end52_crit_edge, label %if.then47

while.end.if.end52_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then47:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %iov_len.le = getelementptr inbounds %struct.kvec, ptr %.lcssa115, i32 0, i32 1
  %sub50 = sub i32 %.lcssa, %ret.0.lcssa
  %30 = ptrtoint ptr %iov_len.le to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub50, ptr %iov_len.le, align 4
  %31 = ptrtoint ptr %out_kvec_cur to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %out_kvec_cur, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 %ret.0.lcssa
  store ptr %add.ptr, ptr %32, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %while.end.if.end52_crit_edge
  %35 = ptrtoint ptr %out_kvec_bytes4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out_kvec_bytes4, align 4
  %cmp = icmp sgt i32 %36, 0
  br i1 %cmp, label %if.end52.while.body_crit_edge, label %if.end52.while.end53_crit_edge

if.end52.while.end53_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end53

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end53:                                      ; preds = %if.end52.while.end53_crit_edge, %if.end10.while.end53_crit_edge, %do.end.while.end53_crit_edge
  %out_kvec_left54 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %out_kvec_left54 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %out_kvec_left54, align 4
  br label %do.body55

do.body55:                                        ; preds = %while.end53, %while.body.do.body55_crit_edge
  %ret.1 = phi i32 [ 1, %while.end53 ], [ %spec.store.select.i, %while.body.do.body55_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_partial_kvec.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_partial_kvec, %if.then67)) #8
          to label %do.end73 [label %if.then67], !srcloc !334

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %out_kvec_bytes4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %out_kvec_bytes4, align 4
  %out_kvec_left70 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %out_kvec_left70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %out_kvec_left70, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_partial_kvec.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.151, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 454, ptr noundef %con, i32 noundef %39, i32 noundef %41, i32 noundef %ret.1) #8
  br label %do.end73

do.end73:                                         ; preds = %if.then67, %do.body55
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_partial_skip(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_partial_skip.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_partial_skip, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %out_skip = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_skip, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_partial_skip.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.154, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 535, ptr noundef nonnull @.str.152, ptr noundef %con, i32 noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out_skip4 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %out_skip4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_skip4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp34 = icmp sgt i32 %3, 0
  br i1 %cmp34, label %while.body.lr.ph, label %do.end.cleanup17_crit_edge

do.end.cleanup17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

while.body.lr.ph:                                 ; preds = %do.end
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %more.035 = phi i32 [ 163840, %while.body.lr.ph ], [ %more.1, %cleanup.while.body_crit_edge ]
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 4096)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %4)
  %cmp9 = icmp ult i32 %4, 4097
  %more.1 = select i1 %cmp9, i32 32768, i32 %more.035
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_zero_page to i32))
  %8 = load ptr, ptr @ceph_zero_page, align 4
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !338

if.then.i.i.i.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i = add i32 %11, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %8 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %12, %if.end.i.i.i.i ]
  %13 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %9, align 4
  %and.i16.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %do.end10.i.i.i, !prof !335

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i20.i.i.i, label %if.then.i19.i.i.i, !prof !338

if.then.i19.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i.i.i = add i32 %17, -1
  br label %_compound_head.exit22.i.i.i

if.end.i20.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %8 to i32
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.end.i20.i.i.i, %if.then.i19.i.i.i
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %18, %if.end.i20.i.i.i ]
  %19 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.155) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #8, !srcloc !352
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i27.i.i.i, label %if.then.i26.i.i.i, !prof !338

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i.i.i = add i32 %17, -1
  br label %PageSlab.exit.i.i

if.end.i27.i.i.i:                                 ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %8 to i32
  br label %PageSlab.exit.i.i

PageSlab.exit.i.i:                                ; preds = %if.end.i27.i.i.i, %if.then.i26.i.i.i
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %20, %if.end.i27.i.i.i ]
  %21 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge

PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge: ; preds = %PageSlab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_tcp_sendpage.exit

land.rhs.i.i:                                     ; preds = %PageSlab.exit.i.i
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %9, align 4
  %and.i.i3.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3.i.i)
  %tobool.not.i.i4.i.i = icmp eq i32 %and.i.i3.i.i, 0
  br i1 %tobool.not.i.i4.i.i, label %if.end.i.i7.i.i, label %if.then.i.i6.i.i, !prof !338

if.then.i.i6.i.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i5.i.i = add i32 %26, -1
  br label %sendpage_ok.exit.i

if.end.i.i7.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %8 to i32
  br label %sendpage_ok.exit.i

sendpage_ok.exit.i:                               ; preds = %if.end.i.i7.i.i, %if.then.i.i6.i.i
  %retval.0.i.i8.i.i = phi i32 [ %sub.i.i5.i.i, %if.then.i.i6.i.i ], [ %27, %if.end.i.i7.i.i ]
  %28 = inttoptr i32 %retval.0.i.i8.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %29 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i = icmp sgt i32 %30, 0
  br i1 %cmp.i.i, label %if.then.i, label %sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge

sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge: ; preds = %sendpage_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_tcp_sendpage.exit

if.then.i:                                        ; preds = %sendpage_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.socket, ptr %7, i32 0, i32 5
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %sendpage1.i = getelementptr inbounds %struct.proto_ops, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %sendpage1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sendpage1.i, align 4
  br label %ceph_tcp_sendpage.exit

ceph_tcp_sendpage.exit:                           ; preds = %if.then.i, %sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge, %PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge
  %sendpage.0.i = phi ptr [ %34, %if.then.i ], [ @sock_no_sendpage, %sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge ], [ @sock_no_sendpage, %PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge ]
  %or.i = or i32 %more.1, 16448
  %call2.i = tail call i32 %sendpage.0.i(ptr noundef %7, ptr noundef %8, i32 noundef 0, i32 noundef %5, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, -11
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp13 = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp13, label %ceph_tcp_sendpage.exit.cleanup17_crit_edge, label %cleanup

ceph_tcp_sendpage.exit.cleanup17_crit_edge:       ; preds = %ceph_tcp_sendpage.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

cleanup:                                          ; preds = %ceph_tcp_sendpage.exit
  %35 = ptrtoint ptr %out_skip4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %out_skip4, align 8
  %sub = sub i32 %36, %spec.store.select.i
  store i32 %sub, ptr %out_skip4, align 8
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup17_crit_edge

cleanup.cleanup17_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup17:                                        ; preds = %cleanup.cleanup17_crit_edge, %ceph_tcp_sendpage.exit.cleanup17_crit_edge, %do.end.cleanup17_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.cleanup17_crit_edge ], [ %spec.store.select.i, %ceph_tcp_sendpage.exit.cleanup17_crit_edge ], [ 1, %cleanup.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msg_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_partial_message_data(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %page_offset = alloca i32, align 4
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %0 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_msg, align 4
  %cursor1 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %2 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgr, align 8
  %options = getelementptr i8, ptr %3, i32 -176
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %options, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_partial_message_data.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_partial_message_data, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_partial_message_data.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.158, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 473, ptr noundef nonnull @.str.156, ptr noundef %con, ptr noundef %1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num_data_items = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %num_data_items to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_data_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %do.end.cleanup62_crit_edge, label %if.end13

do.end.cleanup62_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup62

if.end13:                                         ; preds = %do.end
  br i1 %tobool.not, label %cond.true, label %if.end13.cond.end_crit_edge

if.end13.cond.end_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %data_crc = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %data_crc to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %data_crc, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end13.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.true ], [ 0, %if.end13.cond.end_crit_edge ]
  %13 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cursor1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool15.not108 = icmp eq i32 %14, 0
  br i1 %tobool15.not108, label %cond.end.do.body39_crit_edge, label %while.body.lr.ph

cond.end.do.body39_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

while.body.lr.ph:                                 ; preds = %cond.end
  %resid = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8, i32 2
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %need_crc = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %crc.0110 = phi i32 [ %cond, %while.body.lr.ph ], [ %crc.2, %cleanup.while.body_crit_edge ]
  %more.0109 = phi i32 [ 163840, %while.body.lr.ph ], [ %more.2, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_offset) #8
  %15 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %page_offset, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #8
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %length, align 4, !annotation !341
  %17 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %while.body.cleanup_crit_edge, label %if.end18

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %while.body
  %call19 = call ptr @ceph_msg_data_next(ptr noundef %cursor1, ptr noundef nonnull %page_offset, ptr noundef nonnull %length, ptr noundef null) #8
  %19 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length, align 4
  %21 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cursor1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp = icmp eq i32 %20, %22
  %spec.select = select i1 %cmp, i32 32768, i32 %more.0109
  %23 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sock, align 4
  %25 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_offset, align 4
  %27 = getelementptr inbounds %struct.page, ptr %call19, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !338

if.then.i.i.i.i:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i = add i32 %29, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call19 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %30, %if.end.i.i.i.i ]
  %31 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i.i.i = icmp eq i32 %33, -1
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %27, align 4
  %and.i16.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %do.end10.i.i.i, !prof !335

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i20.i.i.i, label %if.then.i19.i.i.i, !prof !338

if.then.i19.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i.i.i = add i32 %35, -1
  br label %_compound_head.exit22.i.i.i

if.end.i20.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call19 to i32
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.end.i20.i.i.i, %if.then.i19.i.i.i
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %36, %if.end.i20.i.i.i ]
  %37 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.155) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #8, !srcloc !352
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i27.i.i.i, label %if.then.i26.i.i.i, !prof !338

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i.i.i = add i32 %35, -1
  br label %PageSlab.exit.i.i

if.end.i27.i.i.i:                                 ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call19 to i32
  br label %PageSlab.exit.i.i

PageSlab.exit.i.i:                                ; preds = %if.end.i27.i.i.i, %if.then.i26.i.i.i
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %38, %if.end.i27.i.i.i ]
  %39 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %42 = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge

PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge: ; preds = %PageSlab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_tcp_sendpage.exit

land.rhs.i.i:                                     ; preds = %PageSlab.exit.i.i
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %27, align 4
  %and.i.i3.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3.i.i)
  %tobool.not.i.i4.i.i = icmp eq i32 %and.i.i3.i.i, 0
  br i1 %tobool.not.i.i4.i.i, label %if.end.i.i7.i.i, label %if.then.i.i6.i.i, !prof !338

if.then.i.i6.i.i:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i5.i.i = add i32 %44, -1
  br label %sendpage_ok.exit.i

if.end.i.i7.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %call19 to i32
  br label %sendpage_ok.exit.i

sendpage_ok.exit.i:                               ; preds = %if.end.i.i7.i.i, %if.then.i.i6.i.i
  %retval.0.i.i8.i.i = phi i32 [ %sub.i.i5.i.i, %if.then.i.i6.i.i ], [ %45, %if.end.i.i7.i.i ]
  %46 = inttoptr i32 %retval.0.i.i8.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %47 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i = icmp sgt i32 %48, 0
  br i1 %cmp.i.i, label %if.then.i, label %sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge

sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge: ; preds = %sendpage_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_tcp_sendpage.exit

if.then.i:                                        ; preds = %sendpage_ok.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 5
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %sendpage1.i = getelementptr inbounds %struct.proto_ops, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %sendpage1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sendpage1.i, align 4
  br label %ceph_tcp_sendpage.exit

ceph_tcp_sendpage.exit:                           ; preds = %if.then.i, %sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge, %PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge
  %sendpage.0.i = phi ptr [ %52, %if.then.i ], [ @sock_no_sendpage, %sendpage_ok.exit.i.ceph_tcp_sendpage.exit_crit_edge ], [ @sock_no_sendpage, %PageSlab.exit.i.i.ceph_tcp_sendpage.exit_crit_edge ]
  %or.i = or i32 %spec.select, 16448
  %call2.i = call i32 %sendpage.0.i(ptr noundef %24, ptr noundef %call19, i32 noundef %26, i32 noundef %20, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, -11
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp24 = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %ceph_tcp_sendpage.exit
  br i1 %tobool.not, label %if.then27, label %if.then25.cleanup.thread_crit_edge

if.then25.cleanup.thread_crit_edge:               ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %53 = call i32 @llvm.bswap.i32(i32 %crc.0110)
  %data_crc28 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1, i32 0, i32 2
  %54 = ptrtoint ptr %data_crc28 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %data_crc28, align 1
  br label %cleanup.thread

if.end30:                                         ; preds = %ceph_tcp_sendpage.exit
  br i1 %tobool.not, label %land.lhs.true, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end30
  %55 = ptrtoint ptr %need_crc to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %need_crc, align 1, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool32.not = icmp eq i8 %56, 0
  br i1 %tobool32.not, label %land.lhs.true.cleanup_crit_edge, label %if.then33

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %page_offset, align 4
  %59 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length, align 4
  %call34 = call i32 @ceph_crc32c_page(i32 noundef %crc.0110, ptr noundef %call19, i32 noundef %58, i32 noundef %60) #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then27, %if.then25.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_offset) #8
  br label %cleanup62

cleanup:                                          ; preds = %if.then33, %land.lhs.true.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %spec.store.select.i.sink = phi i32 [ 0, %while.body.cleanup_crit_edge ], [ %spec.store.select.i, %if.then33 ], [ %spec.store.select.i, %land.lhs.true.cleanup_crit_edge ], [ %spec.store.select.i, %if.end30.cleanup_crit_edge ]
  %more.2 = phi i32 [ %more.0109, %while.body.cleanup_crit_edge ], [ %spec.select, %if.then33 ], [ %spec.select, %land.lhs.true.cleanup_crit_edge ], [ %spec.select, %if.end30.cleanup_crit_edge ]
  %crc.2 = phi i32 [ %crc.0110, %while.body.cleanup_crit_edge ], [ %call34, %if.then33 ], [ %crc.0110, %land.lhs.true.cleanup_crit_edge ], [ %crc.0110, %if.end30.cleanup_crit_edge ]
  call void @ceph_msg_data_advance(ptr noundef %cursor1, i32 noundef %spec.store.select.i.sink) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_offset) #8
  %61 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cursor1, align 4
  %tobool15.not = icmp eq i32 %62, 0
  br i1 %tobool15.not, label %cleanup.do.body39_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.do.body39_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

do.body39:                                        ; preds = %cleanup.do.body39_crit_edge, %cond.end.do.body39_crit_edge
  %crc.0.lcssa = phi i32 [ %cond, %cond.end.do.body39_crit_edge ], [ %crc.2, %cleanup.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_partial_message_data.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_partial_message_data, %if.then51)) #8
          to label %do.end55 [label %if.then51], !srcloc !334

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @write_partial_message_data.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.160, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 514, ptr noundef nonnull @.str.156, ptr noundef %con, ptr noundef %1) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body39
  br i1 %tobool.not, label %if.then57, label %if.else

if.then57:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %63 = call i32 @llvm.bswap.i32(i32 %crc.0.lcssa)
  %data_crc58 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1, i32 0, i32 2
  %64 = ptrtoint ptr %data_crc58 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %data_crc58, align 1
  br label %if.end61

if.else:                                          ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  %flags59 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1, i32 0, i32 4
  %65 = ptrtoint ptr %flags59 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags59, align 1
  %67 = or i8 %66, 2
  store i8 %67, ptr %flags59, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then57
  %out_skip.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %con_out_kvec_reset.exit, label %do.body3.i, !prof !338

do.body3.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_reset.exit:                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %70 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %out_kvec_left.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %out_kvec_left.i, align 4
  %out_kvec_bytes.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %72 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %out_kvec_bytes.i, align 4
  %out_kvec_cur.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %73 = ptrtoint ptr %out_kvec_cur.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %out_kvec_cur.i, align 8
  call fastcc void @prepare_write_message_footer(ptr noundef %con)
  br label %cleanup62

cleanup62:                                        ; preds = %con_out_kvec_reset.exit, %cleanup.thread, %do.end.cleanup62_crit_edge
  %retval.2 = phi i32 [ 1, %con_out_kvec_reset.exit ], [ -22, %do.end.cleanup62_crit_edge ], [ %spec.store.select.i, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_con_flag_test_and_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_write_keepalive(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_write_keepalive.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_write_keepalive, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_write_keepalive.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.166, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 308, ptr noundef %con) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out_skip.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %con_out_kvec_reset.exit, label %do.body3.i, !prof !338

do.body3.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_reset.exit:                          ; preds = %do.end
  %2 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %out_kvec_left.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %out_kvec_left.i, align 4
  %out_kvec_bytes.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %4 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %out_kvec_bytes.i, align 4
  %out_kvec_cur.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %5 = ptrtoint ptr %out_kvec_cur.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %out_kvec_cur.i, align 8
  %peer_features = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 11
  %6 = ptrtoint ptr %peer_features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %peer_features, align 8
  %and = and i64 %7, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  br i1 %tobool4.not, label %con_out_kvec_add.exit46, label %if.then5

if.then5:                                         ; preds = %con_out_kvec_reset.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #8
  %8 = call ptr @memset(ptr %now, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %now) #8
  %9 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %out_kvec_left.i, align 4
  %11 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i18 = icmp eq i32 %12, 0
  br i1 %tobool.not.i18, label %do.body9.i, label %do.body3.i19, !prof !338

do.body3.i19:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp.i = icmp ugt i32 %10, 7
  br i1 %cmp.i, label %do.body17.i, label %con_out_kvec_add.exit, !prof !335

do.body17.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit:                            ; preds = %do.body9.i
  %arrayidx.i = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %10
  %iov_len.i = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %10, i32 1
  %13 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %iov_len.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tag_keepalive2, ptr %arrayidx.i, align 8
  %15 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out_kvec_left.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %out_kvec_left.i, align 4
  %17 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_kvec_bytes.i, align 4
  %add.i = add i32 %18, 1
  store i32 %add.i, ptr %out_kvec_bytes.i, align 4
  %out_temp_keepalive2 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 0, i32 1
  %19 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %now, align 8
  %conv.i = trunc i64 %20 to i32
  %21 = call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %22 = ptrtoint ptr %out_temp_keepalive2 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %out_temp_keepalive2, align 1
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %23 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tv_nsec.i, align 8
  %25 = call i32 @llvm.bswap.i32(i32 %24) #8
  %tv_nsec2.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1
  %26 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %tv_nsec2.i, align 1
  %27 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i23 = icmp eq i32 %28, 0
  br i1 %tobool.not.i23, label %do.body9.i26, label %do.body3.i24, !prof !338

do.body3.i24:                                     ; preds = %con_out_kvec_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i26:                                     ; preds = %con_out_kvec_add.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc.i)
  %cmp.i25 = icmp ugt i32 %inc.i, 7
  br i1 %cmp.i25, label %do.body17.i27, label %con_out_kvec_add.exit33, !prof !335

do.body17.i27:                                    ; preds = %do.body9.i26
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit33:                          ; preds = %do.body9.i26
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i28 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i
  %iov_len.i29 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i, i32 1
  %29 = ptrtoint ptr %iov_len.i29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8, ptr %iov_len.i29, align 4
  %30 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %out_temp_keepalive2, ptr %arrayidx.i28, align 8
  %31 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out_kvec_left.i, align 4
  %inc.i30 = add i32 %32, 1
  store i32 %inc.i30, ptr %out_kvec_left.i, align 4
  %33 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out_kvec_bytes.i, align 4
  %add.i32 = add i32 %34, 8
  store i32 %add.i32, ptr %out_kvec_bytes.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #8
  br label %if.end7

con_out_kvec_add.exit46:                          ; preds = %con_out_kvec_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %iov_len.i42 = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 3
  %35 = ptrtoint ptr %iov_len.i42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %iov_len.i42, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @tag_keepalive, ptr %2, align 8
  %37 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %out_kvec_left.i, align 4
  %38 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %out_kvec_bytes.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %con_out_kvec_add.exit46, %con_out_kvec_add.exit33
  call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_write_message(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %out_skip.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %con_out_kvec_reset.exit, label %do.body3.i, !prof !338

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #8, !srcloc !344
  unreachable

con_out_kvec_reset.exit:                          ; preds = %entry
  %2 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %out_kvec_left.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %out_kvec_left.i, align 4
  %out_kvec_bytes.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %4 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %out_kvec_bytes.i, align 4
  %out_kvec_cur.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %5 = ptrtoint ptr %out_kvec_cur.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %out_kvec_cur.i, align 8
  %out_msg_done = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %out_msg_done to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %out_msg_done, align 1
  %in_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 17
  %7 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %in_seq, align 8
  %in_seq_acked = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 18
  %9 = ptrtoint ptr %in_seq_acked to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %in_seq_acked, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %10)
  %cmp = icmp ugt i64 %8, %10
  br i1 %cmp, label %con_out_kvec_add.exit228, label %con_out_kvec_reset.exit.if.end_crit_edge

con_out_kvec_reset.exit.if.end_crit_edge:         ; preds = %con_out_kvec_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

con_out_kvec_add.exit228:                         ; preds = %con_out_kvec_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %in_seq_acked to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %8, ptr %in_seq_acked, align 8
  %iov_len.i = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %iov_len.i, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tag_ack, ptr %2, align 8
  %14 = tail call i64 @llvm.bswap.i64(i64 %8)
  %out_temp_ack = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 32, i32 7, i32 1
  %15 = ptrtoint ptr %out_temp_ack to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %out_temp_ack, align 8
  %arrayidx.i223 = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 4
  %iov_len.i224 = getelementptr %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 0, i32 5
  %16 = ptrtoint ptr %iov_len.i224 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %iov_len.i224, align 4
  %17 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %out_temp_ack, ptr %arrayidx.i223, align 8
  %18 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %out_kvec_left.i, align 4
  %19 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 9, ptr %out_kvec_bytes.i, align 4
  br label %if.end

if.end:                                           ; preds = %con_out_kvec_add.exit228, %con_out_kvec_reset.exit.if.end_crit_edge
  tail call void @ceph_con_get_out_msg(ptr noundef %con) #8
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %20 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out_msg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_write_message.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_write_message, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !334

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %out_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 16
  %22 = ptrtoint ptr %out_seq to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %out_seq, align 8
  %type = getelementptr inbounds %struct.ceph_msg_header, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type, align 4
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  %front_len = getelementptr inbounds %struct.ceph_msg_header, ptr %21, i32 0, i32 5
  %27 = ptrtoint ptr %front_len to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %front_len, align 2
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %middle_len = getelementptr inbounds %struct.ceph_msg_header, ptr %21, i32 0, i32 6
  %30 = ptrtoint ptr %middle_len to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %middle_len, align 2
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %21, i32 0, i32 4
  %33 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_write_message.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.169, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 219, ptr noundef %21, i64 noundef %23, i32 noundef %conv, i32 noundef %29, i32 noundef %32, i32 noundef %34) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %front = getelementptr inbounds %struct.ceph_msg, ptr %21, i32 0, i32 2
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %21, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iov_len, align 4
  %front_len13 = getelementptr inbounds %struct.ceph_msg_header, ptr %21, i32 0, i32 5
  %37 = ptrtoint ptr %front_len13 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %front_len13, align 2
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %39)
  %cmp14.not = icmp eq i32 %36, %39
  br i1 %cmp14.not, label %do.end.if.end37_crit_edge, label %do.end31, !prof !338

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 220, i32 noundef 9, ptr noundef null) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %do.end.if.end37_crit_edge
  %data_length46 = getelementptr inbounds %struct.ceph_msg, ptr %21, i32 0, i32 4
  %40 = ptrtoint ptr %data_length46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_length46, align 4
  %data_len = getelementptr inbounds %struct.ceph_msg_header, ptr %21, i32 0, i32 7
  %42 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %data_len, align 2
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %44)
  %cmp48.not = icmp eq i32 %41, %44
  br i1 %cmp48.not, label %if.end37.if.end71_crit_edge, label %do.end65, !prof !338

if.end37.if.end71_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end65:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 221, i32 noundef 9, ptr noundef null) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %if.end37.if.end71_crit_edge
  %45 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %out_kvec_left.i, align 4
  %47 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i231 = icmp eq i32 %48, 0
  br i1 %tobool.not.i231, label %do.body9.i234, label %do.body3.i232, !prof !338

do.body3.i232:                                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i234:                                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %46)
  %cmp.i233 = icmp ugt i32 %46, 7
  br i1 %cmp.i233, label %do.body17.i235, label %con_out_kvec_add.exit241, !prof !335

do.body17.i235:                                   ; preds = %do.body9.i234
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit241:                         ; preds = %do.body9.i234
  %arrayidx.i236 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %46
  %iov_len.i237 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %46, i32 1
  %49 = ptrtoint ptr %iov_len.i237 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %iov_len.i237, align 4
  %50 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tag_msg, ptr %arrayidx.i236, align 8
  %51 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %out_kvec_left.i, align 4
  %inc.i238 = add i32 %52, 1
  store i32 %inc.i238, ptr %out_kvec_left.i, align 4
  %53 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out_kvec_bytes.i, align 4
  %add.i240 = add i32 %54, 1
  store i32 %add.i240, ptr %out_kvec_bytes.i, align 4
  %out_hdr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 32, i32 0, i32 1
  %55 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i244 = icmp eq i32 %56, 0
  br i1 %tobool.not.i244, label %do.body9.i247, label %do.body3.i245, !prof !338

do.body3.i245:                                    ; preds = %con_out_kvec_add.exit241
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i247:                                    ; preds = %con_out_kvec_add.exit241
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc.i238)
  %cmp.i246 = icmp ugt i32 %inc.i238, 7
  br i1 %cmp.i246, label %do.body17.i248, label %con_out_kvec_add.exit254, !prof !335

do.body17.i248:                                   ; preds = %do.body9.i247
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit254:                         ; preds = %do.body9.i247
  %arrayidx.i249 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i238
  %iov_len.i250 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i238, i32 1
  %57 = ptrtoint ptr %iov_len.i250 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 53, ptr %iov_len.i250, align 4
  %58 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %out_hdr, ptr %arrayidx.i249, align 8
  %59 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out_kvec_left.i, align 4
  %inc.i251 = add i32 %60, 1
  store i32 %inc.i251, ptr %out_kvec_left.i, align 4
  %61 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %out_kvec_bytes.i, align 4
  %add.i253 = add i32 %62, 53
  store i32 %add.i253, ptr %out_kvec_bytes.i, align 4
  %63 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %iov_len, align 4
  %65 = ptrtoint ptr %front to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %front, align 4
  %67 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i257 = icmp eq i32 %68, 0
  br i1 %tobool.not.i257, label %do.body9.i260, label %do.body3.i258, !prof !338

do.body3.i258:                                    ; preds = %con_out_kvec_add.exit254
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i260:                                    ; preds = %con_out_kvec_add.exit254
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc.i251)
  %cmp.i259 = icmp ugt i32 %inc.i251, 7
  br i1 %cmp.i259, label %do.body17.i261, label %con_out_kvec_add.exit267, !prof !335

do.body17.i261:                                   ; preds = %do.body9.i260
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit267:                         ; preds = %do.body9.i260
  %arrayidx.i262 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i251
  %iov_len.i263 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i251, i32 1
  %69 = ptrtoint ptr %iov_len.i263 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %64, ptr %iov_len.i263, align 4
  %70 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %66, ptr %arrayidx.i262, align 8
  %71 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %out_kvec_left.i, align 4
  %inc.i264 = add i32 %72, 1
  store i32 %inc.i264, ptr %out_kvec_left.i, align 4
  %73 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %out_kvec_bytes.i, align 4
  %add.i266 = add i32 %74, %64
  store i32 %add.i266, ptr %out_kvec_bytes.i, align 4
  %middle = getelementptr inbounds %struct.ceph_msg, ptr %21, i32 0, i32 3
  %75 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %middle, align 4
  %tobool82.not = icmp eq ptr %76, null
  br i1 %tobool82.not, label %con_out_kvec_add.exit267.if.end89_crit_edge, label %if.then83

con_out_kvec_add.exit267.if.end89_crit_edge:      ; preds = %con_out_kvec_add.exit267
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then83:                                        ; preds = %con_out_kvec_add.exit267
  %vec = getelementptr inbounds %struct.ceph_buffer, ptr %76, i32 0, i32 1
  %iov_len85 = getelementptr inbounds %struct.ceph_buffer, ptr %76, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %iov_len85 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iov_len85, align 4
  %79 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vec, align 4
  %81 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i270 = icmp eq i32 %82, 0
  br i1 %tobool.not.i270, label %do.body9.i273, label %do.body3.i271, !prof !338

do.body3.i271:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i273:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc.i264)
  %cmp.i272 = icmp ugt i32 %inc.i264, 7
  br i1 %cmp.i272, label %do.body17.i274, label %con_out_kvec_add.exit280, !prof !335

do.body17.i274:                                   ; preds = %do.body9.i273
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit280:                         ; preds = %do.body9.i273
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i275 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i264
  %iov_len.i276 = getelementptr [8 x %struct.kvec], ptr %2, i32 0, i32 %inc.i264, i32 1
  %83 = ptrtoint ptr %iov_len.i276 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %78, ptr %iov_len.i276, align 4
  %84 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %80, ptr %arrayidx.i275, align 8
  %85 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %out_kvec_left.i, align 4
  %inc.i277 = add i32 %86, 1
  store i32 %inc.i277, ptr %out_kvec_left.i, align 4
  %87 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %out_kvec_bytes.i, align 4
  %add.i279 = add i32 %88, %78
  store i32 %add.i279, ptr %out_kvec_bytes.i, align 4
  br label %if.end89

if.end89:                                         ; preds = %con_out_kvec_add.exit280, %con_out_kvec_add.exit267.if.end89_crit_edge
  %call91 = tail call i32 @crc32c(i32 noundef 0, ptr noundef %21, i32 noundef 49) #8
  %89 = tail call i32 @llvm.bswap.i32(i32 %call91)
  %90 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %out_msg, align 4
  %crc94 = getelementptr inbounds %struct.ceph_msg_header, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %crc94 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %89, ptr %crc94, align 1
  %93 = load ptr, ptr %out_msg, align 4
  %94 = call ptr @memcpy(ptr %out_hdr, ptr %93, i32 53)
  %95 = ptrtoint ptr %front to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %front, align 4
  %97 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %iov_len, align 4
  %call102 = tail call i32 @crc32c(i32 noundef 0, ptr noundef %96, i32 noundef %98) #8
  %99 = tail call i32 @llvm.bswap.i32(i32 %call102)
  %100 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %out_msg, align 4
  %102 = getelementptr inbounds %struct.ceph_msg, ptr %101, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %99, ptr %102, align 1
  %104 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %middle, align 4
  %tobool105.not = icmp eq ptr %105, null
  br i1 %tobool105.not, label %if.end89.do.body118_crit_edge, label %if.then106

if.end89.do.body118_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

if.then106:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %vec108 = getelementptr inbounds %struct.ceph_buffer, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %vec108 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vec108, align 4
  %iov_len112 = getelementptr inbounds %struct.ceph_buffer, ptr %105, i32 0, i32 1, i32 1
  %108 = ptrtoint ptr %iov_len112 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %iov_len112, align 4
  %call113 = tail call i32 @crc32c(i32 noundef 0, ptr noundef %107, i32 noundef %109) #8
  %110 = tail call i32 @llvm.bswap.i32(i32 %call113)
  br label %do.body118

do.body118:                                       ; preds = %if.then106, %if.end89.do.body118_crit_edge
  %.sink = phi i32 [ %110, %if.then106 ], [ 0, %if.end89.do.body118_crit_edge ]
  %111 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %out_msg, align 4
  %middle_crc = getelementptr inbounds %struct.ceph_msg, ptr %112, i32 0, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %middle_crc to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %.sink, ptr %middle_crc, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_write_message.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_write_message, %if.then130)) #8
          to label %do.end138 [label %if.then130], !srcloc !334

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %out_msg, align 4
  %116 = getelementptr inbounds %struct.ceph_msg, ptr %115, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %116, align 1
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %middle_crc135 = getelementptr inbounds %struct.ceph_msg, ptr %115, i32 0, i32 1, i32 0, i32 1
  %120 = ptrtoint ptr %middle_crc135 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %middle_crc135, align 1
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_write_message.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.171, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 248, ptr noundef nonnull @.str.167, i32 noundef %119, i32 noundef %122) #8
  br label %do.end138

do.end138:                                        ; preds = %if.then130, %do.body118
  %123 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %out_msg, align 4
  %flags = getelementptr inbounds %struct.ceph_msg, ptr %124, i32 0, i32 1, i32 0, i32 4
  %125 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %flags, align 1
  %126 = load ptr, ptr %out_msg, align 4
  %data_crc = getelementptr inbounds %struct.ceph_msg, ptr %126, i32 0, i32 1, i32 0, i32 2
  %127 = ptrtoint ptr %data_crc to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 0, ptr %data_crc, align 1
  %128 = ptrtoint ptr %data_length46 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %data_length46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool142.not = icmp eq i32 %129, 0
  br i1 %tobool142.not, label %if.else146, label %if.then143

if.then143:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %out_msg, align 4
  %cursor.i = getelementptr inbounds %struct.ceph_msg, ptr %131, i32 0, i32 8
  tail call void @ceph_msg_data_cursor_init(ptr noundef %cursor.i, ptr noundef %131, i32 noundef %129) #8
  %out_more = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 4
  %132 = ptrtoint ptr %out_more to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %out_more, align 8
  br label %if.end147

if.else146:                                       ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @prepare_write_message_footer(ptr noundef %con)
  br label %if.end147

if.end147:                                        ; preds = %if.else146, %if.then143
  tail call void @ceph_con_flag_set(ptr noundef %con, i32 noundef 2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_flag_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_v1_revoke(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %0 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_msg, align 4
  %2 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %out_skip = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %out_skip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !338

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1495, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %out_msg_done = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %out_msg_done to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %out_msg_done, align 1, !range !350
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool20.not = icmp eq i8 %6, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end
  %out_kvec_bytes.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %7 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out_kvec_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp sgt i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.then21.con_out_kvec_skip.exit_crit_edge

if.then21.con_out_kvec_skip.exit_crit_edge:       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %con_out_kvec_skip.exit

if.then.i:                                        ; preds = %if.then21
  %out_kvec_cur.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %9 = ptrtoint ptr %out_kvec_cur.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_kvec_cur.i, align 8
  %out_kvec_left.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out_kvec_left.i, align 4
  %sub.i = add i32 %12, -1
  %iov_len.i = getelementptr %struct.kvec, ptr %10, i32 %sub.i, i32 1
  %13 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp2.i = icmp slt i32 %8, %14
  br i1 %cmp2.i, label %do.body5.i, label %do.body11.i, !prof !335

do.body5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #8, !srcloc !353
  unreachable

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not.i = icmp eq i32 %12, 0
  br i1 %tobool13.not.i, label %do.body23.i, label %do.end31.i, !prof !335

do.body23.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #8, !srcloc !354
  unreachable

do.end31.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub33.i = sub i32 %8, %14
  %15 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub33.i, ptr %out_kvec_bytes.i, align 4
  %16 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i, ptr %out_kvec_left.i, align 4
  br label %con_out_kvec_skip.exit

con_out_kvec_skip.exit:                           ; preds = %do.end31.i, %if.then21.con_out_kvec_skip.exit_crit_edge
  %skip.0.i = phi i32 [ %14, %do.end31.i ], [ 0, %if.then21.con_out_kvec_skip.exit_crit_edge ]
  %17 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_skip, align 8
  br label %if.end59

if.else:                                          ; preds = %if.end
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool24.not = icmp eq i32 %20, 0
  br i1 %tobool24.not, label %do.end42, label %if.else.if.end48_crit_edge, !prof !335

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1500, i32 noundef 9, ptr noundef null) #8
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.else.if.end48_crit_edge
  %peer_features.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 11
  %21 = ptrtoint ptr %peer_features.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %peer_features.i, align 8
  %and.i = and i64 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 13, i32 21
  %23 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out_skip, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end48, %con_out_kvec_skip.exit
  %.sink = phi i32 [ %24, %if.end48 ], [ %skip.0.i, %con_out_kvec_skip.exit ]
  %cond.i.sink = phi i32 [ %cond.i, %if.end48 ], [ %18, %con_out_kvec_skip.exit ]
  %add58 = add i32 %cond.i.sink, %.sink
  %25 = ptrtoint ptr %out_skip to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add58, ptr %out_skip, align 8
  %data_length60 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %data_length60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_length60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool61.not = icmp eq i32 %27, 0
  br i1 %tobool61.not, label %if.end59.if.end65_crit_edge, label %if.then62

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %cursor = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cursor, align 4
  %add64 = add i32 %29, %add58
  %30 = ptrtoint ptr %out_skip to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add64, ptr %out_skip, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end59.if.end65_crit_edge
  %middle = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %middle, align 4
  %tobool66.not = icmp eq ptr %32, null
  br i1 %tobool66.not, label %if.end65.if.end71_crit_edge, label %if.then67

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then67:                                        ; preds = %if.end65
  %out_kvec_bytes.i110 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %33 = ptrtoint ptr %out_kvec_bytes.i110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %out_kvec_bytes.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i111 = icmp sgt i32 %34, 0
  br i1 %cmp.i111, label %if.then.i117, label %if.then67.con_out_kvec_skip.exit125_crit_edge

if.then67.con_out_kvec_skip.exit125_crit_edge:    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %con_out_kvec_skip.exit125

if.then.i117:                                     ; preds = %if.then67
  %out_kvec_cur.i112 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %35 = ptrtoint ptr %out_kvec_cur.i112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %out_kvec_cur.i112, align 8
  %out_kvec_left.i113 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %out_kvec_left.i113 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out_kvec_left.i113, align 4
  %sub.i114 = add i32 %38, -1
  %iov_len.i115 = getelementptr %struct.kvec, ptr %36, i32 %sub.i114, i32 1
  %39 = ptrtoint ptr %iov_len.i115 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iov_len.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %40)
  %cmp2.i116 = icmp slt i32 %34, %40
  br i1 %cmp2.i116, label %do.body5.i118, label %do.body11.i120, !prof !335

do.body5.i118:                                    ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #8, !srcloc !353
  unreachable

do.body11.i120:                                   ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool13.not.i119 = icmp eq i32 %38, 0
  br i1 %tobool13.not.i119, label %do.body23.i121, label %do.end31.i123, !prof !335

do.body23.i121:                                   ; preds = %do.body11.i120
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #8, !srcloc !354
  unreachable

do.end31.i123:                                    ; preds = %do.body11.i120
  call void @__sanitizer_cov_trace_pc() #10
  %sub33.i122 = sub i32 %34, %40
  %41 = ptrtoint ptr %out_kvec_bytes.i110 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub33.i122, ptr %out_kvec_bytes.i110, align 4
  %42 = ptrtoint ptr %out_kvec_left.i113 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.i114, ptr %out_kvec_left.i113, align 4
  br label %con_out_kvec_skip.exit125

con_out_kvec_skip.exit125:                        ; preds = %do.end31.i123, %if.then67.con_out_kvec_skip.exit125_crit_edge
  %skip.0.i124 = phi i32 [ %40, %do.end31.i123 ], [ 0, %if.then67.con_out_kvec_skip.exit125_crit_edge ]
  %43 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %out_skip, align 8
  %add70 = add i32 %44, %skip.0.i124
  store i32 %add70, ptr %out_skip, align 8
  br label %if.end71

if.end71:                                         ; preds = %con_out_kvec_skip.exit125, %if.end65.if.end71_crit_edge
  %out_kvec_bytes.i126 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %45 = ptrtoint ptr %out_kvec_bytes.i126 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %out_kvec_bytes.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i127 = icmp sgt i32 %46, 0
  br i1 %cmp.i127, label %if.then.i133, label %if.end71.con_out_kvec_skip.exit141_crit_edge

if.end71.con_out_kvec_skip.exit141_crit_edge:     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %con_out_kvec_skip.exit141

if.then.i133:                                     ; preds = %if.end71
  %out_kvec_cur.i128 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2
  %47 = ptrtoint ptr %out_kvec_cur.i128 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %out_kvec_cur.i128, align 8
  %out_kvec_left.i129 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %out_kvec_left.i129 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %out_kvec_left.i129, align 4
  %sub.i130 = add i32 %50, -1
  %iov_len.i131 = getelementptr %struct.kvec, ptr %48, i32 %sub.i130, i32 1
  %51 = ptrtoint ptr %iov_len.i131 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %iov_len.i131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %52)
  %cmp2.i132 = icmp slt i32 %46, %52
  br i1 %cmp2.i132, label %do.body5.i134, label %do.body11.i136, !prof !335

do.body5.i134:                                    ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #8, !srcloc !353
  unreachable

do.body11.i136:                                   ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool13.not.i135 = icmp eq i32 %50, 0
  br i1 %tobool13.not.i135, label %do.body23.i137, label %do.end31.i139, !prof !335

do.body23.i137:                                   ; preds = %do.body11.i136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 146, 0\0A.popsection", ""() #8, !srcloc !354
  unreachable

do.end31.i139:                                    ; preds = %do.body11.i136
  call void @__sanitizer_cov_trace_pc() #10
  %sub33.i138 = sub i32 %46, %52
  %53 = ptrtoint ptr %out_kvec_bytes.i126 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub33.i138, ptr %out_kvec_bytes.i126, align 4
  %54 = ptrtoint ptr %out_kvec_left.i129 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i130, ptr %out_kvec_left.i129, align 4
  br label %con_out_kvec_skip.exit141

con_out_kvec_skip.exit141:                        ; preds = %do.end31.i139, %if.end71.con_out_kvec_skip.exit141_crit_edge
  %skip.0.i140 = phi i32 [ %52, %do.end31.i139 ], [ 0, %if.end71.con_out_kvec_skip.exit141_crit_edge ]
  %55 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %out_skip, align 8
  %add74 = add i32 %56, %skip.0.i140
  store i32 %add74, ptr %out_skip, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_revoke.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_revoke, %if.then85)) #8
          to label %do.end90 [label %if.then85], !srcloc !334

if.then85:                                        ; preds = %con_out_kvec_skip.exit141
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %out_kvec_bytes.i126 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %out_kvec_bytes.i126, align 4
  %59 = ptrtoint ptr %out_skip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %out_skip, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_revoke.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.34, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1511, ptr noundef nonnull @.str.32, ptr noundef %con, i32 noundef %58, i32 noundef %60) #8
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %con_out_kvec_skip.exit141
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_v1_revoke_incoming(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %front_len1 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %0, i32 0, i32 18, i32 5
  %1 = ptrtoint ptr %front_len1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %front_len1, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %middle_len3 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %0, i32 0, i32 18, i32 6
  %4 = ptrtoint ptr %middle_len3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %middle_len3, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %data_len5 = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %0, i32 0, i32 18, i32 7
  %7 = ptrtoint ptr %data_len5 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %data_len5, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %in_base_pos = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %10 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_base_pos, align 8
  %12 = add i32 %3, %6
  %13 = add i32 %11, -74
  %14 = add i32 %12, %9
  %sub9 = sub i32 %13, %14
  store i32 %sub9, ptr %in_base_pos, align 8
  %in_tag = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30, i32 1
  %15 = ptrtoint ptr %in_tag to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %in_tag, align 4
  %in_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 17
  %16 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %in_seq, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %in_seq, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_v1_revoke_incoming.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_v1_revoke_incoming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %in_base_pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_v1_revoke_incoming.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 1531, ptr noundef nonnull @.str.35, ptr noundef %con, i32 noundef %19) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ceph_con_v1_opened(ptr nocapture noundef readonly %con) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %0 = ptrtoint ptr %connect_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connect_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ceph_con_v1_reset_session(ptr nocapture noundef writeonly %con) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connect_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %0 = ptrtoint ptr %connect_seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %connect_seq, align 8
  %peer_global_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 2
  %1 = ptrtoint ptr %peer_global_seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %peer_global_seq, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ceph_con_v1_reset_protocol(ptr nocapture noundef writeonly %con) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %out_skip = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %out_skip to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %out_skip, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_partial(ptr nocapture noundef %con, i32 noundef %end, i32 noundef %size, ptr noundef %object) unnamed_addr #0 align 64 {
entry:
  %iov.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_base_pos = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 30
  %0 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in_base_pos, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %end)
  %cmp16 = icmp slt i32 %1, %end
  br i1 %cmp16, label %while.body.lr.ph, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %2 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %end, %4
  %sub2 = sub i32 %size, %sub
  %5 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sock, align 4
  %add.ptr = getelementptr i8, ptr %object, i32 %sub2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #8
  %7 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %iov.i, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %9 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %spec.store.select = select i1 %tobool.not.i, i32 16480, i32 16448
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select, ptr %3, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %sub) #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %call.i = call i32 @sock_recvmsg(ptr noundef %6, ptr noundef nonnull %msg.i, i32 noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -11
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp3 = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp3, label %while.body.return_crit_edge, label %cleanup

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup:                                          ; preds = %while.body
  %13 = ptrtoint ptr %in_base_pos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_base_pos, align 8
  %add = add i32 %14, %spec.store.select.i
  store i32 %add, ptr %in_base_pos, align 8
  %cmp = icmp slt i32 %add, %end
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.return_crit_edge

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

return:                                           ; preds = %cleanup.return_crit_edge, %while.body.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi i32 [ 1, %entry.return_crit_edge ], [ %spec.store.select.i, %while.body.return_crit_edge ], [ 1, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_addr_is_blank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pr_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_addr_set_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_encode_my_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_get_global_seq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_flag_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_entity_type_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_reset_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_con_in_msg_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_partial_message_section(ptr nocapture noundef readonly %con, ptr noundef %section, i32 noundef %sec_len, ptr nocapture noundef writeonly %crc) unnamed_addr #0 align 64 {
entry:
  %iov.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %section, null
  br i1 %tobool.not, label %do.body4, label %while.cond.preheader, !prof !335

while.cond.preheader:                             ; preds = %entry
  %iov_len = getelementptr inbounds %struct.kvec, ptr %section, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sec_len)
  %cmp59 = icmp ult i32 %1, %sec_len
  br i1 %cmp59, label %do.body10.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body10.lr.ph:                                  ; preds = %while.cond.preheader
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %2 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %3 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  br label %do.body10

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 976, 0\0A.popsection", ""() #8, !srcloc !355
  unreachable

do.body10:                                        ; preds = %if.end33.do.body10_crit_edge, %do.body10.lr.ph
  %4 = phi i32 [ %1, %do.body10.lr.ph ], [ %add, %if.end33.do.body10_crit_edge ]
  %5 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %section, align 4
  %cmp11 = icmp eq ptr %6, null
  br i1 %cmp11, label %do.body19, label %do.end27, !prof !335

do.body19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 979, 0\0A.popsection", ""() #8, !srcloc !356
  unreachable

do.end27:                                         ; preds = %do.body10
  %sub = sub i32 %sec_len, %4
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #8
  %9 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %iov.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %11 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %tobool.not.i = icmp eq ptr %add.ptr, null
  %spec.store.select = select i1 %tobool.not.i, i32 16480, i32 16448
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %3, align 4
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %sub) #8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %call.i = call i32 @sock_recvmsg(ptr noundef %8, ptr noundef nonnull %msg.i, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -11
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp31 = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp31, label %do.end27.cleanup_crit_edge, label %if.end33

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %do.end27
  %15 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iov_len, align 4
  %add = add i32 %16, %spec.store.select.i
  store i32 %add, ptr %iov_len, align 4
  %cmp = icmp ult i32 %add, %sec_len
  br i1 %cmp, label %if.end33.do.body10_crit_edge, label %if.end33.while.end_crit_edge

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end33.do.body10_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

while.end:                                        ; preds = %if.end33.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %while.cond.preheader.while.end_crit_edge ], [ %add, %if.end33.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %sec_len)
  %cmp36 = icmp eq i32 %.lcssa, %sec_len
  br i1 %cmp36, label %if.then37, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %section to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %section, align 4
  %call40 = call i32 @crc32c(i32 noundef 0, ptr noundef %18, i32 noundef %sec_len) #8
  %19 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call40, ptr %crc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %while.end.cleanup_crit_edge, %do.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then37 ], [ 1, %while.end.cleanup_crit_edge ], [ %spec.store.select.i, %do.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_partial_msg_data_bounce(ptr nocapture noundef %con) unnamed_addr #0 align 64 {
entry:
  %bvec.i = alloca %struct.bio_vec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %off = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %0 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_msg, align 8
  %cursor1 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off) #8
  %2 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %off, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %len, align 4, !annotation !341
  %bounce_page = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 21
  %4 = ptrtoint ptr %bounce_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bounce_page, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge, !prof !335

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %6 = ptrtoint ptr %bounce_page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38.i.i.i, ptr %bounce_page, align 8
  %tobool7.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool7.not, label %do.end, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #11
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %in_data_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 24
  %7 = ptrtoint ptr %in_data_crc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in_data_crc, align 4
  %9 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cursor1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool11.not5860 = icmp eq i32 %10, 0
  br i1 %tobool11.not5860, label %if.end10.while.end_crit_edge, label %while.body.lr.ph.lr.ph

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end10
  %resid = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8, i32 2
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %11 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 2
  %13 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %memcpy_to_page.exit.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %crc.0.ph61 = phi i32 [ %8, %while.body.lr.ph.lr.ph ], [ %call23, %memcpy_to_page.exit.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then13.while.body_crit_edge, %while.body.lr.ph
  %14 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  call void @ceph_msg_data_advance(ptr noundef %cursor1, i32 noundef 0) #8
  %16 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cursor1, align 4
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %if.then13.while.end_crit_edge, label %if.then13.while.body_crit_edge

if.then13.while.body_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then13.while.end_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end14:                                         ; preds = %while.body
  %call15 = call ptr @ceph_msg_data_next(ptr noundef %cursor1, ptr noundef nonnull %off, ptr noundef nonnull %len, ptr noundef null) #8
  %18 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sock, align 4
  %20 = ptrtoint ptr %bounce_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bounce_page, align 8
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i) #8
  %24 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %bvec.i, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %11, align 4
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %27 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16448, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %23)
  %cmp.i = icmp ugt i32 %23, 4096
  br i1 %cmp.i, label %do.body2.i, label %ceph_tcp_recvpage.exit, !prof !335

do.body2.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #8, !srcloc !357
  unreachable

ceph_tcp_recvpage.exit:                           ; preds = %if.end14
  call void @iov_iter_bvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %bvec.i, i32 noundef 1, i32 noundef %23) #8
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %13, align 4
  %call.i = call i32 @sock_recvmsg(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, -11
  %spec.store.select.i = select i1 %cmp8.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp, label %if.then18, label %if.end20

if.then18:                                        ; preds = %ceph_tcp_recvpage.exit
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %in_data_crc to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %crc.0.ph61, ptr %in_data_crc, align 4
  br label %cleanup

if.end20:                                         ; preds = %ceph_tcp_recvpage.exit
  %32 = ptrtoint ptr %bounce_page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bounce_page, align 8
  %call22 = call ptr @page_address(ptr noundef %33) #8
  %call23 = call i32 @crc32c(i32 noundef %crc.0.ph61, ptr noundef %call22, i32 noundef %spec.store.select.i) #8
  %34 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %off, align 4
  %36 = ptrtoint ptr %bounce_page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bounce_page, align 8
  %call25 = call ptr @page_address(ptr noundef %37) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %38 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %38, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %call15, i32 noundef %or.i.i) #8
  %add.i = add i32 %35, %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i52 = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i52, label %do.body2.i53, label %memcpy_to_page.exit, !prof !335

do.body2.i53:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #8, !srcloc !358
  unreachable

memcpy_to_page.exit:                              ; preds = %if.end20
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %35
  %39 = call ptr @memcpy(ptr %add.ptr.i, ptr %call25, i32 %spec.store.select.i)
  call void @flush_dcache_page(ptr noundef %call15) #8
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  call void @ceph_msg_data_advance(ptr noundef %cursor1, i32 noundef %spec.store.select.i) #8
  %40 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cursor1, align 4
  %tobool11.not58 = icmp eq i32 %41, 0
  br i1 %tobool11.not58, label %memcpy_to_page.exit.while.end_crit_edge, label %memcpy_to_page.exit.while.body.lr.ph_crit_edge

memcpy_to_page.exit.while.body.lr.ph_crit_edge:   ; preds = %memcpy_to_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

memcpy_to_page.exit.while.end_crit_edge:          ; preds = %memcpy_to_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %memcpy_to_page.exit.while.end_crit_edge, %if.then13.while.end_crit_edge, %if.end10.while.end_crit_edge
  %crc.0.ph.lcssa57 = phi i32 [ %8, %if.end10.while.end_crit_edge ], [ %crc.0.ph61, %if.then13.while.end_crit_edge ], [ %call23, %memcpy_to_page.exit.while.end_crit_edge ]
  %42 = ptrtoint ptr %in_data_crc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %crc.0.ph.lcssa57, ptr %in_data_crc, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then18, %do.end
  %retval.0 = phi i32 [ %spec.store.select.i, %if.then18 ], [ 1, %while.end ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_partial_msg_data(ptr nocapture noundef %con) unnamed_addr #0 align 64 {
entry:
  %bvec.i = alloca %struct.bio_vec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  %page_offset = alloca i32, align 4
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %0 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_msg, align 8
  %cursor1 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %2 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgr, align 8
  %options = getelementptr i8, ptr %3, i32 -176
  %4 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %options, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_offset) #8
  %8 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %page_offset, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #8
  %9 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %length, align 4, !annotation !341
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %in_data_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 24
  %10 = ptrtoint ptr %in_data_crc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_data_crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crc.0 = phi i32 [ %11, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cursor1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not5052 = icmp eq i32 %13, 0
  br i1 %tobool5.not5052, label %if.end.while.end_crit_edge, label %while.body.lr.ph.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %if.end
  %resid = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 8, i32 2
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %14 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.bio_vec, ptr %bvec.i, i32 0, i32 2
  %16 = getelementptr inbounds { ptr, i32, { i8, i8, i8, [1 x i8], i32, i32, %union.anon.23, %union.anon.24 }, %union.anon.54, i8, [3 x i8], i32, i32, ptr, [4 x i8] }, ptr %msg.i, i32 0, i32 7
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end19.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %crc.1.ph53 = phi i32 [ %crc.0, %while.body.lr.ph.lr.ph ], [ %crc.2, %if.end19.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then7.while.body_crit_edge, %while.body.lr.ph
  %17 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.body
  call void @ceph_msg_data_advance(ptr noundef %cursor1, i32 noundef 0) #8
  %19 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cursor1, align 4
  %tobool5.not = icmp eq i32 %20, 0
  br i1 %tobool5.not, label %if.then7.while.end_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then7.while.end_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end8:                                          ; preds = %while.body
  %call = call ptr @ceph_msg_data_next(ptr noundef %cursor1, ptr noundef nonnull %page_offset, ptr noundef nonnull %length, ptr noundef null) #8
  %21 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sock, align 4
  %23 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_offset, align 4
  %25 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvec.i) #8
  %27 = ptrtoint ptr %bvec.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %bvec.i, align 4
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %14, align 4
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %24, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %30 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16448, ptr %16, align 4
  %add.i = add i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.body2.i, label %ceph_tcp_recvpage.exit, !prof !335

do.body2.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #8, !srcloc !357
  unreachable

ceph_tcp_recvpage.exit:                           ; preds = %if.end8
  call void @iov_iter_bvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %bvec.i, i32 noundef 1, i32 noundef %26) #8
  %32 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %16, align 4
  %call.i = call i32 @sock_recvmsg(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, -11
  %spec.store.select.i = select i1 %cmp8.i, i32 0, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.store.select.i)
  %cmp = icmp slt i32 %spec.store.select.i, 1
  br i1 %cmp, label %if.then10, label %if.end15

if.then10:                                        ; preds = %ceph_tcp_recvpage.exit
  br i1 %tobool.not, label %if.then10.cleanup.sink.split_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %ceph_tcp_recvpage.exit
  br i1 %tobool.not, label %if.then17, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %page_offset, align 4
  %call18 = call i32 @ceph_crc32c_page(i32 noundef %crc.1.ph53, ptr noundef %call, i32 noundef %35, i32 noundef %spec.store.select.i) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %crc.2 = phi i32 [ %call18, %if.then17 ], [ %crc.1.ph53, %if.end15.if.end19_crit_edge ]
  call void @ceph_msg_data_advance(ptr noundef %cursor1, i32 noundef %spec.store.select.i) #8
  %36 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cursor1, align 4
  %tobool5.not50 = icmp eq i32 %37, 0
  br i1 %tobool5.not50, label %if.end19.while.end_crit_edge, label %if.end19.while.body.lr.ph_crit_edge

if.end19.while.body.lr.ph_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %if.then7.while.end_crit_edge, %if.end.while.end_crit_edge
  %crc.1.ph.lcssa49 = phi i32 [ %crc.0, %if.end.while.end_crit_edge ], [ %crc.1.ph53, %if.then7.while.end_crit_edge ], [ %crc.2, %if.end19.while.end_crit_edge ]
  br i1 %tobool.not, label %while.end.cleanup.sink.split_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %if.then10.cleanup.sink.split_crit_edge
  %crc.1.ph.lcssa49.sink = phi i32 [ %crc.1.ph53, %if.then10.cleanup.sink.split_crit_edge ], [ %crc.1.ph.lcssa49, %while.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %spec.store.select.i, %if.then10.cleanup.sink.split_crit_edge ], [ 1, %while.end.cleanup.sink.split_crit_edge ]
  %in_data_crc22 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 24
  %38 = ptrtoint ptr %in_data_crc22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %crc.1.ph.lcssa49.sink, ptr %in_data_crc22, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select.i, %if.then10.cleanup_crit_edge ], [ 1, %while.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_offset) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msg_data_cursor_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msg_data_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_msg_data_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_crc32c_page(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_discard_sent(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_discard_requeued(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prepare_write_message_footer(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %0 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out_msg, align 4
  %2 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1
  %flags = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 1
  %5 = or i8 %4, 1
  store i8 %5, ptr %flags, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @prepare_write_message_footer.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@prepare_write_message_footer, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @prepare_write_message_footer.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.163, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([24 x i8], ptr @.str.2, i32 0, i32 9), i32 noundef 178, ptr noundef %con) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %peer_features.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 11
  %6 = ptrtoint ptr %peer_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %peer_features.i, align 8
  %and.i = and i64 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 13, i32 21
  %out_kvec_left.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_kvec_left.i, align 4
  %out_skip.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %out_skip.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_skip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i34 = icmp eq i32 %11, 0
  br i1 %tobool.not.i34, label %do.body9.i, label %do.body3.i, !prof !338

do.body3.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !342
  unreachable

do.body9.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp.i = icmp ugt i32 %9, 7
  br i1 %cmp.i, label %do.body17.i, label %con_out_kvec_add.exit, !prof !335

do.body17.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger_v1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 126, 0\0A.popsection", ""() #8, !srcloc !343
  unreachable

con_out_kvec_add.exit:                            ; preds = %do.body9.i
  %12 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28
  %arrayidx.i = getelementptr [8 x %struct.kvec], ptr %12, i32 0, i32 %9
  %iov_len.i = getelementptr [8 x %struct.kvec], ptr %12, i32 0, i32 %9, i32 1
  %13 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond.i, ptr %iov_len.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %2, ptr %arrayidx.i, align 8
  %15 = ptrtoint ptr %out_kvec_left.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out_kvec_left.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %out_kvec_left.i, align 4
  %out_kvec_bytes.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 3
  %17 = ptrtoint ptr %out_kvec_bytes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_kvec_bytes.i, align 4
  %add.i = add i32 %18, %cond.i
  store i32 %add.i, ptr %out_kvec_bytes.i, align 4
  %19 = ptrtoint ptr %peer_features.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %peer_features.i, align 8
  %and = and i64 %20, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp eq i64 %and, 0
  br i1 %tobool6.not, label %if.else14, label %if.then7

if.then7:                                         ; preds = %con_out_kvec_add.exit
  %ops = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %sign_message = getelementptr inbounds %struct.ceph_connection_operations, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %sign_message to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sign_message, align 4
  %tobool8.not = icmp eq ptr %24, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 %24(ptr noundef %1) #8
  br label %if.end17

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %sig = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %sig to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %sig, align 1
  br label %if.end17

if.else14:                                        ; preds = %con_out_kvec_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 1
  %flags16 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %flags16 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %flags16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.else, %if.then9
  %more_to_follow = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %more_to_follow to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %more_to_follow, align 4, !range !350
  %out_more = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 4
  %31 = ptrtoint ptr %out_more to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %out_more, align 8
  %out_msg_done = getelementptr inbounds %struct.ceph_connection_v1_info, ptr %12, i32 0, i32 6
  %32 = ptrtoint ptr %out_msg_done to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %out_msg_done, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_get_out_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !134, !135, !136, !138, !140, !141, !142, !144, !146, !147, !148, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !259, !260, !261, !262, !264, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !302, !304, !306, !308, !309, !310, !311, !313, !314, !315, !317, !319, !321, !322, !323}
!llvm.named.register.sp = !{!324}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/messenger_v1.c", i32 1255, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug497, !1, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/messenger_v1.c", i32 1263, i32 2}
!10 = !{ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug498, !9, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ceph/messenger_v1.c", i32 1309, i32 3}
!14 = !{ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug499, !13, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ceph/messenger_v1.c", i32 1321, i32 3}
!18 = !{ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug500, !17, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ceph/messenger_v1.c", i32 1345, i32 22}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ceph/messenger_v1.c", i32 1351, i32 22}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ceph/messenger_v1.c", i32 1383, i32 2}
!26 = !{ptr @ceph_con_v1_try_read.__UNIQUE_ID_ddebug501, !25, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!27 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ceph/messenger_v1.c", i32 1387, i32 2}
!30 = !{ptr @ceph_con_v1_try_read._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ceph_con_v1_try_read._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ceph/messenger_v1.c", i32 1388, i32 19}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ceph/messenger_v1.c", i32 1401, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug502, !35, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!38 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ceph/messenger_v1.c", i32 1419, i32 3}
!41 = !{ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug503, !40, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!42 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ceph/messenger_v1.c", i32 1423, i32 21}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ceph/messenger_v1.c", i32 1429, i32 2}
!47 = !{ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug504, !46, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!48 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/ceph/messenger_v1.c", i32 1458, i32 4}
!51 = !{ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug505, !50, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!52 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ceph/messenger_v1.c", i32 1484, i32 2}
!55 = !{ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug506, !54, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!56 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/ceph/messenger_v1.c", i32 1487, i32 2}
!59 = !{ptr @ceph_con_v1_try_write.__UNIQUE_ID_ddebug507, !58, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!60 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ceph/messenger_v1.c", i32 1510, i32 2}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ceph_con_v1_revoke.__UNIQUE_ID_ddebug508, !62, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!65 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/ceph/messenger_v1.c", i32 1531, i32 2}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ceph_con_v1_revoke_incoming.__UNIQUE_ID_ddebug509, !67, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!70 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/ceph/messenger_v1.c", i32 628, i32 2}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @read_partial_banner.__UNIQUE_ID_ddebug482, !72, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!75 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/ceph/decode.h", i32 238, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/ceph/messenger_v1.c", i32 711, i32 2}
!80 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @process_banner.__UNIQUE_ID_ddebug485, !79, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!82 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ceph/messenger_v1.c", i32 725, i32 3}
!85 = !{ptr @process_banner._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @process_banner._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/ceph/messenger_v1.c", i32 730, i32 20}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/ceph/messenger_v1.c", i32 743, i32 3}
!91 = !{ptr @process_banner.__UNIQUE_ID_ddebug486, !90, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!92 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/ceph/messenger_v1.c", i32 698, i32 32}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/ceph/messenger_v1.c", i32 699, i32 3}
!97 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @verify_hello._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @verify_hello._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/ceph/messenger_v1.c", i32 701, i32 20}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/ceph/messenger_v1.c", i32 396, i32 2}
!104 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @prepare_write_connect.__UNIQUE_ID_ddebug467, !103, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!106 = !{ptr @.str.55, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/ceph/messenger_v1.c", i32 563, i32 2}
!109 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @prepare_read_connect.__UNIQUE_ID_ddebug476, !108, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!111 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/ceph/messenger_v1.c", i32 661, i32 2}
!114 = !{ptr @.str.60, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @read_partial_connect.__UNIQUE_ID_ddebug483, !113, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!116 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/ceph/messenger_v1.c", i32 672, i32 4}
!119 = !{ptr @read_partial_connect._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @read_partial_connect._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/ceph/messenger_v1.c", i32 685, i32 2}
!123 = !{ptr @read_partial_connect.__UNIQUE_ID_ddebug484, !122, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!124 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/ceph/messenger_v1.c", i32 757, i32 2}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @process_connect.__UNIQUE_ID_ddebug487, !126, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!129 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/ceph/messenger_v1.c", i32 785, i32 22}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/ceph/messenger_v1.c", i32 793, i32 3}
!134 = !{ptr @process_connect._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @process_connect._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/ceph/messenger_v1.c", i32 798, i32 20}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/ceph/messenger_v1.c", i32 802, i32 3}
!140 = !{ptr @process_connect._entry.71, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @process_connect._entry_ptr.73, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/ceph/messenger_v1.c", i32 808, i32 20}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ceph/messenger_v1.c", i32 813, i32 3}
!146 = !{ptr @process_connect.__UNIQUE_ID_ddebug488, !145, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!147 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/ceph/messenger_v1.c", i32 816, i32 21}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/ceph/messenger_v1.c", i32 834, i32 3}
!152 = !{ptr @process_connect.__UNIQUE_ID_ddebug489, !151, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!153 = !{ptr @.str.79, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/ceph/messenger_v1.c", i32 836, i32 3}
!156 = !{ptr @process_connect._entry.80, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @process_connect._entry_ptr.82, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/ceph/messenger_v1.c", i32 860, i32 3}
!160 = !{ptr @process_connect.__UNIQUE_ID_ddebug490, !159, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!161 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/ceph/messenger_v1.c", i32 876, i32 3}
!164 = !{ptr @process_connect.__UNIQUE_ID_ddebug491, !163, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!165 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/ceph/messenger_v1.c", i32 891, i32 4}
!168 = !{ptr @process_connect._entry.87, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @process_connect._entry_ptr.89, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/ceph/messenger_v1.c", i32 907, i32 3}
!172 = !{ptr @process_connect.__UNIQUE_ID_ddebug492, !171, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!173 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.92, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/ceph/messenger_v1.c", i32 934, i32 20}
!176 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/ceph/messenger_v1.c", i32 938, i32 20}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/ceph/messenger_v1.c", i32 290, i32 2}
!180 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @prepare_write_seq.__UNIQUE_ID_ddebug465, !179, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!182 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/ceph/messenger_v1.c", i32 575, i32 2}
!185 = !{ptr @.str.98, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @prepare_read_seq.__UNIQUE_ID_ddebug478, !184, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!187 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/ceph/messenger_v1.c", i32 598, i32 2}
!190 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @prepare_read_message.__UNIQUE_ID_ddebug481, !189, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!192 = !{ptr @.str.102, !189, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.103, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/ceph/messenger_v1.c", i32 569, i32 2}
!195 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @prepare_read_ack.__UNIQUE_ID_ddebug477, !194, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!197 = !{ptr @.str.105, !194, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.106, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/ceph/messenger_v1.c", i32 589, i32 2}
!200 = !{ptr @.str.107, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @prepare_read_keepalive_ack.__UNIQUE_ID_ddebug480, !199, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!202 = !{ptr @.str.108, !199, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/ceph/messenger_v1.c", i32 1085, i32 2}
!205 = !{ptr @.str.110, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @read_partial_message.__UNIQUE_ID_ddebug493, !204, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!207 = !{ptr @.str.111, !204, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/ceph/messenger_v1.c", i32 1096, i32 3}
!210 = !{ptr @read_partial_message._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @read_partial_message._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.114, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/ceph/messenger_v1.c", i32 1114, i32 3}
!214 = !{ptr @read_partial_message._entry.113, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @read_partial_message._entry_ptr.115, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.117, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/ceph/messenger_v1.c", i32 1123, i32 3}
!218 = !{ptr @read_partial_message._entry.116, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @read_partial_message._entry_ptr.118, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.119, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/ceph/messenger_v1.c", i32 1125, i32 20}
!222 = !{ptr @.str.120, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/ceph/messenger_v1.c", i32 1133, i32 3}
!224 = !{ptr @read_partial_message.__UNIQUE_ID_ddebug494, !223, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!225 = !{ptr @.str.121, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.122, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/ceph/messenger_v1.c", i32 1142, i32 4}
!228 = !{ptr @read_partial_message.__UNIQUE_ID_ddebug495, !227, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!229 = !{ptr @.str.123, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../net/ceph/messenger_v1.c", i32 1203, i32 2}
!232 = !{ptr @read_partial_message.__UNIQUE_ID_ddebug496, !231, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!233 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.127, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../net/ceph/messenger_v1.c", i32 1209, i32 3}
!236 = !{ptr @read_partial_message._entry.126, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @read_partial_message._entry_ptr.128, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.130, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/ceph/messenger_v1.c", i32 1214, i32 3}
!240 = !{ptr @read_partial_message._entry.129, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @read_partial_message._entry_ptr.131, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.133, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../net/ceph/messenger_v1.c", i32 1221, i32 3}
!244 = !{ptr @read_partial_message._entry.132, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @read_partial_message._entry_ptr.134, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.136, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../net/ceph/messenger_v1.c", i32 1228, i32 3}
!248 = !{ptr @read_partial_message._entry.135, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @read_partial_message._entry_ptr.137, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.138, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/ceph/messenger_v1.c", i32 1041, i32 4}
!252 = !{ptr @.str.139, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @read_partial_msg_data_bounce._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @read_partial_msg_data_bounce._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = distinct !{null, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!257 = !{ptr @.str.141, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../net/ceph/messenger_v1.c", i32 582, i32 2}
!259 = !{ptr @.str.142, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @prepare_read_tag.__UNIQUE_ID_ddebug479, !258, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!261 = !{ptr @.str.143, !258, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.144, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../net/ceph/messenger_v1.c", i32 557, i32 2}
!264 = !{ptr @.str.145, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @prepare_read_banner.__UNIQUE_ID_ddebug475, !263, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!266 = !{ptr @.str.146, !263, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.147, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../net/ceph/messenger_v1.c", i32 425, i32 2}
!269 = !{ptr @.str.148, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @write_partial_kvec.__UNIQUE_ID_ddebug468, !268, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!271 = !{ptr @.str.149, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.150, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../net/ceph/messenger_v1.c", i32 453, i32 2}
!274 = !{ptr @write_partial_kvec.__UNIQUE_ID_ddebug469, !273, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!275 = !{ptr @.str.151, !273, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.152, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../net/ceph/messenger_v1.c", i32 535, i32 2}
!278 = !{ptr @.str.153, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @write_partial_skip.__UNIQUE_ID_ddebug472, !277, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!280 = !{ptr @.str.154, !277, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.155, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../include/linux/page-flags.h", i32 428, i32 1}
!283 = !{ptr @.str.156, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../net/ceph/messenger_v1.c", i32 473, i32 2}
!285 = !{ptr @.str.157, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @write_partial_message_data.__UNIQUE_ID_ddebug470, !284, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!287 = !{ptr @.str.158, !284, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.159, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../net/ceph/messenger_v1.c", i32 514, i32 2}
!290 = !{ptr @write_partial_message_data.__UNIQUE_ID_ddebug471, !289, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!291 = !{ptr @.str.160, !289, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.161, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../net/ceph/messenger_v1.c", i32 178, i32 2}
!294 = !{ptr @.str.162, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @prepare_write_message_footer.__UNIQUE_ID_ddebug461, !293, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!296 = !{ptr @.str.163, !293, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.164, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../net/ceph/messenger_v1.c", i32 308, i32 2}
!299 = !{ptr @.str.165, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @prepare_write_keepalive.__UNIQUE_ID_ddebug466, !298, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!301 = !{ptr @.str.166, !298, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @tag_keepalive2, !303, !"tag_keepalive2", i1 false, i1 false}
!303 = !{!"../net/ceph/messenger_v1.c", i32 19, i32 13}
!304 = !{ptr @tag_keepalive, !305, !"tag_keepalive", i1 false, i1 false}
!305 = !{!"../net/ceph/messenger_v1.c", i32 18, i32 13}
!306 = !{ptr @.str.167, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../net/ceph/messenger_v1.c", i32 216, i32 2}
!308 = !{ptr @.str.168, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @prepare_write_message.__UNIQUE_ID_ddebug462, !307, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!310 = !{ptr @.str.169, !307, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.170, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../net/ceph/messenger_v1.c", i32 246, i32 2}
!313 = !{ptr @prepare_write_message.__UNIQUE_ID_ddebug463, !312, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!314 = !{ptr @.str.171, !312, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @tag_ack, !316, !"tag_ack", i1 false, i1 false}
!316 = !{!"../net/ceph/messenger_v1.c", i32 17, i32 13}
!317 = !{ptr @tag_msg, !318, !"tag_msg", i1 false, i1 false}
!318 = !{!"../net/ceph/messenger_v1.c", i32 16, i32 13}
!319 = !{ptr @.str.172, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../net/ceph/messenger_v1.c", i32 269, i32 2}
!321 = !{ptr @.str.173, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @prepare_write_ack.__UNIQUE_ID_ddebug464, !320, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!323 = !{ptr @.str.174, !320, !"<string literal>", i1 false, i1 false}
!324 = !{!"sp"}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 1, !"min_enum_size", i32 4}
!327 = !{i32 8, !"branch-target-enforcement", i32 0}
!328 = !{i32 8, !"sign-return-address", i32 0}
!329 = !{i32 8, !"sign-return-address-all", i32 0}
!330 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!331 = !{i32 7, !"uwtable", i32 1}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!334 = !{i64 2148549019, i64 2148549024, i64 2148549037, i64 2148549081, i64 2148549115, i64 2148549136}
!335 = !{!"branch_weights", i32 1, i32 2000}
!336 = !{i64 2157440383, i64 2157440872, i64 2157440420, i64 2157440476, i64 2157440510, i64 2157440534, i64 2157440575, i64 2157440596, i64 2157440624, i64 2157440658}
!337 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!338 = !{!"branch_weights", i32 2000, i32 1}
!339 = !{i64 2157327003, i64 2157327491, i64 2157327040, i64 2157327096, i64 2157327130, i64 2157327154, i64 2157327195, i64 2157327216, i64 2157327244, i64 2157327278}
!340 = !{i64 2157273023, i64 2157273511, i64 2157273060, i64 2157273116, i64 2157273150, i64 2157273174, i64 2157273215, i64 2157273236, i64 2157273264, i64 2157273298}
!341 = !{!"auto-init"}
!342 = !{i64 2157242260, i64 2157242748, i64 2157242297, i64 2157242353, i64 2157242387, i64 2157242411, i64 2157242452, i64 2157242473, i64 2157242501, i64 2157242535}
!343 = !{i64 2157244676, i64 2157245164, i64 2157244713, i64 2157244769, i64 2157244803, i64 2157244827, i64 2157244868, i64 2157244889, i64 2157244917, i64 2157244951}
!344 = !{i64 2157240660, i64 2157241148, i64 2157240697, i64 2157240753, i64 2157240787, i64 2157240811, i64 2157240852, i64 2157240873, i64 2157240901, i64 2157240935}
!345 = !{i64 2157415466, i64 2157415955, i64 2157415503, i64 2157415559, i64 2157415593, i64 2157415617, i64 2157415658, i64 2157415679, i64 2157415707, i64 2157415741}
!346 = !{i64 2157421699, i64 2157422188, i64 2157421736, i64 2157421792, i64 2157421826, i64 2157421850, i64 2157421891, i64 2157421912, i64 2157421940, i64 2157421974}
!347 = !{i64 2157459766, i64 2157460255, i64 2157459803, i64 2157459859, i64 2157459893, i64 2157459917, i64 2157459958, i64 2157459979, i64 2157460007, i64 2157460041}
!348 = !{i64 2157461361, i64 2157461850, i64 2157461398, i64 2157461454, i64 2157461488, i64 2157461512, i64 2157461553, i64 2157461574, i64 2157461602, i64 2157461636}
!349 = !{i64 2157469395, i64 2157469884, i64 2157469432, i64 2157469488, i64 2157469522, i64 2157469546, i64 2157469587, i64 2157469608, i64 2157469636, i64 2157469670}
!350 = !{i8 0, i8 2}
!351 = !{i64 2157287962, i64 2157288450, i64 2157287999, i64 2157288055, i64 2157288089, i64 2157288113, i64 2157288154, i64 2157288175, i64 2157288203, i64 2157288237}
!352 = !{i64 2150830765, i64 2150831256, i64 2150830802, i64 2150830858, i64 2150830892, i64 2150830916, i64 2150830957, i64 2150830978, i64 2150831006, i64 2150831040}
!353 = !{i64 2157246302, i64 2157246790, i64 2157246339, i64 2157246395, i64 2157246429, i64 2157246453, i64 2157246494, i64 2157246515, i64 2157246543, i64 2157246577}
!354 = !{i64 2157247914, i64 2157248402, i64 2157247951, i64 2157248007, i64 2157248041, i64 2157248065, i64 2157248106, i64 2157248127, i64 2157248155, i64 2157248189}
!355 = !{i64 2157389302, i64 2157389790, i64 2157389339, i64 2157389395, i64 2157389429, i64 2157389453, i64 2157389494, i64 2157389515, i64 2157389543, i64 2157389577}
!356 = !{i64 2157395007, i64 2157395495, i64 2157395044, i64 2157395100, i64 2157395134, i64 2157395158, i64 2157395199, i64 2157395220, i64 2157395248, i64 2157395282}
!357 = !{i64 2157239014, i64 2157239501, i64 2157239051, i64 2157239107, i64 2157239141, i64 2157239165, i64 2157239206, i64 2157239227, i64 2157239255, i64 2157239289}
!358 = !{i64 2153715551, i64 2153716039, i64 2153715588, i64 2153715644, i64 2153715678, i64 2153715702, i64 2153715743, i64 2153715764, i64 2153715792, i64 2153715826}
