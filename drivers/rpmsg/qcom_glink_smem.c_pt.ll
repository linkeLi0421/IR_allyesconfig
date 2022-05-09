; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/qcom_glink_smem.c_pt.bc'
source_filename = "../drivers/rpmsg/qcom_glink_smem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qcom_glink_smem_register\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_glink_smem_register\09\09\09\09"
module asm "\09.long\09__crc_qcom_glink_smem_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_glink_smem_register:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_glink_smem_register\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_glink_smem_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_glink_smem_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_glink_smem_unregister\09\09\09\09"
module asm "\09.long\09__crc_qcom_glink_smem_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_glink_smem_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_glink_smem_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_glink_smem_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.glink_smem_pipe = type { %struct.qcom_glink_pipe, ptr, ptr, ptr, i32 }
%struct.qcom_glink_pipe = type { i32, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:%pOFn\00", [23 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to register glink edge\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom_glink_smem_register\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/rpmsg/qcom_glink_smem.c\00", [32 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry_ptr = internal global ptr @qcom_glink_smem_register._entry, section ".printk_index", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,remote-pid\00", [16 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to parse qcom,remote-pid\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry_ptr.9 = internal global ptr @qcom_glink_smem_register._entry.5, section ".printk_index", align 4
@qcom_glink_smem_register._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 229, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate glink descriptors\0A\00", [58 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry_ptr.12 = internal global ptr @qcom_glink_smem_register._entry.10, section ".printk_index", align 4
@qcom_glink_smem_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 236, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to acquire xprt descriptor\0A\00", [61 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry_ptr.15 = internal global ptr @qcom_glink_smem_register._entry.13, section ".printk_index", align 4
@qcom_glink_smem_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 242, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"glink descriptor of invalid size\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry_ptr.18 = internal global ptr @qcom_glink_smem_register._entry.16, section ".printk_index", align 4
@qcom_glink_smem_register._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 255, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to allocate TX fifo\0A\00", [36 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry_ptr.21 = internal global ptr @qcom_glink_smem_register._entry.19, section ".printk_index", align 4
@qcom_glink_smem_register._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to acquire TX fifo\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_glink_smem_register._entry_ptr.24 = internal global ptr @qcom_glink_smem_register._entry.22, section ".printk_index", align 4
@__kstrtab_qcom_glink_smem_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_glink_smem_register = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_glink_smem_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_glink_smem_register to i32), ptr @__kstrtab_qcom_glink_smem_register, ptr @__kstrtabns_qcom_glink_smem_register }, section "___ksymtab_gpl+qcom_glink_smem_register", align 4
@__kstrtab_qcom_glink_smem_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_glink_smem_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_glink_smem_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_glink_smem_unregister to i32), ptr @__kstrtab_qcom_glink_smem_unregister, ptr @__kstrtabns_qcom_glink_smem_unregister }, section "___ksymtab_gpl+qcom_glink_smem_unregister", align 4
@__UNIQUE_ID_author231 = internal constant [68 x i8] c"qcom_glink_smem.author=Bjorn Andersson <bjorn.andersson@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [55 x i8] c"qcom_glink_smem.description=Qualcomm GLINK SMEM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [51 x i8] c"qcom_glink_smem.file=drivers/rpmsg/qcom_glink_smem\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [31 x i8] c"qcom_glink_smem.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@glink_smem_rx_avail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013failed to acquire RX fifo handle: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"glink_smem_rx_avail\00", [44 x i8] zeroinitializer }, align 32
@glink_smem_rx_avail._entry_ptr = internal global ptr @glink_smem_rx_avail._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 204, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 207, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 212, i32 43 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 215, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 229, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 236, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 242, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 255, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 262, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [35 x i8] c"../drivers/rpmsg/qcom_glink_smem.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 61, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__ksymtab_qcom_glink_smem_register, ptr @__ksymtab_qcom_glink_smem_unregister, ptr @glink_smem_rx_avail._entry, ptr @glink_smem_rx_avail._entry_ptr, ptr @qcom_glink_smem_register._entry, ptr @qcom_glink_smem_register._entry.10, ptr @qcom_glink_smem_register._entry.13, ptr @qcom_glink_smem_register._entry.16, ptr @qcom_glink_smem_register._entry.19, ptr @qcom_glink_smem_register._entry.22, ptr @qcom_glink_smem_register._entry.5, ptr @qcom_glink_smem_register._entry_ptr, ptr @qcom_glink_smem_register._entry_ptr.12, ptr @qcom_glink_smem_register._entry_ptr.15, ptr @qcom_glink_smem_register._entry_ptr.18, ptr @qcom_glink_smem_register._entry_ptr.21, ptr @qcom_glink_smem_register._entry_ptr.24, ptr @qcom_glink_smem_register._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_smem_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_smem_register._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_smem_register._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_smem_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_smem_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_smem_register._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_glink_smem_register._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @glink_smem_rx_avail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qcom_glink_smem_register(ptr noundef %parent, ptr noundef %node) #0 align 64 {
entry:
  %remote_pid = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_pid) #8
  %0 = ptrtoint ptr %remote_pid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %remote_pid, align 4, !annotation !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %size, align 4, !annotation !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 928) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent2 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %parent2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parent, ptr %parent2, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node, ptr %of_node, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @qcom_glink_smem_release, ptr %release, align 4
  %parent3 = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 1
  %6 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent3, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end.dev_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef %retval.0.i, ptr noundef %node) #8
  %call6 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #8
  %12 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end11:                                         ; preds = %dev_name.exit
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.4, ptr noundef nonnull %remote_pid, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool14.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6) #12
  br label %err_put_dev

if.end19:                                         ; preds = %if.end11
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef nonnull %call7.i.i, i32 noundef 36, i32 noundef 3520) #8
  %call.i148 = call noalias ptr @devm_kmalloc(ptr noundef nonnull %call7.i.i, i32 noundef 36, i32 noundef 3520) #8
  %tobool22.not = icmp eq ptr %call.i, null
  %tobool23.not = icmp eq ptr %call.i148, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %if.end19.err_put_dev_crit_edge, label %if.end25

if.end19.err_put_dev_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_dev

if.end25:                                         ; preds = %if.end19
  %15 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %remote_pid, align 4
  %call26 = call i32 @qcom_smem_alloc(i32 noundef %16, i32 noundef 478, i32 noundef 32) #8
  %17 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call26, label %do.end31 [
    i32 0, label %if.end25.if.end32_crit_edge
    i32 -17, label %if.end25.if.end32_crit_edge151
  ]

if.end25.if.end32_crit_edge151:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11) #12
  br label %err_put_dev

if.end32:                                         ; preds = %if.end25.if.end32_crit_edge, %if.end25.if.end32_crit_edge151
  %18 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %remote_pid, align 4
  %call33 = call ptr @qcom_smem_get(i32 noundef %19, i32 noundef 478, ptr noundef nonnull %size) #8
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.14) #12
  %20 = ptrtoint ptr %call33 to i32
  br label %err_put_dev

if.end40:                                         ; preds = %if.end32
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp41.not = icmp eq i32 %22, 32
  br i1 %cmp41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.17) #12
  br label %err_put_dev

if.end46:                                         ; preds = %if.end40
  %tail = getelementptr inbounds %struct.glink_smem_pipe, ptr %call.i148, i32 0, i32 1
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call33, ptr %tail, align 4
  %arrayidx47 = getelementptr i32, ptr %call33, i32 1
  %head = getelementptr inbounds %struct.glink_smem_pipe, ptr %call.i148, i32 0, i32 2
  %24 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx47, ptr %head, align 4
  %arrayidx48 = getelementptr i32, ptr %call33, i32 2
  %tail49 = getelementptr inbounds %struct.glink_smem_pipe, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %tail49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx48, ptr %tail49, align 4
  %arrayidx50 = getelementptr i32, ptr %call33, i32 3
  %head51 = getelementptr inbounds %struct.glink_smem_pipe, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %head51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx50, ptr %head51, align 4
  %27 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %remote_pid, align 4
  %call52 = call i32 @qcom_smem_alloc(i32 noundef %28, i32 noundef 479, i32 noundef 16384) #8
  %29 = zext i32 %call52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call52, label %do.end59 [
    i32 0, label %if.end46.if.end60_crit_edge
    i32 -17, label %if.end46.if.end60_crit_edge152
  ]

if.end46.if.end60_crit_edge152:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

do.end59:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.20) #12
  br label %err_put_dev

if.end60:                                         ; preds = %if.end46.if.end60_crit_edge, %if.end46.if.end60_crit_edge152
  %30 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %remote_pid, align 4
  %call61 = call ptr @qcom_smem_get(i32 noundef %31, i32 noundef 479, ptr noundef nonnull %call.i148) #8
  %fifo = getelementptr inbounds %struct.glink_smem_pipe, ptr %call.i148, i32 0, i32 3
  %32 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call61, ptr %fifo, align 4
  %cmp.i149 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.23) #12
  %33 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fifo, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %err_put_dev

if.end70:                                         ; preds = %if.end60
  %avail = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @glink_smem_rx_avail, ptr %avail, align 4
  %peak = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %peak to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @glink_smem_rx_peak, ptr %peak, align 4
  %advance = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %advance to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @glink_smem_rx_advance, ptr %advance, align 4
  %39 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %remote_pid, align 4
  %remote_pid74 = getelementptr inbounds %struct.glink_smem_pipe, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %remote_pid74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %remote_pid74, align 4
  %avail76 = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i148, i32 0, i32 1
  %42 = ptrtoint ptr %avail76 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @glink_smem_tx_avail, ptr %avail76, align 4
  %write = getelementptr inbounds %struct.qcom_glink_pipe, ptr %call.i148, i32 0, i32 4
  %43 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @glink_smem_tx_write, ptr %write, align 4
  %remote_pid78 = getelementptr inbounds %struct.glink_smem_pipe, ptr %call.i148, i32 0, i32 4
  %44 = ptrtoint ptr %remote_pid78 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %remote_pid78, align 4
  %45 = ptrtoint ptr %tail49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail49, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %46, align 4
  %48 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %49, align 4
  %call83 = call ptr @qcom_glink_native_probe(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i148, i1 noundef zeroext false) #8
  %cmp.i150 = icmp ugt ptr %call83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then85, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call83 to i32
  br label %err_put_dev

err_put_dev:                                      ; preds = %if.then85, %do.end67, %do.end59, %do.end45, %do.end38, %do.end31, %if.end19.err_put_dev_crit_edge, %do.end18
  %ret.0 = phi i32 [ %call.i.i, %do.end18 ], [ %call26, %do.end31 ], [ %20, %do.end38 ], [ -22, %do.end45 ], [ %call52, %do.end59 ], [ %35, %do.end67 ], [ %51, %if.then85 ], [ -12, %if.end19.err_put_dev_crit_edge ]
  call void @device_unregister(ptr noundef nonnull %call7.i.i) #8
  %52 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_put_dev, %if.end70.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %do.end ], [ %52, %err_put_dev ], [ %call83, %if.end70.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_pid) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_glink_smem_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_alloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @glink_smem_rx_avail(ptr nocapture noundef %np) #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !61
  %fifo1 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 3
  %1 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fifo1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %remote_pid = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 4
  %3 = ptrtoint ptr %remote_pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %remote_pid, align 4
  %call = call ptr @qcom_smem_get(i32 noundef %4, i32 noundef 480, ptr noundef nonnull %len) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %5) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %fifo1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %fifo1, align 4
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %9 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %np, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %head9 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 2
  %10 = ptrtoint ptr %head9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %tail10 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 1
  %15 = ptrtoint ptr %tail10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail10, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %19)
  %cmp = icmp ult i32 %14, %19
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %np, align 4
  %sub = sub i32 %14, %19
  %add = add i32 %sub, %21
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %sub14 = sub i32 %14, %19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %do.end
  %retval.0 = phi i32 [ %add, %if.then11 ], [ %sub14, %if.else ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @glink_smem_rx_peak(ptr nocapture noundef readonly %np, ptr noundef %data, i32 noundef %offset, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tail1 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 1
  %0 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add = add i32 %4, %offset
  %5 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %np, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp.not = icmp ult i32 %add, %6
  %sub = select i1 %cmp.not, i32 0, i32 %6
  %spec.select = sub i32 %add, %sub
  %sub6 = sub i32 %6, %spec.select
  %7 = tail call i32 @llvm.umin.i32(i32 %sub6, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then9

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fifo = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 3
  %8 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fifo, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 %spec.select
  tail call void @mmiocpy(ptr noundef %data, ptr noundef %add.ptr10, i32 noundef %7) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %entry.if.end11_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6, i32 %count)
  %cmp12.not.not = icmp ult i32 %sub6, %count
  br i1 %cmp12.not.not, label %if.then13, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr14 = getelementptr i8, ptr %data, i32 %7
  %fifo15 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 3
  %10 = ptrtoint ptr %fifo15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fifo15, align 4
  %sub16 = sub i32 %count, %7
  tail call void @mmiocpy(ptr noundef %add.ptr14, ptr noundef %11, i32 noundef %sub16) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end11.if.end17_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @glink_smem_rx_advance(ptr nocapture noundef readonly %np, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tail1 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 1
  %0 = ptrtoint ptr %tail1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %add = add i32 %4, %count
  %5 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %np, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp.not = icmp ult i32 %add, %6
  %sub = select i1 %cmp.not, i32 0, i32 %6
  %spec.select = sub i32 %add, %sub
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @glink_smem_tx_avail(ptr nocapture noundef readonly %np) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 2
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %tail2 = getelementptr inbounds %struct.glink_smem_pipe, ptr %np, i32 0, i32 1
  %5 = ptrtoint ptr %tail2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail2, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %4)
  %cmp.not = icmp ugt i32 %9, %4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %np, align 4
  %sub = sub i32 %9, %4
  %add = add i32 %sub, %11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub3 = sub i32 %9, %4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %avail.0 = phi i32 [ %add, %if.then ], [ %sub3, %if.else ]
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %avail.0, i32 16)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @glink_smem_tx_write(ptr nocapture noundef readonly %glink_pipe, ptr nocapture noundef readonly %hdr, i32 noundef %hlen, ptr nocapture noundef readonly %data, i32 noundef %dlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head1 = getelementptr inbounds %struct.glink_smem_pipe, ptr %glink_pipe, i32 0, i32 2
  %0 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %glink_pipe, align 4
  %sub.i = sub i32 %6, %4
  %7 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %hlen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fifo.i = getelementptr inbounds %struct.glink_smem_pipe, ptr %glink_pipe, i32 0, i32 3
  %8 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fifo.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %4
  %10 = call ptr @memcpy(ptr %add.ptr.i, ptr %hdr, i32 %7)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %hlen)
  %cmp1.not.not.i = icmp ult i32 %sub.i, %hlen
  br i1 %cmp1.not.not.i, label %if.then2.i, label %if.end.i.glink_smem_tx_write_one.exit_crit_edge

if.end.i.glink_smem_tx_write_one.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %glink_smem_tx_write_one.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %fifo3.i = getelementptr inbounds %struct.glink_smem_pipe, ptr %glink_pipe, i32 0, i32 3
  %11 = ptrtoint ptr %fifo3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fifo3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %hdr, i32 %7
  %sub5.i = sub i32 %hlen, %7
  %13 = call ptr @memcpy(ptr %12, ptr %add.ptr4.i, i32 %sub5.i)
  br label %glink_smem_tx_write_one.exit

glink_smem_tx_write_one.exit:                     ; preds = %if.then2.i, %if.end.i.glink_smem_tx_write_one.exit_crit_edge
  %add.i = add i32 %4, %hlen
  %14 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %glink_pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %15)
  %cmp9.not.i = icmp ult i32 %add.i, %15
  %sub13.i = select i1 %cmp9.not.i, i32 0, i32 %15
  %spec.select.i = sub i32 %add.i, %sub13.i
  %sub.i16 = sub i32 %15, %spec.select.i
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i16, i32 %dlen) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i17 = icmp eq i32 %16, 0
  br i1 %tobool.not.i17, label %glink_smem_tx_write_one.exit.if.end.i22_crit_edge, label %if.then.i20

glink_smem_tx_write_one.exit.if.end.i22_crit_edge: ; preds = %glink_smem_tx_write_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i22

if.then.i20:                                      ; preds = %glink_smem_tx_write_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fifo.i18 = getelementptr inbounds %struct.glink_smem_pipe, ptr %glink_pipe, i32 0, i32 3
  %17 = ptrtoint ptr %fifo.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fifo.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %18, i32 %spec.select.i
  %19 = call ptr @memcpy(ptr %add.ptr.i19, ptr %data, i32 %16)
  br label %if.end.i22

if.end.i22:                                       ; preds = %if.then.i20, %glink_smem_tx_write_one.exit.if.end.i22_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i16, i32 %dlen)
  %cmp1.not.not.i21 = icmp ult i32 %sub.i16, %dlen
  br i1 %cmp1.not.not.i21, label %if.then2.i26, label %if.end.i22.glink_smem_tx_write_one.exit31_crit_edge

if.end.i22.glink_smem_tx_write_one.exit31_crit_edge: ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %glink_smem_tx_write_one.exit31

if.then2.i26:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #10
  %fifo3.i23 = getelementptr inbounds %struct.glink_smem_pipe, ptr %glink_pipe, i32 0, i32 3
  %20 = ptrtoint ptr %fifo3.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fifo3.i23, align 4
  %add.ptr4.i24 = getelementptr i8, ptr %data, i32 %16
  %sub5.i25 = sub i32 %dlen, %16
  %22 = call ptr @memcpy(ptr %21, ptr %add.ptr4.i24, i32 %sub5.i25)
  br label %glink_smem_tx_write_one.exit31

glink_smem_tx_write_one.exit31:                   ; preds = %if.then2.i26, %if.end.i22.glink_smem_tx_write_one.exit31_crit_edge
  %add.i27 = add i32 %spec.select.i, %dlen
  %23 = ptrtoint ptr %glink_pipe to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %glink_pipe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i27, i32 %24)
  %cmp9.not.i28 = icmp ult i32 %add.i27, %24
  %sub13.i29 = select i1 %cmp9.not.i28, i32 0, i32 %24
  %spec.select.i30 = add i32 %add.i27, 7
  %add = sub i32 %spec.select.i30, %sub13.i29
  %and = and i32 %add, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %24)
  %cmp.not = icmp ult i32 %and, %24
  %sub = select i1 %cmp.not, i32 0, i32 %24
  %spec.select = sub i32 %and, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %26 = ptrtoint ptr %head1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_glink_native_probe(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcom_glink_smem_unregister(ptr noundef %glink) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qcom_glink_native_remove(ptr noundef %glink) #8
  tail call void @qcom_glink_native_unregister(ptr noundef %glink) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_glink_native_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_glink_native_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 204, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 207, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qcom_glink_smem_register._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @qcom_glink_smem_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 212, i32 43}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 215, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qcom_glink_smem_register._entry.5, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @qcom_glink_smem_register._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 229, i32 3}
!18 = !{ptr @qcom_glink_smem_register._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @qcom_glink_smem_register._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 236, i32 3}
!22 = !{ptr @qcom_glink_smem_register._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @qcom_glink_smem_register._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 242, i32 3}
!26 = !{ptr @qcom_glink_smem_register._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qcom_glink_smem_register._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 255, i32 3}
!30 = !{ptr @qcom_glink_smem_register._entry.19, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @qcom_glink_smem_register._entry_ptr.21, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.23, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 262, i32 3}
!34 = !{ptr @qcom_glink_smem_register._entry.22, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @qcom_glink_smem_register._entry_ptr.24, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_qcom_glink_smem_register, !37, !"__ksymtab_qcom_glink_smem_register", i1 false, i1 false}
!37 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 295, i32 1}
!38 = !{ptr @__ksymtab_qcom_glink_smem_unregister, !39, !"__ksymtab_qcom_glink_smem_unregister", i1 false, i1 false}
!39 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 302, i32 1}
!40 = !{ptr @__UNIQUE_ID_author231, !41, !"__UNIQUE_ID_author231", i1 false, i1 false}
!41 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 304, i32 1}
!42 = !{ptr @__UNIQUE_ID_description232, !43, !"__UNIQUE_ID_description232", i1 false, i1 false}
!43 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 305, i32 1}
!44 = !{ptr @__UNIQUE_ID_file233, !45, !"__UNIQUE_ID_file233", i1 false, i1 false}
!45 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 306, i32 1}
!46 = !{ptr @__UNIQUE_ID_license234, !45, !"__UNIQUE_ID_license234", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rpmsg/qcom_glink_smem.c", i32 61, i32 4}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @glink_smem_rx_avail._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @glink_smem_rx_avail._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 2153953055}
