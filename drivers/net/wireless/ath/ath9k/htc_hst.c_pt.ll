; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/htc_hst.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/htc_hst.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.htc_target = type { ptr, ptr, ptr, ptr, [22 x %struct.htc_endpoint], %struct.completion, %struct.completion, %struct.list_head, i32, i16, i16, i8, %struct.atomic_t }
%struct.htc_endpoint = type { i16, %struct.htc_ep_callbacks, i32, i32, i8, i8 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.htc_config_pipe_msg = type { i16, i8, i8 }
%struct.htc_frame_hdr = type { i8, i8, i16, [4 x i8] }
%struct.ath9k_htc_hif = type { %struct.list_head, i32, ptr, i8, i8, ptr, ptr, ptr, ptr }
%struct.htc_service_connreq = type { i16, i16, i32, %struct.htc_ep_callbacks }
%struct.htc_conn_svc_msg = type { i16, i16, i16, i8, i8, i8, i8 }
%struct.htc_panic_bad_vaddr = type { i32, i32, i32, i32 }
%struct.htc_panic_bad_epid = type { i32, i32 }
%struct.htc_ready_msg = type { i16, i16, i16, i8, i8 }

@htc_connect_service._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Endpoint is not available for service %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"htc_connect_service\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/ath9k/htc_hst.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@htc_connect_service._entry_ptr = internal global ptr @htc_connect_service._entry, section ".printk_index", align 4
@htc_connect_service._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 262, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to allocate buf to sendservice connect req\0A\00", [45 x i8] zeroinitializer }, align 32
@htc_connect_service._entry_ptr.7 = internal global ptr @htc_connect_service._entry.5, section ".printk_index", align 4
@htc_connect_service._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Service connection timeout for: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@htc_connect_service._entry_ptr.10 = internal global ptr @htc_connect_service._entry.8, section ".printk_index", align 4
@ath9k_htc_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ath9k_htc: Failed to initialize the device\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ath9k_htc_hw_init\00", [46 x i8] zeroinitializer }, align 32
@ath9k_htc_hw_init._entry_ptr = internal global ptr @ath9k_htc_hw_init._entry, section ".printk_index", align 4
@htc_config_pipe_credits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate send buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"htc_config_pipe_credits\00", [40 x i8] zeroinitializer }, align 32
@htc_config_pipe_credits._entry_ptr = internal global ptr @htc_config_pipe_credits._entry, section ".printk_index", align 4
@htc_config_pipe_credits._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 175, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HTC credit config timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@htc_config_pipe_credits._entry_ptr.17 = internal global ptr @htc_config_pipe_credits._entry.15, section ".printk_index", align 4
@htc_setup_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.18, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"htc_setup_complete\00", [45 x i8] zeroinitializer }, align 32
@htc_setup_complete._entry_ptr = internal global ptr @htc_setup_complete._entry, section ".printk_index", align 4
@htc_setup_complete._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HTC start timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@htc_setup_complete._entry_ptr.21 = internal global ptr @htc_setup_complete._entry.19, section ".printk_index", align 4
@ath9k_htc_fw_panic_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ath: firmware panic! exccause: 0x%08x; pc: 0x%08x; badvaddr: 0x%08x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ath9k_htc_fw_panic_report\00", [38 x i8] zeroinitializer }, align 32
@ath9k_htc_fw_panic_report._entry_ptr = internal global ptr @ath9k_htc_fw_panic_report._entry, section ".printk_index", align 4
@ath9k_htc_fw_panic_report._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ath: firmware panic! bad epid: 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@ath9k_htc_fw_panic_report._entry_ptr.26 = internal global ptr @ath9k_htc_fw_panic_report._entry.24, section ".printk_index", align 4
@ath9k_htc_fw_panic_report._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ath: unknown panic pattern!\0A\00", [35 x i8] zeroinitializer }, align 32
@ath9k_htc_fw_panic_report._entry_ptr.29 = internal global ptr @ath9k_htc_fw_panic_report._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.htc_connect_service = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\04\01\01\01\01\01\01\01\01", [23 x i8] zeroinitializer }, align 32
@switch.table.htc_connect_service.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\03\02\02\02\02\02\02\02\02", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 857870745, i64 857871001]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 247, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 261, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 281, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 504, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 156, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 175, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 194, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 210, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 371, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 381, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private constant [44 x i8] c"../drivers/net/wireless/ath/ath9k/htc_hst.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 386, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 87, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [33 x i8] c"switch.table.htc_connect_service\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [36 x i8] c"switch.table.htc_connect_service.31\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @ath9k_htc_fw_panic_report._entry, ptr @ath9k_htc_fw_panic_report._entry.24, ptr @ath9k_htc_fw_panic_report._entry.27, ptr @ath9k_htc_fw_panic_report._entry_ptr, ptr @ath9k_htc_fw_panic_report._entry_ptr.26, ptr @ath9k_htc_fw_panic_report._entry_ptr.29, ptr @ath9k_htc_hw_init._entry, ptr @ath9k_htc_hw_init._entry_ptr, ptr @htc_config_pipe_credits._entry, ptr @htc_config_pipe_credits._entry.15, ptr @htc_config_pipe_credits._entry_ptr, ptr @htc_config_pipe_credits._entry_ptr.17, ptr @htc_connect_service._entry, ptr @htc_connect_service._entry.5, ptr @htc_connect_service._entry.8, ptr @htc_connect_service._entry_ptr, ptr @htc_connect_service._entry_ptr.10, ptr @htc_connect_service._entry_ptr.7, ptr @htc_setup_complete._entry, ptr @htc_setup_complete._entry.19, ptr @htc_setup_complete._entry_ptr, ptr @htc_setup_complete._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @init_completion.__key, ptr @.str.30, ptr @switch.table.htc_connect_service, ptr @switch.table.htc_connect_service.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_connect_service._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_connect_service._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_connect_service._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_config_pipe_credits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_config_pipe_credits._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_setup_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htc_setup_complete._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_fw_panic_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_fw_panic_report._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_fw_panic_report._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.htc_connect_service to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.htc_connect_service.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @htc_init(ptr noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 58, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 4) #5
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 5, ptr %call1.i, align 1
  %pipe_id.i = getelementptr inbounds %struct.htc_config_pipe_msg, ptr %call1.i, i32 0, i32 1
  %7 = ptrtoint ptr %pipe_id.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %pipe_id.i, align 1
  %credits.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 9
  %8 = ptrtoint ptr %credits.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %credits.i, align 4
  %conv.i = trunc i16 %9 to i8
  %credits2.i = getelementptr inbounds %struct.htc_config_pipe_msg, ptr %call1.i, i32 0, i32 2
  %10 = ptrtoint ptr %credits2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %credits2.i, align 1
  %htc_flags.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 11
  %11 = ptrtoint ptr %htc_flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %htc_flags.i, align 4
  %13 = or i8 %12, 2
  store i8 %13, ptr %htc_flags.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  %conv5.i = trunc i32 %15 to i16
  %call.i33.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 8) #5
  %16 = ptrtoint ptr %call.i33.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %call.i33.i, align 1
  %flags2.i.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i33.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %flags2.i.i, align 1
  %payload_len.i.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i33.i, i32 0, i32 2
  %18 = ptrtoint ptr %payload_len.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %conv5.i, ptr %payload_len.i.i, align 1
  %hif.i.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %19 = ptrtoint ptr %hif.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif.i.i, align 4
  %send.i.i = getelementptr inbounds %struct.ath9k_htc_hif, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %send.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %send.i.i, align 4
  %23 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %target, align 4
  %ul_pipeid.i.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 0, i32 4
  %25 = ptrtoint ptr %ul_pipeid.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ul_pipeid.i.i, align 4
  %call3.i.i = tail call i32 %22(ptr noundef %24, i8 noundef zeroext %26, ptr noundef nonnull %call.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool7.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %err.i

if.end9.i:                                        ; preds = %if.end.i
  %cmd_wait.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %call10.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_wait.i, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev16.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %27 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.16) #8
  br label %cleanup

err.i:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #5
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  %call.i.i4 = tail call ptr @__alloc_skb(i32 noundef 58, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i5 = icmp eq ptr %call.i.i4, null
  br i1 %tobool.not.i5, label %do.end.i7, label %if.end.i21

do.end.i7:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i6 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %29 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end.i21:                                       ; preds = %if.end
  %data.i.i8 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i4, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i8, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %32, i32 8
  store ptr %add.ptr.i.i9, ptr %data.i.i8, align 4
  %tail.i.i10 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i4, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i10, align 8
  %add.ptr1.i.i11 = getelementptr i8, ptr %34, i32 8
  store ptr %add.ptr1.i.i11, ptr %tail.i.i10, align 8
  %call1.i12 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i4, i32 noundef 2) #5
  %35 = ptrtoint ptr %call1.i12 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 4, ptr %call1.i12, align 1
  %36 = ptrtoint ptr %htc_flags.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %htc_flags.i, align 4
  %38 = or i8 %37, 1
  store i8 %38, ptr %htc_flags.i, align 4
  %len.i14 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i4, i32 0, i32 6
  %39 = ptrtoint ptr %len.i14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i14, align 4
  %conv3.i = trunc i32 %40 to i16
  %call.i28.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i4, i32 noundef 8) #5
  %41 = ptrtoint ptr %call.i28.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %call.i28.i, align 1
  %flags2.i.i15 = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i28.i, i32 0, i32 1
  %42 = ptrtoint ptr %flags2.i.i15 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %flags2.i.i15, align 1
  %payload_len.i.i16 = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i28.i, i32 0, i32 2
  %43 = ptrtoint ptr %payload_len.i.i16 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 %conv3.i, ptr %payload_len.i.i16, align 1
  %44 = ptrtoint ptr %hif.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hif.i.i, align 4
  %send.i.i18 = getelementptr inbounds %struct.ath9k_htc_hif, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %send.i.i18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %send.i.i18, align 4
  %48 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %target, align 4
  %50 = ptrtoint ptr %ul_pipeid.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ul_pipeid.i.i, align 4
  %call3.i.i20 = tail call i32 %47(ptr noundef %49, i8 noundef zeroext %51, ptr noundef nonnull %call.i.i4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i20)
  %tobool5.not.i = icmp eq i32 %call3.i.i20, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %err.i23

if.end7.i:                                        ; preds = %if.end.i21
  %call8.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_wait.i, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev14.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %52 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.20) #8
  br label %cleanup

err.i23:                                          ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i4, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %err.i23, %do.end13.i, %if.end7.i.cleanup_crit_edge, %do.end.i7, %err.i, %do.end15.i, %do.end.i
  %retval.0 = phi i32 [ -22, %err.i23 ], [ -110, %do.end13.i ], [ -12, %do.end.i7 ], [ 0, %if.end7.i.cleanup_crit_edge ], [ -12, %do.end.i ], [ -110, %do.end15.i ], [ -22, %err.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @htc_connect_service(ptr noundef %target, ptr nocapture noundef readonly %service_connreq, ptr nocapture noundef writeonly %conn_rsp_epid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 21
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1.i = icmp eq i16 %1, 0
  br i1 %cmp1.i, label %entry.get_next_avail_ep.exit_crit_edge, label %for.cond.i

entry.get_next_avail_ep.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.i:                                       ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 20
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp1.1.i = icmp eq i16 %3, 0
  br i1 %cmp1.1.i, label %for.cond.i.get_next_avail_ep.exit_crit_edge, label %for.cond.1.i

for.cond.i.get_next_avail_ep.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 19
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1.2.i = icmp eq i16 %5, 0
  br i1 %cmp1.2.i, label %for.cond.1.i.get_next_avail_ep.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 18
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1.3.i = icmp eq i16 %7, 0
  br i1 %cmp1.3.i, label %for.cond.2.i.get_next_avail_ep.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 17
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp1.4.i = icmp eq i16 %9, 0
  br i1 %cmp1.4.i, label %for.cond.3.i.get_next_avail_ep.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 16
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp1.5.i = icmp eq i16 %11, 0
  br i1 %cmp1.5.i, label %for.cond.4.i.get_next_avail_ep.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 15
  %12 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp1.6.i = icmp eq i16 %13, 0
  br i1 %cmp1.6.i, label %for.cond.5.i.get_next_avail_ep.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 14
  %14 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp1.7.i = icmp eq i16 %15, 0
  br i1 %cmp1.7.i, label %for.cond.6.i.get_next_avail_ep.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 13
  %16 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp1.8.i = icmp eq i16 %17, 0
  br i1 %cmp1.8.i, label %for.cond.7.i.get_next_avail_ep.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 12
  %18 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp1.9.i = icmp eq i16 %19, 0
  br i1 %cmp1.9.i, label %for.cond.8.i.get_next_avail_ep.exit_crit_edge, label %for.cond.9.i

for.cond.8.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 11
  %20 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp1.10.i = icmp eq i16 %21, 0
  br i1 %cmp1.10.i, label %for.cond.9.i.get_next_avail_ep.exit_crit_edge, label %for.cond.10.i

for.cond.9.i.get_next_avail_ep.exit_crit_edge:    ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 10
  %22 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp1.11.i = icmp eq i16 %23, 0
  br i1 %cmp1.11.i, label %for.cond.10.i.get_next_avail_ep.exit_crit_edge, label %for.cond.11.i

for.cond.10.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 9
  %24 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp1.12.i = icmp eq i16 %25, 0
  br i1 %cmp1.12.i, label %for.cond.11.i.get_next_avail_ep.exit_crit_edge, label %for.cond.12.i

for.cond.11.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp1.13.i = icmp eq i16 %27, 0
  br i1 %cmp1.13.i, label %for.cond.12.i.get_next_avail_ep.exit_crit_edge, label %for.cond.13.i

for.cond.12.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp1.14.i = icmp eq i16 %29, 0
  br i1 %cmp1.14.i, label %for.cond.13.i.get_next_avail_ep.exit_crit_edge, label %for.cond.14.i

for.cond.13.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.14.i:                                    ; preds = %for.cond.13.i
  %arrayidx.15.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp1.15.i = icmp eq i16 %31, 0
  br i1 %cmp1.15.i, label %for.cond.14.i.get_next_avail_ep.exit_crit_edge, label %for.cond.15.i

for.cond.14.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.15.i:                                    ; preds = %for.cond.14.i
  %arrayidx.16.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %arrayidx.16.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp1.16.i = icmp eq i16 %33, 0
  br i1 %cmp1.16.i, label %for.cond.15.i.get_next_avail_ep.exit_crit_edge, label %for.cond.16.i

for.cond.15.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.16.i:                                    ; preds = %for.cond.15.i
  %arrayidx.17.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %arrayidx.17.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp1.17.i = icmp eq i16 %35, 0
  br i1 %cmp1.17.i, label %for.cond.16.i.get_next_avail_ep.exit_crit_edge, label %for.cond.17.i

for.cond.16.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.17.i:                                    ; preds = %for.cond.16.i
  %arrayidx.18.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %arrayidx.18.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp1.18.i = icmp eq i16 %37, 0
  br i1 %cmp1.18.i, label %for.cond.17.i.get_next_avail_ep.exit_crit_edge, label %for.cond.18.i

for.cond.17.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.18.i:                                    ; preds = %for.cond.17.i
  %arrayidx.19.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %arrayidx.19.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp1.19.i = icmp eq i16 %39, 0
  br i1 %cmp1.19.i, label %for.cond.18.i.get_next_avail_ep.exit_crit_edge, label %for.cond.19.i

for.cond.18.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

for.cond.19.i:                                    ; preds = %for.cond.18.i
  %arrayidx.20.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx.20.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp1.20.i = icmp eq i16 %41, 0
  br i1 %cmp1.20.i, label %for.cond.19.i.get_next_avail_ep.exit_crit_edge, label %for.cond.19.i.do.end_crit_edge

for.cond.19.i.do.end_crit_edge:                   ; preds = %for.cond.19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.19.i.get_next_avail_ep.exit_crit_edge:   ; preds = %for.cond.19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_avail_ep.exit

get_next_avail_ep.exit:                           ; preds = %for.cond.19.i.get_next_avail_ep.exit_crit_edge, %for.cond.18.i.get_next_avail_ep.exit_crit_edge, %for.cond.17.i.get_next_avail_ep.exit_crit_edge, %for.cond.16.i.get_next_avail_ep.exit_crit_edge, %for.cond.15.i.get_next_avail_ep.exit_crit_edge, %for.cond.14.i.get_next_avail_ep.exit_crit_edge, %for.cond.13.i.get_next_avail_ep.exit_crit_edge, %for.cond.12.i.get_next_avail_ep.exit_crit_edge, %for.cond.11.i.get_next_avail_ep.exit_crit_edge, %for.cond.10.i.get_next_avail_ep.exit_crit_edge, %for.cond.9.i.get_next_avail_ep.exit_crit_edge, %for.cond.8.i.get_next_avail_ep.exit_crit_edge, %for.cond.7.i.get_next_avail_ep.exit_crit_edge, %for.cond.6.i.get_next_avail_ep.exit_crit_edge, %for.cond.5.i.get_next_avail_ep.exit_crit_edge, %for.cond.4.i.get_next_avail_ep.exit_crit_edge, %for.cond.3.i.get_next_avail_ep.exit_crit_edge, %for.cond.2.i.get_next_avail_ep.exit_crit_edge, %for.cond.1.i.get_next_avail_ep.exit_crit_edge, %for.cond.i.get_next_avail_ep.exit_crit_edge, %entry.get_next_avail_ep.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %entry.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.1.i, %for.cond.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.2.i, %for.cond.1.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.3.i, %for.cond.2.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.4.i, %for.cond.3.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.5.i, %for.cond.4.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.6.i, %for.cond.5.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.7.i, %for.cond.6.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.8.i, %for.cond.7.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.9.i, %for.cond.8.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.10.i, %for.cond.9.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.11.i, %for.cond.10.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.12.i, %for.cond.11.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.13.i, %for.cond.12.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.14.i, %for.cond.13.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.15.i, %for.cond.14.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.16.i, %for.cond.15.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.17.i, %for.cond.16.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.18.i, %for.cond.17.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.19.i, %for.cond.18.i.get_next_avail_ep.exit_crit_edge ], [ %arrayidx.20.i, %for.cond.19.i.get_next_avail_ep.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %get_next_avail_ep.exit.do.end_crit_edge, label %if.end

get_next_avail_ep.exit.do.end_crit_edge:          ; preds = %get_next_avail_ep.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %get_next_avail_ep.exit.do.end_crit_edge, %for.cond.19.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %service_connreq to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %service_connreq, align 4
  %conv = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %cleanup

if.end:                                           ; preds = %get_next_avail_ep.exit
  %46 = ptrtoint ptr %service_connreq to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %service_connreq, align 4
  %48 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %retval.0.i, align 4
  %max_send_qdepth = getelementptr inbounds %struct.htc_service_connreq, ptr %service_connreq, i32 0, i32 2
  %49 = ptrtoint ptr %max_send_qdepth to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_send_qdepth, align 4
  %max_txqdepth = getelementptr inbounds %struct.htc_endpoint, ptr %retval.0.i, i32 0, i32 2
  %51 = ptrtoint ptr %max_txqdepth to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %max_txqdepth, align 4
  %52 = load i16, ptr %service_connreq, align 4
  %switch.tableidx = add i16 %52, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %switch.tableidx)
  %53 = icmp ult i16 %switch.tableidx, 9
  br i1 %53, label %switch.lookup, label %if.end.service_to_ulpipe.exit_crit_edge

if.end.service_to_ulpipe.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %service_to_ulpipe.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %54 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.htc_connect_service, i32 0, i32 %54
  %55 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %55)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %service_to_ulpipe.exit

service_to_ulpipe.exit:                           ; preds = %switch.lookup, %if.end.service_to_ulpipe.exit_crit_edge
  %retval.0.i76 = phi i8 [ %switch.load, %switch.lookup ], [ 0, %if.end.service_to_ulpipe.exit_crit_edge ]
  %ul_pipeid = getelementptr inbounds %struct.htc_endpoint, ptr %retval.0.i, i32 0, i32 4
  %56 = ptrtoint ptr %ul_pipeid to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %retval.0.i76, ptr %ul_pipeid, align 4
  %57 = ptrtoint ptr %service_connreq to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %service_connreq, align 4
  %switch.tableidx84 = add i16 %58, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %switch.tableidx84)
  %59 = icmp ult i16 %switch.tableidx84, 9
  br i1 %59, label %switch.lookup83, label %service_to_ulpipe.exit.service_to_dlpipe.exit_crit_edge

service_to_ulpipe.exit.service_to_dlpipe.exit_crit_edge: ; preds = %service_to_ulpipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %service_to_dlpipe.exit

switch.lookup83:                                  ; preds = %service_to_ulpipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  %60 = sext i16 %switch.tableidx84 to i32
  %switch.gep85 = getelementptr inbounds [9 x i8], ptr @switch.table.htc_connect_service.31, i32 0, i32 %60
  %61 = ptrtoint ptr %switch.gep85 to i32
  call void @__asan_load1_noabort(i32 %61)
  %switch.load86 = load i8, ptr %switch.gep85, align 1
  br label %service_to_dlpipe.exit

service_to_dlpipe.exit:                           ; preds = %switch.lookup83, %service_to_ulpipe.exit.service_to_dlpipe.exit_crit_edge
  %retval.0.i79 = phi i8 [ %switch.load86, %switch.lookup83 ], [ 0, %service_to_ulpipe.exit.service_to_dlpipe.exit_crit_edge ]
  %dl_pipeid = getelementptr inbounds %struct.htc_endpoint, ptr %retval.0.i, i32 0, i32 5
  %62 = ptrtoint ptr %dl_pipeid to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %retval.0.i79, ptr %dl_pipeid, align 1
  %ep_callbacks = getelementptr inbounds %struct.htc_endpoint, ptr %retval.0.i, i32 0, i32 1
  %ep_callbacks8 = getelementptr inbounds %struct.htc_service_connreq, ptr %service_connreq, i32 0, i32 3
  %63 = call ptr @memcpy(ptr %ep_callbacks, ptr %ep_callbacks8, i32 12)
  %call.i = tail call ptr @__alloc_skb(i32 noundef 18, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %service_to_dlpipe.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %64 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end16:                                         ; preds = %service_to_dlpipe.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %69, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 10) #5
  %70 = ptrtoint ptr %service_connreq to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %service_connreq, align 4
  %service_id19 = getelementptr inbounds %struct.htc_conn_svc_msg, ptr %call17, i32 0, i32 1
  %72 = ptrtoint ptr %service_id19 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %service_id19, align 1
  %73 = ptrtoint ptr %call17 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 2, ptr %call17, align 1
  %con_flags = getelementptr inbounds %struct.htc_service_connreq, ptr %service_connreq, i32 0, i32 1
  %74 = ptrtoint ptr %con_flags to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %con_flags, align 2
  %con_flags20 = getelementptr inbounds %struct.htc_conn_svc_msg, ptr %call17, i32 0, i32 2
  %76 = ptrtoint ptr %con_flags20 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %75, ptr %con_flags20, align 1
  %77 = ptrtoint ptr %dl_pipeid to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dl_pipeid, align 1
  %dl_pipeid22 = getelementptr inbounds %struct.htc_conn_svc_msg, ptr %call17, i32 0, i32 3
  %79 = ptrtoint ptr %dl_pipeid22 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %dl_pipeid22, align 1
  %80 = ptrtoint ptr %ul_pipeid to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ul_pipeid, align 4
  %ul_pipeid24 = getelementptr inbounds %struct.htc_conn_svc_msg, ptr %call17, i32 0, i32 4
  %82 = ptrtoint ptr %ul_pipeid24 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %ul_pipeid24, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len, align 4
  %conv25 = trunc i32 %84 to i16
  %call.i80 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 8) #5
  %85 = ptrtoint ptr %call.i80 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %call.i80, align 1
  %flags2.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i80, i32 0, i32 1
  %86 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %flags2.i, align 1
  %payload_len.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i80, i32 0, i32 2
  %87 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 %conv25, ptr %payload_len.i, align 1
  %hif.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %88 = ptrtoint ptr %hif.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hif.i, align 4
  %send.i = getelementptr inbounds %struct.ath9k_htc_hif, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %send.i, align 4
  %92 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %target, align 4
  %ul_pipeid.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 0, i32 4
  %94 = ptrtoint ptr %ul_pipeid.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ul_pipeid.i, align 4
  %call3.i = tail call i32 %91(ptr noundef %93, i8 noundef zeroext %95, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool27.not = icmp eq i32 %call3.i, 0
  br i1 %tobool27.not, label %if.end29, label %err

if.end29:                                         ; preds = %if.end16
  %cmd_wait = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  %call30 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_wait, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.end35, label %if.end39

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 2
  %96 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev36, align 4
  %98 = ptrtoint ptr %service_connreq to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %service_connreq, align 4
  %conv38 = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.9, i32 noundef %conv38) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %conn_rsp_epid40 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  %100 = ptrtoint ptr %conn_rsp_epid40 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %conn_rsp_epid40, align 4
  %102 = ptrtoint ptr %conn_rsp_epid to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %conn_rsp_epid, align 4
  br label %cleanup

err:                                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end39, %do.end35, %do.end14, %do.end
  %retval.0 = phi i32 [ %call3.i, %err ], [ 0, %if.end39 ], [ -110, %do.end35 ], [ -12, %do.end14 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @htc_send(ptr nocapture noundef readonly %target, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = trunc i32 %1 to i16
  %epid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %2 = ptrtoint ptr %epid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %epid, align 1
  %idxprom.i = zext i8 %3 to i32
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call.i, align 1
  %flags2.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %flags2.i, align 1
  %payload_len.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %conv, ptr %payload_len.i, align 1
  %hif.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %7 = ptrtoint ptr %hif.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif.i, align 4
  %send.i = getelementptr inbounds %struct.ath9k_htc_hif, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send.i, align 4
  %11 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target, align 4
  %ul_pipeid.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %idxprom.i, i32 4
  %13 = ptrtoint ptr %ul_pipeid.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ul_pipeid.i, align 4
  %call3.i = tail call i32 %10(ptr noundef %12, i8 noundef zeroext %14, ptr noundef %skb) #5
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @htc_send_epid(ptr nocapture noundef readonly %target, ptr noundef %skb, i32 noundef %epid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %conv = trunc i32 %1 to i16
  %conv1 = trunc i32 %epid to i8
  %idxprom.i = and i32 %epid, 255
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %call.i, align 1
  %flags2.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %flags2.i, align 1
  %payload_len.i = getelementptr inbounds %struct.htc_frame_hdr, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %conv, ptr %payload_len.i, align 1
  %hif.i = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %5 = ptrtoint ptr %hif.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hif.i, align 4
  %send.i = getelementptr inbounds %struct.ath9k_htc_hif, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %send.i, align 4
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target, align 4
  %ul_pipeid.i = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %idxprom.i, i32 4
  %11 = ptrtoint ptr %ul_pipeid.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ul_pipeid.i, align 4
  %call3.i = tail call i32 %8(ptr noundef %10, i8 noundef zeroext %12, ptr noundef %skb) #5
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @htc_stop(ptr nocapture noundef readonly %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hif = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %0 = ptrtoint ptr %hif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif, align 4
  %stop = getelementptr inbounds %struct.ath9k_htc_hif, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target, align 4
  tail call void %3(ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @htc_start(ptr nocapture noundef readonly %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hif = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %0 = ptrtoint ptr %hif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif, align 4
  %start = getelementptr inbounds %struct.ath9k_htc_hif, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start, align 4
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target, align 4
  tail call void %3(ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @htc_sta_drain(ptr nocapture noundef readonly %target, i8 noundef zeroext %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hif = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 3
  %0 = ptrtoint ptr %hif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif, align 4
  %sta_drain = getelementptr inbounds %struct.ath9k_htc_hif, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sta_drain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta_drain, align 4
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target, align 4
  tail call void %3(ptr noundef %5, i8 noundef zeroext %idx) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_txcompletion_cb(ptr noundef %htc_handle, ptr noundef %skb, i1 noundef zeroext %txok) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_flags = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 11
  %0 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %htc_flags, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.ret.sink.split_crit_edge

entry.ret.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret.sink.split

if.end:                                           ; preds = %entry
  %and7 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end15, label %if.end.ret.sink.split_crit_edge

if.end.ret.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret.sink.split

if.end15:                                         ; preds = %if.end
  %tobool16.not = icmp eq ptr %skb, null
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.then17

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end15
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %5)
  %cmp = icmp ugt i8 %5, 21
  br i1 %cmp, label %if.then17.ret_crit_edge, label %if.end21

if.then17.ret_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %ret

if.end21:                                         ; preds = %if.then17
  %conv18 = zext i8 %5 to i32
  %call = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 8) #5
  %tx = getelementptr %struct.htc_target, ptr %htc_handle, i32 0, i32 4, i32 %conv18, i32 1, i32 1
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx, align 4
  %tobool24.not = icmp eq ptr %7, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %ep_callbacks = getelementptr %struct.htc_target, ptr %htc_handle, i32 0, i32 4, i32 %conv18, i32 1
  %8 = ptrtoint ptr %ep_callbacks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ep_callbacks, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %3, align 1
  %conv30 = zext i8 %11 to i32
  tail call void %7(ptr noundef %9, ptr noundef nonnull %skb, i32 noundef %conv30, i1 noundef zeroext %txok) #5
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %cleanup

ret.sink.split:                                   ; preds = %if.end.ret.sink.split_crit_edge, %entry.ret.sink.split_crit_edge
  %.sink51 = phi i8 [ -3, %entry.ret.sink.split_crit_edge ], [ -2, %if.end.ret.sink.split_crit_edge ]
  %cmd_wait10 = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 6
  tail call void @complete(ptr noundef %cmd_wait10) #5
  %12 = ptrtoint ptr %htc_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %htc_flags, align 4
  %14 = and i8 %13, %.sink51
  store i8 %14, ptr %htc_flags, align 4
  br label %ret

ret:                                              ; preds = %ret.sink.split, %if.then17.ret_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %ret, %if.else, %if.then25, %if.end15.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_rx_msg(ptr noundef %htc_handle, ptr noundef %skb, i32 noundef %len, i8 noundef zeroext %pipe_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %htc_handle, null
  %tobool1.not = icmp eq ptr %skb, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %3)
  %cmp = icmp eq i8 %3, -103
  br i1 %cmp, label %if.then3, label %lor.lhs.false7

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end11.i [
    i32 857870745, label %sw.bb.i
    i32 857871001, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %exccause.i = getelementptr inbounds %struct.htc_panic_bad_vaddr, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %exccause.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %exccause.i, align 1
  %pc.i = getelementptr inbounds %struct.htc_panic_bad_vaddr, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %pc.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %pc.i, align 1
  %badvaddr.i = getelementptr inbounds %struct.htc_panic_bad_vaddr, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %badvaddr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %badvaddr.i, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.22, i32 noundef %10, i32 noundef %12, i32 noundef %14) #8
  br label %ath9k_htc_fw_panic_report.exit

sw.bb2.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %dev8.i = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 2
  %15 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev8.i, align 4
  %epid.i = getelementptr inbounds %struct.htc_panic_bad_epid, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %epid.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %epid.i, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25, i32 noundef %18) #8
  br label %ath9k_htc_fw_panic_report.exit

do.end11.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %dev12.i = getelementptr inbounds %struct.htc_target, ptr %htc_handle, i32 0, i32 2
  %19 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28) #8
  br label %ath9k_htc_fw_panic_report.exit

ath9k_htc_fw_panic_report.exit:                   ; preds = %do.end11.i, %sw.bb2.i, %sw.bb.i
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %3)
  %cmp8 = icmp ugt i8 %3, 21
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %pipe_id)
  %cmp12.not = icmp eq i8 %pipe_id, 3
  br i1 %cmp12.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #5
  br label %cleanup

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp17 = icmp eq i8 %3, 0
  %flags = getelementptr inbounds %struct.htc_frame_hdr, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 1
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not = icmp eq i8 %23, 0
  br i1 %cmp17, label %if.then19, label %if.else33

if.then19:                                        ; preds = %if.end16
  br i1 %tobool21.not, label %if.then19.if.end29_crit_edge, label %if.then22

if.then19.if.end29_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12976128, i32 %25)
  %cmp24 = icmp eq i32 %25, 12976128
  %spec.select.idx = select i1 %cmp24, i32 4, i32 0
  %spec.select = getelementptr i8, ptr %1, i32 %spec.select.idx
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.then19.if.end29_crit_edge
  %htc_hdr.0 = phi ptr [ %1, %if.then19.if.end29_crit_edge ], [ %spec.select, %if.then22 ]
  %add.ptr30 = getelementptr i8, ptr %htc_hdr.0, i32 8
  %26 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr30, align 2
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %27, label %if.end29.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 3, label %sw.bb32
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @htc_process_target_rdy(ptr noundef nonnull %htc_handle, ptr noundef %htc_hdr.0)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @htc_process_conn_rsp(ptr noundef nonnull %htc_handle, ptr noundef %htc_hdr.0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb, %if.end29.sw.epilog_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #5
  br label %cleanup

if.else33:                                        ; preds = %if.end16
  br i1 %tobool21.not, label %if.else33.if.end40_crit_edge, label %if.then38

if.else33.if.end40_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then38:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  %control = getelementptr inbounds %struct.htc_frame_hdr, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %control, align 1
  %conv39 = zext i8 %30 to i32
  %sub = sub i32 %len, %conv39
  tail call void @skb_trim(ptr noundef nonnull %skb, i32 noundef %sub) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else33.if.end40_crit_edge
  %call = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 8) #5
  %rx = getelementptr %struct.htc_target, ptr %htc_handle, i32 0, i32 4, i32 %conv, i32 1, i32 2
  %31 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx, align 4
  %tobool43.not = icmp eq ptr %32, null
  br i1 %tobool43.not, label %if.end40.cleanup_crit_edge, label %if.then44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %ep_callbacks = getelementptr %struct.htc_target, ptr %htc_handle, i32 0, i32 4, i32 %conv, i32 1
  %33 = ptrtoint ptr %ep_callbacks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ep_callbacks, align 4
  tail call void %32(ptr noundef %34, ptr noundef nonnull %skb, i32 noundef %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end40.cleanup_crit_edge, %sw.epilog, %if.else, %if.then14, %ath9k_htc_fw_panic_report.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htc_process_target_rdy(ptr noundef %target, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %credit_size = getelementptr inbounds %struct.htc_ready_msg, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %credit_size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %credit_size, align 1
  %credit_size1 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 10
  %2 = ptrtoint ptr %credit_size1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %credit_size1, align 2
  %endpoint2 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 4
  %3 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %endpoint2, align 4
  %max_msglen = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 4, i32 0, i32 3
  %4 = ptrtoint ptr %max_msglen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 255, ptr %max_msglen, align 4
  %tgt_ready = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tgt_ready, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %tgt_ready, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tgt_ready, ptr %tgt_ready, i32 1, ptr elementtype(i32) %tgt_ready) #5, !srcloc !63
  %target_wait = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 5
  tail call void @complete(ptr noundef %target_wait) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @htc_process_conn_rsp(ptr noundef %target, ptr nocapture noundef readonly %htc_hdr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr i8, ptr %htc_hdr, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %endpoint_id = getelementptr i8, ptr %htc_hdr, i32 13
  %2 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %endpoint_id, align 1
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %3)
  %cmp5 = icmp ugt i8 %3, 21
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %service_id8 = getelementptr i8, ptr %htc_hdr, i32 10
  %4 = ptrtoint ptr %service_id8 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %service_id8, align 1
  %max_msg_len = getelementptr i8, ptr %htc_hdr, i32 14
  %6 = ptrtoint ptr %max_msg_len to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %max_msg_len, align 1
  %arrayidx = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %conv2
  %arrayidx13 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 21
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %5)
  %cmp17 = icmp eq i16 %9, %5
  br i1 %cmp17, label %if.end.if.end25_crit_edge, label %for.inc

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc:                                          ; preds = %if.end
  %arrayidx13.1 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 20
  %10 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx13.1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %5)
  %cmp17.1 = icmp eq i16 %11, %5
  br i1 %cmp17.1, label %for.inc.if.end25_crit_edge, label %for.inc.1

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.1:                                        ; preds = %for.inc
  %arrayidx13.2 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 19
  %12 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx13.2, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %5)
  %cmp17.2 = icmp eq i16 %13, %5
  br i1 %cmp17.2, label %for.inc.1.if.end25_crit_edge, label %for.inc.2

for.inc.1.if.end25_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx13.3 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 18
  %14 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx13.3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %5)
  %cmp17.3 = icmp eq i16 %15, %5
  br i1 %cmp17.3, label %for.inc.2.if.end25_crit_edge, label %for.inc.3

for.inc.2.if.end25_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx13.4 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 17
  %16 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx13.4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %5)
  %cmp17.4 = icmp eq i16 %17, %5
  br i1 %cmp17.4, label %for.inc.3.if.end25_crit_edge, label %for.inc.4

for.inc.3.if.end25_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx13.5 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 16
  %18 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx13.5, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %5)
  %cmp17.5 = icmp eq i16 %19, %5
  br i1 %cmp17.5, label %for.inc.4.if.end25_crit_edge, label %for.inc.5

for.inc.4.if.end25_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx13.6 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 15
  %20 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx13.6, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %5)
  %cmp17.6 = icmp eq i16 %21, %5
  br i1 %cmp17.6, label %for.inc.5.if.end25_crit_edge, label %for.inc.6

for.inc.5.if.end25_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx13.7 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 14
  %22 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx13.7, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %5)
  %cmp17.7 = icmp eq i16 %23, %5
  br i1 %cmp17.7, label %for.inc.6.if.end25_crit_edge, label %for.inc.7

for.inc.6.if.end25_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx13.8 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 13
  %24 = ptrtoint ptr %arrayidx13.8 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx13.8, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %5)
  %cmp17.8 = icmp eq i16 %25, %5
  br i1 %cmp17.8, label %for.inc.7.if.end25_crit_edge, label %for.inc.8

for.inc.7.if.end25_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx13.9 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 12
  %26 = ptrtoint ptr %arrayidx13.9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx13.9, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %5)
  %cmp17.9 = icmp eq i16 %27, %5
  br i1 %cmp17.9, label %for.inc.8.if.end25_crit_edge, label %for.inc.9

for.inc.8.if.end25_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx13.10 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 11
  %28 = ptrtoint ptr %arrayidx13.10 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx13.10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %5)
  %cmp17.10 = icmp eq i16 %29, %5
  br i1 %cmp17.10, label %for.inc.9.if.end25_crit_edge, label %for.inc.10

for.inc.9.if.end25_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx13.11 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 10
  %30 = ptrtoint ptr %arrayidx13.11 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx13.11, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %5)
  %cmp17.11 = icmp eq i16 %31, %5
  br i1 %cmp17.11, label %for.inc.10.if.end25_crit_edge, label %for.inc.11

for.inc.10.if.end25_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx13.12 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %arrayidx13.12 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx13.12, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %5)
  %cmp17.12 = icmp eq i16 %33, %5
  br i1 %cmp17.12, label %for.inc.11.if.end25_crit_edge, label %for.inc.12

for.inc.11.if.end25_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx13.13 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %arrayidx13.13 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx13.13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %5)
  %cmp17.13 = icmp eq i16 %35, %5
  br i1 %cmp17.13, label %for.inc.12.if.end25_crit_edge, label %for.inc.13

for.inc.12.if.end25_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx13.14 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 7
  %36 = ptrtoint ptr %arrayidx13.14 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx13.14, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %5)
  %cmp17.14 = icmp eq i16 %37, %5
  br i1 %cmp17.14, label %for.inc.13.if.end25_crit_edge, label %for.inc.14

for.inc.13.if.end25_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx13.15 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %arrayidx13.15 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx13.15, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %5)
  %cmp17.15 = icmp eq i16 %39, %5
  br i1 %cmp17.15, label %for.inc.14.if.end25_crit_edge, label %for.inc.15

for.inc.14.if.end25_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.15:                                       ; preds = %for.inc.14
  %arrayidx13.16 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 5
  %40 = ptrtoint ptr %arrayidx13.16 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx13.16, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %5)
  %cmp17.16 = icmp eq i16 %41, %5
  br i1 %cmp17.16, label %for.inc.15.if.end25_crit_edge, label %for.inc.16

for.inc.15.if.end25_crit_edge:                    ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.16:                                       ; preds = %for.inc.15
  %arrayidx13.17 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 4
  %42 = ptrtoint ptr %arrayidx13.17 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx13.17, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %5)
  %cmp17.17 = icmp eq i16 %43, %5
  br i1 %cmp17.17, label %for.inc.16.if.end25_crit_edge, label %for.inc.17

for.inc.16.if.end25_crit_edge:                    ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.17:                                       ; preds = %for.inc.16
  %arrayidx13.18 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %arrayidx13.18 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx13.18, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %5)
  %cmp17.18 = icmp eq i16 %45, %5
  br i1 %cmp17.18, label %for.inc.17.if.end25_crit_edge, label %for.inc.18

for.inc.17.if.end25_crit_edge:                    ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.18:                                       ; preds = %for.inc.17
  %arrayidx13.19 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %arrayidx13.19 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx13.19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %5)
  %cmp17.19 = icmp eq i16 %47, %5
  br i1 %cmp17.19, label %for.inc.18.if.end25_crit_edge, label %for.inc.19

for.inc.18.if.end25_crit_edge:                    ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.inc.19:                                       ; preds = %for.inc.18
  %arrayidx13.20 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 1
  %48 = ptrtoint ptr %arrayidx13.20 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx13.20, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %5)
  %cmp17.20 = icmp eq i16 %49, %5
  br i1 %cmp17.20, label %for.inc.19.if.end25_crit_edge, label %for.inc.19.cleanup_crit_edge

for.inc.19.cleanup_crit_edge:                     ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.19.if.end25_crit_edge:                    ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.end25:                                         ; preds = %for.inc.19.if.end25_crit_edge, %for.inc.18.if.end25_crit_edge, %for.inc.17.if.end25_crit_edge, %for.inc.16.if.end25_crit_edge, %for.inc.15.if.end25_crit_edge, %for.inc.14.if.end25_crit_edge, %for.inc.13.if.end25_crit_edge, %for.inc.12.if.end25_crit_edge, %for.inc.11.if.end25_crit_edge, %for.inc.10.if.end25_crit_edge, %for.inc.9.if.end25_crit_edge, %for.inc.8.if.end25_crit_edge, %for.inc.7.if.end25_crit_edge, %for.inc.6.if.end25_crit_edge, %for.inc.5.if.end25_crit_edge, %for.inc.4.if.end25_crit_edge, %for.inc.3.if.end25_crit_edge, %for.inc.2.if.end25_crit_edge, %for.inc.1.if.end25_crit_edge, %for.inc.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %tepid.070.lcssa = phi i32 [ 21, %if.end.if.end25_crit_edge ], [ 20, %for.inc.if.end25_crit_edge ], [ 19, %for.inc.1.if.end25_crit_edge ], [ 18, %for.inc.2.if.end25_crit_edge ], [ 17, %for.inc.3.if.end25_crit_edge ], [ 16, %for.inc.4.if.end25_crit_edge ], [ 15, %for.inc.5.if.end25_crit_edge ], [ 14, %for.inc.6.if.end25_crit_edge ], [ 13, %for.inc.7.if.end25_crit_edge ], [ 12, %for.inc.8.if.end25_crit_edge ], [ 11, %for.inc.9.if.end25_crit_edge ], [ 10, %for.inc.10.if.end25_crit_edge ], [ 9, %for.inc.11.if.end25_crit_edge ], [ 8, %for.inc.12.if.end25_crit_edge ], [ 7, %for.inc.13.if.end25_crit_edge ], [ 6, %for.inc.14.if.end25_crit_edge ], [ 5, %for.inc.15.if.end25_crit_edge ], [ 4, %for.inc.16.if.end25_crit_edge ], [ 3, %for.inc.17.if.end25_crit_edge ], [ 2, %for.inc.18.if.end25_crit_edge ], [ 1, %for.inc.19.if.end25_crit_edge ]
  %arrayidx13.lcssa = phi ptr [ %arrayidx13, %if.end.if.end25_crit_edge ], [ %arrayidx13.1, %for.inc.if.end25_crit_edge ], [ %arrayidx13.2, %for.inc.1.if.end25_crit_edge ], [ %arrayidx13.3, %for.inc.2.if.end25_crit_edge ], [ %arrayidx13.4, %for.inc.3.if.end25_crit_edge ], [ %arrayidx13.5, %for.inc.4.if.end25_crit_edge ], [ %arrayidx13.6, %for.inc.5.if.end25_crit_edge ], [ %arrayidx13.7, %for.inc.6.if.end25_crit_edge ], [ %arrayidx13.8, %for.inc.7.if.end25_crit_edge ], [ %arrayidx13.9, %for.inc.8.if.end25_crit_edge ], [ %arrayidx13.10, %for.inc.9.if.end25_crit_edge ], [ %arrayidx13.11, %for.inc.10.if.end25_crit_edge ], [ %arrayidx13.12, %for.inc.11.if.end25_crit_edge ], [ %arrayidx13.13, %for.inc.12.if.end25_crit_edge ], [ %arrayidx13.14, %for.inc.13.if.end25_crit_edge ], [ %arrayidx13.15, %for.inc.14.if.end25_crit_edge ], [ %arrayidx13.16, %for.inc.15.if.end25_crit_edge ], [ %arrayidx13.17, %for.inc.16.if.end25_crit_edge ], [ %arrayidx13.18, %for.inc.17.if.end25_crit_edge ], [ %arrayidx13.19, %for.inc.18.if.end25_crit_edge ], [ %arrayidx13.20, %for.inc.19.if.end25_crit_edge ]
  %50 = ptrtoint ptr %arrayidx13.lcssa to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %arrayidx13.lcssa, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %5, ptr %arrayidx, align 4
  %max_txqdepth = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %tepid.070.lcssa, i32 2
  %52 = ptrtoint ptr %max_txqdepth to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_txqdepth, align 4
  %max_txqdepth27 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %conv2, i32 2
  %54 = ptrtoint ptr %max_txqdepth27 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %max_txqdepth27, align 4
  %ep_callbacks = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %conv2, i32 1
  %ep_callbacks28 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %tepid.070.lcssa, i32 1
  %55 = call ptr @memcpy(ptr %ep_callbacks, ptr %ep_callbacks28, i32 12)
  %ul_pipeid = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %tepid.070.lcssa, i32 4
  %56 = ptrtoint ptr %ul_pipeid to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ul_pipeid, align 4
  %ul_pipeid29 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %conv2, i32 4
  %58 = ptrtoint ptr %ul_pipeid29 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %ul_pipeid29, align 4
  %dl_pipeid = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %tepid.070.lcssa, i32 5
  %59 = ptrtoint ptr %dl_pipeid to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %dl_pipeid, align 1
  %dl_pipeid30 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %conv2, i32 5
  %61 = ptrtoint ptr %dl_pipeid30 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %dl_pipeid30, align 1
  %conv31 = zext i16 %7 to i32
  %max_msglen32 = getelementptr %struct.htc_target, ptr %target, i32 0, i32 4, i32 %conv2, i32 3
  %62 = ptrtoint ptr %max_msglen32 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv31, ptr %max_msglen32, align 4
  %conn_rsp_epid = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  %63 = ptrtoint ptr %conn_rsp_epid to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv2, ptr %conn_rsp_epid, align 4
  %cmd_wait = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 6
  tail call void @complete(ptr noundef %cmd_wait) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conn_rsp_epid33 = getelementptr inbounds %struct.htc_target, ptr %target, i32 0, i32 8
  %64 = ptrtoint ptr %conn_rsp_epid33 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %conn_rsp_epid33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end25, %for.inc.19.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath9k_htc_hw_alloc(ptr noundef %hif_handle, ptr noundef %hif, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 768) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %target_wait = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %target_wait to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %target_wait, align 8
  %wait.i = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #5
  %cmd_wait = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %cmd_wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_wait, align 8
  %wait.i16 = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i16, ptr noundef nonnull @.str.30, ptr noundef nonnull @init_completion.__key) #5
  %hif1 = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %hif1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hif, ptr %hif1, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hif_handle, ptr %call7.i.i, align 8
  %dev2 = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev2, align 8
  %control_ul_pipe = getelementptr inbounds %struct.ath9k_htc_hif, ptr %hif, i32 0, i32 4
  %6 = ptrtoint ptr %control_ul_pipe to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %control_ul_pipe, align 1
  %ul_pipeid = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 4
  %8 = ptrtoint ptr %ul_pipeid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ul_pipeid, align 8
  %control_dl_pipe = getelementptr inbounds %struct.ath9k_htc_hif, ptr %hif, i32 0, i32 3
  %9 = ptrtoint ptr %control_dl_pipe to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %control_dl_pipe, align 4
  %dl_pipeid = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 5
  %11 = ptrtoint ptr %dl_pipeid to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %dl_pipeid, align 1
  %tgt_ready = getelementptr inbounds %struct.htc_target, ptr %call7.i.i, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tgt_ready, i32 noundef 4) #5
  %12 = ptrtoint ptr %tgt_ready to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %tgt_ready, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_hw_free(ptr noundef %htc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %htc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_hw_init(ptr noundef %target, ptr noundef %dev, i16 noundef zeroext %devid, ptr noundef %product, i32 noundef %drv_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ath9k_htc_probe_device(ptr noundef %target, ptr noundef %dev, i16 noundef zeroext %devid, ptr noundef %product, i32 noundef %drv_info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_probe_device(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_hw_deinit(ptr noundef %target, i1 noundef zeroext %hot_unplug) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %target, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_htc_disconnect_device(ptr noundef nonnull %target, i1 noundef zeroext %hot_unplug) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_disconnect_device(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 247, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @htc_connect_service._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @htc_connect_service._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 261, i32 3}
!10 = !{ptr @htc_connect_service._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @htc_connect_service._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 281, i32 3}
!14 = !{ptr @htc_connect_service._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @htc_connect_service._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 504, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ath9k_htc_hw_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ath9k_htc_hw_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 156, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @htc_config_pipe_credits._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @htc_config_pipe_credits._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 175, i32 3}
!28 = !{ptr @htc_config_pipe_credits._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @htc_config_pipe_credits._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 194, i32 3}
!32 = !{ptr @htc_setup_complete._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @htc_setup_complete._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 210, i32 3}
!36 = !{ptr @htc_setup_complete._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @htc_setup_complete._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 371, i32 3}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ath9k_htc_fw_panic_report._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ath9k_htc_fw_panic_report._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 381, i32 3}
!45 = !{ptr @ath9k_htc_fw_panic_report._entry.24, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ath9k_htc_fw_panic_report._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/htc_hst.c", i32 386, i32 3}
!49 = !{ptr @ath9k_htc_fw_panic_report._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ath9k_htc_fw_panic_report._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148367306, i64 2148367332, i64 2148367361, i64 2148367395, i64 2148367426, i64 2148367449}
