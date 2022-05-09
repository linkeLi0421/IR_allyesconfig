; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/health.c_pt.bc'
source_filename = "../drivers/net/netdevsim/health.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_health_reporter_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nsim_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.netdev_phys_item_id, %struct.list_head, %struct.mutex, i8, i32, i32, i8, i8, i8, ptr, %struct.nsim_dev_health, ptr, %struct.spinlock, i8, i8, i8, i8, %struct.anon.137, ptr, i16 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nsim_dev_health = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.udp_tunnel_nic_shared, [2 x [4 x i32]], i8, i8, i8, i8, i8, i32 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.nsim_dev_dummy_reporter_ctx = type { ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@nsim_dev_empty_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.4, ptr null, ptr @nsim_dev_empty_reporter_dump, ptr @nsim_dev_empty_reporter_diagnose, ptr null }, [44 x i8] zeroinitializer }, align 32
@nsim_dev_dummy_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.5, ptr @nsim_dev_dummy_reporter_recover, ptr @nsim_dev_dummy_reporter_dump, ptr @nsim_dev_dummy_reporter_diagnose, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"health\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"break_health\00", [19 x i8] zeroinitializer }, align 32
@nsim_dev_health_break_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @nsim_dev_health_break_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"binary_len\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fail_recover\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@nsim_dev_dummy_reporter_recover.__msg = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"netdevsim: User setup the recover to fail for testing purposes\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"break_message\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_bool\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"test_u8\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"test_u32\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"test_u64\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_string\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"somestring\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"test_binary\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"test_nest\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nested_test_bool\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nested_test_u8\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_u32_array\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_array_of_objects\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"in_array_nested_test_bool\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"in_array_nested_test_u8\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"recovered_break_message\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"nsim_dev_empty_reporter_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 28, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"nsim_dev_dummy_reporter_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 190, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 251, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 258, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"nsim_dev_health_break_fops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 223, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 261, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 264, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 29, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 191, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 50, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 163, i32 44 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 69, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 72, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 75, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 78, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 81, i32 43 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 81, i32 58 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 89, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 94, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 100, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 103, i32 39 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 117, i32 47 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 129, i32 47 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 137, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 142, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [34 x i8] c"../drivers/net/netdevsim/health.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 181, i32 10 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @nsim_dev_empty_reporter_ops, ptr @nsim_dev_dummy_reporter_ops, ptr @.str, ptr @.str.1, ptr @nsim_dev_health_break_fops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nsim_dev_dummy_reporter_recover.__msg, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_empty_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_dummy_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_health_break_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_dev_dummy_reporter_recover.__msg to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_dev_health_init(ptr noundef %nsim_dev, ptr noundef %devlink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %health1 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27
  %call = tail call ptr @devlink_health_reporter_create(ptr noundef %devlink, ptr noundef nonnull @nsim_dev_empty_reporter_ops, i64 noundef 0, ptr noundef %health1) #5
  %0 = ptrtoint ptr %health1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %health1, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @devlink_health_reporter_create(ptr noundef %devlink, ptr noundef nonnull @nsim_dev_dummy_reporter_ops, i64 noundef 0, ptr noundef %health1) #5
  %dummy_reporter = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 1
  %2 = ptrtoint ptr %dummy_reporter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %dummy_reporter, align 4
  %cmp.i53 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.end.err_empty_reporter_destroy_crit_edge, label %if.end12

if.end.err_empty_reporter_destroy_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_empty_reporter_destroy

if.end12:                                         ; preds = %if.end
  %ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 3
  %3 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddir, align 4
  %call13 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %4) #5
  %ddir14 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 2
  %5 = ptrtoint ptr %ddir14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %ddir14, align 4
  %cmp.i54 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dummy_reporter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dummy_reporter, align 4
  tail call void @devlink_health_reporter_destroy(ptr noundef %7) #5
  br label %err_empty_reporter_destroy

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %recovered_break_msg = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 3
  %8 = ptrtoint ptr %recovered_break_msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %recovered_break_msg, align 4
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 128, ptr noundef %call13, ptr noundef %health1, ptr noundef nonnull @nsim_dev_health_break_fops) #5
  %binary_len = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 4
  %9 = ptrtoint ptr %binary_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %binary_len, align 4
  %10 = ptrtoint ptr %ddir14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddir14, align 4
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.2, i16 noundef zeroext 384, ptr noundef %11, ptr noundef %binary_len) #5
  %fail_recover = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 5
  %12 = ptrtoint ptr %fail_recover to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %fail_recover, align 4
  %13 = ptrtoint ptr %ddir14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddir14, align 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %14, ptr noundef %fail_recover) #5
  br label %cleanup

err_empty_reporter_destroy:                       ; preds = %if.then17, %if.end.err_empty_reporter_destroy_crit_edge
  %err.0.in = phi ptr [ %call13, %if.then17 ], [ %call6, %if.end.err_empty_reporter_destroy_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %15 = ptrtoint ptr %health1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %health1, align 4
  tail call void @devlink_health_reporter_destroy(ptr noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %err_empty_reporter_destroy, %if.end20, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %err.0, %err_empty_reporter_destroy ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_create(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_health_reporter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_dev_health_exit(ptr nocapture noundef readonly %nsim_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %health1 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27
  %ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 2
  %0 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddir, align 4
  tail call void @debugfs_remove(ptr noundef %1) #5
  %recovered_break_msg = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 3
  %2 = ptrtoint ptr %recovered_break_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recovered_break_msg, align 4
  tail call void @kfree(ptr noundef %3) #5
  %dummy_reporter = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 27, i32 1
  %4 = ptrtoint ptr %dummy_reporter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dummy_reporter, align 4
  tail call void @devlink_health_reporter_destroy(ptr noundef %5) #5
  %6 = ptrtoint ptr %health1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %health1, align 4
  tail call void @devlink_health_reporter_destroy(ptr noundef %7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_dev_empty_reporter_dump(ptr nocapture noundef readnone %reporter, ptr nocapture noundef readnone %fmsg, ptr nocapture noundef readnone %priv_ctx, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nsim_dev_empty_reporter_diagnose(ptr nocapture noundef readnone %reporter, ptr nocapture noundef readnone %fmsg, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_dummy_reporter_recover(ptr noundef %reporter, ptr noundef readonly %priv_ctx, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #5
  %fail_recover = getelementptr inbounds %struct.nsim_dev_health, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %fail_recover to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fail_recover, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nsim_dev_dummy_reporter_recover.__msg) #5
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nsim_dev_dummy_reporter_recover.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %priv_ctx, null
  br i1 %tobool4.not, label %if.end3.if.end12_crit_edge, label %if.then5

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then5:                                         ; preds = %if.end3
  %recovered_break_msg = getelementptr inbounds %struct.nsim_dev_health, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %recovered_break_msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recovered_break_msg, align 4
  tail call void @kfree(ptr noundef %4) #5
  %5 = ptrtoint ptr %priv_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv_ctx, align 4
  %call6 = tail call noalias ptr @kstrdup(ptr noundef %6, i32 noundef 3264) #5
  %7 = ptrtoint ptr %recovered_break_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %recovered_break_msg, align 4
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.then5.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then5.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_dummy_reporter_dump(ptr noundef %reporter, ptr noundef %fmsg, ptr noundef readonly %priv_ctx, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #5
  %tobool.not = icmp eq ptr %priv_ctx, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %priv_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ctx, align 4
  %call1 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.6, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %binary_len = getelementptr inbounds %struct.nsim_dev_health, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %binary_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %binary_len, align 4
  %call5 = tail call fastcc i32 @nsim_dev_dummy_fmsg_put(ptr noundef %fmsg, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_dummy_reporter_diagnose(ptr noundef %reporter, ptr noundef %fmsg, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #5
  %recovered_break_msg = getelementptr inbounds %struct.nsim_dev_health, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %recovered_break_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recovered_break_msg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.21, ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %binary_len = getelementptr inbounds %struct.nsim_dev_health, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %binary_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %binary_len, align 4
  %call6 = tail call fastcc i32 @nsim_dev_dummy_fmsg_put(ptr noundef %fmsg, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_string_pair_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nsim_dev_dummy_fmsg_put(ptr noundef %fmsg, i32 noundef %binary_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devlink_fmsg_bool_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.7, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.8, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.9, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @devlink_fmsg_u64_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.10, i64 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end8.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %binary_len, i32 noundef 11456) #8
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %if.end8.i.cleanup_crit_edge, label %if.end20

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end8.i
  tail call void @get_random_bytes(ptr noundef nonnull %call9.i, i32 noundef %binary_len) #5
  %call21 = tail call i32 @devlink_fmsg_binary_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.13, ptr noundef nonnull %call9.i, i32 noundef %binary_len) #5
  tail call void @kfree(ptr noundef nonnull %call9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @devlink_fmsg_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @devlink_fmsg_bool_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.15, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %call37 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.16, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call41 = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %call45 = tail call i32 @devlink_fmsg_pair_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %call49 = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  %call53 = tail call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %for.body.preheader, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end52
  %call57 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %for.cond, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call57.1 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.1)
  %tobool58.not.1 = icmp eq i32 %call57.1, 0
  br i1 %tobool58.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call57.2 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.2)
  %tobool58.not.2 = icmp eq i32 %call57.2, 0
  br i1 %tobool58.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call57.3 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.3)
  %tobool58.not.3 = icmp eq i32 %call57.3, 0
  br i1 %tobool58.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call57.4 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.4)
  %tobool58.not.4 = icmp eq i32 %call57.4, 0
  br i1 %tobool58.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %call57.5 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.5)
  %tobool58.not.5 = icmp eq i32 %call57.5, 0
  br i1 %tobool58.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %call57.6 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.6)
  %tobool58.not.6 = icmp eq i32 %call57.6, 0
  br i1 %tobool58.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %call57.7 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.7)
  %tobool58.not.7 = icmp eq i32 %call57.7, 0
  br i1 %tobool58.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %call57.8 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.8)
  %tobool58.not.8 = icmp eq i32 %call57.8, 0
  br i1 %tobool58.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %call57.9 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.9)
  %tobool58.not.9 = icmp eq i32 %call57.9, 0
  br i1 %tobool58.not.9, label %for.cond.9, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %call61 = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %for.cond.9.cleanup_crit_edge

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64:                                         ; preds = %for.cond.9
  %call65 = tail call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.for.body71_crit_edge, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end64.for.body71_crit_edge:                    ; preds = %if.end64
  br label %for.body71

for.cond69:                                       ; preds = %if.end83
  %inc89 = add nuw nsw i32 %i.1171, 1
  %exitcond.not = icmp eq i32 %inc89, 10
  br i1 %exitcond.not, label %for.end90, label %for.cond69.for.body71_crit_edge

for.cond69.for.body71_crit_edge:                  ; preds = %for.cond69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body71

for.body71:                                       ; preds = %for.cond69.for.body71_crit_edge, %if.end64.for.body71_crit_edge
  %i.1171 = phi i32 [ %inc89, %for.cond69.for.body71_crit_edge ], [ 0, %if.end64.for.body71_crit_edge ]
  %call72 = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %for.body71.cleanup_crit_edge

for.body71.cleanup_crit_edge:                     ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end75:                                         ; preds = %for.body71
  %call76 = tail call i32 @devlink_fmsg_bool_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.19, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end79:                                         ; preds = %if.end75
  %conv = trunc i32 %i.1171 to i8
  %call80 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.20, i8 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end83:                                         ; preds = %if.end79
  %call84 = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %for.cond69, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end90:                                        ; preds = %for.cond69
  call void @__sanitizer_cov_trace_pc() #7
  %call91 = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end90, %if.end83.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %for.body71.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call91, %for.end90 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call29, %if.end28.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call61, %for.cond.9.cleanup_crit_edge ], [ %call65, %if.end64.cleanup_crit_edge ], [ %call57, %for.body.preheader.cleanup_crit_edge ], [ %call57.1, %for.cond.cleanup_crit_edge ], [ %call57.2, %for.cond.1.cleanup_crit_edge ], [ %call57.3, %for.cond.2.cleanup_crit_edge ], [ %call57.4, %for.cond.3.cleanup_crit_edge ], [ %call57.5, %for.cond.4.cleanup_crit_edge ], [ %call57.6, %for.cond.5.cleanup_crit_edge ], [ %call57.7, %for.cond.6.cleanup_crit_edge ], [ %call57.8, %for.cond.7.cleanup_crit_edge ], [ %call57.9, %for.cond.8.cleanup_crit_edge ], [ %call84, %if.end83.cleanup_crit_edge ], [ %call80, %if.end79.cleanup_crit_edge ], [ %call76, %if.end75.cleanup_crit_edge ], [ %call72, %for.body71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_bool_pair_put(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u8_pair_put(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_pair_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u64_pair_put(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_binary_pair_put(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_dev_health_break_write(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %ctx = alloca %struct.nsim_dev_dummy_reporter_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctx) #5
  %call = tail call ptr @memdup_user_nul(ptr noundef %data, i32 noundef %count) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %call, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp = icmp eq i8 %4, 10
  br i1 %cmp, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %ctx, align 4
  %dummy_reporter = getelementptr inbounds %struct.nsim_dev_health, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dummy_reporter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dummy_reporter, align 4
  %call9 = call i32 @devlink_health_report(ptr noundef %8, ptr noundef %call, ptr noundef nonnull %ctx) #5
  call void @kfree(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool12.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %tobool12.not, i32 %count, i32 %call9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %spec.select, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctx) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_health_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/health.c", i32 251, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/netdevsim/health.c", i32 258, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/netdevsim/health.c", i32 261, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/netdevsim/health.c", i32 264, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/netdevsim/health.c", i32 29, i32 10}
!10 = !{ptr @nsim_dev_empty_reporter_ops, !11, !"nsim_dev_empty_reporter_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/netdevsim/health.c", i32 28, i32 36}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/netdevsim/health.c", i32 191, i32 10}
!14 = !{ptr @nsim_dev_dummy_reporter_ops, !15, !"nsim_dev_dummy_reporter_ops", i1 false, i1 false}
!15 = !{!"../drivers/net/netdevsim/health.c", i32 190, i32 36}
!16 = !{ptr @nsim_dev_dummy_reporter_recover.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/netdevsim/health.c", i32 50, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/netdevsim/health.c", i32 163, i32 44}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/netdevsim/health.c", i32 69, i32 41}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/netdevsim/health.c", i32 72, i32 39}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/netdevsim/health.c", i32 75, i32 40}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/netdevsim/health.c", i32 78, i32 40}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/netdevsim/health.c", i32 81, i32 43}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/netdevsim/health.c", i32 81, i32 58}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/netdevsim/health.c", i32 89, i32 43}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/netdevsim/health.c", i32 94, i32 43}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/netdevsim/health.c", i32 100, i32 41}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/netdevsim/health.c", i32 103, i32 39}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/netdevsim/health.c", i32 117, i32 47}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/netdevsim/health.c", i32 129, i32 47}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/netdevsim/health.c", i32 137, i32 8}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/netdevsim/health.c", i32 142, i32 13}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/netdevsim/health.c", i32 181, i32 10}
!50 = !{ptr @nsim_dev_health_break_fops, !51, !"nsim_dev_health_break_fops", i1 false, i1 false}
!51 = !{!"../drivers/net/netdevsim/health.c", i32 223, i32 37}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
