; ModuleID = '/llk/IR_all_yes/net/core/dev_addr_lists_test.c_pt.bc'
source_filename = "../net/core/dev_addr_lists_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_unary_assert = type { %struct.kunit_assert, ptr, i8 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.kunit_fail_assert = type { %struct.kunit_assert }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }

@__UNIQUE_ID_array342 = internal global [2 x ptr] [ptr @dev_addr_test_suite, ptr null], align 4
@__UNIQUE_ID_suites343 = internal global ptr @__UNIQUE_ID_array342, section ".kunit_test_suites", align 4
@__UNIQUE_ID_file344 = internal constant [54 x i8] c"dev_addr_lists_test.file=net/core/dev_addr_lists_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [32 x i8] c"dev_addr_lists_test.license=GPL\00", section ".modinfo", align 1
@dev_addr_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"dev-addr-list-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dev_addr_test_init, ptr @dev_addr_test_exit, ptr @dev_addr_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@dev_addr_test_cases = internal global { [7 x %struct.kunit_case], [52 x i8] } { [7 x %struct.kunit_case] [%struct.kunit_case { ptr @dev_addr_test_basic, ptr @.str.3, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @dev_addr_test_sync_one, ptr @.str.4, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @dev_addr_test_add_del, ptr @.str.5, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @dev_addr_test_del_main, ptr @.str.6, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @dev_addr_test_add_set, ptr @.str.7, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @dev_addr_test_add_excl, ptr @.str.8, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/core/dev_addr_lists_test.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"!!netdev\00", [23 x i8] zeroinitializer }, align 32
@dummy_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't register netdev %d\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dev_addr_test_basic\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dev_addr_test_sync_one\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dev_addr_test_add_del\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dev_addr_test_del_main\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dev_addr_test_add_set\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dev_addr_test_add_excl\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!!netdev->dev_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"memcmp(netdev->dev_addr, addr, sizeof(addr))\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"datp->addr_seen\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dev_addr_add(netdev, addr, 1)\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0xf\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dev_addr_del(netdev, addr, 1)\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-2\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0xffff\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dev_uc_add_excl(netdev, addr)\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-17\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dev_uc_del(netdev, addr)\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"dev_addr_test_suite\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 228, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"dev_addr_test_cases\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 218, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 41, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"dummy_netdev_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 8, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 49, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 219, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 220, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 221, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 222, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 223, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 224, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 70, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 74, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 94, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 119, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 128, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 130, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 145, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 156, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 193, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 204, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 206, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [34 x i8] c"../net/core/dev_addr_lists_test.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 210, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__UNIQUE_ID_suites343, ptr @dev_addr_test_suite, ptr @dev_addr_test_cases, ptr @.str, ptr @.str.1, ptr @dummy_netdev_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_addr_test_cases to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_addr_test_init(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion9 = alloca %struct.kunit_fail_assert, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 4, i32 noundef 1, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !65
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 41, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.1, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %expected_true, align 4
  %tobool = icmp ne ptr %call, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %11 = ptrtoint ptr %test to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %test, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @dummy_netdev_ops, ptr %netdev_ops, align 8
  %call6 = call i32 @register_netdev(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @free_netdev(ptr noundef %call) #4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %__assertion9) #4
  %13 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 1
  %14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 2
  %15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 3
  %16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4
  %17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 4, i32 1
  %18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion9, i32 0, i32 5
  %19 = ptrtoint ptr %__assertion9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %test, ptr %__assertion9, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %13, align 4
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 49, ptr %14, align 4
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str, ptr %15, align 4
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %16, align 4
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %17, align 4
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kunit_fail_assert_format, ptr %18, align 4
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion9, i1 noundef zeroext false, ptr noundef nonnull @.str.2, i32 noundef %call6) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %__assertion9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @rtnl_lock() #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_addr_test_exit(ptr nocapture noundef readonly %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  tail call void @rtnl_unlock() #4
  tail call void @unregister_netdev(ptr noundef %1) #4
  tail call void @free_netdev(ptr noundef %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_unary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_fail_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_addr_test_basic(ptr noundef %test) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %__assertion = alloca %struct.kunit_unary_assert, align 4
  %__assertion11 = alloca %struct.kunit_binary_assert, align 8
  %__assertion38 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %__assertion) #4
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !65
  %4 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %test, ptr %__assertion, align 4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %6 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 70, ptr %line, align 4
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %7 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %8 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %10 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kunit_unary_assert_format, ptr %format, align 4
  %condition = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 1
  %11 = ptrtoint ptr %condition to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.9, ptr %condition, align 4
  %expected_true = getelementptr inbounds %struct.kunit_unary_assert, ptr %__assertion, i32 0, i32 2
  %12 = ptrtoint ptr %expected_true to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %expected_true, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %tobool = icmp ne ptr %14, null
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %tobool, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %__assertion) #4
  %15 = call ptr @memset(ptr %addr, i32 2, i32 6)
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #4
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %call = call i32 @memcmp(ptr noundef dereferenceable(6) %17, ptr noundef nonnull dereferenceable(6) %addr, i32 noundef 6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion11) #4
  %18 = getelementptr inbounds i8, ptr %__assertion11, i32 32
  %19 = call ptr @memset(ptr %18, i32 255, i32 24)
  %20 = ptrtoint ptr %__assertion11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion11, align 8
  %type14 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 1
  %21 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type14, align 4
  %line15 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 2
  %22 = ptrtoint ptr %line15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 74, ptr %line15, align 8
  %file16 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 3
  %23 = ptrtoint ptr %file16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %file16, align 4
  %message17 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4
  %24 = ptrtoint ptr %message17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message17, align 8
  %va19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %va19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va19, align 4
  %format20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion11, i32 0, i32 5
  %26 = ptrtoint ptr %format20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_binary_assert_format, ptr %format20, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 1
  %27 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.10, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 2
  %28 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.11, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 3
  %29 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 4
  %30 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.12, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion11, i32 0, i32 5
  %conv21 = sext i32 %call to i64
  %31 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv21, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp23 = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion11, i1 noundef zeroext %cmp23, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion11) #4
  %32 = call ptr @memset(ptr %addr, i32 3, i32 6)
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 56
  %33 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %34 to i32
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef %conv.i) #4
  %35 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr, align 64
  %call36 = call i32 @memcmp(ptr noundef dereferenceable(6) %36, ptr noundef nonnull dereferenceable(6) %addr, i32 noundef 6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion38) #4
  %37 = getelementptr inbounds i8, ptr %__assertion38, i32 32
  %38 = call ptr @memset(ptr %37, i32 255, i32 24)
  %39 = ptrtoint ptr %__assertion38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion38, align 8
  %type41 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 1
  %40 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type41, align 4
  %line42 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 2
  %41 = ptrtoint ptr %line42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 78, ptr %line42, align 8
  %file43 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 3
  %42 = ptrtoint ptr %file43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str, ptr %file43, align 4
  %message44 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4
  %43 = ptrtoint ptr %message44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message44, align 8
  %va46 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va46, align 4
  %format47 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion38, i32 0, i32 5
  %45 = ptrtoint ptr %format47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_binary_assert_format, ptr %format47, align 8
  %operation48 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion38, i32 0, i32 1
  %46 = ptrtoint ptr %operation48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.10, ptr %operation48, align 4
  %left_text49 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion38, i32 0, i32 2
  %47 = ptrtoint ptr %left_text49 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.11, ptr %left_text49, align 8
  %left_value50 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion38, i32 0, i32 3
  %48 = ptrtoint ptr %left_value50 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 0, ptr %left_value50, align 8
  %right_text52 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion38, i32 0, i32 4
  %49 = ptrtoint ptr %right_text52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.12, ptr %right_text52, align 8
  %right_value53 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion38, i32 0, i32 5
  %conv54 = sext i32 %call36 to i64
  %50 = ptrtoint ptr %right_value53 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv54, ptr %right_value53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp56 = icmp eq i32 %call36, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion38, i1 noundef zeroext %cmp56, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion38) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_addr_test_sync_one(ptr noundef %test) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion20 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = call ptr @memset(ptr %addr, i32 1, i32 6)
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #4
  %dev_addrs = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %call2 = call i32 @__hw_addr_sync_dev(ptr noundef %dev_addrs, ptr noundef %1, ptr noundef nonnull @dev_addr_test_sync, ptr noundef nonnull @dev_addr_test_unsync) #4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %5 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %6 = call ptr @memset(ptr %5, i32 255, i32 24)
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 94, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.10, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %15 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.13, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %16 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 2, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %17 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.14, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = zext i32 %4 to i64
  %18 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %19 = call ptr @memset(ptr %addr, i32 2, i32 6)
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %add.ptr.i, align 4
  %call14 = call i32 @__hw_addr_sync_dev(ptr noundef %dev_addrs, ptr noundef %1, ptr noundef nonnull @dev_addr_test_sync, ptr noundef nonnull @dev_addr_test_unsync) #4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion20) #4
  %23 = getelementptr inbounds i8, ptr %__assertion20, i32 32
  %24 = call ptr @memset(ptr %23, i32 255, i32 24)
  %25 = ptrtoint ptr %__assertion20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %test, ptr %__assertion20, align 8
  %type23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 1
  %26 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type23, align 4
  %line24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 2
  %27 = ptrtoint ptr %line24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 105, ptr %line24, align 8
  %file25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 3
  %28 = ptrtoint ptr %file25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str, ptr %file25, align 4
  %message26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4
  %29 = ptrtoint ptr %message26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %message26, align 8
  %va28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %va28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %va28, align 4
  %format29 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion20, i32 0, i32 5
  %31 = ptrtoint ptr %format29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @kunit_binary_assert_format, ptr %format29, align 8
  %operation30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 1
  %32 = ptrtoint ptr %operation30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.10, ptr %operation30, align 4
  %left_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 2
  %33 = ptrtoint ptr %left_text31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.11, ptr %left_text31, align 8
  %left_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 3
  %34 = ptrtoint ptr %left_value32 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %left_value32, align 8
  %right_text34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 4
  %35 = ptrtoint ptr %right_text34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.14, ptr %right_text34, align 8
  %right_value35 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion20, i32 0, i32 5
  %conv36 = zext i32 %22 to i64
  %36 = ptrtoint ptr %right_value35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv36, ptr %right_value35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp38 = icmp eq i32 %22, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion20, i1 noundef zeroext %cmp38, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion20) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_addr_test_add_del(ptr noundef %test) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion17 = alloca %struct.kunit_binary_assert, align 8
  %__assertion46 = alloca %struct.kunit_binary_assert, align 8
  %__assertion76 = alloca %struct.kunit_binary_assert, align 8
  %__assertion107 = alloca %struct.kunit_binary_assert, align 8
  %__assertion142 = alloca %struct.kunit_binary_assert, align 8
  %__assertion176 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %2 = call ptr @memset(ptr %addr, i32 1, i32 6)
  %call2 = call i32 @dev_addr_add(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %test, ptr %__assertion, align 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 120, ptr %line, align 8
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %file, align 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 8
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.10, ptr %operation, align 4
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.11, ptr %left_text, align 8
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %left_value, align 8
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.15, ptr %right_text, align 8
  %conv5 = sext i32 %call2 to i64
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp7 = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp7, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %17 = call ptr @memset(ptr %addr, i32 2, i32 6)
  %call2.1 = call i32 @dev_addr_add(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %18 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %19 = call ptr @memset(ptr %18, i32 255, i32 24)
  %20 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %test, ptr %__assertion, align 8
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %type, align 4
  %22 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 120, ptr %line, align 8
  %23 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %file, align 4
  %24 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %message, align 8
  %25 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %va, align 4
  %26 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %27 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.10, ptr %operation, align 4
  %28 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.11, ptr %left_text, align 8
  %29 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %left_value, align 8
  %30 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.15, ptr %right_text, align 8
  %conv5.1 = sext i32 %call2.1 to i64
  %31 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv5.1, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %cmp7.1 = icmp eq i32 %call2.1, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp7.1, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %32 = call ptr @memset(ptr %addr, i32 3, i32 6)
  %call2.2 = call i32 @dev_addr_add(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %33 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %34 = call ptr @memset(ptr %33, i32 255, i32 24)
  %35 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %test, ptr %__assertion, align 8
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type, align 4
  %37 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 120, ptr %line, align 8
  %38 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str, ptr %file, align 4
  %39 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %message, align 8
  %40 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %va, align 4
  %41 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %42 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.10, ptr %operation, align 4
  %43 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.11, ptr %left_text, align 8
  %44 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %left_value, align 8
  %45 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.15, ptr %right_text, align 8
  %conv5.2 = sext i32 %call2.2 to i64
  %46 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv5.2, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %cmp7.2 = icmp eq i32 %call2.2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp7.2, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call15 = call i32 @dev_addr_add(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion17) #4
  %47 = getelementptr inbounds i8, ptr %__assertion17, i32 32
  %48 = call ptr @memset(ptr %47, i32 255, i32 24)
  %49 = ptrtoint ptr %__assertion17 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %__assertion17, align 8
  %type20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 1
  %50 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %type20, align 4
  %line21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 2
  %51 = ptrtoint ptr %line21 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 124, ptr %line21, align 8
  %file22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 3
  %52 = ptrtoint ptr %file22 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str, ptr %file22, align 4
  %message23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4
  %53 = ptrtoint ptr %message23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %message23, align 8
  %va25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %va25 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %va25, align 4
  %format26 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion17, i32 0, i32 5
  %55 = ptrtoint ptr %format26 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @kunit_binary_assert_format, ptr %format26, align 8
  %operation27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 1
  %56 = ptrtoint ptr %operation27 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.10, ptr %operation27, align 4
  %left_text28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 2
  %57 = ptrtoint ptr %left_text28 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.11, ptr %left_text28, align 8
  %left_value29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 3
  %58 = ptrtoint ptr %left_value29 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 0, ptr %left_value29, align 8
  %right_text31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 4
  %59 = ptrtoint ptr %right_text31 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.15, ptr %right_text31, align 8
  %right_value32 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion17, i32 0, i32 5
  %conv33 = sext i32 %call15 to i64
  %60 = ptrtoint ptr %right_value32 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv33, ptr %right_value32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp35 = icmp eq i32 %call15, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion17, i1 noundef zeroext %cmp35, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion17) #4
  %dev_addrs = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %call41 = call i32 @__hw_addr_sync_dev(ptr noundef %dev_addrs, ptr noundef %1, ptr noundef nonnull @dev_addr_test_sync, ptr noundef nonnull @dev_addr_test_unsync) #4
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion46) #4
  %63 = getelementptr inbounds i8, ptr %__assertion46, i32 32
  %64 = call ptr @memset(ptr %63, i32 255, i32 24)
  %65 = ptrtoint ptr %__assertion46 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %test, ptr %__assertion46, align 8
  %type49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 1
  %66 = ptrtoint ptr %type49 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %type49, align 4
  %line50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 2
  %67 = ptrtoint ptr %line50 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 128, ptr %line50, align 8
  %file51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 3
  %68 = ptrtoint ptr %file51 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str, ptr %file51, align 4
  %message52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4
  %69 = ptrtoint ptr %message52 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %message52, align 8
  %va54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %va54 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %va54, align 4
  %format55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 5
  %71 = ptrtoint ptr %format55 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @kunit_binary_assert_format, ptr %format55, align 8
  %operation56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 1
  %72 = ptrtoint ptr %operation56 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @.str.10, ptr %operation56, align 4
  %left_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 2
  %73 = ptrtoint ptr %left_text57 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.16, ptr %left_text57, align 8
  %left_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 3
  %74 = ptrtoint ptr %left_value58 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 15, ptr %left_value58, align 8
  %right_text60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 4
  %75 = ptrtoint ptr %right_text60 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.14, ptr %right_text60, align 8
  %right_value61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 5
  %conv62 = zext i32 %62 to i64
  %76 = ptrtoint ptr %right_value61 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv62, ptr %right_value61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %62)
  %cmp64 = icmp eq i32 %62, 15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion46, i1 noundef zeroext %cmp64, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion46) #4
  %call74 = call i32 @dev_addr_del(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion76) #4
  %77 = getelementptr inbounds i8, ptr %__assertion76, i32 32
  %78 = call ptr @memset(ptr %77, i32 255, i32 24)
  %79 = ptrtoint ptr %__assertion76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %test, ptr %__assertion76, align 8
  %type79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 1
  %80 = ptrtoint ptr %type79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %type79, align 4
  %line80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 2
  %81 = ptrtoint ptr %line80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 131, ptr %line80, align 8
  %file81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 3
  %82 = ptrtoint ptr %file81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str, ptr %file81, align 4
  %message82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4
  %83 = ptrtoint ptr %message82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %message82, align 8
  %va84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4, i32 1
  %84 = ptrtoint ptr %va84 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %va84, align 4
  %format85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 5
  %85 = ptrtoint ptr %format85 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_binary_assert_format, ptr %format85, align 8
  %operation86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 1
  %86 = ptrtoint ptr %operation86 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.10, ptr %operation86, align 4
  %left_text87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 2
  %87 = ptrtoint ptr %left_text87 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.11, ptr %left_text87, align 8
  %left_value88 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 3
  %88 = ptrtoint ptr %left_value88 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %left_value88, align 8
  %right_text90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 4
  %89 = ptrtoint ptr %right_text90 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.17, ptr %right_text90, align 8
  %right_value91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 5
  %conv92 = sext i32 %call74 to i64
  %90 = ptrtoint ptr %right_value91 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv92, ptr %right_value91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp94 = icmp eq i32 %call74, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion76, i1 noundef zeroext %cmp94, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion76) #4
  %call101 = call i32 @__hw_addr_sync_dev(ptr noundef %dev_addrs, ptr noundef %1, ptr noundef nonnull @dev_addr_test_sync, ptr noundef nonnull @dev_addr_test_unsync) #4
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion107) #4
  %93 = getelementptr inbounds i8, ptr %__assertion107, i32 32
  %94 = call ptr @memset(ptr %93, i32 255, i32 24)
  %95 = ptrtoint ptr %__assertion107 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %test, ptr %__assertion107, align 8
  %type110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 1
  %96 = ptrtoint ptr %type110 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %type110, align 4
  %line111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 2
  %97 = ptrtoint ptr %line111 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 135, ptr %line111, align 8
  %file112 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 3
  %98 = ptrtoint ptr %file112 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @.str, ptr %file112, align 4
  %message113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 4
  %99 = ptrtoint ptr %message113 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %message113, align 8
  %va115 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %va115 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %va115, align 4
  %format116 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion107, i32 0, i32 5
  %101 = ptrtoint ptr %format116 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @kunit_binary_assert_format, ptr %format116, align 8
  %operation117 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 1
  %102 = ptrtoint ptr %operation117 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.10, ptr %operation117, align 4
  %left_text118 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 2
  %103 = ptrtoint ptr %left_text118 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.16, ptr %left_text118, align 8
  %left_value119 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 3
  %104 = ptrtoint ptr %left_value119 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 15, ptr %left_value119, align 8
  %right_text121 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 4
  %105 = ptrtoint ptr %right_text121 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @.str.14, ptr %right_text121, align 8
  %right_value122 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion107, i32 0, i32 5
  %conv123 = zext i32 %92 to i64
  %106 = ptrtoint ptr %right_value122 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv123, ptr %right_value122, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %92)
  %cmp125 = icmp eq i32 %92, 15
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion107, i1 noundef zeroext %cmp125, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion107) #4
  %type145 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 1
  %line146 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 2
  %file147 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 3
  %message148 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 4
  %va150 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 4, i32 1
  %format151 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion142, i32 0, i32 5
  %operation152 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion142, i32 0, i32 1
  %left_text153 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion142, i32 0, i32 2
  %left_value154 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion142, i32 0, i32 3
  %right_text156 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion142, i32 0, i32 4
  %right_value157 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion142, i32 0, i32 5
  %107 = call ptr @memset(ptr %addr, i32 1, i32 6)
  %call140 = call i32 @dev_addr_del(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion142) #4
  %108 = getelementptr inbounds i8, ptr %__assertion142, i32 32
  %109 = call ptr @memset(ptr %108, i32 255, i32 24)
  %110 = ptrtoint ptr %__assertion142 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion142, align 8
  %111 = ptrtoint ptr %type145 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type145, align 4
  %112 = ptrtoint ptr %line146 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 140, ptr %line146, align 8
  %113 = ptrtoint ptr %file147 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str, ptr %file147, align 4
  %114 = ptrtoint ptr %message148 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message148, align 8
  %115 = ptrtoint ptr %va150 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va150, align 4
  %116 = ptrtoint ptr %format151 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_assert_format, ptr %format151, align 8
  %117 = ptrtoint ptr %operation152 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.10, ptr %operation152, align 4
  %118 = ptrtoint ptr %left_text153 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.11, ptr %left_text153, align 8
  %119 = ptrtoint ptr %left_value154 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 0, ptr %left_value154, align 8
  %120 = ptrtoint ptr %right_text156 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.17, ptr %right_text156, align 8
  %conv158 = sext i32 %call140 to i64
  %121 = ptrtoint ptr %right_value157 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv158, ptr %right_value157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp160 = icmp eq i32 %call140, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion142, i1 noundef zeroext %cmp160, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion142) #4
  %122 = call ptr @memset(ptr %addr, i32 2, i32 6)
  %call140.1 = call i32 @dev_addr_del(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion142) #4
  %123 = getelementptr inbounds i8, ptr %__assertion142, i32 32
  %124 = call ptr @memset(ptr %123, i32 255, i32 24)
  %125 = ptrtoint ptr %__assertion142 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %test, ptr %__assertion142, align 8
  %126 = ptrtoint ptr %type145 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %type145, align 4
  %127 = ptrtoint ptr %line146 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 140, ptr %line146, align 8
  %128 = ptrtoint ptr %file147 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @.str, ptr %file147, align 4
  %129 = ptrtoint ptr %message148 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %message148, align 8
  %130 = ptrtoint ptr %va150 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %va150, align 4
  %131 = ptrtoint ptr %format151 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @kunit_binary_assert_format, ptr %format151, align 8
  %132 = ptrtoint ptr %operation152 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @.str.10, ptr %operation152, align 4
  %133 = ptrtoint ptr %left_text153 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.11, ptr %left_text153, align 8
  %134 = ptrtoint ptr %left_value154 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %left_value154, align 8
  %135 = ptrtoint ptr %right_text156 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @.str.17, ptr %right_text156, align 8
  %conv158.1 = sext i32 %call140.1 to i64
  %136 = ptrtoint ptr %right_value157 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %conv158.1, ptr %right_value157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.1)
  %cmp160.1 = icmp eq i32 %call140.1, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion142, i1 noundef zeroext %cmp160.1, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion142) #4
  %137 = call ptr @memset(ptr %addr, i32 3, i32 6)
  %call140.2 = call i32 @dev_addr_del(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion142) #4
  %138 = getelementptr inbounds i8, ptr %__assertion142, i32 32
  %139 = call ptr @memset(ptr %138, i32 255, i32 24)
  %140 = ptrtoint ptr %__assertion142 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %test, ptr %__assertion142, align 8
  %141 = ptrtoint ptr %type145 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %type145, align 4
  %142 = ptrtoint ptr %line146 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 140, ptr %line146, align 8
  %143 = ptrtoint ptr %file147 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str, ptr %file147, align 4
  %144 = ptrtoint ptr %message148 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %message148, align 8
  %145 = ptrtoint ptr %va150 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %va150, align 4
  %146 = ptrtoint ptr %format151 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @kunit_binary_assert_format, ptr %format151, align 8
  %147 = ptrtoint ptr %operation152 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @.str.10, ptr %operation152, align 4
  %148 = ptrtoint ptr %left_text153 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.11, ptr %left_text153, align 8
  %149 = ptrtoint ptr %left_value154 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 0, ptr %left_value154, align 8
  %150 = ptrtoint ptr %right_text156 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @.str.17, ptr %right_text156, align 8
  %conv158.2 = sext i32 %call140.2 to i64
  %151 = ptrtoint ptr %right_value157 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %conv158.2, ptr %right_value157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.2)
  %cmp160.2 = icmp eq i32 %call140.2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion142, i1 noundef zeroext %cmp160.2, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion142) #4
  %call170 = call i32 @__hw_addr_sync_dev(ptr noundef %dev_addrs, ptr noundef %1, ptr noundef nonnull @dev_addr_test_sync, ptr noundef nonnull @dev_addr_test_unsync) #4
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion176) #4
  %154 = getelementptr inbounds i8, ptr %__assertion176, i32 32
  %155 = call ptr @memset(ptr %154, i32 255, i32 24)
  %156 = ptrtoint ptr %__assertion176 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %test, ptr %__assertion176, align 8
  %type179 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion176, i32 0, i32 1
  %157 = ptrtoint ptr %type179 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %type179, align 4
  %line180 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion176, i32 0, i32 2
  %158 = ptrtoint ptr %line180 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 145, ptr %line180, align 8
  %file181 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion176, i32 0, i32 3
  %159 = ptrtoint ptr %file181 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str, ptr %file181, align 4
  %message182 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion176, i32 0, i32 4
  %160 = ptrtoint ptr %message182 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %message182, align 8
  %va184 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion176, i32 0, i32 4, i32 1
  %161 = ptrtoint ptr %va184 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %va184, align 4
  %format185 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion176, i32 0, i32 5
  %162 = ptrtoint ptr %format185 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @kunit_binary_assert_format, ptr %format185, align 8
  %operation186 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion176, i32 0, i32 1
  %163 = ptrtoint ptr %operation186 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.10, ptr %operation186, align 4
  %left_text187 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion176, i32 0, i32 2
  %164 = ptrtoint ptr %left_text187 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.18, ptr %left_text187, align 8
  %left_value188 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion176, i32 0, i32 3
  %165 = ptrtoint ptr %left_value188 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 1, ptr %left_value188, align 8
  %right_text190 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion176, i32 0, i32 4
  %166 = ptrtoint ptr %right_text190 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.14, ptr %right_text190, align 8
  %right_value191 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion176, i32 0, i32 5
  %conv192 = zext i32 %153 to i64
  %167 = ptrtoint ptr %right_value191 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv192, ptr %right_value191, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp194 = icmp eq i32 %153, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion176, i1 noundef zeroext %cmp194, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion176) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_addr_test_del_main(ptr noundef %test) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion16 = alloca %struct.kunit_binary_assert, align 8
  %__assertion46 = alloca %struct.kunit_binary_assert, align 8
  %__assertion76 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #4
  %2 = call ptr @memset(ptr %addr, i32 1, i32 6)
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #4
  %call = call i32 @dev_addr_del(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %3 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %4 = call ptr @memset(ptr %3, i32 255, i32 24)
  %5 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %7 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 157, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %8 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %11 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.10, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %13 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.19, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %14 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -2, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %15 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.17, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = sext i32 %call to i64
  %16 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp = icmp eq i32 %call, -2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %call14 = call i32 @dev_addr_add(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion16) #4
  %17 = getelementptr inbounds i8, ptr %__assertion16, i32 32
  %18 = call ptr @memset(ptr %17, i32 255, i32 24)
  %19 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %test, ptr %__assertion16, align 8
  %type19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %20 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type19, align 4
  %line20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %21 = ptrtoint ptr %line20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 159, ptr %line20, align 8
  %file21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %22 = ptrtoint ptr %file21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str, ptr %file21, align 4
  %message22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %23 = ptrtoint ptr %message22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %message22, align 8
  %va24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %va24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %va24, align 4
  %format25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %25 = ptrtoint ptr %format25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @kunit_binary_assert_format, ptr %format25, align 8
  %operation26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 1
  %26 = ptrtoint ptr %operation26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.10, ptr %operation26, align 4
  %left_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 2
  %27 = ptrtoint ptr %left_text27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.11, ptr %left_text27, align 8
  %left_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 3
  %28 = ptrtoint ptr %left_value28 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %left_value28, align 8
  %right_text30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 4
  %29 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.15, ptr %right_text30, align 8
  %right_value31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 5
  %conv32 = sext i32 %call14 to i64
  %30 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv32, ptr %right_value31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp34 = icmp eq i32 %call14, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext %cmp34, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion16) #4
  %call44 = call i32 @dev_addr_del(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion46) #4
  %31 = getelementptr inbounds i8, ptr %__assertion46, i32 32
  %32 = call ptr @memset(ptr %31, i32 255, i32 24)
  %33 = ptrtoint ptr %__assertion46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %test, ptr %__assertion46, align 8
  %type49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 1
  %34 = ptrtoint ptr %type49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type49, align 4
  %line50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 2
  %35 = ptrtoint ptr %line50 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 161, ptr %line50, align 8
  %file51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 3
  %36 = ptrtoint ptr %file51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str, ptr %file51, align 4
  %message52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4
  %37 = ptrtoint ptr %message52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %message52, align 8
  %va54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %va54 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %va54, align 4
  %format55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion46, i32 0, i32 5
  %39 = ptrtoint ptr %format55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @kunit_binary_assert_format, ptr %format55, align 8
  %operation56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 1
  %40 = ptrtoint ptr %operation56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.10, ptr %operation56, align 4
  %left_text57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 2
  %41 = ptrtoint ptr %left_text57 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.11, ptr %left_text57, align 8
  %left_value58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 3
  %42 = ptrtoint ptr %left_value58 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %left_value58, align 8
  %right_text60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 4
  %43 = ptrtoint ptr %right_text60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.17, ptr %right_text60, align 8
  %right_value61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion46, i32 0, i32 5
  %conv62 = sext i32 %call44 to i64
  %44 = ptrtoint ptr %right_value61 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv62, ptr %right_value61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp64 = icmp eq i32 %call44, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion46, i1 noundef zeroext %cmp64, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion46) #4
  %call74 = call i32 @dev_addr_del(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion76) #4
  %45 = getelementptr inbounds i8, ptr %__assertion76, i32 32
  %46 = call ptr @memset(ptr %45, i32 255, i32 24)
  %47 = ptrtoint ptr %__assertion76 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %test, ptr %__assertion76, align 8
  %type79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 1
  %48 = ptrtoint ptr %type79 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %type79, align 4
  %line80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 2
  %49 = ptrtoint ptr %line80 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 163, ptr %line80, align 8
  %file81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 3
  %50 = ptrtoint ptr %file81 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str, ptr %file81, align 4
  %message82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4
  %51 = ptrtoint ptr %message82 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %message82, align 8
  %va84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 4, i32 1
  %52 = ptrtoint ptr %va84 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %va84, align 4
  %format85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion76, i32 0, i32 5
  %53 = ptrtoint ptr %format85 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kunit_binary_assert_format, ptr %format85, align 8
  %operation86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 1
  %54 = ptrtoint ptr %operation86 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.10, ptr %operation86, align 4
  %left_text87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 2
  %55 = ptrtoint ptr %left_text87 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.19, ptr %left_text87, align 8
  %left_value88 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 3
  %56 = ptrtoint ptr %left_value88 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 -2, ptr %left_value88, align 8
  %right_text90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 4
  %57 = ptrtoint ptr %right_text90 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.17, ptr %right_text90, align 8
  %right_value91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion76, i32 0, i32 5
  %conv92 = sext i32 %call74 to i64
  %58 = ptrtoint ptr %right_value91 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv92, ptr %right_value91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call74)
  %cmp94 = icmp eq i32 %call74, -2
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion76, i1 noundef zeroext %cmp94, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion76) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_addr_test_add_set(ptr noundef %test) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion19 = alloca %struct.kunit_binary_assert, align 8
  %__assertion50 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.095 = phi i32 [ 1, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = trunc i32 %i.095 to i8
  %4 = zext i8 %3 to i32
  %5 = call ptr @memset(ptr %addr, i32 %4, i32 6)
  %call2 = call i32 @dev_addr_add(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %6 = call ptr @memset(ptr %2, i32 255, i32 24)
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 8
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 181, ptr %line, align 8
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %file, align 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 8
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.10, ptr %operation, align 4
  %15 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.11, ptr %left_text, align 8
  %16 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %left_value, align 8
  %17 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.15, ptr %right_text, align 8
  %conv5 = sext i32 %call2 to i64
  %18 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp7 = icmp eq i32 %call2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp7, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %19 = call ptr @memset(ptr %addr, i32 16, i32 6)
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #4
  %call17 = call i32 @dev_addr_add(ptr noundef %1, ptr noundef nonnull %addr, i8 noundef zeroext 1) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion19) #4
  %20 = getelementptr inbounds i8, ptr %__assertion19, i32 32
  %21 = call ptr @memset(ptr %20, i32 255, i32 24)
  %22 = ptrtoint ptr %__assertion19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %test, ptr %__assertion19, align 8
  %type22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 1
  %23 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type22, align 4
  %line23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 2
  %24 = ptrtoint ptr %line23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 187, ptr %line23, align 8
  %file24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 3
  %25 = ptrtoint ptr %file24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str, ptr %file24, align 4
  %message25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 4
  %26 = ptrtoint ptr %message25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %message25, align 8
  %va27 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %va27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %va27, align 4
  %format28 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion19, i32 0, i32 5
  %28 = ptrtoint ptr %format28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @kunit_binary_assert_format, ptr %format28, align 8
  %operation29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion19, i32 0, i32 1
  %29 = ptrtoint ptr %operation29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.10, ptr %operation29, align 4
  %left_text30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion19, i32 0, i32 2
  %30 = ptrtoint ptr %left_text30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.11, ptr %left_text30, align 8
  %left_value31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion19, i32 0, i32 3
  %31 = ptrtoint ptr %left_value31 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %left_value31, align 8
  %right_text33 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion19, i32 0, i32 4
  %32 = ptrtoint ptr %right_text33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.15, ptr %right_text33, align 8
  %right_value34 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion19, i32 0, i32 5
  %conv35 = sext i32 %call17 to i64
  %33 = ptrtoint ptr %right_value34 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv35, ptr %right_value34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp37 = icmp eq i32 %call17, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion19, i1 noundef zeroext %cmp37, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion19) #4
  %34 = call ptr @memset(ptr %addr, i32 0, i32 6)
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #4
  %dev_addrs = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 67
  %call45 = call i32 @__hw_addr_sync_dev(ptr noundef %dev_addrs, ptr noundef %1, ptr noundef nonnull @dev_addr_test_sync, ptr noundef nonnull @dev_addr_test_unsync) #4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion50) #4
  %37 = getelementptr inbounds i8, ptr %__assertion50, i32 32
  %38 = call ptr @memset(ptr %37, i32 255, i32 24)
  %39 = ptrtoint ptr %__assertion50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %test, ptr %__assertion50, align 8
  %type53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 1
  %40 = ptrtoint ptr %type53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %type53, align 4
  %line54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 2
  %41 = ptrtoint ptr %line54 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 193, ptr %line54, align 8
  %file55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 3
  %42 = ptrtoint ptr %file55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str, ptr %file55, align 4
  %message56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 4
  %43 = ptrtoint ptr %message56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %message56, align 8
  %va58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %va58 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %va58, align 4
  %format59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 5
  %45 = ptrtoint ptr %format59 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kunit_binary_assert_format, ptr %format59, align 8
  %operation60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 1
  %46 = ptrtoint ptr %operation60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.10, ptr %operation60, align 4
  %left_text61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 2
  %47 = ptrtoint ptr %left_text61 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.20, ptr %left_text61, align 8
  %left_value62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 3
  %48 = ptrtoint ptr %left_value62 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 65535, ptr %left_value62, align 8
  %right_text64 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 4
  %49 = ptrtoint ptr %right_text64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.14, ptr %right_text64, align 8
  %right_value65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 5
  %conv66 = zext i32 %36 to i64
  %50 = ptrtoint ptr %right_value65 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv66, ptr %right_value65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %36)
  %cmp68 = icmp eq i32 %36, 65535
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion50, i1 noundef zeroext %cmp68, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion50) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_addr_test_add_excl(ptr noundef %test) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion16 = alloca %struct.kunit_binary_assert, align 8
  %__assertion51 = alloca %struct.kunit_binary_assert, align 8
  %__assertion88 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #4
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %2 = getelementptr inbounds i8, ptr %__assertion, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0142 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %3 = trunc i32 %i.0142 to i8
  %4 = zext i8 %3 to i32
  %5 = call ptr @memset(ptr %addr, i32 %4, i32 6)
  %call = call i32 @dev_uc_add_excl(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #4
  %6 = call ptr @memset(ptr %2, i32 255, i32 24)
  %7 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %test, ptr %__assertion, align 8
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type, align 4
  %9 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 204, ptr %line, align 8
  %10 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str, ptr %file, align 4
  %11 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %message, align 8
  %12 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %va, align 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.10, ptr %operation, align 4
  %15 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.11, ptr %left_text, align 8
  %16 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %left_value, align 8
  %17 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.21, ptr %right_text, align 8
  %conv4 = sext i32 %call to i64
  %18 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv4, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp eq i32 %call, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp6, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #4
  %inc = add nuw nsw i32 %i.0142, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body10, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = call i32 @dev_uc_add_excl(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion16) #4
  %19 = getelementptr inbounds i8, ptr %__assertion16, i32 32
  %20 = call ptr @memset(ptr %19, i32 255, i32 24)
  %21 = ptrtoint ptr %__assertion16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %test, ptr %__assertion16, align 8
  %type19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 1
  %22 = ptrtoint ptr %type19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type19, align 4
  %line20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 2
  %23 = ptrtoint ptr %line20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 206, ptr %line20, align 8
  %file21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 3
  %24 = ptrtoint ptr %file21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str, ptr %file21, align 4
  %message22 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4
  %25 = ptrtoint ptr %message22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %message22, align 8
  %va24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %va24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %va24, align 4
  %format25 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion16, i32 0, i32 5
  %27 = ptrtoint ptr %format25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @kunit_binary_assert_format, ptr %format25, align 8
  %operation26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 1
  %28 = ptrtoint ptr %operation26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.10, ptr %operation26, align 4
  %left_text27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 2
  %29 = ptrtoint ptr %left_text27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.22, ptr %left_text27, align 8
  %left_value28 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 3
  %30 = ptrtoint ptr %left_value28 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -17, ptr %left_value28, align 8
  %right_text30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 4
  %31 = ptrtoint ptr %right_text30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.21, ptr %right_text30, align 8
  %right_value31 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion16, i32 0, i32 5
  %conv32 = sext i32 %call14 to i64
  %32 = ptrtoint ptr %right_value31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv32, ptr %right_value31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call14)
  %cmp34 = icmp eq i32 %call14, -17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion16, i1 noundef zeroext %cmp34, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion16) #4
  %type54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 1
  %line55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 2
  %file56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 3
  %message57 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 4
  %va59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 4, i32 1
  %format60 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion51, i32 0, i32 5
  %operation61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 1
  %left_text62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 2
  %left_value63 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 3
  %right_text65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 4
  %right_value66 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion51, i32 0, i32 5
  %33 = call ptr @memset(ptr %addr, i32 0, i32 6)
  %call49 = call i32 @dev_uc_del(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion51) #4
  %34 = getelementptr inbounds i8, ptr %__assertion51, i32 32
  %35 = call ptr @memset(ptr %34, i32 255, i32 24)
  %36 = ptrtoint ptr %__assertion51 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %test, ptr %__assertion51, align 8
  %37 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type54, align 4
  %38 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 210, ptr %line55, align 8
  %39 = ptrtoint ptr %file56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str, ptr %file56, align 4
  %40 = ptrtoint ptr %message57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %message57, align 8
  %41 = ptrtoint ptr %va59 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %va59, align 4
  %42 = ptrtoint ptr %format60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kunit_binary_assert_format, ptr %format60, align 8
  %43 = ptrtoint ptr %operation61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.10, ptr %operation61, align 4
  %44 = ptrtoint ptr %left_text62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.11, ptr %left_text62, align 8
  %45 = ptrtoint ptr %left_value63 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %left_value63, align 8
  %46 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.23, ptr %right_text65, align 8
  %conv67 = sext i32 %call49 to i64
  %47 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv67, ptr %right_value66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp69 = icmp eq i32 %call49, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion51, i1 noundef zeroext %cmp69, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion51) #4
  %48 = call ptr @memset(ptr %addr, i32 2, i32 6)
  %call49.1 = call i32 @dev_uc_del(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion51) #4
  %49 = getelementptr inbounds i8, ptr %__assertion51, i32 32
  %50 = call ptr @memset(ptr %49, i32 255, i32 24)
  %51 = ptrtoint ptr %__assertion51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test, ptr %__assertion51, align 8
  %52 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %type54, align 4
  %53 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 210, ptr %line55, align 8
  %54 = ptrtoint ptr %file56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str, ptr %file56, align 4
  %55 = ptrtoint ptr %message57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %message57, align 8
  %56 = ptrtoint ptr %va59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %va59, align 4
  %57 = ptrtoint ptr %format60 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @kunit_binary_assert_format, ptr %format60, align 8
  %58 = ptrtoint ptr %operation61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.10, ptr %operation61, align 4
  %59 = ptrtoint ptr %left_text62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.11, ptr %left_text62, align 8
  %60 = ptrtoint ptr %left_value63 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %left_value63, align 8
  %61 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.23, ptr %right_text65, align 8
  %conv67.1 = sext i32 %call49.1 to i64
  %62 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv67.1, ptr %right_value66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.1)
  %cmp69.1 = icmp eq i32 %call49.1, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion51, i1 noundef zeroext %cmp69.1, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion51) #4
  %63 = call ptr @memset(ptr %addr, i32 4, i32 6)
  %call49.2 = call i32 @dev_uc_del(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion51) #4
  %64 = getelementptr inbounds i8, ptr %__assertion51, i32 32
  %65 = call ptr @memset(ptr %64, i32 255, i32 24)
  %66 = ptrtoint ptr %__assertion51 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %test, ptr %__assertion51, align 8
  %67 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %type54, align 4
  %68 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 210, ptr %line55, align 8
  %69 = ptrtoint ptr %file56 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str, ptr %file56, align 4
  %70 = ptrtoint ptr %message57 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %message57, align 8
  %71 = ptrtoint ptr %va59 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %va59, align 4
  %72 = ptrtoint ptr %format60 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @kunit_binary_assert_format, ptr %format60, align 8
  %73 = ptrtoint ptr %operation61 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.10, ptr %operation61, align 4
  %74 = ptrtoint ptr %left_text62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.11, ptr %left_text62, align 8
  %75 = ptrtoint ptr %left_value63 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %left_value63, align 8
  %76 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.23, ptr %right_text65, align 8
  %conv67.2 = sext i32 %call49.2 to i64
  %77 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %conv67.2, ptr %right_value66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.2)
  %cmp69.2 = icmp eq i32 %call49.2, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion51, i1 noundef zeroext %cmp69.2, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion51) #4
  %78 = call ptr @memset(ptr %addr, i32 6, i32 6)
  %call49.3 = call i32 @dev_uc_del(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion51) #4
  %79 = getelementptr inbounds i8, ptr %__assertion51, i32 32
  %80 = call ptr @memset(ptr %79, i32 255, i32 24)
  %81 = ptrtoint ptr %__assertion51 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %test, ptr %__assertion51, align 8
  %82 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %type54, align 4
  %83 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 210, ptr %line55, align 8
  %84 = ptrtoint ptr %file56 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @.str, ptr %file56, align 4
  %85 = ptrtoint ptr %message57 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %message57, align 8
  %86 = ptrtoint ptr %va59 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %va59, align 4
  %87 = ptrtoint ptr %format60 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @kunit_binary_assert_format, ptr %format60, align 8
  %88 = ptrtoint ptr %operation61 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.10, ptr %operation61, align 4
  %89 = ptrtoint ptr %left_text62 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.11, ptr %left_text62, align 8
  %90 = ptrtoint ptr %left_value63 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %left_value63, align 8
  %91 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.23, ptr %right_text65, align 8
  %conv67.3 = sext i32 %call49.3 to i64
  %92 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv67.3, ptr %right_value66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.3)
  %cmp69.3 = icmp eq i32 %call49.3, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion51, i1 noundef zeroext %cmp69.3, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion51) #4
  %93 = call ptr @memset(ptr %addr, i32 8, i32 6)
  %call49.4 = call i32 @dev_uc_del(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion51) #4
  %94 = getelementptr inbounds i8, ptr %__assertion51, i32 32
  %95 = call ptr @memset(ptr %94, i32 255, i32 24)
  %96 = ptrtoint ptr %__assertion51 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %test, ptr %__assertion51, align 8
  %97 = ptrtoint ptr %type54 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type54, align 4
  %98 = ptrtoint ptr %line55 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 210, ptr %line55, align 8
  %99 = ptrtoint ptr %file56 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str, ptr %file56, align 4
  %100 = ptrtoint ptr %message57 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %message57, align 8
  %101 = ptrtoint ptr %va59 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %va59, align 4
  %102 = ptrtoint ptr %format60 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @kunit_binary_assert_format, ptr %format60, align 8
  %103 = ptrtoint ptr %operation61 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.10, ptr %operation61, align 4
  %104 = ptrtoint ptr %left_text62 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.11, ptr %left_text62, align 8
  %105 = ptrtoint ptr %left_value63 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 0, ptr %left_value63, align 8
  %106 = ptrtoint ptr %right_text65 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.23, ptr %right_text65, align 8
  %conv67.4 = sext i32 %call49.4 to i64
  %107 = ptrtoint ptr %right_value66 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv67.4, ptr %right_value66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.4)
  %cmp69.4 = icmp eq i32 %call49.4, 0
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion51, i1 noundef zeroext %cmp69.4, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion51) #4
  %type91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 1
  %line92 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 2
  %file93 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 3
  %message94 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 4
  %va96 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 4, i32 1
  %format97 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion88, i32 0, i32 5
  %operation98 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 1
  %left_text99 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 2
  %left_value100 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 3
  %right_text102 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 4
  %right_value103 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion88, i32 0, i32 5
  %108 = call ptr @memset(ptr %addr, i32 1, i32 6)
  %call86 = call i32 @dev_uc_add_excl(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion88) #4
  %109 = getelementptr inbounds i8, ptr %__assertion88, i32 32
  %110 = call ptr @memset(ptr %109, i32 255, i32 24)
  %111 = ptrtoint ptr %__assertion88 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %test, ptr %__assertion88, align 8
  %112 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %type91, align 4
  %113 = ptrtoint ptr %line92 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 214, ptr %line92, align 8
  %114 = ptrtoint ptr %file93 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str, ptr %file93, align 4
  %115 = ptrtoint ptr %message94 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %message94, align 8
  %116 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %va96, align 4
  %117 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @kunit_binary_assert_format, ptr %format97, align 8
  %118 = ptrtoint ptr %operation98 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.10, ptr %operation98, align 4
  %119 = ptrtoint ptr %left_text99 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.22, ptr %left_text99, align 8
  %120 = ptrtoint ptr %left_value100 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -17, ptr %left_value100, align 8
  %121 = ptrtoint ptr %right_text102 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.21, ptr %right_text102, align 8
  %conv104 = sext i32 %call86 to i64
  %122 = ptrtoint ptr %right_value103 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv104, ptr %right_value103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call86)
  %cmp106 = icmp eq i32 %call86, -17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion88, i1 noundef zeroext %cmp106, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion88) #4
  %123 = call ptr @memset(ptr %addr, i32 3, i32 6)
  %call86.1 = call i32 @dev_uc_add_excl(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion88) #4
  %124 = getelementptr inbounds i8, ptr %__assertion88, i32 32
  %125 = call ptr @memset(ptr %124, i32 255, i32 24)
  %126 = ptrtoint ptr %__assertion88 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %test, ptr %__assertion88, align 8
  %127 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %type91, align 4
  %128 = ptrtoint ptr %line92 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 214, ptr %line92, align 8
  %129 = ptrtoint ptr %file93 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @.str, ptr %file93, align 4
  %130 = ptrtoint ptr %message94 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %message94, align 8
  %131 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %va96, align 4
  %132 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @kunit_binary_assert_format, ptr %format97, align 8
  %133 = ptrtoint ptr %operation98 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.10, ptr %operation98, align 4
  %134 = ptrtoint ptr %left_text99 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @.str.22, ptr %left_text99, align 8
  %135 = ptrtoint ptr %left_value100 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 -17, ptr %left_value100, align 8
  %136 = ptrtoint ptr %right_text102 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.21, ptr %right_text102, align 8
  %conv104.1 = sext i32 %call86.1 to i64
  %137 = ptrtoint ptr %right_value103 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv104.1, ptr %right_value103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call86.1)
  %cmp106.1 = icmp eq i32 %call86.1, -17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion88, i1 noundef zeroext %cmp106.1, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion88) #4
  %138 = call ptr @memset(ptr %addr, i32 5, i32 6)
  %call86.2 = call i32 @dev_uc_add_excl(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion88) #4
  %139 = getelementptr inbounds i8, ptr %__assertion88, i32 32
  %140 = call ptr @memset(ptr %139, i32 255, i32 24)
  %141 = ptrtoint ptr %__assertion88 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %test, ptr %__assertion88, align 8
  %142 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %type91, align 4
  %143 = ptrtoint ptr %line92 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 214, ptr %line92, align 8
  %144 = ptrtoint ptr %file93 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @.str, ptr %file93, align 4
  %145 = ptrtoint ptr %message94 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr null, ptr %message94, align 8
  %146 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %va96, align 4
  %147 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @kunit_binary_assert_format, ptr %format97, align 8
  %148 = ptrtoint ptr %operation98 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @.str.10, ptr %operation98, align 4
  %149 = ptrtoint ptr %left_text99 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @.str.22, ptr %left_text99, align 8
  %150 = ptrtoint ptr %left_value100 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 -17, ptr %left_value100, align 8
  %151 = ptrtoint ptr %right_text102 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @.str.21, ptr %right_text102, align 8
  %conv104.2 = sext i32 %call86.2 to i64
  %152 = ptrtoint ptr %right_value103 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %conv104.2, ptr %right_value103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call86.2)
  %cmp106.2 = icmp eq i32 %call86.2, -17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion88, i1 noundef zeroext %cmp106.2, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion88) #4
  %153 = call ptr @memset(ptr %addr, i32 7, i32 6)
  %call86.3 = call i32 @dev_uc_add_excl(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion88) #4
  %154 = getelementptr inbounds i8, ptr %__assertion88, i32 32
  %155 = call ptr @memset(ptr %154, i32 255, i32 24)
  %156 = ptrtoint ptr %__assertion88 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %test, ptr %__assertion88, align 8
  %157 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %type91, align 4
  %158 = ptrtoint ptr %line92 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 214, ptr %line92, align 8
  %159 = ptrtoint ptr %file93 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @.str, ptr %file93, align 4
  %160 = ptrtoint ptr %message94 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %message94, align 8
  %161 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %va96, align 4
  %162 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @kunit_binary_assert_format, ptr %format97, align 8
  %163 = ptrtoint ptr %operation98 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @.str.10, ptr %operation98, align 4
  %164 = ptrtoint ptr %left_text99 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.22, ptr %left_text99, align 8
  %165 = ptrtoint ptr %left_value100 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 -17, ptr %left_value100, align 8
  %166 = ptrtoint ptr %right_text102 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.21, ptr %right_text102, align 8
  %conv104.3 = sext i32 %call86.3 to i64
  %167 = ptrtoint ptr %right_value103 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv104.3, ptr %right_value103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call86.3)
  %cmp106.3 = icmp eq i32 %call86.3, -17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion88, i1 noundef zeroext %cmp106.3, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion88) #4
  %168 = call ptr @memset(ptr %addr, i32 9, i32 6)
  %call86.4 = call i32 @dev_uc_add_excl(ptr noundef %1, ptr noundef nonnull %addr) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion88) #4
  %169 = getelementptr inbounds i8, ptr %__assertion88, i32 32
  %170 = call ptr @memset(ptr %169, i32 255, i32 24)
  %171 = ptrtoint ptr %__assertion88 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %test, ptr %__assertion88, align 8
  %172 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 1, ptr %type91, align 4
  %173 = ptrtoint ptr %line92 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 214, ptr %line92, align 8
  %174 = ptrtoint ptr %file93 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str, ptr %file93, align 4
  %175 = ptrtoint ptr %message94 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %message94, align 8
  %176 = ptrtoint ptr %va96 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %va96, align 4
  %177 = ptrtoint ptr %format97 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @kunit_binary_assert_format, ptr %format97, align 8
  %178 = ptrtoint ptr %operation98 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.10, ptr %operation98, align 4
  %179 = ptrtoint ptr %left_text99 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @.str.22, ptr %left_text99, align 8
  %180 = ptrtoint ptr %left_value100 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 -17, ptr %left_value100, align 8
  %181 = ptrtoint ptr %right_text102 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @.str.21, ptr %right_text102, align 8
  %conv104.4 = sext i32 %call86.4 to i64
  %182 = ptrtoint ptr %right_value103 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %conv104.4, ptr %right_value103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call86.4)
  %cmp106.4 = icmp eq i32 %call86.4, -17
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion88, i1 noundef zeroext %cmp106.4, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion88) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_addr_test_sync(ptr nocapture noundef %netdev, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %a, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp = icmp ult i8 %1, 31
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = zext i8 %1 to i32
  %call4 = tail call ptr @memchr_inv(ptr noundef %a, i32 noundef %conv, i32 noundef 6) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %a, align 1
  %conv6 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv6
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %or = or i32 %shl, %5
  store i32 %or, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_addr_test_unsync(ptr nocapture noundef %netdev, ptr noundef %a) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %a, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp = icmp ult i8 %1, 31
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = zext i8 %1 to i32
  %call4 = tail call ptr @memchr_inv(ptr noundef %a, i32 noundef %conv, i32 noundef 6) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %a, align 1
  %conv6 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv6
  %neg = xor i32 %shl, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_addr_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_addr_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add_excl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__UNIQUE_ID_suites343, !1, !"__UNIQUE_ID_suites343", i1 false, i1 false}
!1 = !{!"../net/core/dev_addr_lists_test.c", i32 234, i32 1}
!2 = !{ptr @__UNIQUE_ID_file344, !3, !"__UNIQUE_ID_file344", i1 false, i1 false}
!3 = !{!"../net/core/dev_addr_lists_test.c", i32 236, i32 1}
!4 = !{ptr @__UNIQUE_ID_license345, !3, !"__UNIQUE_ID_license345", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_array342, !1, !"__UNIQUE_ID_array342", i1 false, i1 false}
!6 = !{ptr @dev_addr_test_suite, !7, !"dev_addr_test_suite", i1 false, i1 false}
!7 = !{!"../net/core/dev_addr_lists_test.c", i32 228, i32 27}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/core/dev_addr_lists_test.c", i32 41, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/core/dev_addr_lists_test.c", i32 49, i32 3}
!13 = !{ptr @dummy_netdev_ops, !14, !"dummy_netdev_ops", i1 false, i1 false}
!14 = !{!"../net/core/dev_addr_lists_test.c", i32 8, i32 36}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/core/dev_addr_lists_test.c", i32 219, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/core/dev_addr_lists_test.c", i32 220, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/core/dev_addr_lists_test.c", i32 221, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/core/dev_addr_lists_test.c", i32 222, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/core/dev_addr_lists_test.c", i32 223, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/core/dev_addr_lists_test.c", i32 224, i32 2}
!27 = !{ptr @dev_addr_test_cases, !28, !"dev_addr_test_cases", i1 false, i1 false}
!28 = !{!"../net/core/dev_addr_lists_test.c", i32 218, i32 26}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/core/dev_addr_lists_test.c", i32 70, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/core/dev_addr_lists_test.c", i32 74, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/core/dev_addr_lists_test.c", i32 94, i32 2}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/core/dev_addr_lists_test.c", i32 119, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/core/dev_addr_lists_test.c", i32 128, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/core/dev_addr_lists_test.c", i32 130, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/core/dev_addr_lists_test.c", i32 145, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/core/dev_addr_lists_test.c", i32 156, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/core/dev_addr_lists_test.c", i32 193, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/core/dev_addr_lists_test.c", i32 204, i32 3}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/core/dev_addr_lists_test.c", i32 206, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/core/dev_addr_lists_test.c", i32 210, i32 3}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
