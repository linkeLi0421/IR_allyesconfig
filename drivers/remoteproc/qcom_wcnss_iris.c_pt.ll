; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/qcom_wcnss_iris.c_pt.bc'
source_filename = "../drivers/remoteproc/qcom_wcnss_iris.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iris_data = type { ptr, i32, i8 }
%struct.wcnss_vreg_info = type { ptr, i32, i32, i32, i8 }
%struct.qcom_iris = type { %struct.device, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }

@qcom_iris_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable xo clk\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_iris_enable\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/remoteproc/qcom_wcnss_iris.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_iris_enable._entry_ptr = internal global ptr @qcom_iris_enable._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iris\00", [27 x i8] zeroinitializer }, align 32
@qcom_iris_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No child node \22iris\22 found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom_iris_probe\00", [16 x i8] zeroinitializer }, align 32
@qcom_iris_probe._entry_ptr = internal global ptr @qcom_iris_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s.iris\00", [24 x i8] zeroinitializer }, align 32
@iris_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3620\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wcn3620_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wcn3660_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3660b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wcn3680_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcn3680\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wcn3680_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@qcom_iris_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no matching compatible for iris\0A\00", [63 x i8] zeroinitializer }, align 32
@qcom_iris_probe._entry_ptr.11 = internal global ptr @qcom_iris_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@qcom_iris_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 159, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to acquire xo clk\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_iris_probe._entry_ptr.15 = internal global ptr @qcom_iris_probe._entry.13, section ".printk_index", align 4
@qcom_iris_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@qcom_iris_probe._entry_ptr.18 = internal global ptr @qcom_iris_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wcn3620_data = internal constant { %struct.iris_data, [20 x i8] } { %struct.iris_data { ptr @.compoundliteral, i32 4, i8 0 }, [20 x i8] zeroinitializer }, align 32
@wcn3660_data = internal constant { %struct.iris_data, [20 x i8] } { %struct.iris_data { ptr @.compoundliteral.23, i32 4, i8 1 }, [20 x i8] zeroinitializer }, align 32
@wcn3680_data = internal constant { %struct.iris_data, [20 x i8] } { %struct.iris_data { ptr @.compoundliteral.24, i32 4, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddxo\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddrfa\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddpa\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdddig\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [4 x %struct.wcnss_vreg_info], [48 x i8] } { [4 x %struct.wcnss_vreg_info] [%struct.wcnss_vreg_info { ptr @.str.19, i32 1800000, i32 1800000, i32 10000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.20, i32 1300000, i32 1300000, i32 100000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.21, i32 3300000, i32 3300000, i32 515000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.22, i32 1800000, i32 1800000, i32 10000, i8 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [4 x %struct.wcnss_vreg_info], [48 x i8] } { [4 x %struct.wcnss_vreg_info] [%struct.wcnss_vreg_info { ptr @.str.19, i32 1800000, i32 1800000, i32 10000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.20, i32 1300000, i32 1300000, i32 100000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.21, i32 2900000, i32 3000000, i32 515000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.22, i32 1200000, i32 1225000, i32 10000, i8 0 }], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [4 x %struct.wcnss_vreg_info], [48 x i8] } { [4 x %struct.wcnss_vreg_info] [%struct.wcnss_vreg_info { ptr @.str.19, i32 1800000, i32 1800000, i32 10000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.20, i32 1300000, i32 1300000, i32 100000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.21, i32 3300000, i32 3300000, i32 515000, i8 0 }, %struct.wcnss_vreg_info { ptr @.str.22, i32 1800000, i32 1800000, i32 10000, i8 0 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 78, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 121, i32 50 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 123, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 138, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"iris_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 96, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 148, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 155, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 159, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 178, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"wcn3620_data\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 35, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"wcn3660_data\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 46, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"wcn3680_data\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 57, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 37, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 38, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 39, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [40 x i8] c"../drivers/remoteproc/qcom_wcnss_iris.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 40, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @qcom_iris_enable._entry, ptr @qcom_iris_enable._entry_ptr, ptr @qcom_iris_probe._entry, ptr @qcom_iris_probe._entry.13, ptr @qcom_iris_probe._entry.16, ptr @qcom_iris_probe._entry.9, ptr @qcom_iris_probe._entry_ptr, ptr @qcom_iris_probe._entry_ptr.11, ptr @qcom_iris_probe._entry_ptr.15, ptr @qcom_iris_probe._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @iris_of_match, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @wcn3620_data, ptr @wcn3660_data, ptr @wcn3680_data, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.compoundliteral, ptr @.compoundliteral.23, ptr @.compoundliteral.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iris_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iris_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iris_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iris_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iris_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_iris_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3620_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3660_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3680_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_iris_enable(ptr noundef %iris) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vregs = getelementptr inbounds %struct.qcom_iris, ptr %iris, i32 0, i32 3
  %0 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vregs, align 8
  %vregs = getelementptr inbounds %struct.qcom_iris, ptr %iris, i32 0, i32 2
  %2 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vregs, align 4
  %call = tail call i32 @regulator_bulk_enable(i32 noundef %1, ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %xo_clk = getelementptr inbounds %struct.qcom_iris, ptr %iris, i32 0, i32 1
  %4 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xo_clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %iris, ptr noundef nonnull @.str) #8
  %6 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_vregs, align 8
  %8 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vregs, align 4
  %call7 = tail call i32 @regulator_bulk_disable(i32 noundef %7, ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcom_iris_disable(ptr nocapture noundef readonly %iris) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %xo_clk = getelementptr inbounds %struct.qcom_iris, ptr %iris, i32 0, i32 1
  %0 = ptrtoint ptr %xo_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xo_clk, align 8
  tail call void @clk_disable(ptr noundef %1) #5
  tail call void @clk_unprepare(ptr noundef %1) #5
  %num_vregs = getelementptr inbounds %struct.qcom_iris, ptr %iris, i32 0, i32 3
  %2 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_vregs, align 8
  %vregs = getelementptr inbounds %struct.qcom_iris, ptr %iris, i32 0, i32 2
  %4 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vregs, align 4
  %call = tail call i32 @regulator_bulk_disable(i32 noundef %3, ptr noundef %5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_iris_probe(ptr noundef %parent, ptr nocapture noundef writeonly %use_48mhz_xo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node1 = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 27
  %0 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node1, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.5) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 944) #9
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #5
  %parent9 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %parent9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parent, ptr %parent9, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @qcom_iris_release, ptr %release, align 4
  %of_node12 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %5 = ptrtoint ptr %of_node12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %of_node12, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end7.dev_name.exit_crit_edge ]
  %call15 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i) #5
  %call17 = tail call i32 @device_add(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #5
  %10 = inttoptr i32 %call17 to ptr
  br label %cleanup

if.end22:                                         ; preds = %dev_name.exit
  %call24 = tail call ptr @of_match_device(ptr noundef nonnull @iris_of_match, ptr noundef nonnull %call7.i.i) #5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.10) #8
  br label %err_device_del

if.end31:                                         ; preds = %if.end22
  %data32 = getelementptr inbounds %struct.of_device_id, ptr %call24, i32 0, i32 3
  %11 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data32, align 4
  %call34 = tail call ptr @devm_clk_get(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.12) #5
  %xo_clk = getelementptr inbounds %struct.qcom_iris, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %xo_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %xo_clk, align 8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end46

if.then37:                                        ; preds = %if.end31
  %cmp.not = icmp eq ptr %call34, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then37.err_device_del_crit_edge, label %do.end43

if.then37.err_device_del_crit_edge:               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_device_del

do.end43:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.14) #8
  br label %err_device_del

if.end46:                                         ; preds = %if.end31
  %num_vregs = getelementptr inbounds %struct.iris_data, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %num_vregs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_vregs, align 4
  %num_vregs47 = getelementptr inbounds %struct.qcom_iris, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %num_vregs47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_vregs47, align 8
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 12) #5
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !56

devm_kcalloc.exit.thread:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %vregs174 = getelementptr inbounds %struct.qcom_iris, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %vregs174 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %vregs174, align 4
  br label %err_device_del

devm_kcalloc.exit:                                ; preds = %if.end46
  %21 = extractvalue { i32, i1 } %18, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %call7.i.i, i32 noundef %21, i32 noundef 3520) #5
  %vregs = getelementptr inbounds %struct.qcom_iris, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %vregs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.i.i, ptr %vregs, align 4
  %tobool52.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool52.not, label %devm_kcalloc.exit.err_device_del_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.err_device_del_crit_edge:       ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_device_del

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %23 = ptrtoint ptr %num_vregs47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_vregs47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp56176.not = icmp eq i32 %24, 0
  br i1 %cmp56176.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0177 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %12, align 4
  %arrayidx = getelementptr %struct.wcnss_vreg_info, ptr %26, i32 %i.0177
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vregs, align 4
  %arrayidx59 = getelementptr %struct.regulator_bulk_data, ptr %30, i32 %i.0177
  %31 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %arrayidx59, align 4
  %inc = add nuw i32 %i.0177, 1
  %32 = ptrtoint ptr %num_vregs47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_vregs47, align 8
  %cmp56 = icmp ult i32 %inc, %33
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %33, %for.body.for.end_crit_edge ]
  %34 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vregs, align 4
  %call63 = tail call i32 @devm_regulator_bulk_get(ptr noundef nonnull %call7.i.i, i32 noundef %.lcssa, ptr noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %for.cond71.preheader, label %do.end68

for.cond71.preheader:                             ; preds = %for.end
  %36 = ptrtoint ptr %num_vregs47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_vregs47, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp73178.not = icmp eq i32 %37, 0
  br i1 %cmp73178.not, label %for.cond71.preheader.for.end102_crit_edge, label %for.cond71.preheader.for.body74_crit_edge

for.cond71.preheader.for.body74_crit_edge:        ; preds = %for.cond71.preheader
  br label %for.body74

for.cond71.preheader.for.end102_crit_edge:        ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end102

do.end68:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.17) #8
  br label %err_device_del

for.body74:                                       ; preds = %for.inc100.for.body74_crit_edge, %for.cond71.preheader.for.body74_crit_edge
  %i.1179 = phi i32 [ %inc101, %for.inc100.for.body74_crit_edge ], [ 0, %for.cond71.preheader.for.body74_crit_edge ]
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %12, align 4
  %max_voltage = getelementptr %struct.wcnss_vreg_info, ptr %39, i32 %i.1179, i32 2
  %40 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool77.not = icmp eq i32 %41, 0
  br i1 %tobool77.not, label %for.body74.if.end87_crit_edge, label %if.then78

for.body74.if.end87_crit_edge:                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then78:                                        ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vregs, align 4
  %consumer = getelementptr %struct.regulator_bulk_data, ptr %43, i32 %i.1179, i32 1
  %44 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %consumer, align 4
  %min_voltage = getelementptr %struct.wcnss_vreg_info, ptr %39, i32 %i.1179, i32 1
  %46 = ptrtoint ptr %min_voltage to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %min_voltage, align 4
  %call86 = tail call i32 @regulator_set_voltage(ptr noundef %45, i32 noundef %47, i32 noundef %41) #5
  br label %if.end87

if.end87:                                         ; preds = %if.then78, %for.body74.if.end87_crit_edge
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %12, align 4
  %load_uA = getelementptr %struct.wcnss_vreg_info, ptr %49, i32 %i.1179, i32 3
  %50 = ptrtoint ptr %load_uA to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %load_uA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool90.not = icmp eq i32 %51, 0
  br i1 %tobool90.not, label %if.end87.for.inc100_crit_edge, label %if.then91

if.end87.for.inc100_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc100

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %vregs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vregs, align 4
  %consumer94 = getelementptr %struct.regulator_bulk_data, ptr %53, i32 %i.1179, i32 1
  %54 = ptrtoint ptr %consumer94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %consumer94, align 4
  %call98 = tail call i32 @regulator_set_load(ptr noundef %55, i32 noundef %51) #5
  br label %for.inc100

for.inc100:                                       ; preds = %if.then91, %if.end87.for.inc100_crit_edge
  %inc101 = add nuw i32 %i.1179, 1
  %56 = ptrtoint ptr %num_vregs47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_vregs47, align 8
  %cmp73 = icmp ult i32 %inc101, %57
  br i1 %cmp73, label %for.inc100.for.body74_crit_edge, label %for.inc100.for.end102_crit_edge

for.inc100.for.end102_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end102

for.inc100.for.body74_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body74

for.end102:                                       ; preds = %for.inc100.for.end102_crit_edge, %for.cond71.preheader.for.end102_crit_edge
  %use_48mhz_xo103 = getelementptr inbounds %struct.iris_data, ptr %12, i32 0, i32 2
  %58 = ptrtoint ptr %use_48mhz_xo103 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %use_48mhz_xo103, align 4, !range !57
  %60 = ptrtoint ptr %use_48mhz_xo to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %use_48mhz_xo, align 1
  br label %cleanup

err_device_del:                                   ; preds = %do.end68, %devm_kcalloc.exit.err_device_del_crit_edge, %devm_kcalloc.exit.thread, %do.end43, %if.then37.err_device_del_crit_edge, %do.end29
  %ret.0 = phi i32 [ %14, %do.end43 ], [ -517, %if.then37.err_device_del_crit_edge ], [ %call63, %do.end68 ], [ -22, %do.end29 ], [ -12, %devm_kcalloc.exit.err_device_del_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  tail call void @device_del(ptr noundef nonnull %call7.i.i) #5
  %61 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_device_del, %for.end102, %if.then19, %if.then5, %do.end
  %retval.0 = phi ptr [ %10, %if.then19 ], [ %61, %err_device_del ], [ %call7.i.i, %for.end102 ], [ inttoptr (i32 -12 to ptr), %if.then5 ], [ inttoptr (i32 -22 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_iris_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %1) #5
  tail call void @kfree(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcom_iris_remove(ptr noundef %iris) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_del(ptr noundef %iris) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 78, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qcom_iris_enable._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @qcom_iris_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 121, i32 50}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 123, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @qcom_iris_probe._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @qcom_iris_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 138, i32 27}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 148, i32 3}
!19 = !{ptr @qcom_iris_probe._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @qcom_iris_probe._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 155, i32 42}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 159, i32 4}
!25 = !{ptr @qcom_iris_probe._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @qcom_iris_probe._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 178, i32 3}
!29 = !{ptr @qcom_iris_probe._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qcom_iris_probe._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @iris_of_match, !32, !"iris_of_match", i1 false, i1 false}
!32 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 96, i32 34}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 37, i32 5}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 38, i32 5}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 39, i32 5}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 40, i32 5}
!41 = !{ptr @wcn3620_data, !42, !"wcn3620_data", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 35, i32 31}
!43 = !{ptr @wcn3660_data, !44, !"wcn3660_data", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 46, i32 31}
!45 = !{ptr @wcn3680_data, !46, !"wcn3680_data", i1 false, i1 false}
!46 = !{!"../drivers/remoteproc/qcom_wcnss_iris.c", i32 57, i32 31}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i8 0, i8 2}
