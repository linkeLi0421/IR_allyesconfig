; ModuleID = '/llk/IR_all_yes/drivers/interconnect/qcom/bcm-voter.c_pt.bc'
source_filename = "../drivers/interconnect/qcom/bcm-voter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_bcm_voter_get\22, \22a\22\09"
module asm "\09.weak\09__crc_of_bcm_voter_get\09\09\09\09"
module asm "\09.long\09__crc_of_bcm_voter_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_bcm_voter_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_bcm_voter_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_bcm_voter_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_icc_bcm_voter_add\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_icc_bcm_voter_add\09\09\09\09"
module asm "\09.long\09__crc_qcom_icc_bcm_voter_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_icc_bcm_voter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_icc_bcm_voter_add\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_icc_bcm_voter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+qcom_icc_bcm_voter_commit\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_icc_bcm_voter_commit\09\09\09\09"
module asm "\09.long\09__crc_qcom_icc_bcm_voter_commit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_icc_bcm_voter_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_icc_bcm_voter_commit\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_icc_bcm_voter_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.bcm_voter = type { ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.qcom_icc_bcm = type { ptr, i32, i32, [3 x i64], [3 x i64], i64, i8, i8, %struct.bcm_db, %struct.list_head, %struct.list_head, i32, [0 x ptr] }
%struct.bcm_db = type { i32, i16, i8, i8 }
%struct.tcs_cmd = type { i32, i32, i32 }
%struct.qcom_icc_node = type { ptr, [128 x i16], i16, i16, i16, i16, [3 x i64], [3 x i64], [3 x ptr], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,bcm-voter-names\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,bcm-voters\00", [16 x i8] zeroinitializer }, align 32
@bcm_voter_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @bcm_voter_lock, i64 52), ptr getelementptr (i8, ptr @bcm_voter_lock, i64 52) }, ptr @bcm_voter_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@bcm_voters = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bcm_voters, ptr @bcm_voters }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_of_bcm_voter_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_bcm_voter_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_bcm_voter_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_bcm_voter_get to i32), ptr @__kstrtab_of_bcm_voter_get, ptr @__kstrtabns_of_bcm_voter_get }, section "___ksymtab_gpl+of_bcm_voter_get", align 4
@__kstrtab_qcom_icc_bcm_voter_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_icc_bcm_voter_add = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_icc_bcm_voter_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_icc_bcm_voter_add to i32), ptr @__kstrtab_qcom_icc_bcm_voter_add, ptr @__kstrtabns_qcom_icc_bcm_voter_add }, section "___ksymtab_gpl+qcom_icc_bcm_voter_add", align 4
@qcom_icc_bcm_voter_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Error sending AMC RPMH requests (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"qcom_icc_bcm_voter_commit\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/interconnect/qcom/bcm-voter.c\00", [58 x i8] zeroinitializer }, align 32
@qcom_icc_bcm_voter_commit._entry_ptr = internal global ptr @qcom_icc_bcm_voter_commit._entry, section ".printk_index", align 4
@qcom_icc_bcm_voter_commit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Error sending WAKE RPMH requests (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@qcom_icc_bcm_voter_commit._entry_ptr.7 = internal global ptr @qcom_icc_bcm_voter_commit._entry.5, section ".printk_index", align 4
@qcom_icc_bcm_voter_commit._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Error sending SLEEP RPMH requests (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@qcom_icc_bcm_voter_commit._entry_ptr.10 = internal global ptr @qcom_icc_bcm_voter_commit._entry.8, section ".printk_index", align 4
@__kstrtab_qcom_icc_bcm_voter_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_icc_bcm_voter_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_icc_bcm_voter_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_icc_bcm_voter_commit to i32), ptr @__kstrtab_qcom_icc_bcm_voter_commit, ptr @__kstrtabns_qcom_icc_bcm_voter_commit }, section "___ksymtab_gpl+qcom_icc_bcm_voter_commit", align 4
@__initcall__kmod_icc_bcm_voter__174_375_qcom_icc_bcm_voter_driver_init6 = internal global ptr @qcom_icc_bcm_voter_driver_init, section ".initcall6.init", align 4
@qcom_icc_bcm_voter_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_icc_bcm_voter_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_voter_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_icc_bcm_voter_driver_exit = internal global ptr @qcom_icc_bcm_voter_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [58 x i8] c"icc_bcm_voter.author=David Dai <daidavid1@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [65 x i8] c"icc_bcm_voter.description=Qualcomm BCM Voter interconnect driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [59 x i8] c"icc_bcm_voter.file=drivers/interconnect/qcom/icc-bcm-voter\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [29 x i8] c"icc_bcm_voter.license=GPL v2\00", section ".modinfo", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm_voter_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_voter_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcm_voter\00", [22 x i8] zeroinitializer }, align 32
@bcm_voter_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bcm-voter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,tcs-wait\00", [18 x i8] zeroinitializer }, align 32
@qcom_icc_bcm_voter_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&voter->lock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 192, i32 38 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 197, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"bcm_voter_lock\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"bcm_voters\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 19, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 284, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 315, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 323, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"qcom_icc_bcm_voter_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 368, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 20, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 371, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"bcm_voter_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 362, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 348, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [41 x i8] c"../drivers/interconnect/qcom/bcm-voter.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 351, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_qcom_icc_bcm_voter_driver_exit, ptr @__initcall__kmod_icc_bcm_voter__174_375_qcom_icc_bcm_voter_driver_init6, ptr @__ksymtab_of_bcm_voter_get, ptr @__ksymtab_qcom_icc_bcm_voter_add, ptr @__ksymtab_qcom_icc_bcm_voter_commit, ptr @qcom_icc_bcm_voter_commit._entry, ptr @qcom_icc_bcm_voter_commit._entry.5, ptr @qcom_icc_bcm_voter_commit._entry.8, ptr @qcom_icc_bcm_voter_commit._entry_ptr, ptr @qcom_icc_bcm_voter_commit._entry_ptr.10, ptr @qcom_icc_bcm_voter_commit._entry_ptr.7, ptr @qcom_icc_bcm_voter_driver_exit, ptr @.str, ptr @.str.1, ptr @bcm_voter_lock, ptr @bcm_voters, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @qcom_icc_bcm_voter_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @bcm_voter_of_match, ptr @.str.14, ptr @qcom_icc_bcm_voter_probe.__key, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_voter_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_voters to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_bcm_voter_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_bcm_voter_commit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_bcm_voter_commit._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_bcm_voter_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_voter_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_icc_bcm_voter_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_bcm_voter_get(ptr noundef readonly %dev, ptr noundef %name) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool4.not = icmp eq ptr %name, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @of_property_match_string(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %2 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %idx.0 = phi i32 [ %call6, %if.then5.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef %idx.0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.of_parse_phandle.exit_crit_edge

if.end10.of_parse_phandle.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end10.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ null, %if.end10.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  call void @mutex_lock_nested(ptr noundef nonnull @bcm_voter_lock, i32 noundef 0) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %of_parse_phandle.exit
  %.pn.in = phi ptr [ @bcm_voters, %of_parse_phandle.exit ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp12.not = icmp eq ptr %.pn, @bcm_voters
  br i1 %cmp12.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %np13 = getelementptr i8, ptr %.pn, i32 -112
  %7 = ptrtoint ptr %np13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np13, align 4
  %cmp14 = icmp eq ptr %8, %retval.0.i
  br i1 %cmp14, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %temp.0.le = getelementptr i8, ptr %.pn, i32 -116
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %voter.0 = phi ptr [ %temp.0.le, %for.end.split.loop.exit ], [ inttoptr (i32 -517 to ptr), %for.cond.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @bcm_voter_lock) #7
  call void @of_node_put(ptr noundef %retval.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then7 ], [ %voter.0, %for.end ], [ inttoptr (i32 -19 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qcom_icc_bcm_voter_add(ptr noundef %voter, ptr noundef %bcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %voter, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %list = getelementptr inbounds %struct.qcom_icc_bcm, ptr %bcm, i32 0, i32 9
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %commit_list = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %commit_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.if.end4_crit_edge

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %commit_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.qcom_icc_bcm, ptr %bcm, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end.i.i, %if.then2.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %ws_list = getelementptr inbounds %struct.qcom_icc_bcm, ptr %bcm, i32 0, i32 10
  %8 = ptrtoint ptr %ws_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ws_list, align 4
  %cmp.i19.not = icmp eq ptr %9, %ws_list
  br i1 %cmp.i19.not, label %if.then7, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  %ws_list9 = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 4
  %prev.i21 = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i21, align 4
  %call.i.i22 = tail call zeroext i1 @__list_add_valid(ptr noundef %ws_list, ptr noundef %11, ptr noundef %ws_list9) #7
  br i1 %call.i.i22, label %if.end.i.i24, label %if.then7.if.end10_crit_edge

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end.i.i24:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ws_list, ptr %prev.i21, align 4
  %13 = ptrtoint ptr %ws_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ws_list9, ptr %ws_list, align 4
  %prev3.i.i23 = getelementptr inbounds %struct.qcom_icc_bcm, ptr %bcm, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev3.i.i23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i23, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ws_list, ptr %11, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i.i24, %if.then7.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %return

return:                                           ; preds = %if.end10, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qcom_icc_bcm_voter_commit(ptr noundef %voter) #0 align 64 {
entry:
  %agg_avg.i = alloca [3 x i64], align 8
  %agg_peak.i = alloca [3 x i64], align 8
  %commit_idx = alloca [11 x i32], align 4
  %cmds = alloca [64 x %struct.tcs_cmd], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %commit_idx) #7
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %cmds) #7
  %0 = call ptr @memset(ptr %cmds, i32 255, i32 768)
  %tobool.not = icmp eq ptr %voter, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %commit_list = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 3
  %1 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn324 = load ptr, ptr %commit_list, align 4
  %cmp.not325 = icmp eq ptr %.pn324, %commit_list
  br i1 %cmp.not325, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %bcm_aggregate.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn326 = phi ptr [ %.pn, %bcm_aggregate.exit.for.body_crit_edge ], [ %.pn324, %if.end.for.body_crit_edge ]
  %bcm.0 = getelementptr i8, ptr %.pn326, i32 -84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %agg_avg.i) #7
  %2 = call ptr @memset(ptr %agg_avg.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %agg_peak.i) #7
  %3 = call ptr @memset(ptr %agg_peak.i, i32 0, i32 24)
  %num_nodes.i = getelementptr i8, ptr %.pn326, i32 16
  %width.i = getelementptr i8, ptr %.pn326, i32 -4
  %vote_scale.i = getelementptr i8, ptr %.pn326, i32 -20
  %aux_data31.i = getelementptr i8, ptr %.pn326, i32 -8
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %bcm_div.exit456.i.for.cond1.preheader.i_crit_edge, %for.body
  %bucket.0459.i = phi i32 [ 0, %for.body ], [ %inc42.i, %bcm_div.exit456.i.for.cond1.preheader.i_crit_edge ]
  %4 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2457.not.i = icmp eq i32 %5, 0
  br i1 %cmp2457.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %width.i, align 4
  %conv.i = zext i16 %7 to i64
  %arrayidx8.i = getelementptr [3 x i64], ptr %agg_avg.i, i32 0, i32 %bucket.0459.i
  %arrayidx20.i = getelementptr [3 x i64], ptr %agg_peak.i, i32 0, i32 %bucket.0459.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %bcm_div.exit220.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %i.0458.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %bcm_div.exit220.i.for.body3.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.qcom_icc_bcm, ptr %bcm.0, i32 0, i32 12, i32 %i.0458.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.qcom_icc_node, ptr %9, i32 0, i32 6, i32 %bucket.0459.i
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx4.i, align 8
  %mul.i = mul i64 %11, %conv.i
  %buswidth.i = getelementptr inbounds %struct.qcom_icc_node, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %buswidth.i, align 2
  %conv5.i = zext i16 %13 to i32
  %channels.i = getelementptr inbounds %struct.qcom_icc_node, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %channels.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %channels.i, align 8
  %conv6.i = zext i16 %15 to i32
  %mul7.i = mul nuw i32 %conv6.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul.i)
  %tobool.not.i.i = icmp ne i64 %mul.i, 0
  %conv.i.i = zext i32 %mul7.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %conv.i.i)
  %cmp.i.i = icmp ult i64 %mul.i, %conv.i.i
  %or.cond.i.i = and i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %for.body3.i.bcm_div.exit.i_crit_edge, label %if.else170.i.i

for.body3.i.bcm_div.exit.i_crit_edge:             ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_div.exit.i

if.else170.i.i:                                   ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp172.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp172.i.i, label %if.then176.i.i, label %if.else182.i.i, !prof !60

if.then176.i.i:                                   ; preds = %if.else170.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv177.i.i = trunc i64 %mul.i to i32
  %div180.i.i = udiv i32 %conv177.i.i, %mul7.i
  %conv181.i.i = zext i32 %div180.i.i to i64
  br label %bcm_div.exit.i

if.else182.i.i:                                   ; preds = %if.else170.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul7.i, i64 %mul.i) #10, !srcloc !61
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  br label %bcm_div.exit.i

bcm_div.exit.i:                                   ; preds = %if.else182.i.i, %if.then176.i.i, %for.body3.i.bcm_div.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ 1, %for.body3.i.bcm_div.exit.i_crit_edge ], [ %conv181.i.i, %if.then176.i.i ], [ %asmresult1.i.i.i, %if.else182.i.i ]
  %17 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx8.i, align 8
  %19 = tail call i64 @llvm.umax.i64(i64 %18, i64 %retval.0.i.i) #7
  %20 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx8.i, align 8
  %arrayidx12.i = getelementptr %struct.qcom_icc_node, ptr %9, i32 0, i32 7, i32 %bucket.0459.i
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx12.i, align 8
  %mul16.i = mul i64 %22, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul16.i)
  %tobool.not.i103.i = icmp ne i64 %mul16.i, 0
  %conv.i104.i = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul16.i, i64 %conv.i104.i)
  %cmp.i105.i = icmp ult i64 %mul16.i, %conv.i104.i
  %or.cond.i106.i = and i1 %tobool.not.i103.i, %cmp.i105.i
  br i1 %or.cond.i106.i, label %bcm_div.exit.i.bcm_div.exit220.i_crit_edge, label %if.else170.i212.i

bcm_div.exit.i.bcm_div.exit220.i_crit_edge:       ; preds = %bcm_div.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_div.exit220.i

if.else170.i212.i:                                ; preds = %bcm_div.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul16.i)
  %cmp172.i211.i = icmp ult i64 %mul16.i, 4294967296
  br i1 %cmp172.i211.i, label %if.then176.i216.i, label %if.else182.i218.i, !prof !60

if.then176.i216.i:                                ; preds = %if.else170.i212.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv177.i213.i = trunc i64 %mul16.i to i32
  %div180.i214.i = udiv i32 %conv177.i213.i, %conv5.i
  %conv181.i215.i = zext i32 %div180.i214.i to i64
  br label %bcm_div.exit220.i

if.else182.i218.i:                                ; preds = %if.else170.i212.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv5.i, i64 %mul16.i) #10, !srcloc !61
  %asmresult1.i.i217.i = extractvalue { i64, i64 } %23, 1
  br label %bcm_div.exit220.i

bcm_div.exit220.i:                                ; preds = %if.else182.i218.i, %if.then176.i216.i, %bcm_div.exit.i.bcm_div.exit220.i_crit_edge
  %retval.0.i219.i = phi i64 [ 1, %bcm_div.exit.i.bcm_div.exit220.i_crit_edge ], [ %conv181.i215.i, %if.then176.i216.i ], [ %asmresult1.i.i217.i, %if.else182.i218.i ]
  %24 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx20.i, align 8
  %26 = tail call i64 @llvm.umax.i64(i64 %25, i64 %retval.0.i219.i) #7
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx20.i, align 8
  %inc.i = add nuw i32 %i.0458.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %bcm_div.exit220.i.for.end.i_crit_edge, label %bcm_div.exit220.i.for.body3.i_crit_edge

bcm_div.exit220.i.for.body3.i_crit_edge:          ; preds = %bcm_div.exit220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

bcm_div.exit220.i.for.end.i_crit_edge:            ; preds = %bcm_div.exit220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %bcm_div.exit220.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %arrayidx29.i = getelementptr [3 x i64], ptr %agg_avg.i, i32 0, i32 %bucket.0459.i
  %28 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx29.i, align 8
  %30 = ptrtoint ptr %vote_scale.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vote_scale.i, align 8
  %mul30.i = mul i64 %31, %29
  %32 = ptrtoint ptr %aux_data31.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aux_data31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul30.i)
  %tobool.not.i221.i = icmp ne i64 %mul30.i, 0
  %conv.i222.i = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul30.i, i64 %conv.i222.i)
  %cmp.i223.i = icmp ult i64 %mul30.i, %conv.i222.i
  %or.cond.i224.i = and i1 %tobool.not.i221.i, %cmp.i223.i
  br i1 %or.cond.i224.i, label %for.end.i.bcm_div.exit338.i_crit_edge, label %if.else170.i330.i

for.end.i.bcm_div.exit338.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_div.exit338.i

if.else170.i330.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul30.i)
  %cmp172.i329.i = icmp ult i64 %mul30.i, 4294967296
  br i1 %cmp172.i329.i, label %if.then176.i334.i, label %if.else182.i336.i, !prof !60

if.then176.i334.i:                                ; preds = %if.else170.i330.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv177.i331.i = trunc i64 %mul30.i to i32
  %div180.i332.i = udiv i32 %conv177.i331.i, %33
  %conv181.i333.i = zext i32 %div180.i332.i to i64
  br label %bcm_div.exit338.i

if.else182.i336.i:                                ; preds = %if.else170.i330.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %33, i64 %mul30.i) #10, !srcloc !61
  %asmresult1.i.i335.i = extractvalue { i64, i64 } %34, 1
  br label %bcm_div.exit338.i

bcm_div.exit338.i:                                ; preds = %if.else182.i336.i, %if.then176.i334.i, %for.end.i.bcm_div.exit338.i_crit_edge
  %retval.0.i337.i = phi i64 [ 1, %for.end.i.bcm_div.exit338.i_crit_edge ], [ %conv181.i333.i, %if.then176.i334.i ], [ %asmresult1.i.i335.i, %if.else182.i336.i ]
  %arrayidx33.i = getelementptr %struct.qcom_icc_bcm, ptr %bcm.0, i32 0, i32 3, i32 %bucket.0459.i
  %35 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %retval.0.i337.i, ptr %arrayidx33.i, align 8
  %arrayidx34.i = getelementptr [3 x i64], ptr %agg_peak.i, i32 0, i32 %bucket.0459.i
  %36 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx34.i, align 8
  %38 = ptrtoint ptr %vote_scale.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %vote_scale.i, align 8
  %mul36.i = mul i64 %39, %37
  %40 = ptrtoint ptr %aux_data31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %aux_data31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul36.i)
  %tobool.not.i339.i = icmp ne i64 %mul36.i, 0
  %conv.i340.i = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul36.i, i64 %conv.i340.i)
  %cmp.i341.i = icmp ult i64 %mul36.i, %conv.i340.i
  %or.cond.i342.i = and i1 %tobool.not.i339.i, %cmp.i341.i
  br i1 %or.cond.i342.i, label %bcm_div.exit338.i.bcm_div.exit456.i_crit_edge, label %if.else170.i448.i

bcm_div.exit338.i.bcm_div.exit456.i_crit_edge:    ; preds = %bcm_div.exit338.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_div.exit456.i

if.else170.i448.i:                                ; preds = %bcm_div.exit338.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul36.i)
  %cmp172.i447.i = icmp ult i64 %mul36.i, 4294967296
  br i1 %cmp172.i447.i, label %if.then176.i452.i, label %if.else182.i454.i, !prof !60

if.then176.i452.i:                                ; preds = %if.else170.i448.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv177.i449.i = trunc i64 %mul36.i to i32
  %div180.i450.i = udiv i32 %conv177.i449.i, %41
  %conv181.i451.i = zext i32 %div180.i450.i to i64
  br label %bcm_div.exit456.i

if.else182.i454.i:                                ; preds = %if.else170.i448.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %41, i64 %mul36.i) #10, !srcloc !61
  %asmresult1.i.i453.i = extractvalue { i64, i64 } %42, 1
  br label %bcm_div.exit456.i

bcm_div.exit456.i:                                ; preds = %if.else182.i454.i, %if.then176.i452.i, %bcm_div.exit338.i.bcm_div.exit456.i_crit_edge
  %retval.0.i455.i = phi i64 [ 1, %bcm_div.exit338.i.bcm_div.exit456.i_crit_edge ], [ %conv181.i451.i, %if.then176.i452.i ], [ %asmresult1.i.i453.i, %if.else182.i454.i ]
  %arrayidx40.i = getelementptr %struct.qcom_icc_bcm, ptr %bcm.0, i32 0, i32 4, i32 %bucket.0459.i
  %43 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %retval.0.i455.i, ptr %arrayidx40.i, align 8
  %inc42.i = add nuw nsw i32 %bucket.0459.i, 1
  %exitcond461.not.i = icmp eq i32 %inc42.i, 3
  br i1 %exitcond461.not.i, label %for.end43.i, label %bcm_div.exit456.i.for.cond1.preheader.i_crit_edge

bcm_div.exit456.i.for.cond1.preheader.i_crit_edge: ; preds = %bcm_div.exit456.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.end43.i:                                      ; preds = %bcm_div.exit456.i
  %keepalive.i = getelementptr i8, ptr %.pn326, i32 -11
  %44 = ptrtoint ptr %keepalive.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %keepalive.i, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %for.end43.i.bcm_aggregate.exit_crit_edge, label %land.lhs.true.i

for.end43.i.bcm_aggregate.exit_crit_edge:         ; preds = %for.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_aggregate.exit

land.lhs.true.i:                                  ; preds = %for.end43.i
  %vote_x45.i = getelementptr i8, ptr %.pn326, i32 -68
  %46 = ptrtoint ptr %vote_x45.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vote_x45.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp47.i = icmp eq i64 %47, 0
  br i1 %cmp47.i, label %land.lhs.true49.i, label %land.lhs.true.i.bcm_aggregate.exit_crit_edge

land.lhs.true.i.bcm_aggregate.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_aggregate.exit

land.lhs.true49.i:                                ; preds = %land.lhs.true.i
  %vote_y50.i = getelementptr i8, ptr %.pn326, i32 -44
  %48 = ptrtoint ptr %vote_y50.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %vote_y50.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %cmp52.i = icmp eq i64 %49, 0
  br i1 %cmp52.i, label %if.then.i, label %land.lhs.true49.i.bcm_aggregate.exit_crit_edge

land.lhs.true49.i.bcm_aggregate.exit_crit_edge:   ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm_aggregate.exit

if.then.i:                                        ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %vote_x45.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 1, ptr %vote_x45.i, align 8
  %arrayidx57.i = getelementptr i8, ptr %.pn326, i32 -60
  %51 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 1, ptr %arrayidx57.i, align 8
  %52 = ptrtoint ptr %vote_y50.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1, ptr %vote_y50.i, align 8
  %arrayidx61.i = getelementptr i8, ptr %.pn326, i32 -36
  %53 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 1, ptr %arrayidx61.i, align 8
  br label %bcm_aggregate.exit

bcm_aggregate.exit:                               ; preds = %if.then.i, %land.lhs.true49.i.bcm_aggregate.exit_crit_edge, %land.lhs.true.i.bcm_aggregate.exit_crit_edge, %for.end43.i.bcm_aggregate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %agg_peak.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %agg_avg.i) #7
  %54 = ptrtoint ptr %.pn326 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn326, align 4
  %cmp.not = icmp eq ptr %.pn, %commit_list
  br i1 %cmp.not, label %bcm_aggregate.exit.for.end_crit_edge, label %bcm_aggregate.exit.for.body_crit_edge

bcm_aggregate.exit.for.body_crit_edge:            ; preds = %bcm_aggregate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

bcm_aggregate.exit.for.end_crit_edge:             ; preds = %bcm_aggregate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %bcm_aggregate.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @list_sort(ptr noundef null, ptr noundef %commit_list, ptr noundef nonnull @cmp_vcd) #7
  %55 = call ptr @memset(ptr %commit_idx, i32 0, i32 44)
  %56 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn69.i = load ptr, ptr %commit_list, align 4
  %cmp.not70.i = icmp eq ptr %.pn69.i, %commit_list
  br i1 %cmp.not70.i, label %for.end.tcs_list_gen.exit_crit_edge, label %for.body.lr.ph.i

for.end.tcs_list_gen.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_list_gen.exit

for.body.lr.ph.i:                                 ; preds = %for.end
  %tcs_wait.i = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn76.i = phi ptr [ %.pn69.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %idx.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc19.i, %for.inc.i.for.body.i_crit_edge ]
  %batch.072.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %batch.1.i, %for.inc.i.for.body.i_crit_edge ]
  %cur_vcd_size.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %cur_vcd_size.165.i, %for.inc.i.for.body.i_crit_edge ]
  %57 = ptrtoint ptr %.pn76.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %.pn76.i, align 4
  %cmp.i.not.i = icmp eq ptr %58, %commit_list
  br i1 %cmp.i.not.i, label %for.body.i.land.rhs.i_crit_edge, label %lor.lhs.false.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %inc.i194 = add i32 %cur_vcd_size.071.i, 1
  %vcd.i = getelementptr i8, ptr %.pn76.i, i32 -2
  %59 = ptrtoint ptr %vcd.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vcd.i, align 2
  %vcd8.i = getelementptr i8, ptr %58, i32 -2
  %61 = ptrtoint ptr %vcd8.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %vcd8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp10.not.i = icmp eq i8 %60, %62
  br i1 %cmp10.not.i, label %lor.lhs.false.i.land.end.i_crit_edge, label %lor.lhs.false.i.land.rhs.i_crit_edge

lor.lhs.false.i.land.rhs.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

lor.lhs.false.i.land.end.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %lor.lhs.false.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %63 = ptrtoint ptr %tcs_wait.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tcs_wait.i, align 4
  %and.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.i = icmp ne i32 %and.i, 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %lor.lhs.false.i.land.end.i_crit_edge
  %commit.0.off067.i = phi i1 [ true, %land.rhs.i ], [ false, %lor.lhs.false.i.land.end.i_crit_edge ]
  %cur_vcd_size.165.i = phi i32 [ 0, %land.rhs.i ], [ %inc.i194, %lor.lhs.false.i.land.end.i_crit_edge ]
  %65 = phi i1 [ %tobool14.i, %land.rhs.i ], [ false, %lor.lhs.false.i.land.end.i_crit_edge ]
  %arrayidx.i195 = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i
  %tobool.not.i.i196 = icmp eq ptr %arrayidx.i195, null
  br i1 %tobool.not.i.i196, label %land.end.i.tcs_cmd_gen.exit.i_crit_edge, label %if.end.i.i198

land.end.i.tcs_cmd_gen.exit.i_crit_edge:          ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_cmd_gen.exit.i

if.end.i.i198:                                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr i8, ptr %.pn76.i, i32 -76
  %66 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i, align 8
  %vote_y.i = getelementptr i8, ptr %.pn76.i, i32 -44
  %68 = ptrtoint ptr %vote_y.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %vote_y.i, align 8
  %vote_x.i = getelementptr i8, ptr %.pn76.i, i32 -68
  %70 = ptrtoint ptr %vote_x.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %vote_x.i, align 8
  %72 = or i64 %71, %69
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %73 = icmp eq i64 %72, 0
  %valid.0.off0.i.i = select i1 %73, i32 0, i32 536870912
  %74 = ptrtoint ptr %arrayidx.i195 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %67, ptr %arrayidx.i195, align 4
  %shl.i.i197 = select i1 %commit.0.off067.i, i32 1073741824, i32 0
  %or.i.i = or i32 %valid.0.off0.i.i, %shl.i.i197
  %data.i.i = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i, i32 1
  %75 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i.i, ptr %data.i.i, align 4
  %conv24.i.i = zext i1 %65 to i32
  %wait25.i.i = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i, i32 2
  %76 = ptrtoint ptr %wait25.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv24.i.i, ptr %wait25.i.i, align 4
  br label %tcs_cmd_gen.exit.i

tcs_cmd_gen.exit.i:                               ; preds = %if.end.i.i198, %land.end.i.tcs_cmd_gen.exit.i_crit_edge
  %inc19.i = add i32 %idx.074.i, 1
  %arrayidx20.i199 = getelementptr i32, ptr %commit_idx, i32 %batch.072.i
  %77 = ptrtoint ptr %arrayidx20.i199 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx20.i199, align 4
  %inc21.i = add i32 %78, 1
  store i32 %inc21.i, ptr %arrayidx20.i199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc21.i)
  %cmp23.i = icmp sgt i32 %inc21.i, 15
  br i1 %cmp23.i, label %if.then25.i, label %tcs_cmd_gen.exit.i.for.inc.i_crit_edge

tcs_cmd_gen.exit.i.for.inc.i_crit_edge:           ; preds = %tcs_cmd_gen.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then25.i:                                      ; preds = %tcs_cmd_gen.exit.i
  br i1 %commit.0.off067.i, label %if.then25.if.end30_crit_edge.i, label %if.then27.i

if.then25.if.end30_crit_edge.i:                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = add i32 %batch.072.i, 1
  br label %for.inc.i

if.then27.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %inc21.i, %cur_vcd_size.165.i
  %79 = ptrtoint ptr %arrayidx20.i199 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub.i, ptr %arrayidx20.i199, align 4
  %add.i = add i32 %batch.072.i, 1
  %arrayidx29.i200 = getelementptr i32, ptr %commit_idx, i32 %add.i
  %80 = ptrtoint ptr %arrayidx29.i200 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %cur_vcd_size.165.i, ptr %arrayidx29.i200, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then27.i, %if.then25.if.end30_crit_edge.i, %tcs_cmd_gen.exit.i.for.inc.i_crit_edge
  %batch.1.i = phi i32 [ %batch.072.i, %tcs_cmd_gen.exit.i.for.inc.i_crit_edge ], [ %.pre.i, %if.then25.if.end30_crit_edge.i ], [ %add.i, %if.then27.i ]
  %81 = ptrtoint ptr %.pn76.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn.i = load ptr, ptr %.pn76.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %commit_list
  br i1 %cmp.not.i, label %for.inc.i.tcs_list_gen.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.tcs_list_gen.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_list_gen.exit

tcs_list_gen.exit:                                ; preds = %for.inc.i.tcs_list_gen.exit_crit_edge, %for.end.tcs_list_gen.exit_crit_edge
  %82 = ptrtoint ptr %commit_idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %commit_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool9.not = icmp eq i32 %83, 0
  br i1 %tobool9.not, label %tcs_list_gen.exit.out_crit_edge, label %if.end11

tcs_list_gen.exit.out_crit_edge:                  ; preds = %tcs_list_gen.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %tcs_list_gen.exit
  %84 = ptrtoint ptr %voter to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %voter, align 4
  call void @rpmh_invalidate(ptr noundef %85) #7
  %86 = ptrtoint ptr %voter to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %voter, align 4
  %call = call i32 @rpmh_write_batch(ptr noundef %87, i32 noundef 2, ptr noundef nonnull %cmds, ptr noundef nonnull %commit_idx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call) #11
  br label %out

if.end19:                                         ; preds = %if.end11
  %88 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %commit_list, align 4
  %cmp33.not327 = icmp eq ptr %89, %commit_list
  br i1 %cmp33.not327, label %if.end19.for.end43_crit_edge, label %if.end19.for.body35_crit_edge

if.end19.for.body35_crit_edge:                    ; preds = %if.end19
  br label %for.body35

if.end19.for.end43_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43

for.body35:                                       ; preds = %list_del_init.exit.for.body35_crit_edge, %if.end19.for.body35_crit_edge
  %90 = phi ptr [ %.pn191, %list_del_init.exit.for.body35_crit_edge ], [ %89, %if.end19.for.body35_crit_edge ]
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn191 = load ptr, ptr %90, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %90) #7
  br i1 %call.i.i, label %if.end.i.i202, label %for.body35.list_del_init.exit_crit_edge

for.body35.list_del_init.exit_crit_edge:          ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i202:                                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %90, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i202, %for.body35.list_del_init.exit_crit_edge
  %98 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %90, ptr %90, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %90, ptr %prev.i3.i, align 4
  %cmp33.not = icmp eq ptr %.pn191, %commit_list
  br i1 %cmp33.not, label %list_del_init.exit.for.end43_crit_edge, label %list_del_init.exit.for.body35_crit_edge

list_del_init.exit.for.body35_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body35

list_del_init.exit.for.end43_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end43

for.end43:                                        ; preds = %list_del_init.exit.for.end43_crit_edge, %if.end19.for.end43_crit_edge
  %ws_list = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 4
  %100 = ptrtoint ptr %ws_list to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ws_list, align 4
  %cmp56.not329 = icmp eq ptr %101, %ws_list
  br i1 %cmp56.not329, label %for.end43.for.end78_crit_edge, label %for.body58.lr.ph

for.end43.for.end78_crit_edge:                    ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end78

for.body58.lr.ph:                                 ; preds = %for.end43
  %prev.i = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 3, i32 1
  br label %for.body58

for.body58:                                       ; preds = %for.inc72.for.body58_crit_edge, %for.body58.lr.ph
  %.pn192.in330 = phi ptr [ %101, %for.body58.lr.ph ], [ %.pn192332, %for.inc72.for.body58_crit_edge ]
  %102 = ptrtoint ptr %.pn192.in330 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn192332 = load ptr, ptr %.pn192.in330, align 4
  %arrayidx59 = getelementptr i8, ptr %.pn192.in330, i32 -68
  %103 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx59, align 8
  %arrayidx61 = getelementptr i8, ptr %.pn192.in330, i32 -60
  %105 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx61, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %104, i64 %106)
  %cmp62.not = icmp eq i64 %104, %106
  br i1 %cmp62.not, label %lor.lhs.false, label %for.body58.if.then67_crit_edge

for.body58.if.then67_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

lor.lhs.false:                                    ; preds = %for.body58
  %arrayidx63 = getelementptr i8, ptr %.pn192.in330, i32 -44
  %107 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx63, align 8
  %arrayidx65 = getelementptr i8, ptr %.pn192.in330, i32 -36
  %109 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %108, i64 %110)
  %cmp66.not = icmp eq i64 %108, %110
  br i1 %cmp66.not, label %if.else, label %lor.lhs.false.if.then67_crit_edge

lor.lhs.false.if.then67_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67

if.then67:                                        ; preds = %lor.lhs.false.if.then67_crit_edge, %for.body58.if.then67_crit_edge
  %list68 = getelementptr i8, ptr %.pn192.in330, i32 -8
  %111 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i, align 4
  %call.i.i203 = call zeroext i1 @__list_add_valid(ptr noundef %list68, ptr noundef %112, ptr noundef %commit_list) #7
  br i1 %call.i.i203, label %if.end.i.i204, label %if.then67.for.inc72_crit_edge

if.then67.for.inc72_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc72

if.end.i.i204:                                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %list68, ptr %prev.i, align 4
  %114 = ptrtoint ptr %list68 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %commit_list, ptr %list68, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn192.in330, i32 -4
  %115 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev3.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %list68, ptr %112, align 4
  br label %for.inc72

if.else:                                          ; preds = %lor.lhs.false
  %call.i.i205 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn192.in330) #7
  br i1 %call.i.i205, label %if.end.i.i208, label %if.else.list_del_init.exit210_crit_edge

if.else.list_del_init.exit210_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit210

if.end.i.i208:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i206 = getelementptr inbounds %struct.list_head, ptr %.pn192.in330, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i206 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i206, align 4
  %119 = ptrtoint ptr %.pn192.in330 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %.pn192.in330, align 4
  %prev1.i.i.i207 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %prev1.i.i.i207 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev1.i.i.i207, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %120, ptr %118, align 4
  br label %list_del_init.exit210

list_del_init.exit210:                            ; preds = %if.end.i.i208, %if.else.list_del_init.exit210_crit_edge
  %123 = ptrtoint ptr %.pn192.in330 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %.pn192.in330, ptr %.pn192.in330, align 4
  %prev.i3.i209 = getelementptr inbounds %struct.list_head, ptr %.pn192.in330, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i3.i209 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %.pn192.in330, ptr %prev.i3.i209, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %list_del_init.exit210, %if.end.i.i204, %if.then67.for.inc72_crit_edge
  %cmp56.not = icmp eq ptr %.pn192332, %ws_list
  br i1 %cmp56.not, label %for.inc72.for.end78_crit_edge, label %for.inc72.for.body58_crit_edge

for.inc72.for.body58_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

for.inc72.for.end78_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end78

for.end78:                                        ; preds = %for.inc72.for.end78_crit_edge, %for.end43.for.end78_crit_edge
  %125 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile ptr, ptr %commit_list, align 4
  %cmp.i.not = icmp eq ptr %126, %commit_list
  br i1 %cmp.i.not, label %for.end78.out_crit_edge, label %if.end83

for.end78.out_crit_edge:                          ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end83:                                         ; preds = %for.end78
  call void @list_sort(ptr noundef null, ptr noundef %commit_list, ptr noundef nonnull @cmp_vcd) #7
  %127 = call ptr @memset(ptr %commit_idx, i32 0, i32 44)
  %128 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pn69.i213 = load ptr, ptr %commit_list, align 4
  %cmp.not70.i214 = icmp eq ptr %.pn69.i213, %commit_list
  br i1 %cmp.not70.i214, label %if.end83.tcs_list_gen.exit263_crit_edge, label %for.body.lr.ph.i216

if.end83.tcs_list_gen.exit263_crit_edge:          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_list_gen.exit263

for.body.lr.ph.i216:                              ; preds = %if.end83
  %tcs_wait.i215 = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 6
  br label %for.body.i222

for.body.i222:                                    ; preds = %for.inc.i261.for.body.i222_crit_edge, %for.body.lr.ph.i216
  %.pn76.i217 = phi ptr [ %.pn69.i213, %for.body.lr.ph.i216 ], [ %.pn.i259, %for.inc.i261.for.body.i222_crit_edge ]
  %idx.074.i218 = phi i32 [ 0, %for.body.lr.ph.i216 ], [ %inc19.i246, %for.inc.i261.for.body.i222_crit_edge ]
  %batch.072.i219 = phi i32 [ 0, %for.body.lr.ph.i216 ], [ %batch.1.i258, %for.inc.i261.for.body.i222_crit_edge ]
  %cur_vcd_size.071.i220 = phi i32 [ 0, %for.body.lr.ph.i216 ], [ %cur_vcd_size.165.i232, %for.inc.i261.for.body.i222_crit_edge ]
  %129 = ptrtoint ptr %.pn76.i217 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %.pn76.i217, align 4
  %cmp.i.not.i221 = icmp eq ptr %130, %commit_list
  br i1 %cmp.i.not.i221, label %for.body.i222.land.rhs.i230_crit_edge, label %lor.lhs.false.i227

for.body.i222.land.rhs.i230_crit_edge:            ; preds = %for.body.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i230

lor.lhs.false.i227:                               ; preds = %for.body.i222
  %inc.i223 = add i32 %cur_vcd_size.071.i220, 1
  %vcd.i224 = getelementptr i8, ptr %.pn76.i217, i32 -2
  %131 = ptrtoint ptr %vcd.i224 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %vcd.i224, align 2
  %vcd8.i225 = getelementptr i8, ptr %130, i32 -2
  %133 = ptrtoint ptr %vcd8.i225 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %vcd8.i225, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp10.not.i226 = icmp eq i8 %132, %134
  br i1 %cmp10.not.i226, label %lor.lhs.false.i227.land.end.i235_crit_edge, label %lor.lhs.false.i227.land.rhs.i230_crit_edge

lor.lhs.false.i227.land.rhs.i230_crit_edge:       ; preds = %lor.lhs.false.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i230

lor.lhs.false.i227.land.end.i235_crit_edge:       ; preds = %lor.lhs.false.i227
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i235

land.rhs.i230:                                    ; preds = %lor.lhs.false.i227.land.rhs.i230_crit_edge, %for.body.i222.land.rhs.i230_crit_edge
  %135 = ptrtoint ptr %tcs_wait.i215 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tcs_wait.i215, align 4
  %and.i228 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool14.i229 = icmp ne i32 %and.i228, 0
  br label %land.end.i235

land.end.i235:                                    ; preds = %land.rhs.i230, %lor.lhs.false.i227.land.end.i235_crit_edge
  %commit.0.off067.i231 = phi i1 [ true, %land.rhs.i230 ], [ false, %lor.lhs.false.i227.land.end.i235_crit_edge ]
  %cur_vcd_size.165.i232 = phi i32 [ 0, %land.rhs.i230 ], [ %inc.i223, %lor.lhs.false.i227.land.end.i235_crit_edge ]
  %137 = phi i1 [ %tobool14.i229, %land.rhs.i230 ], [ false, %lor.lhs.false.i227.land.end.i235_crit_edge ]
  %arrayidx.i233 = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i218
  %tobool.not.i.i234 = icmp eq ptr %arrayidx.i233, null
  br i1 %tobool.not.i.i234, label %land.end.i235.tcs_cmd_gen.exit.i250_crit_edge, label %if.end.i.i245

land.end.i235.tcs_cmd_gen.exit.i250_crit_edge:    ; preds = %land.end.i235
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_cmd_gen.exit.i250

if.end.i.i245:                                    ; preds = %land.end.i235
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i236 = getelementptr i8, ptr %.pn76.i217, i32 -76
  %138 = ptrtoint ptr %addr.i236 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %addr.i236, align 8
  %arrayidx16.i = getelementptr i8, ptr %.pn76.i217, i32 -36
  %140 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx16.i, align 8
  %arrayidx15.i = getelementptr i8, ptr %.pn76.i217, i32 -60
  %142 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx15.i, align 8
  %144 = or i64 %143, %141
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %145 = icmp eq i64 %144, 0
  %valid.0.off0.i.i239 = select i1 %145, i32 0, i32 536870912
  %146 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %139, ptr %arrayidx.i233, align 4
  %shl.i.i240 = select i1 %commit.0.off067.i231, i32 1073741824, i32 0
  %or.i.i241 = or i32 %valid.0.off0.i.i239, %shl.i.i240
  %data.i.i242 = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i218, i32 1
  %147 = ptrtoint ptr %data.i.i242 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or.i.i241, ptr %data.i.i242, align 4
  %conv24.i.i243 = zext i1 %137 to i32
  %wait25.i.i244 = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i218, i32 2
  %148 = ptrtoint ptr %wait25.i.i244 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv24.i.i243, ptr %wait25.i.i244, align 4
  br label %tcs_cmd_gen.exit.i250

tcs_cmd_gen.exit.i250:                            ; preds = %if.end.i.i245, %land.end.i235.tcs_cmd_gen.exit.i250_crit_edge
  %inc19.i246 = add i32 %idx.074.i218, 1
  %arrayidx20.i247 = getelementptr i32, ptr %commit_idx, i32 %batch.072.i219
  %149 = ptrtoint ptr %arrayidx20.i247 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx20.i247, align 4
  %inc21.i248 = add i32 %150, 1
  store i32 %inc21.i248, ptr %arrayidx20.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc21.i248)
  %cmp23.i249 = icmp sgt i32 %inc21.i248, 15
  br i1 %cmp23.i249, label %if.then25.i251, label %tcs_cmd_gen.exit.i250.for.inc.i261_crit_edge

tcs_cmd_gen.exit.i250.for.inc.i261_crit_edge:     ; preds = %tcs_cmd_gen.exit.i250
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i261

if.then25.i251:                                   ; preds = %tcs_cmd_gen.exit.i250
  br i1 %commit.0.off067.i231, label %if.then25.if.end30_crit_edge.i253, label %if.then27.i257

if.then25.if.end30_crit_edge.i253:                ; preds = %if.then25.i251
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i252 = add i32 %batch.072.i219, 1
  br label %for.inc.i261

if.then27.i257:                                   ; preds = %if.then25.i251
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i254 = sub i32 %inc21.i248, %cur_vcd_size.165.i232
  %151 = ptrtoint ptr %arrayidx20.i247 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %sub.i254, ptr %arrayidx20.i247, align 4
  %add.i255 = add i32 %batch.072.i219, 1
  %arrayidx29.i256 = getelementptr i32, ptr %commit_idx, i32 %add.i255
  %152 = ptrtoint ptr %arrayidx29.i256 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %cur_vcd_size.165.i232, ptr %arrayidx29.i256, align 4
  br label %for.inc.i261

for.inc.i261:                                     ; preds = %if.then27.i257, %if.then25.if.end30_crit_edge.i253, %tcs_cmd_gen.exit.i250.for.inc.i261_crit_edge
  %batch.1.i258 = phi i32 [ %batch.072.i219, %tcs_cmd_gen.exit.i250.for.inc.i261_crit_edge ], [ %.pre.i252, %if.then25.if.end30_crit_edge.i253 ], [ %add.i255, %if.then27.i257 ]
  %153 = ptrtoint ptr %.pn76.i217 to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pn.i259 = load ptr, ptr %.pn76.i217, align 4
  %cmp.not.i260 = icmp eq ptr %.pn.i259, %commit_list
  br i1 %cmp.not.i260, label %for.inc.i261.tcs_list_gen.exit263_crit_edge, label %for.inc.i261.for.body.i222_crit_edge

for.inc.i261.for.body.i222_crit_edge:             ; preds = %for.inc.i261
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i222

for.inc.i261.tcs_list_gen.exit263_crit_edge:      ; preds = %for.inc.i261
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_list_gen.exit263

tcs_list_gen.exit263:                             ; preds = %for.inc.i261.tcs_list_gen.exit263_crit_edge, %if.end83.tcs_list_gen.exit263_crit_edge
  %154 = ptrtoint ptr %voter to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %voter, align 4
  %call90 = call i32 @rpmh_write_batch(ptr noundef %155, i32 noundef 1, ptr noundef nonnull %cmds, ptr noundef nonnull %commit_idx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end98, label %do.end95

do.end95:                                         ; preds = %tcs_list_gen.exit263
  call void @__sanitizer_cov_trace_pc() #9
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call90) #11
  br label %out

if.end98:                                         ; preds = %tcs_list_gen.exit263
  %156 = call ptr @memset(ptr %commit_idx, i32 0, i32 44)
  %157 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pn69.i265 = load ptr, ptr %commit_list, align 4
  %cmp.not70.i266 = icmp eq ptr %.pn69.i265, %commit_list
  br i1 %cmp.not70.i266, label %if.end98.tcs_list_gen.exit317_crit_edge, label %for.body.lr.ph.i268

if.end98.tcs_list_gen.exit317_crit_edge:          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_list_gen.exit317

for.body.lr.ph.i268:                              ; preds = %if.end98
  %tcs_wait.i267 = getelementptr inbounds %struct.bcm_voter, ptr %voter, i32 0, i32 6
  br label %for.body.i274

for.body.i274:                                    ; preds = %for.inc.i315.for.body.i274_crit_edge, %for.body.lr.ph.i268
  %.pn76.i269 = phi ptr [ %.pn69.i265, %for.body.lr.ph.i268 ], [ %.pn.i313, %for.inc.i315.for.body.i274_crit_edge ]
  %idx.074.i270 = phi i32 [ 0, %for.body.lr.ph.i268 ], [ %inc19.i300, %for.inc.i315.for.body.i274_crit_edge ]
  %batch.072.i271 = phi i32 [ 0, %for.body.lr.ph.i268 ], [ %batch.1.i312, %for.inc.i315.for.body.i274_crit_edge ]
  %cur_vcd_size.071.i272 = phi i32 [ 0, %for.body.lr.ph.i268 ], [ %cur_vcd_size.165.i284, %for.inc.i315.for.body.i274_crit_edge ]
  %158 = ptrtoint ptr %.pn76.i269 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %.pn76.i269, align 4
  %cmp.i.not.i273 = icmp eq ptr %159, %commit_list
  br i1 %cmp.i.not.i273, label %for.body.i274.land.rhs.i282_crit_edge, label %lor.lhs.false.i279

for.body.i274.land.rhs.i282_crit_edge:            ; preds = %for.body.i274
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i282

lor.lhs.false.i279:                               ; preds = %for.body.i274
  %inc.i275 = add i32 %cur_vcd_size.071.i272, 1
  %vcd.i276 = getelementptr i8, ptr %.pn76.i269, i32 -2
  %160 = ptrtoint ptr %vcd.i276 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %vcd.i276, align 2
  %vcd8.i277 = getelementptr i8, ptr %159, i32 -2
  %162 = ptrtoint ptr %vcd8.i277 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %vcd8.i277, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %161, i8 %163)
  %cmp10.not.i278 = icmp eq i8 %161, %163
  br i1 %cmp10.not.i278, label %lor.lhs.false.i279.land.end.i287_crit_edge, label %lor.lhs.false.i279.land.rhs.i282_crit_edge

lor.lhs.false.i279.land.rhs.i282_crit_edge:       ; preds = %lor.lhs.false.i279
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i282

lor.lhs.false.i279.land.end.i287_crit_edge:       ; preds = %lor.lhs.false.i279
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i287

land.rhs.i282:                                    ; preds = %lor.lhs.false.i279.land.rhs.i282_crit_edge, %for.body.i274.land.rhs.i282_crit_edge
  %164 = ptrtoint ptr %tcs_wait.i267 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tcs_wait.i267, align 4
  %and.i280 = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280)
  %tobool14.i281 = icmp ne i32 %and.i280, 0
  br label %land.end.i287

land.end.i287:                                    ; preds = %land.rhs.i282, %lor.lhs.false.i279.land.end.i287_crit_edge
  %commit.0.off067.i283 = phi i1 [ true, %land.rhs.i282 ], [ false, %lor.lhs.false.i279.land.end.i287_crit_edge ]
  %cur_vcd_size.165.i284 = phi i32 [ 0, %land.rhs.i282 ], [ %inc.i275, %lor.lhs.false.i279.land.end.i287_crit_edge ]
  %166 = phi i1 [ %tobool14.i281, %land.rhs.i282 ], [ false, %lor.lhs.false.i279.land.end.i287_crit_edge ]
  %arrayidx.i285 = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i270
  %tobool.not.i.i286 = icmp eq ptr %arrayidx.i285, null
  br i1 %tobool.not.i.i286, label %land.end.i287.tcs_cmd_gen.exit.i304_crit_edge, label %if.end.i.i299

land.end.i287.tcs_cmd_gen.exit.i304_crit_edge:    ; preds = %land.end.i287
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_cmd_gen.exit.i304

if.end.i.i299:                                    ; preds = %land.end.i287
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i288 = getelementptr i8, ptr %.pn76.i269, i32 -76
  %167 = ptrtoint ptr %addr.i288 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %addr.i288, align 8
  %arrayidx16.i290 = getelementptr i8, ptr %.pn76.i269, i32 -28
  %169 = ptrtoint ptr %arrayidx16.i290 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %arrayidx16.i290, align 8
  %arrayidx15.i292 = getelementptr i8, ptr %.pn76.i269, i32 -52
  %171 = ptrtoint ptr %arrayidx15.i292 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %arrayidx15.i292, align 8
  %173 = or i64 %172, %170
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %173)
  %174 = icmp eq i64 %173, 0
  %valid.0.off0.i.i293 = select i1 %174, i32 0, i32 536870912
  %175 = ptrtoint ptr %arrayidx.i285 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %168, ptr %arrayidx.i285, align 4
  %shl.i.i294 = select i1 %commit.0.off067.i283, i32 1073741824, i32 0
  %or.i.i295 = or i32 %valid.0.off0.i.i293, %shl.i.i294
  %data.i.i296 = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i270, i32 1
  %176 = ptrtoint ptr %data.i.i296 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %or.i.i295, ptr %data.i.i296, align 4
  %conv24.i.i297 = zext i1 %166 to i32
  %wait25.i.i298 = getelementptr %struct.tcs_cmd, ptr %cmds, i32 %idx.074.i270, i32 2
  %177 = ptrtoint ptr %wait25.i.i298 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %conv24.i.i297, ptr %wait25.i.i298, align 4
  br label %tcs_cmd_gen.exit.i304

tcs_cmd_gen.exit.i304:                            ; preds = %if.end.i.i299, %land.end.i287.tcs_cmd_gen.exit.i304_crit_edge
  %inc19.i300 = add i32 %idx.074.i270, 1
  %arrayidx20.i301 = getelementptr i32, ptr %commit_idx, i32 %batch.072.i271
  %178 = ptrtoint ptr %arrayidx20.i301 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx20.i301, align 4
  %inc21.i302 = add i32 %179, 1
  store i32 %inc21.i302, ptr %arrayidx20.i301, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc21.i302)
  %cmp23.i303 = icmp sgt i32 %inc21.i302, 15
  br i1 %cmp23.i303, label %if.then25.i305, label %tcs_cmd_gen.exit.i304.for.inc.i315_crit_edge

tcs_cmd_gen.exit.i304.for.inc.i315_crit_edge:     ; preds = %tcs_cmd_gen.exit.i304
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i315

if.then25.i305:                                   ; preds = %tcs_cmd_gen.exit.i304
  br i1 %commit.0.off067.i283, label %if.then25.if.end30_crit_edge.i307, label %if.then27.i311

if.then25.if.end30_crit_edge.i307:                ; preds = %if.then25.i305
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i306 = add i32 %batch.072.i271, 1
  br label %for.inc.i315

if.then27.i311:                                   ; preds = %if.then25.i305
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i308 = sub i32 %inc21.i302, %cur_vcd_size.165.i284
  %180 = ptrtoint ptr %arrayidx20.i301 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub.i308, ptr %arrayidx20.i301, align 4
  %add.i309 = add i32 %batch.072.i271, 1
  %arrayidx29.i310 = getelementptr i32, ptr %commit_idx, i32 %add.i309
  %181 = ptrtoint ptr %arrayidx29.i310 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %cur_vcd_size.165.i284, ptr %arrayidx29.i310, align 4
  br label %for.inc.i315

for.inc.i315:                                     ; preds = %if.then27.i311, %if.then25.if.end30_crit_edge.i307, %tcs_cmd_gen.exit.i304.for.inc.i315_crit_edge
  %batch.1.i312 = phi i32 [ %batch.072.i271, %tcs_cmd_gen.exit.i304.for.inc.i315_crit_edge ], [ %.pre.i306, %if.then25.if.end30_crit_edge.i307 ], [ %add.i309, %if.then27.i311 ]
  %182 = ptrtoint ptr %.pn76.i269 to i32
  call void @__asan_load4_noabort(i32 %182)
  %.pn.i313 = load ptr, ptr %.pn76.i269, align 4
  %cmp.not.i314 = icmp eq ptr %.pn.i313, %commit_list
  br i1 %cmp.not.i314, label %for.inc.i315.tcs_list_gen.exit317_crit_edge, label %for.inc.i315.for.body.i274_crit_edge

for.inc.i315.for.body.i274_crit_edge:             ; preds = %for.inc.i315
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i274

for.inc.i315.tcs_list_gen.exit317_crit_edge:      ; preds = %for.inc.i315
  call void @__sanitizer_cov_trace_pc() #9
  br label %tcs_list_gen.exit317

tcs_list_gen.exit317:                             ; preds = %for.inc.i315.tcs_list_gen.exit317_crit_edge, %if.end98.tcs_list_gen.exit317_crit_edge
  %183 = ptrtoint ptr %voter to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %voter, align 4
  %call104 = call i32 @rpmh_write_batch(ptr noundef %184, i32 noundef 0, ptr noundef nonnull %cmds, ptr noundef nonnull %commit_idx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %tcs_list_gen.exit317.out_crit_edge, label %do.end109

tcs_list_gen.exit317.out_crit_edge:               ; preds = %tcs_list_gen.exit317
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end109:                                        ; preds = %tcs_list_gen.exit317
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call104) #11
  br label %out

out:                                              ; preds = %do.end109, %tcs_list_gen.exit317.out_crit_edge, %do.end95, %for.end78.out_crit_edge, %do.end, %tcs_list_gen.exit.out_crit_edge
  %ret.0 = phi i32 [ %call, %do.end ], [ 0, %for.end78.out_crit_edge ], [ %call90, %do.end95 ], [ %call104, %do.end109 ], [ 0, %tcs_list_gen.exit317.out_crit_edge ], [ 0, %tcs_list_gen.exit.out_crit_edge ]
  %185 = ptrtoint ptr %commit_list to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %commit_list, align 4
  %cmp126.not333 = icmp eq ptr %186, %commit_list
  br i1 %cmp126.not333, label %out.for.end136_crit_edge, label %out.for.body128_crit_edge

out.for.body128_crit_edge:                        ; preds = %out
  br label %for.body128

out.for.end136_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

for.body128:                                      ; preds = %list_del_init.exit323.for.body128_crit_edge, %out.for.body128_crit_edge
  %187 = phi ptr [ %.pn190, %list_del_init.exit323.for.body128_crit_edge ], [ %186, %out.for.body128_crit_edge ]
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %.pn190 = load ptr, ptr %187, align 4
  %call.i.i318 = call zeroext i1 @__list_del_entry_valid(ptr noundef %187) #7
  br i1 %call.i.i318, label %if.end.i.i321, label %for.body128.list_del_init.exit323_crit_edge

for.body128.list_del_init.exit323_crit_edge:      ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit323

if.end.i.i321:                                    ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i319 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %189 = ptrtoint ptr %prev.i.i319 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %prev.i.i319, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %187, align 4
  %prev1.i.i.i320 = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %prev1.i.i.i320 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %190, ptr %prev1.i.i.i320, align 4
  %194 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %192, ptr %190, align 4
  br label %list_del_init.exit323

list_del_init.exit323:                            ; preds = %if.end.i.i321, %for.body128.list_del_init.exit323_crit_edge
  %195 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %187, ptr %187, align 4
  %prev.i3.i322 = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %196 = ptrtoint ptr %prev.i3.i322 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %187, ptr %prev.i3.i322, align 4
  %cmp126.not = icmp eq ptr %.pn190, %commit_list
  br i1 %cmp126.not, label %list_del_init.exit323.for.end136_crit_edge, label %list_del_init.exit323.for.body128_crit_edge

list_del_init.exit323.for.body128_crit_edge:      ; preds = %list_del_init.exit323
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body128

list_del_init.exit323.for.end136_crit_edge:       ; preds = %list_del_init.exit323
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

for.end136:                                       ; preds = %list_del_init.exit323.for.end136_crit_edge, %out.for.end136_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end136, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end136 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %cmds) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %commit_idx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_vcd(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vcd = getelementptr i8, ptr %a, i32 -2
  %0 = ptrtoint ptr %vcd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vcd, align 2
  %conv = zext i8 %1 to i32
  %vcd5 = getelementptr i8, ptr %b, i32 -2
  %2 = ptrtoint ptr %vcd5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vcd5, align 2
  %conv6 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv6
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpmh_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmh_write_batch(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_icc_bcm_voter_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_icc_bcm_voter_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_icc_bcm_voter_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_icc_bcm_voter_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_icc_bcm_voter_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %np4 = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %np4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %np4, align 4
  %tcs_wait = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %tcs_wait, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool6.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool6.not, label %if.end.do.body_crit_edge, label %if.then7

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tcs_wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %tcs_wait, align 4
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.end.do.body_crit_edge
  %lock = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @qcom_icc_bcm_voter_probe.__key) #7
  %commit_list = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %commit_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %commit_list, ptr %commit_list, align 4
  %prev.i = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %commit_list, ptr %prev.i, align 4
  %ws_list = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %ws_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ws_list, ptr %ws_list, align 4
  %prev.i22 = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ws_list, ptr %prev.i22, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @bcm_voter_lock, i32 noundef 0) #7
  %voter_node = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 5
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_voters, i32 0, i32 1), align 4
  %call.i.i23 = tail call zeroext i1 @__list_add_valid(ptr noundef %voter_node, ptr noundef %9, ptr noundef nonnull @bcm_voters) #7
  br i1 %call.i.i23, label %if.end.i.i, label %do.body.list_add_tail.exit_crit_edge

do.body.list_add_tail.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %voter_node, ptr getelementptr inbounds (%struct.list_head, ptr @bcm_voters, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %voter_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @bcm_voters, ptr %voter_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.bcm_voter, ptr %call.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %voter_node, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @bcm_voter_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !29, !31, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 192, i32 38}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 197, i32 30}
!4 = !{ptr @__ksymtab_of_bcm_voter_get, !5, !"__ksymtab_of_bcm_voter_get", i1 false, i1 false}
!5 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 211, i32 1}
!6 = !{ptr @__ksymtab_qcom_icc_bcm_voter_add, !7, !"__ksymtab_qcom_icc_bcm_voter_add", i1 false, i1 false}
!7 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 232, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 284, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @qcom_icc_bcm_voter_commit._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @qcom_icc_bcm_voter_commit._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 315, i32 3}
!16 = !{ptr @qcom_icc_bcm_voter_commit._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @qcom_icc_bcm_voter_commit._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 323, i32 3}
!20 = !{ptr @qcom_icc_bcm_voter_commit._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qcom_icc_bcm_voter_commit._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_qcom_icc_bcm_voter_commit, !23, !"__ksymtab_qcom_icc_bcm_voter_commit", i1 false, i1 false}
!23 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 334, i32 1}
!24 = !{ptr @__initcall__kmod_icc_bcm_voter__174_375_qcom_icc_bcm_voter_driver_init6, !25, !"__initcall__kmod_icc_bcm_voter__174_375_qcom_icc_bcm_voter_driver_init6", i1 false, i1 false}
!25 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 375, i32 1}
!26 = !{ptr @__exitcall_qcom_icc_bcm_voter_driver_exit, !25, !"__exitcall_qcom_icc_bcm_voter_driver_exit", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_author175, !28, !"__UNIQUE_ID_author175", i1 false, i1 false}
!28 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 377, i32 1}
!29 = !{ptr @__UNIQUE_ID_description176, !30, !"__UNIQUE_ID_description176", i1 false, i1 false}
!30 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 378, i32 1}
!31 = !{ptr @__UNIQUE_ID_file177, !32, !"__UNIQUE_ID_file177", i1 false, i1 false}
!32 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 379, i32 1}
!33 = !{ptr @__UNIQUE_ID_license178, !32, !"__UNIQUE_ID_license178", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 20, i32 8}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm_voter_lock, !35, !"bcm_voter_lock", i1 false, i1 false}
!38 = !{ptr @bcm_voters, !39, !"bcm_voters", i1 false, i1 false}
!39 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 19, i32 8}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 371, i32 12}
!42 = !{ptr @qcom_icc_bcm_voter_driver, !43, !"qcom_icc_bcm_voter_driver", i1 false, i1 false}
!43 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 368, i32 31}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 348, i32 31}
!46 = !{ptr @qcom_icc_bcm_voter_probe.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 351, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @bcm_voter_of_match, !50, !"bcm_voter_of_match", i1 false, i1 false}
!50 = !{!"../drivers/interconnect/qcom/bcm-voter.c", i32 362, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2147983077, i64 2147983357, i64 2147983691, i64 2147984025}
!62 = !{i8 0, i8 2}
