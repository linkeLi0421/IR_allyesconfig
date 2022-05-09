; ModuleID = '/llk/IR_all_yes/fs/ksmbd/smb2misc.c_pt.bc'
source_filename = "../fs/ksmbd/smb2misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.smb2_hdr = type { i32, i16, i16, i32, i16, i16, i32, i32, i64, %union.anon.192, i64, [16 x i8] }
%union.anon.192 = type { i64 }
%struct.smb2_pdu = type <{ %struct.smb2_hdr, i16 }>
%struct.smb2_sess_setup_req = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i32, i16, i16, i64, [1 x i8] }>
%struct.smb2_tree_connect_req = type <{ %struct.smb2_hdr, i16, i16, i16, i16, [1 x i8] }>
%struct.smb2_create_req = type { %struct.smb2_hdr, i16, i8, i8, i32, i64, i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, [0 x i8] }
%struct.smb2_query_info_req = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i16, i16, i32, i32, i32, i64, i64, [1 x i8] }>
%struct.smb2_set_info_req = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i16, i16, i32, i64, i64, [1 x i8] }>
%struct.smb2_read_req = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i64, i64, i64, i32, i32, i32, i16, i16, [1 x i8] }>
%struct.smb2_write_req = type <{ %struct.smb2_hdr, i16, i16, i32, i64, i64, i64, i32, i32, i16, i16, i32, [1 x i8] }>
%struct.smb2_query_directory_req = type <{ %struct.smb2_hdr, i16, i8, i8, i32, i64, i64, i16, i16, i32, [1 x i8] }>
%struct.smb2_lock_req = type { %struct.smb2_hdr, i16, i16, i32, i64, i64, [1 x %struct.smb2_lock_element] }
%struct.smb2_lock_element = type { i64, i64, i32, i32 }
%struct.smb2_ioctl_req = type <{ %struct.smb2_hdr, i16, i16, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i8] }>
%struct.smb_version_values = type { ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.smb_version_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_smb2_check_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016ksmbd: Illegal structure size %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ksmbd_smb2_check_message\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/ksmbd/smb2misc.c\00", [44 x i8] zeroinitializer }, align 32
@ksmbd_smb2_check_message._entry_ptr = internal global ptr @ksmbd_smb2_check_message._entry, section ".printk_index", align 4
@ksmbd_smb2_check_message._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ksmbd: Illegal SMB2 command %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ksmbd_smb2_check_message._entry_ptr.5 = internal global ptr @ksmbd_smb2_check_message._entry.3, section ".printk_index", align 4
@smb2_req_struct_sizes = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 9216, i16 6400, i16 1024, i16 2304, i16 1024, i16 14592, i16 6144, i16 6144, i16 12544, i16 12544, i16 12288, i16 14592, i16 1024, i16 1024, i16 8448, i16 8192, i16 10496, i16 8448, i16 9216], [58 x i8] zeroinitializer }, align 32
@ksmbd_smb2_check_message._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ksmbd: Illegal request size %u for command %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ksmbd_smb2_check_message._entry_ptr.8 = internal global ptr @ksmbd_smb2_check_message._entry.6, section ".printk_index", align 4
@ksmbd_smb2_check_message._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ksmbd: Illegal request size %d for oplock break\0A\00", [45 x i8] zeroinitializer }, align 32
@ksmbd_smb2_check_message._entry_ptr.11 = internal global ptr @ksmbd_smb2_check_message._entry.9, section ".printk_index", align 4
@ksmbd_smb2_check_message._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016ksmbd: cli req padded more than expected. Length %d not %d for cmd:%d mid:%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@ksmbd_smb2_check_message._entry_ptr.14 = internal global ptr @ksmbd_smb2_check_message._entry.12, section ".printk_index", align 4
@ksmbd_smb2_check_message._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ksmbd: cli req too short, len %d not %d. cmd:%d mid:%llu\0A\00", [36 x i8] zeroinitializer }, align 32
@ksmbd_smb2_check_message._entry_ptr.17 = internal global ptr @ksmbd_smb2_check_message._entry.15, section ".printk_index", align 4
@smb2_calc_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016ksmbd: SMB2 data length %u offset %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smb2_calc_size\00", [17 x i8] zeroinitializer }, align 32
@smb2_calc_size._entry_ptr = internal global ptr @smb2_calc_size._entry, section ".printk_index", align 4
@smb2_calc_size._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016ksmbd: data area offset %d overlaps SMB2 header %u\0A\00", [42 x i8] zeroinitializer }, align 32
@smb2_calc_size._entry_ptr.22 = internal global ptr @smb2_calc_size._entry.20, section ".printk_index", align 4
@smb2_calc_size._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016ksmbd: SMB2 len %u\0A\00", [42 x i8] zeroinitializer }, align 32
@smb2_calc_size._entry_ptr.25 = internal global ptr @smb2_calc_size._entry.23, section ".printk_index", align 4
@smb2_get_data_area_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: no length check for command\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"smb2_get_data_area_len\00", [41 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr = internal global ptr @smb2_get_data_area_len._entry, section ".printk_index", align 4
@smb2_get_data_area_len._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016ksmbd: offset %d too large\0A\00", [34 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr.30 = internal global ptr @smb2_get_data_area_len._entry.28, section ".printk_index", align 4
@smb2_get_data_area_len._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016ksmbd: Request is larger than maximum stream protocol length(%u): %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@smb2_get_data_area_len._entry_ptr.33 = internal global ptr @smb2_get_data_area_len._entry.31, section ".printk_index", align 4
@smb2_validate_credit_charge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ksmbd: Insufficient credit charge, given: %d, needed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"smb2_validate_credit_charge\00", [36 x i8] zeroinitializer }, align 32
@smb2_validate_credit_charge._entry_ptr = internal global ptr @smb2_validate_credit_charge._entry, section ".printk_index", align 4
@smb2_validate_credit_charge._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ksmbd: Too large credit charge: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@smb2_validate_credit_charge._entry_ptr.38 = internal global ptr @smb2_validate_credit_charge._entry.36, section ".printk_index", align 4
@smb2_validate_credit_charge._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016ksmbd: Insufficient credits granted, given: %u, granted: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@smb2_validate_credit_charge._entry_ptr.41 = internal global ptr @smb2_validate_credit_charge._entry.39, section ".printk_index", align 4
@smb2_validate_credit_charge._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016ksmbd: Limits exceeding the maximum allowable outstanding requests, given : %u, pending : %u\0A\00", [32 x i8] zeroinitializer }, align 32
@smb2_validate_credit_charge._entry_ptr.44 = internal global ptr @smb2_validate_credit_charge._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 6144, i64 9216]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 369098944]
@__sancov_gen_cov_switch_values.46 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 4, i64 7, i64 8, i64 9, i64 10, i64 13, i64 15, i64 16]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 4, i64 6, i64 8, i64 9]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 370, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 377, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"smb2_req_struct_sizes\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 31, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 385, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 394, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 423, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 430, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 223, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 234, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 244, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 172, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 177, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 180, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 326, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 330, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 336, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private constant [23 x i8] c"../fs/ksmbd/smb2misc.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 342, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @ksmbd_smb2_check_message._entry, ptr @ksmbd_smb2_check_message._entry.12, ptr @ksmbd_smb2_check_message._entry.15, ptr @ksmbd_smb2_check_message._entry.3, ptr @ksmbd_smb2_check_message._entry.6, ptr @ksmbd_smb2_check_message._entry.9, ptr @ksmbd_smb2_check_message._entry_ptr, ptr @ksmbd_smb2_check_message._entry_ptr.11, ptr @ksmbd_smb2_check_message._entry_ptr.14, ptr @ksmbd_smb2_check_message._entry_ptr.17, ptr @ksmbd_smb2_check_message._entry_ptr.5, ptr @ksmbd_smb2_check_message._entry_ptr.8, ptr @smb2_calc_size._entry, ptr @smb2_calc_size._entry.20, ptr @smb2_calc_size._entry.23, ptr @smb2_calc_size._entry_ptr, ptr @smb2_calc_size._entry_ptr.22, ptr @smb2_calc_size._entry_ptr.25, ptr @smb2_get_data_area_len._entry, ptr @smb2_get_data_area_len._entry.28, ptr @smb2_get_data_area_len._entry.31, ptr @smb2_get_data_area_len._entry_ptr, ptr @smb2_get_data_area_len._entry_ptr.30, ptr @smb2_get_data_area_len._entry_ptr.33, ptr @smb2_validate_credit_charge._entry, ptr @smb2_validate_credit_charge._entry.36, ptr @smb2_validate_credit_charge._entry.39, ptr @smb2_validate_credit_charge._entry.42, ptr @smb2_validate_credit_charge._entry_ptr, ptr @smb2_validate_credit_charge._entry_ptr.38, ptr @smb2_validate_credit_charge._entry_ptr.41, ptr @smb2_validate_credit_charge._entry_ptr.44, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @smb2_req_struct_sizes, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb2_check_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb2_check_message._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_req_struct_sizes to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb2_check_message._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb2_check_message._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb2_check_message._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_smb2_check_message._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_size._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_calc_size._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_get_data_area_len._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_validate_credit_charge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_validate_credit_charge._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_validate_credit_charge._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb2_validate_credit_charge._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_smb2_check_message(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %request_buf.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %request_buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_buf.i, align 4
  %next_smb2_rcv_hdr_off.i = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 6
  %2 = ptrtoint ptr %next_smb2_rcv_hdr_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_smb2_rcv_hdr_off.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %NextCommand = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 7
  %4 = ptrtoint ptr %NextCommand to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %NextCommand, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %and.i = and i32 %8, 16777215
  %sub = sub i32 %and.i, %3
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then
  %len.0 = phi i32 [ %6, %if.then ], [ %sub, %if.else ]
  %Flags.i = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 6
  %9 = ptrtoint ptr %Flags.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %Flags.i, align 1
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %StructureSize = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 1
  %12 = ptrtoint ptr %StructureSize to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %StructureSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp11.not = icmp eq i16 %13, 16384
  br i1 %cmp11.not, label %if.end23, label %do.body

do.body:                                          ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %14 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %15 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv18 = zext i16 %15 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv18) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 4
  %16 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %Command, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv24 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %18)
  %cmp25 = icmp ugt i16 %18, 18
  br i1 %cmp25, label %do.body28, label %if.end40

do.body28:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %19 = load i32, ptr @ksmbd_debug_types, align 4
  %and29 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.cleanup_crit_edge, label %do.end34

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv24) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end23
  %arrayidx = getelementptr [19 x i16], ptr @smb2_req_struct_sizes, i32 0, i32 %conv24
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %StructureSize2 = getelementptr inbounds %struct.smb2_pdu, ptr %add.ptr1.i, i32 0, i32 1
  %22 = ptrtoint ptr %StructureSize2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %StructureSize2, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp43.not = icmp eq i16 %21, %23
  br i1 %cmp43.not, label %if.end40.if.end103_crit_edge, label %if.then45

if.end40.if.end103_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp2(i16 4608, i16 %17)
  %cond = icmp eq i16 %17, 4608
  %Status73 = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 3
  %24 = ptrtoint ptr %Status73 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %Status73, align 1
  br i1 %cond, label %land.lhs.true72, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp48 = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %23)
  %cmp52.not = icmp eq i16 %23, 2304
  %or.cond = select i1 %cmp48, i1 %cmp52.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end103_crit_edge, label %do.body55

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

do.body55:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %26 = load i32, ptr @ksmbd_debug_types, align 4
  %and56 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.cleanup_crit_edge, label %do.end61

do.body55.cleanup_crit_edge:                      ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end61:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #6
  %27 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv64 = zext i16 %27 to i32
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv64, i32 noundef %conv24) #7
  br label %cleanup

land.lhs.true72:                                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp74 = icmp eq i32 %25, 0
  br i1 %cmp74, label %land.lhs.true76, label %land.lhs.true72.if.end103_crit_edge

land.lhs.true72.if.end103_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

land.lhs.true76:                                  ; preds = %land.lhs.true72
  %28 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv78 = zext i16 %28 to i32
  %29 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i16 %23, label %do.body87 [
    i16 6144, label %land.lhs.true76.if.end103_crit_edge
    i16 9216, label %land.lhs.true76.if.end103_crit_edge211
  ]

land.lhs.true76.if.end103_crit_edge211:           ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

land.lhs.true76.if.end103_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end103

do.body87:                                        ; preds = %land.lhs.true76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %30 = load i32, ptr @ksmbd_debug_types, align 4
  %and88 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.cleanup_crit_edge, label %do.end93

do.body87.cleanup_crit_edge:                      ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv78) #7
  br label %cleanup

if.end103:                                        ; preds = %land.lhs.true76.if.end103_crit_edge, %land.lhs.true76.if.end103_crit_edge211, %land.lhs.true72.if.end103_crit_edge, %land.lhs.true.if.end103_crit_edge, %if.end40.if.end103_crit_edge
  %31 = tail call i16 @llvm.bswap.i16(i16 %23) #4
  %conv2.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %17)
  %cmp.i = icmp eq i16 %17, 2560
  %spec.select.v = select i1 %cmp.i, i32 40, i32 64
  %spec.select = add nuw nsw i32 %spec.select.v, %conv2.i
  %32 = lshr i32 216875, %conv24
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.i = icmp eq i32 %33, 0
  br i1 %cmp7.i, label %if.end103.do.body44.i_crit_edge, label %if.end10.i

if.end103.do.body44.i_crit_edge:                  ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body44.i

if.end10.i:                                       ; preds = %if.end103
  %Status.i.i = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 3
  %34 = ptrtoint ptr %Status.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %Status.i.i, align 1
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %35, label %land.lhs.true2.i.i [
    i32 0, label %if.end10.i.if.end.i.i_crit_edge
    i32 369098944, label %if.end10.i.if.end.i.i_crit_edge212
  ]

if.end10.i.if.end.i.i_crit_edge212:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true2.i.i:                               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %23)
  %cmp3.i.i = icmp eq i16 %23, 2304
  br i1 %cmp3.i.i, label %land.lhs.true2.i.i.do.body.i_crit_edge, label %land.lhs.true2.i.i.if.end.i.i_crit_edge

land.lhs.true2.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

land.lhs.true2.i.i.do.body.i_crit_edge:           ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end.i.i:                                       ; preds = %land.lhs.true2.i.i.if.end.i.i_crit_edge, %if.end10.i.if.end.i.i_crit_edge, %if.end10.i.if.end.i.i_crit_edge212
  %conv5.i.i = zext i16 %17 to i32
  %37 = add nsw i32 %conv5.i.i, -256
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 24) #4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %38, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 2, label %sw.bb8.i.i
    i32 4, label %sw.bb11.i.i
    i32 15, label %sw.bb18.i.i
    i32 16, label %sw.bb20.i.i
    i32 7, label %sw.bb22.i.i
    i32 8, label %sw.bb25.i.i
    i32 13, label %sw.bb33.i.i
    i32 9, label %sw.bb36.i.i
    i32 10, label %sw.bb42.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %SecurityBufferOffset.i.i = getelementptr inbounds %struct.smb2_sess_setup_req, ptr %add.ptr1.i, i32 0, i32 6
  %40 = ptrtoint ptr %SecurityBufferOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %SecurityBufferOffset.i.i, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #4
  %conv6.i.i = zext i16 %42 to i32
  %SecurityBufferLength.i.i = getelementptr inbounds %struct.smb2_sess_setup_req, ptr %add.ptr1.i, i32 0, i32 7
  %43 = ptrtoint ptr %SecurityBufferLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %SecurityBufferLength.i.i, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #4
  %conv7.i.i = zext i16 %45 to i32
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %PathOffset.i.i = getelementptr inbounds %struct.smb2_tree_connect_req, ptr %add.ptr1.i, i32 0, i32 3
  %46 = ptrtoint ptr %PathOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %PathOffset.i.i, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #4
  %conv9.i.i = zext i16 %48 to i32
  %PathLength.i.i = getelementptr inbounds %struct.smb2_tree_connect_req, ptr %add.ptr1.i, i32 0, i32 4
  %49 = ptrtoint ptr %PathLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %PathLength.i.i, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #4
  %conv10.i.i = zext i16 %51 to i32
  br label %sw.epilog.i.i

sw.bb11.i.i:                                      ; preds = %if.end.i.i
  %CreateContextsLength.i.i = getelementptr inbounds %struct.smb2_create_req, ptr %add.ptr1.i, i32 0, i32 15
  %52 = ptrtoint ptr %CreateContextsLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %CreateContextsLength.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool12.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool12.not.i.i, label %if.end15.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %CreateContextsOffset.i.i = getelementptr inbounds %struct.smb2_create_req, ptr %add.ptr1.i, i32 0, i32 14
  %54 = ptrtoint ptr %CreateContextsOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %CreateContextsOffset.i.i, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #4
  %57 = tail call i32 @llvm.bswap.i32(i32 %53) #4
  br label %sw.epilog.i.i

if.end15.i.i:                                     ; preds = %sw.bb11.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %NameOffset.i.i = getelementptr inbounds %struct.smb2_create_req, ptr %add.ptr1.i, i32 0, i32 12
  %58 = ptrtoint ptr %NameOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %NameOffset.i.i, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #4
  %conv16.i.i = zext i16 %60 to i32
  %NameLength.i.i = getelementptr inbounds %struct.smb2_create_req, ptr %add.ptr1.i, i32 0, i32 13
  %61 = ptrtoint ptr %NameLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %NameLength.i.i, align 1
  %63 = tail call i16 @llvm.bswap.i16(i16 %62) #4
  %conv17.i.i = zext i16 %63 to i32
  br label %sw.epilog.i.i

sw.bb18.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %InputBufferOffset.i.i = getelementptr inbounds %struct.smb2_query_info_req, ptr %add.ptr1.i, i32 0, i32 5
  %64 = ptrtoint ptr %InputBufferOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %InputBufferOffset.i.i, align 1
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #4
  %conv19.i.i = zext i16 %66 to i32
  %InputBufferLength.i.i = getelementptr inbounds %struct.smb2_query_info_req, ptr %add.ptr1.i, i32 0, i32 7
  %67 = ptrtoint ptr %InputBufferLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %InputBufferLength.i.i, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #4
  br label %sw.epilog.i.i

sw.bb20.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %BufferOffset.i.i = getelementptr inbounds %struct.smb2_set_info_req, ptr %add.ptr1.i, i32 0, i32 5
  %70 = ptrtoint ptr %BufferOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %BufferOffset.i.i, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71) #4
  %conv21.i.i = zext i16 %72 to i32
  %BufferLength.i.i = getelementptr inbounds %struct.smb2_set_info_req, ptr %add.ptr1.i, i32 0, i32 4
  %73 = ptrtoint ptr %BufferLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %BufferLength.i.i, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #4
  br label %sw.epilog.i.i

sw.bb22.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %ReadChannelInfoOffset.i.i = getelementptr inbounds %struct.smb2_read_req, ptr %add.ptr1.i, i32 0, i32 11
  %76 = ptrtoint ptr %ReadChannelInfoOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %ReadChannelInfoOffset.i.i, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #4
  %conv23.i.i = zext i16 %78 to i32
  %ReadChannelInfoLength.i.i = getelementptr inbounds %struct.smb2_read_req, ptr %add.ptr1.i, i32 0, i32 12
  %79 = ptrtoint ptr %ReadChannelInfoLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %ReadChannelInfoLength.i.i, align 1
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #4
  %conv24.i.i = zext i16 %81 to i32
  br label %sw.epilog.i.i

sw.bb25.i.i:                                      ; preds = %if.end.i.i
  %DataOffset.i.i = getelementptr inbounds %struct.smb2_write_req, ptr %add.ptr1.i, i32 0, i32 2
  %82 = ptrtoint ptr %DataOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %DataOffset.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool26.not.i.i = icmp eq i16 %83, 0
  br i1 %tobool26.not.i.i, label %if.end30.i.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #4
  %conv29.i.i = zext i16 %84 to i32
  %Length.i.i = getelementptr inbounds %struct.smb2_write_req, ptr %add.ptr1.i, i32 0, i32 3
  %85 = ptrtoint ptr %Length.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %Length.i.i, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #4
  br label %sw.epilog.i.i

if.end30.i.i:                                     ; preds = %sw.bb25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %WriteChannelInfoOffset.i.i = getelementptr inbounds %struct.smb2_write_req, ptr %add.ptr1.i, i32 0, i32 9
  %88 = ptrtoint ptr %WriteChannelInfoOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %WriteChannelInfoOffset.i.i, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #4
  %conv31.i.i = zext i16 %90 to i32
  %WriteChannelInfoLength.i.i = getelementptr inbounds %struct.smb2_write_req, ptr %add.ptr1.i, i32 0, i32 10
  %91 = ptrtoint ptr %WriteChannelInfoLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %WriteChannelInfoLength.i.i, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #4
  %conv32.i.i = zext i16 %93 to i32
  br label %sw.epilog.i.i

sw.bb33.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %FileNameOffset.i.i = getelementptr inbounds %struct.smb2_query_directory_req, ptr %add.ptr1.i, i32 0, i32 7
  %94 = ptrtoint ptr %FileNameOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %FileNameOffset.i.i, align 1
  %96 = tail call i16 @llvm.bswap.i16(i16 %95) #4
  %conv34.i.i = zext i16 %96 to i32
  %FileNameLength.i.i = getelementptr inbounds %struct.smb2_query_directory_req, ptr %add.ptr1.i, i32 0, i32 8
  %97 = ptrtoint ptr %FileNameLength.i.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %FileNameLength.i.i, align 1
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #4
  %conv35.i.i = zext i16 %99 to i32
  br label %sw.epilog.i.i

sw.bb36.i.i:                                      ; preds = %if.end.i.i
  %LockCount.i.i = getelementptr inbounds %struct.smb2_lock_req, ptr %add.ptr1.i, i32 0, i32 2
  %100 = ptrtoint ptr %LockCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %LockCount.i.i, align 1
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %102)
  %cmp38.i.i = icmp ugt i16 %102, 1
  br i1 %cmp38.i.i, label %if.then40.i.i, label %sw.bb36.i.i.if.else.i.i_crit_edge

sw.bb36.i.i.if.else.i.i_crit_edge:                ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

if.then40.i.i:                                    ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv37.i.i = zext i16 %102 to i32
  %103 = mul nuw nsw i32 %conv37.i.i, 24
  %mul.i.i = add nsw i32 %103, -24
  br label %if.else.i.i

sw.bb42.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %InputOffset.i.i = getelementptr inbounds %struct.smb2_ioctl_req, ptr %add.ptr1.i, i32 0, i32 6
  %104 = ptrtoint ptr %InputOffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %InputOffset.i.i, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #4
  %InputCount.i.i = getelementptr inbounds %struct.smb2_ioctl_req, ptr %add.ptr1.i, i32 0, i32 7
  %107 = ptrtoint ptr %InputCount.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %InputCount.i.i, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #4
  br label %sw.epilog.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %110 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool43.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool43.not.i.i, label %do.body.i.i.if.else.i.i_crit_edge, label %do.end.i.i

do.body.i.i.if.else.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #7
  br label %if.else.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb42.i.i, %sw.bb33.i.i, %if.end30.i.i, %if.then27.i.i, %sw.bb22.i.i, %sw.bb20.i.i, %sw.bb18.i.i, %if.end15.i.i, %if.then13.i.i, %sw.bb8.i.i, %sw.bb.i.i
  %offset.0.i = phi i32 [ %106, %sw.bb42.i.i ], [ %conv34.i.i, %sw.bb33.i.i ], [ %conv31.i.i, %if.end30.i.i ], [ %conv29.i.i, %if.then27.i.i ], [ %conv23.i.i, %sw.bb22.i.i ], [ %conv21.i.i, %sw.bb20.i.i ], [ %conv19.i.i, %sw.bb18.i.i ], [ %conv16.i.i, %if.end15.i.i ], [ %56, %if.then13.i.i ], [ %conv9.i.i, %sw.bb8.i.i ], [ %conv6.i.i, %sw.bb.i.i ]
  %data_length.0.i = phi i32 [ %109, %sw.bb42.i.i ], [ %conv35.i.i, %sw.bb33.i.i ], [ %conv32.i.i, %if.end30.i.i ], [ %87, %if.then27.i.i ], [ %conv24.i.i, %sw.bb22.i.i ], [ %75, %sw.bb20.i.i ], [ %69, %sw.bb18.i.i ], [ %conv17.i.i, %if.end15.i.i ], [ %57, %if.then13.i.i ], [ %conv10.i.i, %sw.bb8.i.i ], [ %conv7.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %offset.0.i)
  %cmp49.i.i = icmp ugt i32 %offset.0.i, 4096
  br i1 %cmp49.i.i, label %do.body52.i.i, label %sw.epilog.i.i.if.else.i.i_crit_edge

sw.epilog.i.i.if.else.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i.i

do.body52.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %111 = load i32, ptr @ksmbd_debug_types, align 4
  %and53.i.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %do.body52.i.i.cleanup_crit_edge, label %do.end58.i.i

do.body52.i.i.cleanup_crit_edge:                  ; preds = %do.body52.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end58.i.i:                                     ; preds = %do.body52.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call60.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %offset.0.i) #7
  br label %cleanup

if.else.i.i:                                      ; preds = %sw.epilog.i.i.if.else.i.i_crit_edge, %do.end.i.i, %do.body.i.i.if.else.i.i_crit_edge, %if.then40.i.i, %sw.bb36.i.i.if.else.i.i_crit_edge
  %data_length.080.i = phi i32 [ %data_length.0.i, %sw.epilog.i.i.if.else.i.i_crit_edge ], [ 0, %sw.bb36.i.i.if.else.i.i_crit_edge ], [ %mul.i.i, %if.then40.i.i ], [ 0, %do.end.i.i ], [ 0, %do.body.i.i.if.else.i.i_crit_edge ]
  %offset.079.i = phi i32 [ %offset.0.i, %sw.epilog.i.i.if.else.i.i_crit_edge ], [ 0, %sw.bb36.i.i.if.else.i.i_crit_edge ], [ 112, %if.then40.i.i ], [ 0, %do.end.i.i ], [ 0, %do.body.i.i.if.else.i.i_crit_edge ]
  %conv64.i.i = zext i32 %offset.079.i to i64
  %conv65.i.i = zext i32 %data_length.080.i to i64
  %add.i.i = add nuw nsw i64 %conv64.i.i, %conv65.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %add.i.i)
  %cmp66.i.i = icmp ugt i64 %add.i.i, 16777215
  br i1 %cmp66.i.i, label %do.body69.i.i, label %if.else.i.i.do.body.i_crit_edge

if.else.i.i.do.body.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body69.i.i:                                    ; preds = %if.else.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %112 = load i32, ptr @ksmbd_debug_types, align 4
  %and70.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i.i)
  %tobool71.not.i.i = icmp eq i32 %and70.i.i, 0
  br i1 %tobool71.not.i.i, label %do.body69.i.i.cleanup_crit_edge, label %do.end75.i.i

do.body69.i.i.cleanup_crit_edge:                  ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end75.i.i:                                     ; preds = %do.body69.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call80.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef 16777215, i64 noundef %add.i.i) #7
  br label %cleanup

do.body.i:                                        ; preds = %if.else.i.i.do.body.i_crit_edge, %land.lhs.true2.i.i.do.body.i_crit_edge
  %offset.1.i = phi i32 [ 0, %land.lhs.true2.i.i.do.body.i_crit_edge ], [ %offset.079.i, %if.else.i.i.do.body.i_crit_edge ]
  %data_length.1.i = phi i32 [ 0, %land.lhs.true2.i.i.do.body.i_crit_edge ], [ %data_length.080.i, %if.else.i.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %113 = load i32, ptr @ksmbd_debug_types, align 4
  %and.i205 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool14.not.i = icmp eq i32 %and.i205, 0
  br i1 %tobool14.not.i, label %do.body.i.do.end20.i_crit_edge, label %do.end.i

do.body.i.do.end20.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %data_length.1.i, i32 noundef %offset.1.i) #7
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i, %do.body.i.do.end20.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_length.1.i)
  %cmp21.not.i = icmp eq i32 %data_length.1.i, 0
  br i1 %cmp21.not.i, label %do.end20.i.do.body44.i_crit_edge, label %if.then23.i

do.end20.i.do.body44.i_crit_edge:                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body44.i

if.then23.i:                                      ; preds = %do.end20.i
  %add24.i = add nuw nsw i32 %offset.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %spec.select)
  %cmp25.i = icmp ult i32 %add24.i, %spec.select
  br i1 %cmp25.i, label %do.body28.i, label %if.end41.i

do.body28.i:                                      ; preds = %if.then23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %114 = load i32, ptr @ksmbd_debug_types, align 4
  %and29.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.body28.i.cleanup_crit_edge, label %do.end34.i

do.body28.i.cleanup_crit_edge:                    ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end34.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %add24.i, i32 noundef %spec.select) #7
  br label %cleanup

if.end41.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  %add42.i = add i32 %data_length.1.i, %offset.1.i
  br label %do.body44.i

do.body44.i:                                      ; preds = %if.end41.i, %do.end20.i.do.body44.i_crit_edge, %if.end103.do.body44.i_crit_edge
  %clc_len.1 = phi i32 [ %spec.select, %if.end103.do.body44.i_crit_edge ], [ %spec.select, %do.end20.i.do.body44.i_crit_edge ], [ %add42.i, %if.end41.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %115 = load i32, ptr @ksmbd_debug_types, align 4
  %and45.i = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %do.body44.i.if.end107_crit_edge, label %do.end50.i

do.body44.i.if.end107_crit_edge:                  ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

do.end50.i:                                       ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %clc_len.1) #7
  br label %if.end107

if.end107:                                        ; preds = %do.end50.i, %do.body44.i.if.end107_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %clc_len.1)
  %cmp108.not = icmp eq i32 %len.0, %clc_len.1
  %add = add i32 %len.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %clc_len.1, i32 %add)
  %cmp111 = icmp eq i32 %clc_len.1, %add
  %or.cond203 = or i1 %cmp108.not, %cmp111
  br i1 %or.cond203, label %if.end107.validate_credit_crit_edge, label %if.end114

if.end107.validate_credit_crit_edge:              ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_credit

if.end114:                                        ; preds = %if.end107
  %add115 = add i32 %clc_len.1, 7
  %and116 = and i32 %add115, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and116, i32 %len.0)
  %cmp117 = icmp eq i32 %and116, %len.0
  br i1 %cmp117, label %if.end114.validate_credit_crit_edge, label %if.end120

if.end114.validate_credit_crit_edge:              ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_credit

if.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_cmp4(i32 %clc_len.1, i32 %len.0)
  %cmp121 = icmp ult i32 %clc_len.1, %len.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %116 = load i32, ptr @ksmbd_debug_types, align 4
  %and125 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %cmp121, label %do.body124, label %do.body137

do.body124:                                       ; preds = %if.end120
  br i1 %tobool126.not, label %do.body124.validate_credit_crit_edge, label %do.end130

do.body124.validate_credit_crit_edge:             ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_credit

do.end130:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #6
  %MessageId = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 8
  %117 = ptrtoint ptr %MessageId to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %MessageId, align 1
  %119 = tail call i64 @llvm.bswap.i64(i64 %118)
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %len.0, i32 noundef %clc_len.1, i32 noundef %conv24, i64 noundef %119) #7
  br label %validate_credit

do.body137:                                       ; preds = %if.end120
  br i1 %tobool126.not, label %do.body137.cleanup_crit_edge, label %do.end143

do.body137.cleanup_crit_edge:                     ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end143:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #6
  %MessageId145 = getelementptr inbounds %struct.smb2_hdr, ptr %add.ptr1.i, i32 0, i32 8
  %120 = ptrtoint ptr %MessageId145 to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %MessageId145, align 1
  %122 = tail call i64 @llvm.bswap.i64(i64 %121)
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %len.0, i32 noundef %clc_len.1, i32 noundef %conv24, i64 noundef %122) #7
  br label %cleanup

validate_credit:                                  ; preds = %do.end130, %do.body124.validate_credit_crit_edge, %if.end114.validate_credit_crit_edge, %if.end107.validate_credit_crit_edge
  %123 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %work, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 8
  %capabilities = getelementptr inbounds %struct.smb_version_values, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %capabilities, align 4
  %and151 = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %validate_credit.cleanup_crit_edge, label %land.lhs.true153

validate_credit.cleanup_crit_edge:                ; preds = %validate_credit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true153:                                 ; preds = %validate_credit
  %call155 = tail call fastcc i32 @smb2_validate_credit_charge(ptr noundef %124, ptr noundef %add.ptr1.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %land.lhs.true153.cleanup_crit_edge, label %if.then157

land.lhs.true153.cleanup_crit_edge:               ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then157:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #6
  %129 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %work, align 8
  %ops = getelementptr inbounds %struct.ksmbd_conn, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ops, align 4
  %set_rsp_status = getelementptr inbounds %struct.smb_version_ops, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %set_rsp_status to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %set_rsp_status, align 4
  tail call void %134(ptr noundef %work, i32 noundef 218104000) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then157, %land.lhs.true153.cleanup_crit_edge, %validate_credit.cleanup_crit_edge, %do.end143, %do.body137.cleanup_crit_edge, %do.end34.i, %do.body28.i.cleanup_crit_edge, %do.end75.i.i, %do.body69.i.i.cleanup_crit_edge, %do.end58.i.i, %do.body52.i.i.cleanup_crit_edge, %do.end93, %do.body87.cleanup_crit_edge, %do.end61, %do.body55.cleanup_crit_edge, %do.end34, %do.body28.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then157 ], [ 1, %if.end6.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.end34 ], [ 1, %do.body28.cleanup_crit_edge ], [ 1, %do.end61 ], [ 1, %do.body55.cleanup_crit_edge ], [ 1, %do.end93 ], [ 1, %do.body87.cleanup_crit_edge ], [ 1, %do.end143 ], [ 1, %do.body137.cleanup_crit_edge ], [ 0, %land.lhs.true153.cleanup_crit_edge ], [ 0, %validate_credit.cleanup_crit_edge ], [ 1, %do.end34.i ], [ 1, %do.body28.i.cleanup_crit_edge ], [ 1, %do.end58.i.i ], [ 1, %do.body52.i.i.cleanup_crit_edge ], [ 1, %do.end75.i.i ], [ 1, %do.body69.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb2_validate_credit_charge(ptr noundef %conn, ptr nocapture noundef readonly %hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %CreditCharge = getelementptr inbounds %struct.smb2_hdr, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %CreditCharge to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %CreditCharge, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %Command = getelementptr inbounds %struct.smb2_hdr, ptr %hdr, i32 0, i32 4
  %3 = ptrtoint ptr %Command to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %Command, align 1
  %conv = zext i16 %4 to i32
  %5 = add nsw i32 %conv, -2048
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 24)
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 9, label %sw.bb1
    i32 0, label %sw.bb3
    i32 1, label %sw.bb5
    i32 6, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %InputBufferLength.i = getelementptr inbounds %struct.smb2_query_info_req, ptr %hdr, i32 0, i32 7
  %8 = ptrtoint ptr %InputBufferLength.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %InputBufferLength.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  %OutputBufferLength.i = getelementptr inbounds %struct.smb2_query_info_req, ptr %hdr, i32 0, i32 4
  %11 = ptrtoint ptr %OutputBufferLength.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %OutputBufferLength.i, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %add.i = add i32 %13, %10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %BufferLength.i = getelementptr inbounds %struct.smb2_set_info_req, ptr %hdr, i32 0, i32 4
  %14 = ptrtoint ptr %BufferLength.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %BufferLength.i, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %Length.i = getelementptr inbounds %struct.smb2_read_req, ptr %hdr, i32 0, i32 4
  %17 = ptrtoint ptr %Length.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %Length.i, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %Length.i140 = getelementptr inbounds %struct.smb2_write_req, ptr %hdr, i32 0, i32 3
  %20 = ptrtoint ptr %Length.i140 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %Length.i140, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %OutputBufferLength.i141 = getelementptr inbounds %struct.smb2_query_directory_req, ptr %hdr, i32 0, i32 9
  %23 = ptrtoint ptr %OutputBufferLength.i141 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %OutputBufferLength.i141, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %InputCount.i = getelementptr inbounds %struct.smb2_ioctl_req, ptr %hdr, i32 0, i32 7
  %26 = ptrtoint ptr %InputCount.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %InputCount.i, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  %OutputCount.i = getelementptr inbounds %struct.smb2_ioctl_req, ptr %hdr, i32 0, i32 10
  %29 = ptrtoint ptr %OutputCount.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %OutputCount.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  %add.i142 = add i32 %31, %28
  %MaxInputResponse.i = getelementptr inbounds %struct.smb2_ioctl_req, ptr %hdr, i32 0, i32 8
  %32 = ptrtoint ptr %MaxInputResponse.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %MaxInputResponse.i, align 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %MaxOutputResponse.i = getelementptr inbounds %struct.smb2_ioctl_req, ptr %hdr, i32 0, i32 11
  %35 = ptrtoint ptr %MaxOutputResponse.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %MaxOutputResponse.i, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #4
  %add.i143 = add i32 %37, %34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %expect_resp_len.0 = phi i32 [ %add.i143, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %req_len.0 = phi i32 [ %add.i142, %sw.bb9 ], [ %25, %sw.bb7 ], [ %22, %sw.bb5 ], [ %19, %sw.bb3 ], [ %16, %sw.bb1 ], [ %add.i, %sw.bb ], [ 1, %entry.sw.epilog_crit_edge ]
  %38 = tail call i16 @llvm.umax.i16(i16 %2, i16 1)
  %39 = tail call i32 @llvm.umax.i32(i32 %req_len.0, i32 %expect_resp_len.0)
  %sub = add i32 %39, 65535
  %div139 = lshr i32 %sub, 16
  %conv26 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div139, i32 %conv26)
  %cmp27 = icmp ugt i32 %div139, %conv26
  br i1 %cmp27, label %do.body, label %if.else

do.body:                                          ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %40 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv26, i32 noundef %div139) #7
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %41 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %conn, align 8
  %max_credits = getelementptr inbounds %struct.smb_version_values, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %max_credits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv26)
  %cmp37 = icmp ult i32 %44, %conv26
  br i1 %cmp37, label %do.body40, label %if.end54

do.body40:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %45 = load i32, ptr @ksmbd_debug_types, align 4
  %and41 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %do.end46

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv26) #7
  br label %cleanup

if.end54:                                         ; preds = %if.else
  %credits_lock = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %credits_lock) #4
  %total_credits = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 15
  %46 = ptrtoint ptr %total_credits to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %total_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv26)
  %cmp56 = icmp ult i32 %47, %conv26
  br i1 %cmp56, label %do.body59, label %if.end54.if.end73_crit_edge

if.end54.if.end73_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

do.body59:                                        ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %48 = load i32, ptr @ksmbd_debug_types, align 4
  %and60 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body59.if.end73_crit_edge, label %do.end65

do.body59.if.end73_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #6
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv26, i32 noundef %47) #7
  br label %if.end73

if.end73:                                         ; preds = %do.end65, %do.body59.if.end73_crit_edge, %if.end54.if.end73_crit_edge
  %ret.0 = phi i32 [ 0, %if.end54.if.end73_crit_edge ], [ 1, %do.end65 ], [ 1, %do.body59.if.end73_crit_edge ]
  %outstanding_credits = getelementptr inbounds %struct.ksmbd_conn, ptr %conn, i32 0, i32 16
  %49 = ptrtoint ptr %outstanding_credits to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %outstanding_credits, align 8
  %conv74 = zext i32 %50 to i64
  %conv75 = zext i16 %38 to i64
  %add76 = add nuw nsw i64 %conv74, %conv75
  %51 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %conn, align 8
  %max_credits78 = getelementptr inbounds %struct.smb_version_values, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %max_credits78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_credits78, align 4
  %conv79 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add76, i64 %conv79)
  %cmp80 = icmp ugt i64 %add76, %conv79
  br i1 %cmp80, label %do.body83, label %if.else97

do.body83:                                        ; preds = %if.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %55 = load i32, ptr @ksmbd_debug_types, align 4
  %and84 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body83.if.end101_crit_edge, label %do.end89

do.body83.if.end101_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end101

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #6
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv26, i32 noundef %50) #7
  br label %if.end101

if.else97:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  %add100 = add i32 %50, %conv26
  %56 = ptrtoint ptr %outstanding_credits to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add100, ptr %outstanding_credits, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.else97, %do.end89, %do.body83.if.end101_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.else97 ], [ 1, %do.end89 ], [ 1, %do.body83.if.end101_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %credits_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %do.end46, %do.body40.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end101 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end ], [ 1, %do.body.cleanup_crit_edge ], [ 1, %do.end46 ], [ 1, %do.body40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smb2_negotiate_request(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ksmbd_smb_negotiate_common(ptr noundef %work, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksmbd_smb_negotiate_common(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/smb2misc.c", i32 370, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_smb2_check_message._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_smb2_check_message._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/smb2misc.c", i32 377, i32 3}
!8 = !{ptr @ksmbd_smb2_check_message._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ksmbd_smb2_check_message._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/smb2misc.c", i32 385, i32 4}
!12 = !{ptr @ksmbd_smb2_check_message._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ksmbd_smb2_check_message._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ksmbd/smb2misc.c", i32 394, i32 4}
!16 = !{ptr @ksmbd_smb2_check_message._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ksmbd_smb2_check_message._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ksmbd/smb2misc.c", i32 423, i32 4}
!20 = !{ptr @ksmbd_smb2_check_message._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ksmbd_smb2_check_message._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ksmbd/smb2misc.c", i32 430, i32 3}
!24 = !{ptr @ksmbd_smb2_check_message._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ksmbd_smb2_check_message._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @smb2_req_struct_sizes, !27, !"smb2_req_struct_sizes", i1 false, i1 false}
!27 = !{!"../fs/ksmbd/smb2misc.c", i32 31, i32 21}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/ksmbd/smb2misc.c", i32 223, i32 2}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @smb2_calc_size._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @smb2_calc_size._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ksmbd/smb2misc.c", i32 234, i32 4}
!35 = !{ptr @smb2_calc_size._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @smb2_calc_size._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ksmbd/smb2misc.c", i32 244, i32 2}
!39 = !{ptr @smb2_calc_size._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @smb2_calc_size._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"has_smb2_data_area", i1 false, i1 false}
!42 = !{!"../fs/ksmbd/smb2misc.c", i32 59, i32 19}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ksmbd/smb2misc.c", i32 172, i32 3}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @smb2_get_data_area_len._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @smb2_get_data_area_len._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ksmbd/smb2misc.c", i32 177, i32 3}
!50 = !{ptr @smb2_get_data_area_len._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @smb2_get_data_area_len._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ksmbd/smb2misc.c", i32 180, i32 3}
!54 = !{ptr @smb2_get_data_area_len._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @smb2_get_data_area_len._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ksmbd/smb2misc.c", i32 326, i32 3}
!58 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @smb2_validate_credit_charge._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @smb2_validate_credit_charge._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ksmbd/smb2misc.c", i32 330, i32 3}
!63 = !{ptr @smb2_validate_credit_charge._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @smb2_validate_credit_charge._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/ksmbd/smb2misc.c", i32 336, i32 3}
!67 = !{ptr @smb2_validate_credit_charge._entry.39, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @smb2_validate_credit_charge._entry_ptr.41, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ksmbd/smb2misc.c", i32 342, i32 3}
!71 = !{ptr @smb2_validate_credit_charge._entry.42, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @smb2_validate_credit_charge._entry_ptr.44, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
