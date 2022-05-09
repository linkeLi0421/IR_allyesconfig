; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.106, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.107, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.108, ptr, %struct.address_space, %struct.list_head, %union.anon.109, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.106 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.107 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.108 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.109 = type { ptr }
%struct.mtk_flow_addr_info = type { ptr, ptr, ptr, ptr, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mtk_ppe = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.mtk_foe_entry = type { i32, %union.anon.99 }
%union.anon.99 = type { %struct.mtk_foe_ipv4_dslite }
%struct.mtk_foe_ipv4_dslite = type { %struct.mtk_ipv4_tuple, [4 x i32], [4 x i32], [3 x i8], i8, i32, i32, %struct.mtk_foe_mac_info }
%struct.mtk_ipv4_tuple = type { i32, i32, %union.anon.100 }
%union.anon.100 = type { i32 }
%struct.mtk_foe_mac_info = type { i16, i16, i32, i16, i16, i32, i16, i16 }
%struct.anon.101 = type { i16, i16 }
%struct.anon.105 = type { i16, i16 }
%struct.mtk_foe_ipv6 = type { [4 x i32], [4 x i32], %union.anon.103, [3 x i32], i32, i32, %struct.mtk_foe_mac_info }
%union.anon.103 = type { i32 }
%struct.mtk_foe_ipv4 = type { %struct.mtk_ipv4_tuple, i32, %struct.mtk_ipv4_tuple, i16, [3 x i16], i32, %struct.mtk_foe_mac_info }

@mtk_ppe_debugfs_init.fops_all = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtk_ppe_debugfs_foe_open_all, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mtk_ppe_debugfs_init.fops_bind = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtk_ppe_debugfs_foe_open_bind, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk_ppe\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"entries\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bind\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%05x %s %7s\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" orig=\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" new=\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c" eth=%pM->%pM etype=%04x vlan=%d,%d ib1=%08x ib2=%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_foe_entry_state_str.state_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INV\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UNB\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BND\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FIN\00", [28 x i8] zeroinitializer }, align 32
@mtk_foe_pkt_type_str.type_str = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null, ptr @.str.18], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPv4 5T\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPv4 3T\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"L2\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DS-LITE\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPv6 3T\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IPv6 5T\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6RD\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c":%d\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"->\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI4h\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI6\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"fops_all\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 193, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"fops_bind\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 200, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 209, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 210, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 211, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 100, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 126, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 138, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 156, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"state_str\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 17, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 18, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 19, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 20, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 21, i32 25 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"type_str\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 32, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 33, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 34, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 35, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 36, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 37, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 38, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 39, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 43, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 69, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 70, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 55, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [51 x i8] c"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 61, i32 16 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mtk_ppe_debugfs_init.fops_all, ptr @mtk_ppe_debugfs_init.fops_bind, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mtk_foe_entry_state_str.state_str, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mtk_foe_pkt_type_str.type_str, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ppe_debugfs_init.fops_all to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ppe_debugfs_init.fops_bind to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_foe_entry_state_str.state_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_foe_pkt_type_str.type_str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ppe_debugfs_init(ptr noundef %ppe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #3
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %ppe, ptr noundef nonnull @mtk_ppe_debugfs_init.fops_all) #3
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %ppe, ptr noundef nonnull @mtk_ppe_debugfs_init.fops_bind) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ppe_debugfs_foe_open_all(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtk_ppe_debugfs_foe_show_all, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ppe_debugfs_foe_open_bind(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtk_ppe_debugfs_foe_show_bind, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ppe_debugfs_foe_show_all(ptr noundef %m, ptr nocapture noundef readnone %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mtk_ppe_debugfs_foe_show(ptr noundef %m, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_ppe_debugfs_foe_show(ptr noundef %m, i1 noundef zeroext %bind) unnamed_addr #0 align 64 {
entry:
  %ai = alloca %struct.mtk_flow_addr_info, align 4
  %h_source = alloca [6 x i8], align 4
  %h_dest = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private1 = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private1, align 8
  %foe_table = getelementptr inbounds %struct.mtk_ppe, ptr %1, i32 0, i32 3
  %2 = getelementptr inbounds [6 x i8], ptr %h_source, i32 0, i32 4
  %3 = getelementptr inbounds [6 x i8], ptr %h_dest, i32 0, i32 4
  %src_port47 = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 2
  %dest_port49 = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 3
  %dest54 = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 1
  %ipv6 = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %foe_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %foe_table, align 4
  %arrayidx = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ai) #3
  %6 = call ptr @memset(ptr %ai, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h_source) #3
  %7 = call ptr @memset(ptr %h_source, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h_dest) #3
  %8 = call ptr @memset(ptr %h_dest, i32 255, i32 6)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %10, 28
  %shr = and i32 %and, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp ne i32 %shr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp16.not = icmp eq i32 %shr, 2
  %or.cond10 = select i1 %bind, i1 %cmp16.not, i1 %tobool.not
  br i1 %or.cond10, label %do.end33, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end33:                                         ; preds = %for.body
  %and36 = lshr i32 %10, 25
  %shr37 = and i32 %and36, 7
  %arrayidx.i = getelementptr [4 x ptr], ptr @mtk_foe_entry_state_str.state_str, i32 0, i32 %shr
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr37)
  %tobool.not.i = icmp eq i32 %shr37, 6
  br i1 %tobool.not.i, label %sw.epilog.thread, label %mtk_foe_pkt_type_str.exit

sw.epilog.thread:                                 ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %i.03, ptr noundef %12, ptr noundef nonnull @.str.19) #3
  br label %sw.epilog68.sink.split

mtk_foe_pkt_type_str.exit:                        ; preds = %do.end33
  %arrayidx.i1 = getelementptr [8 x ptr], ptr @mtk_foe_pkt_type_str.type_str, i32 0, i32 %shr37
  %13 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %i.03, ptr noundef %12, ptr noundef %14) #3
  %15 = zext i32 %shr37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr37, label %mtk_foe_pkt_type_str.exit.sw.epilog_crit_edge [
    i32 0, label %mtk_foe_pkt_type_str.exit.sw.bb_crit_edge
    i32 3, label %mtk_foe_pkt_type_str.exit.sw.bb_crit_edge11
    i32 1, label %mtk_foe_pkt_type_str.exit.sw.bb42_crit_edge
    i32 5, label %sw.bb45
    i32 4, label %mtk_foe_pkt_type_str.exit.sw.bb50_crit_edge
    i32 7, label %mtk_foe_pkt_type_str.exit.sw.bb50_crit_edge12
  ]

mtk_foe_pkt_type_str.exit.sw.bb50_crit_edge12:    ; preds = %mtk_foe_pkt_type_str.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb50

mtk_foe_pkt_type_str.exit.sw.bb50_crit_edge:      ; preds = %mtk_foe_pkt_type_str.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb50

mtk_foe_pkt_type_str.exit.sw.bb42_crit_edge:      ; preds = %mtk_foe_pkt_type_str.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb42

mtk_foe_pkt_type_str.exit.sw.bb_crit_edge11:      ; preds = %mtk_foe_pkt_type_str.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

mtk_foe_pkt_type_str.exit.sw.bb_crit_edge:        ; preds = %mtk_foe_pkt_type_str.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

mtk_foe_pkt_type_str.exit.sw.epilog_crit_edge:    ; preds = %mtk_foe_pkt_type_str.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %mtk_foe_pkt_type_str.exit.sw.bb_crit_edge, %mtk_foe_pkt_type_str.exit.sw.bb_crit_edge11
  %16 = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03, i32 1, i32 0, i32 0, i32 2
  %src_port = getelementptr inbounds %struct.anon.101, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %src_port47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %src_port, ptr %src_port47, align 4
  %18 = ptrtoint ptr %dest_port49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %dest_port49, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %sw.bb, %mtk_foe_pkt_type_str.exit.sw.bb42_crit_edge
  %19 = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03, i32 1
  %20 = ptrtoint ptr %ai to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %ai, align 4
  %dest_ip = getelementptr inbounds %struct.mtk_ipv4_tuple, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %dest54 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dest_ip, ptr %dest54, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %mtk_foe_pkt_type_str.exit
  call void @__sanitizer_cov_trace_pc() #5
  %22 = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03, i32 1, i32 0, i32 2, i32 1
  %src_port46 = getelementptr inbounds %struct.anon.105, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %src_port47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %src_port46, ptr %src_port47, align 4
  %24 = ptrtoint ptr %dest_port49 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %dest_port49, align 4
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb45, %mtk_foe_pkt_type_str.exit.sw.bb50_crit_edge, %mtk_foe_pkt_type_str.exit.sw.bb50_crit_edge12
  %25 = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03, i32 1
  %26 = ptrtoint ptr %ai to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ai, align 4
  %dest_ip53 = getelementptr inbounds %struct.mtk_foe_ipv6, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %dest54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dest_ip53, ptr %dest54, align 4
  %28 = ptrtoint ptr %ipv6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %ipv6, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb42, %mtk_foe_pkt_type_str.exit.sw.epilog_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4) #3
  call fastcc void @mtk_print_addr_info(ptr noundef %m, ptr noundef nonnull %ai)
  %29 = zext i32 %shr37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr37, label %sw.epilog.sw.epilog68_crit_edge [
    i32 0, label %sw.epilog.sw.bb55_crit_edge
    i32 3, label %sw.epilog.sw.bb55_crit_edge13
    i32 1, label %sw.epilog.sw.bb61_crit_edge
  ]

sw.epilog.sw.bb61_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb61

sw.epilog.sw.bb55_crit_edge13:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb55

sw.epilog.sw.bb55_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb55

sw.epilog.sw.epilog68_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog68

sw.bb55:                                          ; preds = %sw.epilog.sw.bb55_crit_edge, %sw.epilog.sw.bb55_crit_edge13
  %30 = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03, i32 1, i32 0, i32 1, i32 3
  %src_port56 = getelementptr inbounds %struct.anon.101, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %src_port47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %src_port56, ptr %src_port47, align 4
  %32 = ptrtoint ptr %dest_port49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %dest_port49, align 4
  br label %sw.bb61

sw.bb61:                                          ; preds = %sw.bb55, %sw.epilog.sw.bb61_crit_edge
  %new62 = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03, i32 1, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %ai to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %new62, ptr %ai, align 4
  %dest_ip66 = getelementptr inbounds %struct.mtk_ipv4_tuple, ptr %new62, i32 0, i32 1
  %34 = ptrtoint ptr %dest54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dest_ip66, ptr %dest54, align 4
  br label %sw.epilog68.sink.split

sw.epilog68.sink.split:                           ; preds = %sw.bb61, %sw.epilog.thread
  %.str.4.sink = phi ptr [ @.str.4, %sw.epilog.thread ], [ @.str.5, %sw.bb61 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %.str.4.sink) #3
  call fastcc void @mtk_print_addr_info(ptr noundef %m, ptr noundef nonnull %ai)
  br label %sw.epilog68

sw.epilog68:                                      ; preds = %sw.epilog68.sink.split, %sw.epilog.sw.epilog68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr37)
  %cmp69 = icmp ugt i32 %shr37, 2
  %35 = getelementptr %struct.mtk_foe_entry, ptr %5, i32 %i.03, i32 1
  %l271 = getelementptr inbounds %struct.mtk_foe_ipv6, ptr %35, i32 0, i32 6
  %ib272 = getelementptr inbounds %struct.mtk_foe_ipv6, ptr %35, i32 0, i32 5
  %l273 = getelementptr inbounds %struct.mtk_foe_ipv4, ptr %35, i32 0, i32 6
  %ib274 = getelementptr inbounds %struct.mtk_foe_ipv4, ptr %35, i32 0, i32 1
  %l2.0 = select i1 %cmp69, ptr %l271, ptr %l273
  %ib2.0.in = select i1 %cmp69, ptr %ib272, ptr %ib274
  %36 = ptrtoint ptr %ib2.0.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %ib2.0 = load i32, ptr %ib2.0.in, align 4
  %src_mac_hi = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 5
  %37 = ptrtoint ptr %src_mac_hi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %src_mac_hi, align 4
  %39 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %h_source, align 4
  %src_mac_lo = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 7
  %40 = ptrtoint ptr %src_mac_lo to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %src_mac_lo, align 2
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %2, align 4
  %dest_mac_hi = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 2
  %43 = ptrtoint ptr %dest_mac_hi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dest_mac_hi, align 4
  %45 = ptrtoint ptr %h_dest to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %h_dest, align 4
  %dest_mac_lo = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 4
  %46 = ptrtoint ptr %dest_mac_lo to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dest_mac_lo, align 2
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %3, align 4
  %etype = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 1
  %49 = ptrtoint ptr %etype to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %etype, align 2
  %conv = zext i16 %50 to i32
  %51 = ptrtoint ptr %l2.0 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %l2.0, align 4
  %conv81 = zext i16 %52 to i32
  %vlan2 = getelementptr inbounds %struct.mtk_foe_mac_info, ptr %l2.0, i32 0, i32 3
  %53 = ptrtoint ptr %vlan2 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vlan2, align 4
  %conv82 = zext i16 %54 to i32
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull %h_source, ptr noundef nonnull %h_dest, i32 noundef %conv, i32 noundef %conv81, i32 noundef %conv82, i32 noundef %56, i32 noundef %ib2.0) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog68, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h_dest) #3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h_source) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ai) #3
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 8192
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_print_addr_info(ptr noundef %m, ptr nocapture noundef readonly %ai) unnamed_addr #0 align 64 {
entry:
  %n_addr.i22 = alloca [4 x i32], align 4
  %n_addr.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ai, align 4
  %ipv6 = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 4
  %2 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ipv6, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n_addr.i) #3
  br i1 %tobool.not, label %if.then.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = call ptr @memcpy(ptr %n_addr.i, ptr %1, i32 16)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, ptr noundef nonnull %n_addr.i) #3
  br label %mtk_print_addr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef %1) #3
  br label %mtk_print_addr.exit

mtk_print_addr.exit:                              ; preds = %if.then.i, %for.body.preheader.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n_addr.i) #3
  %src_port = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 2
  %5 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src_port, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %mtk_print_addr.exit.if.end_crit_edge, label %if.then

mtk_print_addr.exit.if.end_crit_edge:             ; preds = %mtk_print_addr.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %mtk_print_addr.exit
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv = zext i16 %8 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %conv) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %mtk_print_addr.exit.if.end_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21) #3
  %dest = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 1
  %9 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dest, align 4
  %11 = ptrtoint ptr %ipv6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ipv6, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n_addr.i22) #3
  br i1 %tobool4.not, label %if.then.i24, label %for.body.preheader.i23

for.body.preheader.i23:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %13 = call ptr @memcpy(ptr %n_addr.i22, ptr %10, i32 16)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, ptr noundef nonnull %n_addr.i22) #3
  br label %mtk_print_addr.exit25

if.then.i24:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef %10) #3
  br label %mtk_print_addr.exit25

mtk_print_addr.exit25:                            ; preds = %if.then.i24, %for.body.preheader.i23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n_addr.i22) #3
  %dest_port = getelementptr inbounds %struct.mtk_flow_addr_info, ptr %ai, i32 0, i32 3
  %14 = ptrtoint ptr %dest_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dest_port, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %mtk_print_addr.exit25.if.end9_crit_edge, label %if.then6

mtk_print_addr.exit25.if.end9_crit_edge:          ; preds = %mtk_print_addr.exit25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then6:                                         ; preds = %mtk_print_addr.exit25
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv8 = zext i16 %17 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %conv8) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %mtk_print_addr.exit25.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ppe_debugfs_foe_show_bind(ptr noundef %m, ptr nocapture noundef readnone %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mtk_ppe_debugfs_foe_show(ptr noundef %m, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @mtk_ppe_debugfs_init.fops_all, !1, !"fops_all", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 193, i32 38}
!2 = !{ptr @mtk_ppe_debugfs_init.fops_bind, !3, !"fops_bind", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 200, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 209, i32 28}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 210, i32 22}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 211, i32 22}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 100, i32 17}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 126, i32 17}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 138, i32 18}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 156, i32 17}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 18, i32 29}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 19, i32 28}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 20, i32 26}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 21, i32 25}
!26 = !{ptr @mtk_foe_entry_state_str.state_str, !27, !"state_str", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 17, i32 28}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 25, i32 10}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 33, i32 35}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 34, i32 35}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 35, i32 31}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 36, i32 36}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 37, i32 38}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 38, i32 38}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 39, i32 33}
!44 = !{ptr @mtk_foe_pkt_type_str.type_str, !45, !"type_str", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 32, i32 28}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 43, i32 10}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 69, i32 17}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 70, i32 16}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 55, i32 17}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mediatek/mtk_ppe_debugfs.c", i32 61, i32 16}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
