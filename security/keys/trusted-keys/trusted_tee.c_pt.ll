; ModuleID = '/llk/IR_all_yes/security/keys/trusted-keys/trusted_tee.c_pt.bc'
source_filename = "../security/keys/trusted-keys/trusted_tee.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trusted_key_ops = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.tee_client_driver = type { ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tee_client_device_id = type { %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.tee_ioctl_invoke_arg = type { i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_ioctl_param = type { i64, i64, i64, i64 }
%struct.tee_param = type { i64, %union.anon.71 }
%union.anon.71 = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.trusted_key_payload = type { %struct.callback_head, i32, i32, i8, i8, [129 x i8], [512 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.tee_param_memref = type { i32, i32, ptr }
%struct.tee_ioctl_open_session_arg = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }

@trusted_key_tee_ops = dso_local global { %struct.trusted_key_ops, [40 x i8] } { %struct.trusted_key_ops { i8 0, ptr @trusted_tee_init, ptr @trusted_tee_seal, ptr @trusted_tee_unseal, ptr @trusted_tee_get_random, ptr @trusted_tee_exit }, [40 x i8] zeroinitializer }, align 32
@trusted_key_driver = internal global { %struct.tee_client_driver, [48 x i8] } { %struct.tee_client_driver { ptr @trusted_key_id_table, %struct.device_driver { ptr @.str, ptr @tee_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @trusted_key_probe, ptr null, ptr @trusted_key_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [48 x i8] zeroinitializer }, align 32
@trusted_key_id_table = internal constant { [2 x %struct.tee_client_device_id], [32 x i8] } { [2 x %struct.tee_client_device_id] [%struct.tee_client_device_id { %struct.uuid_t { [16 x i8] c"\F0J\0F\E7\1F]K\9B\AB\F7a\9B\85\B4\CE\8C" } }, %struct.tee_client_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"trusted-key-tee\00", [16 x i8] zeroinitializer }, align 32
@tee_bus_type = external dso_local global %struct.bus_type, align 4
@pvt_data.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvt_data.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvt_data.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@trusted_key_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tee_client_open_session failed, err: %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"trusted_key_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"security/keys/trusted-keys/trusted_tee.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@trusted_key_probe._entry_ptr = internal global ptr @trusted_key_probe._entry, section ".printk_index", align 4
@key_type_trusted = external dso_local global %struct.key_type, align 4
@trusted_tee_seal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"key shm register failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trusted_tee_seal\00", [47 x i8] zeroinitializer }, align 32
@trusted_tee_seal._entry_ptr = internal global ptr @trusted_tee_seal._entry, section ".printk_index", align 4
@trusted_tee_seal._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"blob shm register failed\0A\00", [38 x i8] zeroinitializer }, align 32
@trusted_tee_seal._entry_ptr.10 = internal global ptr @trusted_tee_seal._entry.8, section ".printk_index", align 4
@trusted_tee_seal._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TA_CMD_SEAL invoke err: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@trusted_tee_seal._entry_ptr.13 = internal global ptr @trusted_tee_seal._entry.11, section ".printk_index", align 4
@trusted_tee_unseal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trusted_tee_unseal\00", [45 x i8] zeroinitializer }, align 32
@trusted_tee_unseal._entry_ptr = internal global ptr @trusted_tee_unseal._entry, section ".printk_index", align 4
@trusted_tee_unseal._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.14, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@trusted_tee_unseal._entry_ptr.16 = internal global ptr @trusted_tee_unseal._entry.15, section ".printk_index", align 4
@trusted_tee_unseal._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TA_CMD_UNSEAL invoke err: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@trusted_tee_unseal._entry_ptr.19 = internal global ptr @trusted_tee_unseal._entry.17, section ".printk_index", align 4
@trusted_tee_get_random._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trusted_tee_get_random\00", [41 x i8] zeroinitializer }, align 32
@trusted_tee_get_random._entry_ptr = internal global ptr @trusted_tee_get_random._entry, section ".printk_index", align 4
@trusted_tee_get_random._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TA_CMD_GET_RANDOM invoke err: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@trusted_tee_get_random._entry_ptr.23 = internal global ptr @trusted_tee_get_random._entry.21, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"trusted_key_tee_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 311, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"trusted_key_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 291, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"trusted_key_id_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 284, i32 42 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 294, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"pvt_data.0\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"pvt_data.1\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"pvt_data.2\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 252, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 77, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 85, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 105, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 138, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 146, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 166, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 198, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [44 x i8] c"../security/keys/trusted-keys/trusted_tee.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 213, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @trusted_key_probe._entry, ptr @trusted_key_probe._entry_ptr, ptr @trusted_tee_get_random._entry, ptr @trusted_tee_get_random._entry.21, ptr @trusted_tee_get_random._entry_ptr, ptr @trusted_tee_get_random._entry_ptr.23, ptr @trusted_tee_seal._entry, ptr @trusted_tee_seal._entry.11, ptr @trusted_tee_seal._entry.8, ptr @trusted_tee_seal._entry_ptr, ptr @trusted_tee_seal._entry_ptr.10, ptr @trusted_tee_seal._entry_ptr.13, ptr @trusted_tee_unseal._entry, ptr @trusted_tee_unseal._entry.15, ptr @trusted_tee_unseal._entry.17, ptr @trusted_tee_unseal._entry_ptr, ptr @trusted_tee_unseal._entry_ptr.16, ptr @trusted_tee_unseal._entry_ptr.19, ptr @trusted_key_tee_ops, ptr @trusted_key_driver, ptr @trusted_key_id_table, ptr @.str, ptr @pvt_data.0, ptr @pvt_data.1, ptr @pvt_data.2, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.18, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_key_tee_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_key_driver to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_key_id_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_data.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_key_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_seal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_seal._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_seal._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_unseal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_unseal._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_unseal._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_get_random._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tee_get_random._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tee_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @trusted_key_driver, i32 0, i32 1)) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tee_seal(ptr noundef %p, ptr nocapture noundef readnone %datablob) #0 align 64 {
entry:
  %inv_arg = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param = alloca [4 x %struct.tee_param], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg) #5
  %0 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param) #5
  %3 = call ptr @memset(ptr %inv_arg, i32 0, i32 24)
  %4 = call ptr @memset(ptr %param, i32 0, i32 128)
  %5 = load ptr, ptr @pvt_data.1, align 4
  %key = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 5
  %6 = ptrtoint ptr %key to i32
  %key_len = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_len, align 4
  %call = tail call ptr @tee_shm_register(ptr noundef %5, i32 noundef %6, i32 noundef %8, i32 noundef 66) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load ptr, ptr @pvt_data.0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #8
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr @pvt_data.1, align 4
  %blob = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 6
  %12 = ptrtoint ptr %blob to i32
  %call4 = tail call ptr @tee_shm_register(ptr noundef %11, i32 noundef %12, i32 noundef 512, i32 noundef 66) #5
  %cmp.i64 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = load ptr, ptr @pvt_data.0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #8
  %14 = ptrtoint ptr %call4 to i32
  br label %out

if.end11:                                         ; preds = %if.end
  %15 = ptrtoint ptr %inv_arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %inv_arg, align 8
  %16 = load i32, ptr @pvt_data.2, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %2, align 4
  %19 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 5, ptr %param, align 8
  %u = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %shm = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %shm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %shm, align 8
  %21 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len, align 4
  %size = getelementptr inbounds %struct.tee_param_memref, ptr %u, i32 0, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %size, align 4
  %24 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %u, align 8
  %arrayidx18 = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 6, ptr %arrayidx18, align 8
  %u21 = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1, i32 1
  %shm22 = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %shm22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call4, ptr %shm22, align 8
  %size25 = getelementptr inbounds %struct.tee_param_memref, ptr %u21, i32 0, i32 1
  %27 = ptrtoint ptr %size25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 512, ptr %size25, align 4
  %28 = ptrtoint ptr %u21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %u21, align 8
  %29 = load ptr, ptr @pvt_data.1, align 4
  %call30 = call i32 @tee_client_invoke_func(ptr noundef %29, ptr noundef nonnull %inv_arg, ptr noundef nonnull %param) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.end11.do.end36_crit_edge, label %lor.lhs.false

if.end11.do.end36_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

lor.lhs.false:                                    ; preds = %if.end11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp32.not = icmp eq i32 %31, 0
  br i1 %cmp32.not, label %if.else, label %lor.lhs.false.do.end36_crit_edge

lor.lhs.false.do.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false.do.end36_crit_edge, %if.end11.do.end36_crit_edge
  %32 = load ptr, ptr @pvt_data.0, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12, i32 noundef %34) #8
  br label %out

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size25, align 4
  %blob_len = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 2
  %37 = ptrtoint ptr %blob_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %blob_len, align 4
  br label %out

out:                                              ; preds = %if.else, %do.end36, %do.end9
  %ret.0 = phi i32 [ %14, %do.end9 ], [ -14, %do.end36 ], [ %call30, %if.else ]
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %out.if.end43_crit_edge, label %if.then42

out.if.end43_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then42:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  call void @tee_shm_free(ptr noundef nonnull %call4) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %out.if.end43_crit_edge
  %tobool44.not = icmp eq ptr %call, null
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  call void @tee_shm_free(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %10, %do.end ], [ %ret.0, %if.then45 ], [ %ret.0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tee_unseal(ptr noundef %p, ptr nocapture noundef readnone %datablob) #0 align 64 {
entry:
  %inv_arg = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param = alloca [4 x %struct.tee_param], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg) #5
  %0 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param) #5
  %3 = call ptr @memset(ptr %inv_arg, i32 0, i32 24)
  %4 = call ptr @memset(ptr %param, i32 0, i32 128)
  %5 = load ptr, ptr @pvt_data.1, align 4
  %blob = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %blob to i32
  %blob_len = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 2
  %7 = ptrtoint ptr %blob_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blob_len, align 4
  %call = tail call ptr @tee_shm_register(ptr noundef %5, i32 noundef %6, i32 noundef %8, i32 noundef 66) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load ptr, ptr @pvt_data.0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9) #8
  %10 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr @pvt_data.1, align 4
  %key = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %key to i32
  %call4 = tail call ptr @tee_shm_register(ptr noundef %11, i32 noundef %12, i32 noundef 129, i32 noundef 66) #5
  %cmp.i64 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = load ptr, ptr @pvt_data.0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6) #8
  %14 = ptrtoint ptr %call4 to i32
  br label %out

if.end11:                                         ; preds = %if.end
  %15 = ptrtoint ptr %inv_arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %inv_arg, align 8
  %16 = load i32, ptr @pvt_data.2, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %2, align 4
  %19 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 5, ptr %param, align 8
  %u = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %shm = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %shm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %shm, align 8
  %21 = ptrtoint ptr %blob_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blob_len, align 4
  %size = getelementptr inbounds %struct.tee_param_memref, ptr %u, i32 0, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %size, align 4
  %24 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %u, align 8
  %arrayidx18 = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 6, ptr %arrayidx18, align 8
  %u21 = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1, i32 1
  %shm22 = getelementptr inbounds [4 x %struct.tee_param], ptr %param, i32 0, i32 1, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %shm22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call4, ptr %shm22, align 8
  %size25 = getelementptr inbounds %struct.tee_param_memref, ptr %u21, i32 0, i32 1
  %27 = ptrtoint ptr %size25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 129, ptr %size25, align 4
  %28 = ptrtoint ptr %u21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %u21, align 8
  %29 = load ptr, ptr @pvt_data.1, align 4
  %call30 = call i32 @tee_client_invoke_func(ptr noundef %29, ptr noundef nonnull %inv_arg, ptr noundef nonnull %param) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.end11.do.end36_crit_edge, label %lor.lhs.false

if.end11.do.end36_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

lor.lhs.false:                                    ; preds = %if.end11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp32.not = icmp eq i32 %31, 0
  br i1 %cmp32.not, label %if.else, label %lor.lhs.false.do.end36_crit_edge

lor.lhs.false.do.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false.do.end36_crit_edge, %if.end11.do.end36_crit_edge
  %32 = load ptr, ptr @pvt_data.0, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef %34) #8
  br label %out

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size25, align 4
  %key_len = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 1
  %37 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %key_len, align 4
  br label %out

out:                                              ; preds = %if.else, %do.end36, %do.end9
  %ret.0 = phi i32 [ %14, %do.end9 ], [ -14, %do.end36 ], [ %call30, %if.else ]
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %out.if.end43_crit_edge, label %if.then42

out.if.end43_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then42:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  call void @tee_shm_free(ptr noundef nonnull %call4) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %out.if.end43_crit_edge
  %tobool44.not = icmp eq ptr %call, null
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  call void @tee_shm_free(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %10, %do.end ], [ %ret.0, %if.then45 ], [ %ret.0, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tee_get_random(ptr noundef %key, i32 noundef %key_len) #0 align 64 {
entry:
  %inv_arg = alloca %struct.tee_ioctl_invoke_arg, align 8
  %param = alloca [4 x %struct.tee_param], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inv_arg) #5
  %0 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param) #5
  %1 = getelementptr inbounds i8, ptr %inv_arg, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  %3 = getelementptr inbounds i8, ptr %param, i32 16
  %4 = call ptr @memset(ptr %3, i32 0, i32 112)
  %5 = load ptr, ptr @pvt_data.1, align 4
  %6 = ptrtoint ptr %key to i32
  %call = tail call ptr @tee_shm_register(ptr noundef %5, i32 noundef %6, i32 noundef %key_len, i32 noundef 66) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = load ptr, ptr @pvt_data.0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #8
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 5
  %10 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %inv_arg, i32 0, i32 1
  %11 = ptrtoint ptr %inv_arg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %inv_arg, align 8
  %12 = load i32, ptr @pvt_data.2, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %10, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %9, align 4
  %15 = ptrtoint ptr %param to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 6, ptr %param, align 8
  %u = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1
  %shm = getelementptr inbounds %struct.tee_param, ptr %param, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %shm to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %shm, align 8
  %size = getelementptr inbounds %struct.tee_param_memref, ptr %u, i32 0, i32 1
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %key_len, ptr %size, align 4
  %18 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %u, align 8
  %19 = load ptr, ptr @pvt_data.1, align 4
  %call8 = call i32 @tee_client_invoke_func(ptr noundef %19, ptr noundef nonnull %inv_arg, ptr noundef nonnull %param) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end.do.end14_crit_edge, label %lor.lhs.false

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

lor.lhs.false:                                    ; preds = %if.end
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp10.not = icmp eq i32 %21, 0
  br i1 %cmp10.not, label %if.else, label %lor.lhs.false.do.end14_crit_edge

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end14

do.end14:                                         ; preds = %lor.lhs.false.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %22 = load ptr, ptr @pvt_data.0, align 4
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22, i32 noundef %24) #8
  br label %if.end19

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %do.end14
  %ret.0 = phi i32 [ -14, %do.end14 ], [ %26, %if.else ]
  call void @tee_shm_free(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ %ret.0, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inv_arg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trusted_tee_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @trusted_key_driver, i32 0, i32 1)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_key_probe(ptr noundef %dev) #0 align 64 {
entry:
  %sess_arg = alloca %struct.tee_ioctl_open_session_arg, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sess_arg) #5
  %0 = getelementptr inbounds i8, ptr %sess_arg, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %call = tail call ptr @tee_client_open_context(ptr noundef null, ptr noundef nonnull @optee_ctx_match, ptr noundef null, ptr noundef null) #5
  store ptr %call, ptr @pvt_data.1, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %2 = call ptr @memcpy(ptr %sess_arg, ptr %add.ptr, i32 16)
  %clnt_login = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 2
  %3 = ptrtoint ptr %clnt_login to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -2147483648, ptr %clnt_login, align 8
  %num_params = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 7
  %4 = ptrtoint ptr %num_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %num_params, align 4
  %call4 = call i32 @tee_client_open_session(ptr noundef %call, ptr noundef nonnull %sess_arg, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %ret5 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %5 = ptrtoint ptr %ret5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ret5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.not = icmp eq i32 %6, 0
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret8 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %7 = ptrtoint ptr %ret8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %8) #8
  br label %out_ctx

if.end9:                                          ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 4
  %9 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session, align 8
  store i32 %10, ptr @pvt_data.2, align 4
  %call10 = call i32 @register_key_type(ptr noundef nonnull @key_type_trusted) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %out_sess, label %if.end13

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %dev, ptr @pvt_data.0, align 4
  br label %cleanup

out_sess:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %11 = load ptr, ptr @pvt_data.1, align 4
  %12 = load i32, ptr @pvt_data.2, align 4
  %call14 = call i32 @tee_client_close_session(ptr noundef %11, i32 noundef %12) #5
  br label %out_ctx

out_ctx:                                          ; preds = %out_sess, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call10, %out_sess ]
  %13 = load ptr, ptr @pvt_data.1, align 4
  call void @tee_client_close_context(ptr noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %out_ctx, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_ctx ], [ 0, %if.end13 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sess_arg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_key_remove(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_trusted) #5
  %0 = load ptr, ptr @pvt_data.1, align 4
  %1 = load i32, ptr @pvt_data.2, align 4
  %call = tail call i32 @tee_client_close_session(ptr noundef %0, i32 noundef %1) #5
  %2 = load ptr, ptr @pvt_data.1, align 4
  tail call void @tee_client_close_context(ptr noundef %2) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_client_open_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @optee_ctx_match(ptr nocapture noundef readonly %ver, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_open_session(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_close_session(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_client_close_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_invoke_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @trusted_key_tee_ops, !1, !"trusted_key_tee_ops", i1 false, i1 false}
!1 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 311, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 294, i32 12}
!4 = !{ptr @trusted_key_driver, !5, !"trusted_key_driver", i1 false, i1 false}
!5 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 291, i32 33}
!6 = !{ptr @trusted_key_id_table, !7, !"trusted_key_id_table", i1 false, i1 false}
!7 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 284, i32 42}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 252, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @trusted_key_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @trusted_key_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"pvt_data", i1 false, i1 false}
!17 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 58, i32 39}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 77, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @trusted_tee_seal._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @trusted_tee_seal._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 85, i32 3}
!25 = !{ptr @trusted_tee_seal._entry.8, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @trusted_tee_seal._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 105, i32 3}
!29 = !{ptr @trusted_tee_seal._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @trusted_tee_seal._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 138, i32 3}
!33 = !{ptr @trusted_tee_unseal._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @trusted_tee_unseal._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @trusted_tee_unseal._entry.15, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 146, i32 3}
!37 = !{ptr @trusted_tee_unseal._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 166, i32 3}
!40 = !{ptr @trusted_tee_unseal._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @trusted_tee_unseal._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 198, i32 3}
!44 = !{ptr @trusted_tee_get_random._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @trusted_tee_get_random._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/keys/trusted-keys/trusted_tee.c", i32 213, i32 3}
!48 = !{ptr @trusted_tee_get_random._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @trusted_tee_get_random._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
