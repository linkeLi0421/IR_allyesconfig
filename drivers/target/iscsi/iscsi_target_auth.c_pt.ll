; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_auth.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_auth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_chap = type { i8, [32 x i8], i32, ptr, i32, i32, i32, [72 x i8] }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@chap_server_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CHAP user or password not set for Initiator ACL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chap_server_open\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/target/iscsi/iscsi_target_auth.c\00", [55 x i8] zeroinitializer }, align 32
@chap_server_open._entry_ptr = internal global ptr @chap_server_open._entry, section ".printk_index", align 4
@chap_server_open._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Unsupported CHAP_A value\0A\00", [36 x i8] zeroinitializer }, align 32
@chap_server_open._entry_ptr.5 = internal global ptr @chap_server_open._entry.3, section ".printk_index", align 4
@chap_server_open.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[server] Got CHAP_A=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAP_A=%d\00", [22 x i8] zeroinitializer }, align 32
@chap_server_open.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[server] Sending CHAP_A=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAP_I=%d\00", [22 x i8] zeroinitializer }, align 32
@chap_server_open.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[server] Sending CHAP_I=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@chap_check_algorithm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Memory allocation failed for CHAP_A temporary buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chap_check_algorithm\00", [43 x i8] zeroinitializer }, align 32
@chap_check_algorithm._entry_ptr = internal global ptr @chap_check_algorithm._entry, section ".printk_index", align 4
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_A\00", [25 x i8] zeroinitializer }, align 32
@chap_check_algorithm._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Unable to locate CHAP_A key\0A\00", [33 x i8] zeroinitializer }, align 32
@chap_check_algorithm._entry_ptr.18 = internal global ptr @chap_check_algorithm._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@chap_check_algorithm.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.13, ptr @.str.2, ptr @.str.20, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Selected %s Algorithm\0A\00", [41 x i8] zeroinitializer }, align 32
@chap_check_algorithm._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.13, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013failed to allocate %s algo\0A\00", [34 x i8] zeroinitializer }, align 32
@chap_check_algorithm._entry_ptr.23 = internal global ptr @chap_check_algorithm._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3-256\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CHAP_C=0x%s\00", [20 x i8] zeroinitializer }, align 32
@chap_gen_challenge.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chap_gen_challenge\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[%s] Sending CHAP_C=0x%s\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"server\00", [25 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to allocate the digest buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"chap_server_compute_hash\00", [39 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr = internal global ptr @chap_server_compute_hash._entry, section ".printk_index", align 4
@chap_server_compute_hash._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to allocate the response buffer\0A\00", [54 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.37 = internal global ptr @chap_server_compute_hash._entry.35, section ".printk_index", align 4
@chap_server_compute_hash._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to allocate the client_digest buffer\0A\00", [49 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.40 = internal global ptr @chap_server_compute_hash._entry.38, section ".printk_index", align 4
@chap_server_compute_hash._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to allocate the server_digest buffer\0A\00", [49 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.43 = internal global ptr @chap_server_compute_hash._entry.41, section ".printk_index", align 4
@chap_server_compute_hash._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to allocate challenge buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.46 = internal global ptr @chap_server_compute_hash._entry.44, section ".printk_index", align 4
@chap_server_compute_hash._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to allocate initiatorchg_binhex buffer\0A\00", [47 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.49 = internal global ptr @chap_server_compute_hash._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_N\00", [25 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.34, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Could not find CHAP_N.\0A\00", [38 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.53 = internal global ptr @chap_server_compute_hash._entry.51, section ".printk_index", align 4
@chap_server_compute_hash._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.34, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.55 = internal global ptr @chap_server_compute_hash._entry.54, section ".printk_index", align 4
@chap_server_compute_hash._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.34, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CHAP_N values do not match!\0A\00", [33 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.58 = internal global ptr @chap_server_compute_hash._entry.56, section ".printk_index", align 4
@chap_server_compute_hash.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.59, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[server] Got CHAP_N=%s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_R\00", [25 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.34, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Could not find CHAP_R.\0A\00", [38 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.63 = internal global ptr @chap_server_compute_hash._entry.61, section ".printk_index", align 4
@chap_server_compute_hash._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.34, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.65 = internal global ptr @chap_server_compute_hash._entry.64, section ".printk_index", align 4
@chap_server_compute_hash._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.34, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Malformed CHAP_R\0A\00", [44 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.68 = internal global ptr @chap_server_compute_hash._entry.66, section ".printk_index", align 4
@chap_server_compute_hash._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.34, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.70 = internal global ptr @chap_server_compute_hash._entry.69, section ".printk_index", align 4
@chap_server_compute_hash.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.71, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[server] Got CHAP_R=%s\0A\00", [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.34, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to allocate struct crypto_shash\0A\00", [54 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.74 = internal global ptr @chap_server_compute_hash._entry.72, section ".printk_index", align 4
@chap_server_compute_hash._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.34, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to allocate struct shash_desc\0A\00", [56 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.77 = internal global ptr @chap_server_compute_hash._entry.75, section ".printk_index", align 4
@chap_server_compute_hash._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.34, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013crypto_shash_init() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.80 = internal global ptr @chap_server_compute_hash._entry.78, section ".printk_index", align 4
@chap_server_compute_hash._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.34, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013crypto_shash_update() failed for id\0A\00", [57 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.83 = internal global ptr @chap_server_compute_hash._entry.81, section ".printk_index", align 4
@chap_server_compute_hash._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.34, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013crypto_shash_update() failed for password\0A\00", [51 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.86 = internal global ptr @chap_server_compute_hash._entry.84, section ".printk_index", align 4
@chap_server_compute_hash._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.34, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013crypto_shash_finup() failed for challenge\0A\00", [51 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.89 = internal global ptr @chap_server_compute_hash._entry.87, section ".printk_index", align 4
@chap_server_compute_hash.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.90, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[server] %s Server Digest: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@chap_server_compute_hash.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.91, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[server] %s Digests do not match!\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@chap_server_compute_hash.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.92, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[server] %s Digests match, CHAP connection successful.\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_I\00", [25 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.34, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Could not find CHAP_I.\0A\00", [38 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.96 = internal global ptr @chap_server_compute_hash._entry.94, section ".printk_index", align 4
@chap_server_compute_hash._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.34, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013kstrtoul() failed for CHAP identifier: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.99 = internal global ptr @chap_server_compute_hash._entry.97, section ".printk_index", align 4
@chap_server_compute_hash._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.34, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013chap identifier: %lu greater than 255\0A\00", [55 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.102 = internal global ptr @chap_server_compute_hash._entry.100, section ".printk_index", align 4
@chap_server_compute_hash.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.103, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[server] Got CHAP_I=%lu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_C\00", [25 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.34, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Could not find CHAP_C.\0A\00", [38 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.107 = internal global ptr @chap_server_compute_hash._entry.105, section ".printk_index", align 4
@chap_server_compute_hash._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.34, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.109 = internal global ptr @chap_server_compute_hash._entry.108, section ".printk_index", align 4
@chap_server_compute_hash._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.34, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to convert incoming challenge\0A\00", [56 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.112 = internal global ptr @chap_server_compute_hash._entry.110, section ".printk_index", align 4
@chap_server_compute_hash._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.34, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013CHAP_C exceeds maximum binary size of 1024 bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.115 = internal global ptr @chap_server_compute_hash._entry.113, section ".printk_index", align 4
@chap_server_compute_hash._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.34, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013Malformed CHAP_C\0A\00", [44 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.118 = internal global ptr @chap_server_compute_hash._entry.116, section ".printk_index", align 4
@chap_server_compute_hash.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.119, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[server] Got CHAP_C=%s\0A\00", [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.34, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013initiator CHAP_C matches target CHAP_C, failing login attempt\0A\00", [63 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.122 = internal global ptr @chap_server_compute_hash._entry.120, section ".printk_index", align 4
@chap_server_compute_hash._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.34, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.124 = internal global ptr @chap_server_compute_hash._entry.123, section ".printk_index", align 4
@chap_server_compute_hash._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.34, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.126 = internal global ptr @chap_server_compute_hash._entry.125, section ".printk_index", align 4
@chap_server_compute_hash._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.34, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013crypto_shash_update() failed for password_mutual\0A\00", [44 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.129 = internal global ptr @chap_server_compute_hash._entry.127, section ".printk_index", align 4
@chap_server_compute_hash._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.34, ptr @.str.2, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013crypto_shash_finup() failed for ma challenge\0A\00", [48 x i8] zeroinitializer }, align 32
@chap_server_compute_hash._entry_ptr.132 = internal global ptr @chap_server_compute_hash._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAP_N=%s\00", [22 x i8] zeroinitializer }, align 32
@chap_server_compute_hash.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.134, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[server] Sending CHAP_N=%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CHAP_R=0x%s\00", [20 x i8] zeroinitializer }, align 32
@chap_server_compute_hash.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.2, ptr @.str.136, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[server] Sending CHAP_R=0x%s\0A\00", [34 x i8] zeroinitializer }, align 32
@switch.table.chap_server_open = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 20, i32 32, i32 32], [16 x i8] zeroinitializer }, align 32
@switch.table.chap_server_open.137 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@switch.table.chap_check_algorithm = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 149, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 175, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 185, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 186, i32 30 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 188, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 194, i32 42 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 196, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 93, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 98, i32 23 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 102, i32 20 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 103, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 107, i32 24 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 118, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 120, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 25, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 27, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 29, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 31, i32 10 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 62, i32 36 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 65, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 233, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 239, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 245, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 251, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 261, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 267, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 273, i32 31 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 275, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 279, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 286, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 289, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 293, i32 31 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 295, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 299, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 303, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 307, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 311, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 316, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 322, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 330, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 336, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 343, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 350, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 355, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 359, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 363, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 376, i32 31 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 377, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 387, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 391, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 397, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 401, i32 31 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 403, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 408, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 413, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 417, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 421, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 424, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 433, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 442, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 450, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 457, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 467, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 474, i32 36 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 476, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 481, i32 51 }
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.451 = private constant [44 x i8] c"../drivers/target/iscsi/iscsi_target_auth.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 484, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [30 x i8] c"switch.table.chap_server_open\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [34 x i8] c"switch.table.chap_server_open.137\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [34 x i8] c"switch.table.chap_check_algorithm\00", align 1
@llvm.compiler.used = appending global [145 x ptr] [ptr @chap_check_algorithm._entry, ptr @chap_check_algorithm._entry.16, ptr @chap_check_algorithm._entry.21, ptr @chap_check_algorithm._entry_ptr, ptr @chap_check_algorithm._entry_ptr.18, ptr @chap_check_algorithm._entry_ptr.23, ptr @chap_server_compute_hash._entry, ptr @chap_server_compute_hash._entry.100, ptr @chap_server_compute_hash._entry.105, ptr @chap_server_compute_hash._entry.108, ptr @chap_server_compute_hash._entry.110, ptr @chap_server_compute_hash._entry.113, ptr @chap_server_compute_hash._entry.116, ptr @chap_server_compute_hash._entry.120, ptr @chap_server_compute_hash._entry.123, ptr @chap_server_compute_hash._entry.125, ptr @chap_server_compute_hash._entry.127, ptr @chap_server_compute_hash._entry.130, ptr @chap_server_compute_hash._entry.35, ptr @chap_server_compute_hash._entry.38, ptr @chap_server_compute_hash._entry.41, ptr @chap_server_compute_hash._entry.44, ptr @chap_server_compute_hash._entry.47, ptr @chap_server_compute_hash._entry.51, ptr @chap_server_compute_hash._entry.54, ptr @chap_server_compute_hash._entry.56, ptr @chap_server_compute_hash._entry.61, ptr @chap_server_compute_hash._entry.64, ptr @chap_server_compute_hash._entry.66, ptr @chap_server_compute_hash._entry.69, ptr @chap_server_compute_hash._entry.72, ptr @chap_server_compute_hash._entry.75, ptr @chap_server_compute_hash._entry.78, ptr @chap_server_compute_hash._entry.81, ptr @chap_server_compute_hash._entry.84, ptr @chap_server_compute_hash._entry.87, ptr @chap_server_compute_hash._entry.94, ptr @chap_server_compute_hash._entry.97, ptr @chap_server_compute_hash._entry_ptr, ptr @chap_server_compute_hash._entry_ptr.102, ptr @chap_server_compute_hash._entry_ptr.107, ptr @chap_server_compute_hash._entry_ptr.109, ptr @chap_server_compute_hash._entry_ptr.112, ptr @chap_server_compute_hash._entry_ptr.115, ptr @chap_server_compute_hash._entry_ptr.118, ptr @chap_server_compute_hash._entry_ptr.122, ptr @chap_server_compute_hash._entry_ptr.124, ptr @chap_server_compute_hash._entry_ptr.126, ptr @chap_server_compute_hash._entry_ptr.129, ptr @chap_server_compute_hash._entry_ptr.132, ptr @chap_server_compute_hash._entry_ptr.37, ptr @chap_server_compute_hash._entry_ptr.40, ptr @chap_server_compute_hash._entry_ptr.43, ptr @chap_server_compute_hash._entry_ptr.46, ptr @chap_server_compute_hash._entry_ptr.49, ptr @chap_server_compute_hash._entry_ptr.53, ptr @chap_server_compute_hash._entry_ptr.55, ptr @chap_server_compute_hash._entry_ptr.58, ptr @chap_server_compute_hash._entry_ptr.63, ptr @chap_server_compute_hash._entry_ptr.65, ptr @chap_server_compute_hash._entry_ptr.68, ptr @chap_server_compute_hash._entry_ptr.70, ptr @chap_server_compute_hash._entry_ptr.74, ptr @chap_server_compute_hash._entry_ptr.77, ptr @chap_server_compute_hash._entry_ptr.80, ptr @chap_server_compute_hash._entry_ptr.83, ptr @chap_server_compute_hash._entry_ptr.86, ptr @chap_server_compute_hash._entry_ptr.89, ptr @chap_server_compute_hash._entry_ptr.96, ptr @chap_server_compute_hash._entry_ptr.99, ptr @chap_server_open._entry, ptr @chap_server_open._entry.3, ptr @chap_server_open._entry_ptr, ptr @chap_server_open._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.67, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @switch.table.chap_server_open, ptr @switch.table.chap_server_open.137, ptr @switch.table.chap_check_algorithm], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_open._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_check_algorithm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_check_algorithm._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_check_algorithm._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chap_server_compute_hash._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chap_server_open to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chap_server_open.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.chap_check_algorithm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chap_main_loop(ptr nocapture noundef %conn, ptr noundef %auth, ptr noundef %in_text, ptr nocapture noundef writeonly %out_text, ptr nocapture noundef readonly %in_len, ptr nocapture noundef %out_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_protocol = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 63
  %0 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth_protocol, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @chap_server_open(ptr noundef %conn, ptr noundef %auth, ptr noundef %in_text, ptr noundef %out_text, ptr noundef %out_len)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %chap_state = getelementptr inbounds %struct.iscsi_chap, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %chap_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %chap_state, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %chap_state3 = getelementptr inbounds %struct.iscsi_chap, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %chap_state3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chap_state3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then4, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.else
  %5 = ptrtoint ptr %in_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_len, align 4
  tail call void @convert_null_to_semi(ptr noundef %in_text, i32 noundef %6) #9
  %call5 = tail call fastcc i32 @chap_server_compute_hash(ptr noundef %conn, ptr noundef %auth, ptr noundef %in_text, ptr noundef %out_text, ptr noundef %out_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %auth_protocol, align 32
  tail call void @kfree(ptr noundef %8) #9
  %9 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %auth_protocol, align 32
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %authenticate_target = getelementptr inbounds %struct.iscsi_node_auth, ptr %auth, i32 0, i32 1
  %10 = ptrtoint ptr %authenticate_target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %authenticate_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %chap_state3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %chap_state3, align 4
  br label %if.end13

if.else12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %out_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %out_len, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  %14 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %auth_protocol, align 32
  tail call void @kfree(ptr noundef %15) #9
  %16 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %auth_protocol, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then7 ], [ 1, %if.end13 ], [ 0, %if.end ], [ 2, %if.then.cleanup_crit_edge ], [ 2, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @chap_server_open(ptr nocapture noundef %conn, ptr nocapture noundef readonly %auth, ptr noundef %a_str, ptr nocapture noundef writeonly %aic_str, ptr nocapture noundef %aic_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auth, align 4
  %2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #13
  %auth_protocol = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 63
  %4 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %auth_protocol, align 32
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @chap_check_algorithm(ptr noundef %a_str)
  %switch.tableidx = add i32 %call10, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 4
  br i1 %5, label %switch.lookup, label %do.end20

do.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  %6 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth_protocol, align 32
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %auth_protocol, align 32
  br label %cleanup

switch.lookup:                                    ; preds = %if.end8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.chap_server_open, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep120 = getelementptr inbounds [4 x ptr], ptr @switch.table.chap_server_open.137, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep120 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load121 = load ptr, ptr %switch.gep120, align 4
  %digest_size = getelementptr inbounds %struct.iscsi_chap, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %digest_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load, ptr %digest_size, align 4
  %digest_name = getelementptr inbounds %struct.iscsi_chap, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %digest_name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %switch.load121, ptr %digest_name, align 8
  %challenge_len = getelementptr inbounds %struct.iscsi_chap, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %challenge_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %switch.load, ptr %challenge_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_open.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_open, %if.then31)) #9
          to label %do.end34 [label %if.then31], !srcloc !233

if.then31:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_open.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.7, i32 noundef %call10) #9
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %switch.lookup
  %call35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %aic_str, ptr noundef nonnull @.str.8, i32 noundef %call10)
  %add = add i32 %call35, 1
  %14 = ptrtoint ptr %aic_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %aic_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_open.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_open, %if.then48)) #9
          to label %do.end51 [label %if.then48], !srcloc !233

if.then48:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_open.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.9, i32 noundef %call10) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.end34
  %tpg = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %15 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tpg, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 128
  %inc = add i8 %18, 1
  store i8 %inc, ptr %16, align 128
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %call7.i.i, align 128
  %20 = ptrtoint ptr %aic_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aic_len, align 4
  %add.ptr = getelementptr i8, ptr %aic_str, i32 %21
  %conv = zext i8 %18 to i32
  %call53 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.10, i32 noundef %conv)
  %22 = ptrtoint ptr %aic_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aic_len, align 4
  %add54 = add i32 %call53, 1
  %add55 = add i32 %add54, %23
  store i32 %add55, ptr %aic_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_open.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_open, %if.then68)) #9
          to label %do.end73 [label %if.then68], !srcloc !233

if.then68:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call7.i.i, align 128
  %conv70 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_open.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.11, i32 noundef %conv70) #9
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.end51
  %call74 = tail call fastcc i32 @chap_gen_challenge(ptr noundef %conn, ptr noundef %aic_str, ptr noundef %aic_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp = icmp slt i32 %call74, 0
  br i1 %cmp, label %if.then76, label %do.end73.cleanup_crit_edge

do.end73.cleanup_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then76:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %auth_protocol, align 32
  tail call void @kfree(ptr noundef %27) #9
  %28 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %auth_protocol, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.end73.cleanup_crit_edge, %do.end20, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end20 ], [ null, %if.then76 ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %do.end73.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @convert_null_to_semi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chap_server_compute_hash(ptr nocapture noundef readonly %conn, ptr noundef %auth, ptr noundef %nr_in_ptr, ptr nocapture noundef writeonly %nr_out_ptr, ptr nocapture noundef %nr_out_len) unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  %id_as_uchar = alloca i8, align 1
  %type = alloca i8, align 1
  %identifier = alloca [10 x i8], align 1
  %chap_n = alloca [512 x i8], align 1
  %chap_r = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id_as_uchar) #9
  %1 = ptrtoint ptr %id_as_uchar to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %id_as_uchar, align 1, !annotation !234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #9
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %type, align 1, !annotation !234
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %identifier) #9
  %3 = getelementptr inbounds [10 x i8], ptr %identifier, i32 0, i32 2
  %4 = call ptr @memset(ptr %identifier, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %chap_n) #9
  %5 = call ptr @memset(ptr %chap_n, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %chap_r) #9
  %6 = call ptr @memset(ptr %chap_r, i32 255, i32 128)
  %auth_protocol = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 63
  %7 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %auth_protocol, align 32
  %digest_size = getelementptr inbounds %struct.iscsi_chap, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %digest_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end8.i.i652

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %out.thread

if.end8.i.i652:                                   ; preds = %entry
  %11 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %digest_size, align 4
  %mul = shl i32 %12, 1
  %add = add i32 %mul, 2
  %call9.i.i651 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %tobool4.not = icmp eq ptr %call9.i.i651, null
  br i1 %tobool4.not, label %do.end8, label %if.end8.i.i681

do.end8:                                          ; preds = %if.end8.i.i652
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %out.thread

if.end8.i.i681:                                   ; preds = %if.end8.i.i652
  %13 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %digest_size, align 4
  %call9.i.i680 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #14
  %tobool14.not = icmp eq ptr %call9.i.i680, null
  br i1 %tobool14.not, label %do.end18, label %if.end8.i.i710

do.end18:                                         ; preds = %if.end8.i.i681
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #12
  br label %out.thread

if.end8.i.i710:                                   ; preds = %if.end8.i.i681
  %15 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %digest_size, align 4
  %call9.i.i709 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #14
  %tobool24.not = icmp eq ptr %call9.i.i709, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end8.i.i710
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #12
  br label %out.thread

if.end31:                                         ; preds = %if.end8.i.i710
  %17 = call ptr @memset(ptr %identifier, i32 0, i32 10)
  %18 = call ptr @memset(ptr %chap_n, i32 0, i32 512)
  %19 = call ptr @memset(ptr %chap_r, i32 0, i32 128)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i723 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 4096) #13
  %tobool35.not = icmp eq ptr %call7.i.i723, null
  br i1 %tobool35.not, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #12
  br label %out.thread

if.end42:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i736 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 4096) #13
  %tobool44.not = icmp eq ptr %call7.i.i736, null
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %out.thread

if.end51:                                         ; preds = %if.end42
  %call53 = call i32 @extract_param(ptr noundef %nr_in_ptr, ptr noundef nonnull @.str.50, i32 noundef 512, ptr noundef nonnull %chap_n, ptr noundef nonnull %type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %do.end57, label %if.end60

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %out.thread

if.end60:                                         ; preds = %if.end51
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp61 = icmp eq i8 %23, 1
  br i1 %cmp61, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #12
  br label %out.thread

if.end69:                                         ; preds = %if.end60
  %userid = getelementptr inbounds %struct.iscsi_node_auth, ptr %auth, i32 0, i32 3
  %call71 = call i32 @strlen(ptr noundef %userid) #15
  %add72 = add i32 %call71, 1
  %call76 = call i32 @strncmp(ptr noundef nonnull %chap_n, ptr noundef %userid, i32 noundef %add72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77.not = icmp eq i32 %call76, 0
  br i1 %cmp77.not, label %do.body86, label %do.end82

do.end82:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #12
  br label %out.thread

do.body86:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then92)) #9
          to label %do.end96 [label %if.then92], !srcloc !233

if.then92:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.59, ptr noundef nonnull %chap_n) #9
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body86
  %call98 = call i32 @extract_param(ptr noundef %nr_in_ptr, ptr noundef nonnull @.str.60, i32 noundef 128, ptr noundef nonnull %chap_r, ptr noundef nonnull %type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %do.end104, label %if.end107

do.end104:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %out.thread

if.end107:                                        ; preds = %do.end96
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp109.not = icmp eq i8 %25, 1
  br i1 %cmp109.not, label %if.end117, label %do.end114

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  br label %out.thread

if.end117:                                        ; preds = %if.end107
  %call119 = call i32 @strlen(ptr noundef nonnull %chap_r) #15
  %26 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %digest_size, align 4
  %mul121 = shl i32 %27, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call119, i32 %mul121)
  %cmp122.not = icmp eq i32 %call119, %mul121
  br i1 %cmp122.not, label %if.end130, label %do.end127

do.end127:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %out.thread

if.end130:                                        ; preds = %if.end117
  %call133 = call i32 @hex2bin(ptr noundef nonnull %call9.i.i680, ptr noundef nonnull %chap_r, i32 noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %do.end139, label %do.body143

do.end139:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #12
  br label %out.thread

do.body143:                                       ; preds = %if.end130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then155)) #9
          to label %do.end159 [label %if.then155], !srcloc !233

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.71, ptr noundef nonnull %chap_r) #9
  br label %do.end159

do.end159:                                        ; preds = %if.then155, %do.body143
  %digest_name = getelementptr inbounds %struct.iscsi_chap, ptr %8, i32 0, i32 3
  %28 = ptrtoint ptr %digest_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %digest_name, align 8
  %call160 = call ptr @crypto_alloc_shash(ptr noundef %29, i32 noundef 0, i32 noundef 0) #9
  %cmp.i739 = icmp ugt ptr %call160, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i739, label %if.then162, label %if.end8.i

if.then162:                                       ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #11
  %call167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #12
  br label %out.thread

if.end8.i:                                        ; preds = %do.end159
  %30 = ptrtoint ptr %call160 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call160, align 128
  %add170 = add i32 %31, 8
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add170, i32 noundef 3264) #14
  %tobool172.not = icmp eq ptr %call9.i, null
  br i1 %tobool172.not, label %do.end176, label %if.end179

do.end176:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #12
  br label %out

if.end179:                                        ; preds = %if.end8.i
  %32 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call160, ptr %call9.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call160, i32 0, i32 2
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end179.do.end187_crit_edge

if.end179.do.end187_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end187

crypto_shash_init.exit:                           ; preds = %if.end179
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call160, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 -256
  %37 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = call i32 %38(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp182 = icmp slt i32 %call3.i, 0
  br i1 %cmp182, label %crypto_shash_init.exit.do.end187_crit_edge, label %if.end190

crypto_shash_init.exit.do.end187_crit_edge:       ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end187

do.end187:                                        ; preds = %crypto_shash_init.exit.do.end187_crit_edge, %if.end179.do.end187_crit_edge
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #12
  br label %out

if.end190:                                        ; preds = %crypto_shash_init.exit
  %call192 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef %8, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %cmp193 = icmp slt i32 %call192, 0
  br i1 %cmp193, label %do.end198, label %if.end201

do.end198:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #12
  br label %out

if.end201:                                        ; preds = %if.end190
  %password = getelementptr inbounds %struct.iscsi_node_auth, ptr %auth, i32 0, i32 4
  %call204 = call i32 @strlen(ptr noundef %password) #15
  %call205 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef %password, i32 noundef %call204) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %cmp206 = icmp slt i32 %call205, 0
  br i1 %cmp206, label %do.end211, label %if.end214

do.end211:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  %call213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #12
  br label %out

if.end214:                                        ; preds = %if.end201
  %challenge = getelementptr inbounds %struct.iscsi_chap, ptr %8, i32 0, i32 1
  %challenge_len = getelementptr inbounds %struct.iscsi_chap, ptr %8, i32 0, i32 2
  %39 = ptrtoint ptr %challenge_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %challenge_len, align 4
  %call216 = call i32 @crypto_shash_finup(ptr noundef nonnull %call9.i, ptr noundef %challenge, i32 noundef %40, ptr noundef nonnull %call9.i.i709) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %do.end222, label %if.end225

do.end222:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #12
  br label %out

if.end225:                                        ; preds = %if.end214
  %41 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %digest_size, align 4
  %call227 = call ptr @bin2hex(ptr noundef nonnull %call9.i.i651, ptr noundef nonnull %call9.i.i709, i32 noundef %42) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then240)) #9
          to label %do.end244 [label %if.then240], !srcloc !233

if.then240:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %digest_name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %digest_name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.90, ptr noundef %44, ptr noundef nonnull %call9.i.i651) #9
  br label %do.end244

do.end244:                                        ; preds = %if.then240, %if.end225
  %45 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %digest_size, align 4
  %bcmp = call i32 @bcmp(ptr nonnull %call9.i.i709, ptr nonnull %call9.i.i680, i32 %46) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp247.not = icmp eq i32 %bcmp, 0
  br i1 %cmp247.not, label %do.body267, label %do.body250

do.body250:                                       ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then262)) #9
          to label %out [label %if.then262], !srcloc !233

if.then262:                                       ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %digest_name to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %digest_name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.91, ptr noundef %48) #9
  br label %out

do.body267:                                       ; preds = %do.end244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then279)) #9
          to label %if.end284 [label %if.then279], !srcloc !233

if.then279:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %digest_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %digest_name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.92, ptr noundef %50) #9
  br label %if.end284

if.end284:                                        ; preds = %if.then279, %do.body267
  %authenticate_target = getelementptr inbounds %struct.iscsi_node_auth, ptr %auth, i32 0, i32 1
  %51 = ptrtoint ptr %authenticate_target to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %authenticate_target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool285.not = icmp eq i32 %52, 0
  br i1 %tobool285.not, label %if.end284.out_crit_edge, label %if.end287

if.end284.out_crit_edge:                          ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end287:                                        ; preds = %if.end284
  %call289 = call i32 @extract_param(ptr noundef %nr_in_ptr, ptr noundef nonnull @.str.93, i32 noundef 10, ptr noundef nonnull %identifier, ptr noundef nonnull %type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %cmp290 = icmp slt i32 %call289, 0
  br i1 %cmp290, label %do.end295, label %if.end298

do.end295:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #11
  %call297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %out

if.end298:                                        ; preds = %if.end287
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp300 = icmp eq i8 %54, 1
  br i1 %cmp300, label %if.then302, label %if.else304

if.then302:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @_kstrtoul(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %id) #9
  br label %if.end307

if.else304:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  %call.i742 = call i32 @_kstrtoul(ptr noundef nonnull %identifier, i32 noundef 0, ptr noundef nonnull %id) #9
  br label %if.end307

if.end307:                                        ; preds = %if.else304, %if.then302
  %ret.0 = phi i32 [ %call.i, %if.then302 ], [ %call.i742, %if.else304 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp308 = icmp slt i32 %ret.0, 0
  br i1 %cmp308, label %do.end313, label %if.end316

do.end313:                                        ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #11
  %call315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %ret.0) #12
  br label %out

if.end316:                                        ; preds = %if.end307
  %55 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %56)
  %cmp317 = icmp ugt i32 %56, 255
  br i1 %cmp317, label %do.end322, label %do.body326

do.end322:                                        ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #11
  %call324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %56) #12
  br label %out

do.body326:                                       ; preds = %if.end316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then338)) #9
          to label %do.end341 [label %if.then338], !srcloc !233

if.then338:                                       ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.103, i32 noundef %58) #9
  br label %do.end341

do.end341:                                        ; preds = %if.then338, %do.body326
  %call342 = call i32 @extract_param(ptr noundef %nr_in_ptr, ptr noundef nonnull @.str.104, i32 noundef 4096, ptr noundef nonnull %call7.i.i723, ptr noundef nonnull %type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call342)
  %cmp343 = icmp slt i32 %call342, 0
  br i1 %cmp343, label %do.end348, label %if.end351

do.end348:                                        ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #11
  %call350 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %out

if.end351:                                        ; preds = %do.end341
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp353.not = icmp eq i8 %60, 1
  br i1 %cmp353.not, label %if.end361, label %do.end358

do.end358:                                        ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #11
  %call360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #12
  br label %out

if.end361:                                        ; preds = %if.end351
  %call362 = call i32 @strlen(ptr noundef nonnull %call7.i.i723) #15
  %sub = add i32 %call362, 1
  %div597 = lshr i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %tobool364.not = icmp ult i32 %sub, 2
  br i1 %tobool364.not, label %do.end368, label %if.end371

do.end368:                                        ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #11
  %call370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  br label %out

if.end371:                                        ; preds = %if.end361
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %sub)
  %cmp372 = icmp ugt i32 %sub, 2049
  br i1 %cmp372, label %do.end377, label %if.end380

do.end377:                                        ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #11
  %call379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #12
  br label %out

if.end380:                                        ; preds = %if.end371
  %call381 = call i32 @hex2bin(ptr noundef nonnull %call7.i.i736, ptr noundef nonnull %call7.i.i723, i32 noundef %div597) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381)
  %cmp382 = icmp slt i32 %call381, 0
  br i1 %cmp382, label %do.end387, label %do.body391

do.end387:                                        ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #11
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117) #12
  br label %out

do.body391:                                       ; preds = %if.end380
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then403)) #9
          to label %do.end406 [label %if.then403], !srcloc !233

if.then403:                                       ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.119, ptr noundef nonnull %call7.i.i723) #9
  br label %do.end406

do.end406:                                        ; preds = %if.then403, %do.body391
  %61 = ptrtoint ptr %challenge_len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %challenge_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div597, i32 %62)
  %cmp408 = icmp eq i32 %div597, %62
  br i1 %cmp408, label %land.lhs.true, label %do.end406.if.end420_crit_edge

do.end406.if.end420_crit_edge:                    ; preds = %do.end406
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end420

land.lhs.true:                                    ; preds = %do.end406
  %bcmp598 = call i32 @bcmp(ptr nonnull %call7.i.i736, ptr %challenge, i32 %div597) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp598)
  %tobool413.not = icmp eq i32 %bcmp598, 0
  br i1 %tobool413.not, label %do.end417, label %land.lhs.true.if.end420_crit_edge

land.lhs.true.if.end420_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end420

do.end417:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call419 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #12
  br label %out

if.end420:                                        ; preds = %land.lhs.true.if.end420_crit_edge, %do.end406.if.end420_crit_edge
  %63 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call9.i, align 128
  %base.i.i.i743 = getelementptr inbounds %struct.crypto_shash, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %base.i.i.i743 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %base.i.i.i743, align 128
  %and.i744 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i744)
  %tobool.not.i745 = icmp eq i32 %and.i744, 0
  br i1 %tobool.not.i745, label %crypto_shash_init.exit751, label %if.end420.do.end427_crit_edge

if.end420.do.end427_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end427

crypto_shash_init.exit751:                        ; preds = %if.end420
  %__crt_alg.i.i746 = getelementptr inbounds %struct.crypto_shash, ptr %64, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %__crt_alg.i.i746 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %__crt_alg.i.i746, align 4
  %add.ptr.i.i.i747 = getelementptr i8, ptr %68, i32 -256
  %69 = ptrtoint ptr %add.ptr.i.i.i747 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i.i.i747, align 128
  %call3.i748 = call i32 %70(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i748)
  %cmp422 = icmp slt i32 %call3.i748, 0
  br i1 %cmp422, label %crypto_shash_init.exit751.do.end427_crit_edge, label %if.end430

crypto_shash_init.exit751.do.end427_crit_edge:    ; preds = %crypto_shash_init.exit751
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end427

do.end427:                                        ; preds = %crypto_shash_init.exit751.do.end427_crit_edge, %if.end420.do.end427_crit_edge
  %call429 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #12
  br label %out

if.end430:                                        ; preds = %crypto_shash_init.exit751
  %71 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id, align 4
  %conv431 = trunc i32 %72 to i8
  %73 = ptrtoint ptr %id_as_uchar to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv431, ptr %id_as_uchar, align 1
  %call432 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef nonnull %id_as_uchar, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call432)
  %cmp433 = icmp slt i32 %call432, 0
  br i1 %cmp433, label %do.end438, label %if.end441

do.end438:                                        ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #11
  %call440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #12
  br label %out

if.end441:                                        ; preds = %if.end430
  %password_mutual = getelementptr inbounds %struct.iscsi_node_auth, ptr %auth, i32 0, i32 6
  %call445 = call i32 @strlen(ptr noundef %password_mutual) #15
  %call446 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef %password_mutual, i32 noundef %call445) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446)
  %cmp447 = icmp slt i32 %call446, 0
  br i1 %cmp447, label %do.end452, label %if.end455

do.end452:                                        ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #11
  %call454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #12
  br label %out

if.end455:                                        ; preds = %if.end441
  %call456 = call i32 @crypto_shash_finup(ptr noundef nonnull %call9.i, ptr noundef nonnull %call7.i.i736, i32 noundef %div597, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call456)
  %cmp457 = icmp slt i32 %call456, 0
  br i1 %cmp457, label %do.end462, label %if.end465

do.end462:                                        ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #11
  %call464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #12
  br label %out

if.end465:                                        ; preds = %if.end455
  %userid_mutual = getelementptr inbounds %struct.iscsi_node_auth, ptr %auth, i32 0, i32 5
  %call467 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %nr_out_ptr, ptr noundef nonnull @.str.133, ptr noundef %userid_mutual)
  %add468 = add i32 %call467, 1
  %74 = ptrtoint ptr %nr_out_len to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add468, ptr %nr_out_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then481)) #9
          to label %do.end486 [label %if.then481], !srcloc !233

if.then481:                                       ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.134, ptr noundef %userid_mutual) #9
  br label %do.end486

do.end486:                                        ; preds = %if.then481, %if.end465
  %75 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %digest_size, align 4
  %call488 = call ptr @bin2hex(ptr noundef nonnull %call9.i.i651, ptr noundef nonnull %call9.i.i, i32 noundef %76) #9
  %77 = ptrtoint ptr %nr_out_len to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_out_len, align 4
  %add.ptr = getelementptr i8, ptr %nr_out_ptr, i32 %78
  %call489 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.135, ptr noundef nonnull %call9.i.i651)
  %79 = ptrtoint ptr %nr_out_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr_out_len, align 4
  %add490 = add i32 %call489, 1
  %add491 = add i32 %add490, %80
  store i32 %add491, ptr %nr_out_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_server_compute_hash, %if.then504)) #9
          to label %out [label %if.then504], !srcloc !233

if.then504:                                       ; preds = %do.end486
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_server_compute_hash.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.136, ptr noundef nonnull %call9.i.i651) #9
  br label %out

out.thread:                                       ; preds = %if.then162, %do.end139, %do.end127, %do.end114, %do.end104, %do.end82, %do.end66, %do.end57, %do.end48, %do.end39, %do.end28, %do.end18, %do.end8, %do.end
  %retval.1.i.i754.ph = phi ptr [ null, %do.end ], [ %call9.i.i, %do.end8 ], [ %call9.i.i, %do.end18 ], [ %call9.i.i, %do.end28 ], [ %call9.i.i, %do.end39 ], [ %call9.i.i, %do.end48 ], [ %call9.i.i, %if.then162 ], [ %call9.i.i, %do.end139 ], [ %call9.i.i, %do.end127 ], [ %call9.i.i, %do.end114 ], [ %call9.i.i, %do.end104 ], [ %call9.i.i, %do.end82 ], [ %call9.i.i, %do.end66 ], [ %call9.i.i, %do.end57 ]
  %server_digest.0.ph = phi ptr [ null, %do.end ], [ null, %do.end8 ], [ null, %do.end18 ], [ null, %do.end28 ], [ %call9.i.i709, %do.end39 ], [ %call9.i.i709, %do.end48 ], [ %call9.i.i709, %if.then162 ], [ %call9.i.i709, %do.end139 ], [ %call9.i.i709, %do.end127 ], [ %call9.i.i709, %do.end114 ], [ %call9.i.i709, %do.end104 ], [ %call9.i.i709, %do.end82 ], [ %call9.i.i709, %do.end66 ], [ %call9.i.i709, %do.end57 ]
  %client_digest.0.ph = phi ptr [ null, %do.end ], [ null, %do.end8 ], [ null, %do.end18 ], [ %call9.i.i680, %do.end28 ], [ %call9.i.i680, %do.end39 ], [ %call9.i.i680, %do.end48 ], [ %call9.i.i680, %if.then162 ], [ %call9.i.i680, %do.end139 ], [ %call9.i.i680, %do.end127 ], [ %call9.i.i680, %do.end114 ], [ %call9.i.i680, %do.end104 ], [ %call9.i.i680, %do.end82 ], [ %call9.i.i680, %do.end66 ], [ %call9.i.i680, %do.end57 ]
  %response.0.ph = phi ptr [ null, %do.end ], [ null, %do.end8 ], [ %call9.i.i651, %do.end18 ], [ %call9.i.i651, %do.end28 ], [ %call9.i.i651, %do.end39 ], [ %call9.i.i651, %do.end48 ], [ %call9.i.i651, %if.then162 ], [ %call9.i.i651, %do.end139 ], [ %call9.i.i651, %do.end127 ], [ %call9.i.i651, %do.end114 ], [ %call9.i.i651, %do.end104 ], [ %call9.i.i651, %do.end82 ], [ %call9.i.i651, %do.end66 ], [ %call9.i.i651, %do.end57 ]
  %initiatorchg_binhex.0.ph = phi ptr [ null, %do.end ], [ null, %do.end8 ], [ null, %do.end18 ], [ null, %do.end28 ], [ null, %do.end39 ], [ null, %do.end48 ], [ %call7.i.i736, %if.then162 ], [ %call7.i.i736, %do.end139 ], [ %call7.i.i736, %do.end127 ], [ %call7.i.i736, %do.end114 ], [ %call7.i.i736, %do.end104 ], [ %call7.i.i736, %do.end82 ], [ %call7.i.i736, %do.end66 ], [ %call7.i.i736, %do.end57 ]
  %initiatorchg.0.ph = phi ptr [ null, %do.end ], [ null, %do.end8 ], [ null, %do.end18 ], [ null, %do.end28 ], [ null, %do.end39 ], [ %call7.i.i723, %do.end48 ], [ %call7.i.i723, %if.then162 ], [ %call7.i.i723, %do.end139 ], [ %call7.i.i723, %do.end127 ], [ %call7.i.i723, %do.end114 ], [ %call7.i.i723, %do.end104 ], [ %call7.i.i723, %do.end82 ], [ %call7.i.i723, %do.end66 ], [ %call7.i.i723, %do.end57 ]
  call void @kfree_sensitive(ptr noundef null) #9
  br label %if.end510

out:                                              ; preds = %if.then504, %do.end486, %do.end462, %do.end452, %do.end438, %do.end427, %do.end417, %do.end387, %do.end377, %do.end368, %do.end358, %do.end348, %do.end322, %do.end313, %do.end295, %if.end284.out_crit_edge, %if.then262, %do.body250, %do.end222, %do.end211, %do.end198, %do.end187, %do.end176
  %auth_ret.0 = phi i32 [ -1, %do.end187 ], [ -1, %do.end198 ], [ -1, %do.end211 ], [ -1, %do.end222 ], [ -1, %if.then262 ], [ -1, %do.end295 ], [ -1, %do.end313 ], [ -1, %do.end322 ], [ -1, %do.end348 ], [ -1, %do.end358 ], [ -1, %do.end377 ], [ -1, %do.end387 ], [ -1, %do.end427 ], [ -1, %do.end438 ], [ -1, %do.end452 ], [ -1, %do.end462 ], [ -1, %do.end417 ], [ -1, %do.end368 ], [ -1, %do.end176 ], [ 0, %if.end284.out_crit_edge ], [ 0, %if.then504 ], [ -1, %do.body250 ], [ 0, %do.end486 ]
  %desc.0 = phi ptr [ %call9.i, %do.end187 ], [ %call9.i, %do.end198 ], [ %call9.i, %do.end211 ], [ %call9.i, %do.end222 ], [ %call9.i, %if.then262 ], [ %call9.i, %do.end295 ], [ %call9.i, %do.end313 ], [ %call9.i, %do.end322 ], [ %call9.i, %do.end348 ], [ %call9.i, %do.end358 ], [ %call9.i, %do.end377 ], [ %call9.i, %do.end387 ], [ %call9.i, %do.end427 ], [ %call9.i, %do.end438 ], [ %call9.i, %do.end452 ], [ %call9.i, %do.end462 ], [ %call9.i, %do.end417 ], [ %call9.i, %do.end368 ], [ null, %do.end176 ], [ %call9.i, %if.end284.out_crit_edge ], [ %call9.i, %if.then504 ], [ %call9.i, %do.body250 ], [ %call9.i, %do.end486 ]
  call void @kfree_sensitive(ptr noundef %desc.0) #9
  %tobool508.not = icmp eq ptr %call160, null
  br i1 %tobool508.not, label %out.if.end510_crit_edge, label %if.then509

out.if.end510_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end510

if.then509:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call160, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef nonnull %call160, ptr noundef %base.i.i) #9
  br label %if.end510

if.end510:                                        ; preds = %if.then509, %out.if.end510_crit_edge, %out.thread
  %initiatorchg.0797 = phi ptr [ %initiatorchg.0.ph, %out.thread ], [ %call7.i.i723, %if.then509 ], [ %call7.i.i723, %out.if.end510_crit_edge ]
  %initiatorchg_binhex.0796 = phi ptr [ %initiatorchg_binhex.0.ph, %out.thread ], [ %call7.i.i736, %if.then509 ], [ %call7.i.i736, %out.if.end510_crit_edge ]
  %response.0795 = phi ptr [ %response.0.ph, %out.thread ], [ %call9.i.i651, %if.then509 ], [ %call9.i.i651, %out.if.end510_crit_edge ]
  %client_digest.0794 = phi ptr [ %client_digest.0.ph, %out.thread ], [ %call9.i.i680, %if.then509 ], [ %call9.i.i680, %out.if.end510_crit_edge ]
  %server_digest.0793 = phi ptr [ %server_digest.0.ph, %out.thread ], [ %call9.i.i709, %if.then509 ], [ %call9.i.i709, %out.if.end510_crit_edge ]
  %auth_ret.0792 = phi i32 [ -1, %out.thread ], [ %auth_ret.0, %if.then509 ], [ %auth_ret.0, %out.if.end510_crit_edge ]
  %retval.1.i.i754791 = phi ptr [ %retval.1.i.i754.ph, %out.thread ], [ %call9.i.i, %if.then509 ], [ %call9.i.i, %out.if.end510_crit_edge ]
  call void @kfree(ptr noundef %initiatorchg.0797) #9
  call void @kfree(ptr noundef %initiatorchg_binhex.0796) #9
  call void @kfree(ptr noundef %retval.1.i.i754791) #9
  call void @kfree(ptr noundef %response.0795) #9
  call void @kfree(ptr noundef %server_digest.0793) #9
  call void @kfree(ptr noundef %client_digest.0794) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %chap_r) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %chap_n) #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %identifier) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id_as_uchar) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #9
  ret i32 %auth_ret.0792
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chap_check_algorithm(ptr noundef %a_str) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca ptr, align 4
  %digest_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %digest_type) #9
  %0 = ptrtoint ptr %digest_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %digest_type, align 4, !annotation !234
  %call = tail call noalias ptr @kstrdup(ptr noundef %a_str, i32 noundef 3264) #9
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %tmp, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @strsep(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.14) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @strcmp(ptr noundef nonnull %call3, ptr noundef nonnull dereferenceable(7) @.str.15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.cond.preheader, label %do.end12

while.cond.preheader:                             ; preds = %if.end6
  %call1769 = call ptr @strsep(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.19) #9
  %tobool18.not70 = icmp eq ptr %call1769, null
  br i1 %tobool18.not70, label %while.cond.preheader.out_crit_edge, label %while.cond.preheader.if.end20_crit_edge

while.cond.preheader.if.end20_crit_edge:          ; preds = %while.cond.preheader
  br label %if.end20

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %out

if.end20:                                         ; preds = %while.cond.backedge.if.end20_crit_edge, %while.cond.preheader.if.end20_crit_edge
  %call1771 = phi ptr [ %call17, %while.cond.backedge.if.end20_crit_edge ], [ %call1769, %while.cond.preheader.if.end20_crit_edge ]
  %call.i = call i32 @_kstrtol(ptr noundef nonnull %call1771, i32 noundef 10, ptr noundef nonnull %digest_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.while.cond.backedge_crit_edge

if.end20.while.cond.backedge_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end24:                                         ; preds = %if.end20
  %2 = ptrtoint ptr %digest_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %digest_type, align 4
  %switch.tableidx = add i32 %3, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %if.end24.while.cond.backedge_crit_edge

if.end24.while.cond.backedge_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

switch.lookup:                                    ; preds = %if.end24
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.chap_check_algorithm, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_check_algorithm.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_check_algorithm, %if.then35)) #9
          to label %do.end38 [label %if.then35], !srcloc !233

if.then35:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_check_algorithm.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.20, ptr noundef nonnull %switch.load) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %switch.lookup
  %call.i60 = call ptr @crypto_alloc_shash(ptr noundef nonnull %switch.load, i32 noundef 0, i32 noundef 0) #9
  %cmp.i.i = icmp ugt ptr %call.i60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end43, label %if.else

do.end43:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load) #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end43, %if.end24.while.cond.backedge_crit_edge, %if.end20.while.cond.backedge_crit_edge
  %call17 = call ptr @strsep(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.19) #9
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %while.cond.backedge.out_crit_edge, label %while.cond.backedge.if.end20_crit_edge

while.cond.backedge.if.end20_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else:                                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call.i60, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call.i60, ptr noundef %base.i.i.i) #9
  %6 = ptrtoint ptr %digest_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digest_type, align 4
  br label %out

out:                                              ; preds = %if.else, %while.cond.backedge.out_crit_edge, %do.end12, %while.cond.preheader.out_crit_edge, %if.end.out_crit_edge
  %r.0 = phi i32 [ 0, %do.end12 ], [ %7, %if.else ], [ 0, %if.end.out_crit_edge ], [ 0, %while.cond.preheader.out_crit_edge ], [ 0, %while.cond.backedge.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %r.0, %out ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %digest_type) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chap_gen_challenge(ptr nocapture noundef readonly %conn, ptr nocapture noundef writeonly %c_str, ptr nocapture noundef %c_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auth_protocol = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 63
  %0 = ptrtoint ptr %auth_protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth_protocol, align 32
  %challenge_len = getelementptr inbounds %struct.iscsi_chap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %challenge_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %challenge_len, align 4
  %mul = shl i32 %3, 1
  %add = or i32 %mul, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %challenge = getelementptr inbounds %struct.iscsi_chap, ptr %1, i32 0, i32 1
  %4 = call ptr @memset(ptr %challenge, i32 0, i32 32)
  %5 = ptrtoint ptr %challenge_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %challenge_len, align 4
  %call.i = tail call i32 @wait_for_random_bytes() #9
  tail call void @get_random_bytes(ptr noundef %challenge, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end9, label %if.end.out_crit_edge, !prof !235

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %challenge_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %challenge_len, align 4
  %call13 = tail call ptr @bin2hex(ptr noundef nonnull %call9.i.i, ptr noundef %challenge, i32 noundef %8) #9
  %9 = ptrtoint ptr %c_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_len, align 4
  %add.ptr = getelementptr i8, ptr %c_str, i32 %10
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.28, ptr noundef nonnull %call9.i.i)
  %11 = ptrtoint ptr %c_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_len, align 4
  %add15 = add i32 %call14, 1
  %add16 = add i32 %add15, %12
  store i32 %add16, ptr %c_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chap_gen_challenge.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chap_gen_challenge, %if.then25)) #9
          to label %out [label %if.then25], !srcloc !233

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chap_gen_challenge.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull %call9.i.i) #9
  br label %out

out:                                              ; preds = %if.then25, %if.end9, %if.end.out_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extract_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_finup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !21, !23, !24, !26, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !154, !155, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !176, !177, !178, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !200, !202, !203, !205, !206, !208, !209, !210, !212, !213, !214, !216, !218, !219, !221, !223}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 149, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @chap_server_open._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @chap_server_open._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 175, i32 3}
!8 = !{ptr @chap_server_open._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @chap_server_open._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 185, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @chap_server_open.__UNIQUE_ID_ddebug223, !11, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 186, i32 30}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 188, i32 2}
!18 = !{ptr @chap_server_open.__UNIQUE_ID_ddebug224, !17, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 194, i32 42}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 196, i32 2}
!23 = !{ptr @chap_server_open.__UNIQUE_ID_ddebug225, !22, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 93, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @chap_check_algorithm._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @chap_check_algorithm._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 98, i32 23}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 102, i32 20}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 103, i32 3}
!35 = !{ptr @chap_check_algorithm._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @chap_check_algorithm._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 107, i32 24}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 118, i32 3}
!41 = !{ptr @chap_check_algorithm.__UNIQUE_ID_ddebug222, !40, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 120, i32 4}
!44 = !{ptr @chap_check_algorithm._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @chap_check_algorithm._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 25, i32 10}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 27, i32 10}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 29, i32 10}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 31, i32 10}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 62, i32 36}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 65, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @chap_gen_challenge.__UNIQUE_ID_ddebug221, !57, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!60 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 233, i32 3}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @chap_server_compute_hash._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @chap_server_compute_hash._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 239, i32 3}
!69 = !{ptr @chap_server_compute_hash._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @chap_server_compute_hash._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 245, i32 3}
!73 = !{ptr @chap_server_compute_hash._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @chap_server_compute_hash._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 251, i32 3}
!77 = !{ptr @chap_server_compute_hash._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @chap_server_compute_hash._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 261, i32 3}
!81 = !{ptr @chap_server_compute_hash._entry.44, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @chap_server_compute_hash._entry_ptr.46, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 267, i32 3}
!85 = !{ptr @chap_server_compute_hash._entry.47, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @chap_server_compute_hash._entry_ptr.49, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 273, i32 31}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 275, i32 3}
!91 = !{ptr @chap_server_compute_hash._entry.51, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @chap_server_compute_hash._entry_ptr.53, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @chap_server_compute_hash._entry.54, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 279, i32 3}
!95 = !{ptr @chap_server_compute_hash._entry_ptr.55, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 286, i32 3}
!98 = !{ptr @chap_server_compute_hash._entry.56, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @chap_server_compute_hash._entry_ptr.58, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 289, i32 2}
!102 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug226, !101, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!103 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 293, i32 31}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 295, i32 3}
!107 = !{ptr @chap_server_compute_hash._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @chap_server_compute_hash._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @chap_server_compute_hash._entry.64, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 299, i32 3}
!111 = !{ptr @chap_server_compute_hash._entry_ptr.65, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 303, i32 3}
!114 = !{ptr @chap_server_compute_hash._entry.66, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @chap_server_compute_hash._entry_ptr.68, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @chap_server_compute_hash._entry.69, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 307, i32 3}
!118 = !{ptr @chap_server_compute_hash._entry_ptr.70, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.71, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 311, i32 2}
!121 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug227, !120, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!122 = !{ptr @.str.73, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 316, i32 3}
!124 = !{ptr @chap_server_compute_hash._entry.72, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @chap_server_compute_hash._entry_ptr.74, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.76, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 322, i32 3}
!128 = !{ptr @chap_server_compute_hash._entry.75, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @chap_server_compute_hash._entry_ptr.77, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.79, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 330, i32 3}
!132 = !{ptr @chap_server_compute_hash._entry.78, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @chap_server_compute_hash._entry_ptr.80, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.82, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 336, i32 3}
!136 = !{ptr @chap_server_compute_hash._entry.81, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @chap_server_compute_hash._entry_ptr.83, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.85, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 343, i32 3}
!140 = !{ptr @chap_server_compute_hash._entry.84, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @chap_server_compute_hash._entry_ptr.86, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.88, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 350, i32 3}
!144 = !{ptr @chap_server_compute_hash._entry.87, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @chap_server_compute_hash._entry_ptr.89, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.90, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 355, i32 2}
!148 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug228, !147, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!149 = !{ptr @.str.91, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 359, i32 3}
!151 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug229, !150, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!152 = !{ptr @.str.92, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 363, i32 3}
!154 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug230, !153, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 376, i32 31}
!157 = !{ptr @.str.95, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 377, i32 3}
!159 = !{ptr @chap_server_compute_hash._entry.94, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @chap_server_compute_hash._entry_ptr.96, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.98, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 387, i32 3}
!163 = !{ptr @chap_server_compute_hash._entry.97, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @chap_server_compute_hash._entry_ptr.99, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.101, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 391, i32 3}
!167 = !{ptr @chap_server_compute_hash._entry.100, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @chap_server_compute_hash._entry_ptr.102, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.103, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 397, i32 2}
!171 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug231, !170, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!172 = !{ptr @.str.104, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 401, i32 31}
!174 = !{ptr @.str.106, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 403, i32 3}
!176 = !{ptr @chap_server_compute_hash._entry.105, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @chap_server_compute_hash._entry_ptr.107, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @chap_server_compute_hash._entry.108, !179, !"_entry", i1 false, i1 false}
!179 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 408, i32 3}
!180 = !{ptr @chap_server_compute_hash._entry_ptr.109, !179, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.111, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 413, i32 3}
!183 = !{ptr @chap_server_compute_hash._entry.110, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @chap_server_compute_hash._entry_ptr.112, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.114, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 417, i32 3}
!187 = !{ptr @chap_server_compute_hash._entry.113, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @chap_server_compute_hash._entry_ptr.115, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.117, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 421, i32 3}
!191 = !{ptr @chap_server_compute_hash._entry.116, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @chap_server_compute_hash._entry_ptr.118, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.119, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 424, i32 2}
!195 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug232, !194, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!196 = !{ptr @.str.121, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 433, i32 3}
!198 = !{ptr @chap_server_compute_hash._entry.120, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @chap_server_compute_hash._entry_ptr.122, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @chap_server_compute_hash._entry.123, !201, !"_entry", i1 false, i1 false}
!201 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 442, i32 3}
!202 = !{ptr @chap_server_compute_hash._entry_ptr.124, !201, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @chap_server_compute_hash._entry.125, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 450, i32 3}
!205 = !{ptr @chap_server_compute_hash._entry_ptr.126, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.128, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 457, i32 3}
!208 = !{ptr @chap_server_compute_hash._entry.127, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @chap_server_compute_hash._entry_ptr.129, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.131, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 467, i32 3}
!212 = !{ptr @chap_server_compute_hash._entry.130, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @chap_server_compute_hash._entry_ptr.132, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.133, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 474, i32 36}
!216 = !{ptr @.str.134, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 476, i32 2}
!218 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug233, !217, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!219 = !{ptr @.str.135, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 481, i32 51}
!221 = !{ptr @.str.136, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/target/iscsi/iscsi_target_auth.c", i32 484, i32 2}
!223 = !{ptr @chap_server_compute_hash.__UNIQUE_ID_ddebug234, !222, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{i64 2148764932, i64 2148764937, i64 2148764950, i64 2148764994, i64 2148765028, i64 2148765049}
!234 = !{!"auto-init"}
!235 = !{!"branch_weights", i32 2000, i32 1}
