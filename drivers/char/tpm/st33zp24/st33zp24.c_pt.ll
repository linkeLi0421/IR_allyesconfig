; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/st33zp24/st33zp24.c_pt.bc'
source_filename = "../drivers/char/tpm/st33zp24/st33zp24.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st33zp24_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_st33zp24_probe\09\09\09\09"
module asm "\09.long\09__crc_st33zp24_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st33zp24_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22st33zp24_probe\22\09\09\09\09\09"
module asm "__kstrtabns_st33zp24_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st33zp24_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_st33zp24_remove\09\09\09\09"
module asm "\09.long\09__crc_st33zp24_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st33zp24_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22st33zp24_remove\22\09\09\09\09\09"
module asm "__kstrtabns_st33zp24_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st33zp24_pm_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_st33zp24_pm_suspend\09\09\09\09"
module asm "\09.long\09__crc_st33zp24_pm_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st33zp24_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22st33zp24_pm_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_st33zp24_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st33zp24_pm_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_st33zp24_pm_resume\09\09\09\09"
module asm "\09.long\09__crc_st33zp24_pm_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st33zp24_pm_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22st33zp24_pm_resume\22\09\09\09\09\09"
module asm "__kstrtabns_st33zp24_pm_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.st33zp24_dev = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.st33zp24_phy_ops = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@st33zp24_tpm = internal constant { %struct.tpm_class_ops, [40 x i8] } { %struct.tpm_class_ops { i32 1, i8 -112, i8 -112, ptr @st33zp24_req_canceled, ptr @st33zp24_recv, ptr @st33zp24_send, ptr @st33zp24_cancel, ptr @st33zp24_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@st33zp24_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tpm_dev->read_queue\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TPM SERIRQ management\00", [42 x i8] zeroinitializer }, align 32
@st33zp24_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TPM SERIRQ signals %d not available\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st33zp24_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/char/tpm/st33zp24/st33zp24.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st33zp24_probe._entry_ptr = internal global ptr @st33zp24_probe._entry, section ".printk_index", align 4
@st33zp24_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 509, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TPM initialization fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st33zp24_probe._entry_ptr.10 = internal global ptr @st33zp24_probe._entry.7, section ".printk_index", align 4
@__kstrtab_st33zp24_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_st33zp24_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_st33zp24_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st33zp24_probe to i32), ptr @__kstrtab_st33zp24_probe, ptr @__kstrtabns_st33zp24_probe }, section "___ksymtab+st33zp24_probe", align 4
@__kstrtab_st33zp24_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_st33zp24_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_st33zp24_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st33zp24_remove to i32), ptr @__kstrtab_st33zp24_remove, ptr @__kstrtabns_st33zp24_remove }, section "___ksymtab+st33zp24_remove", align 4
@__kstrtab_st33zp24_pm_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_st33zp24_pm_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_st33zp24_pm_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st33zp24_pm_suspend to i32), ptr @__kstrtab_st33zp24_pm_suspend, ptr @__kstrtabns_st33zp24_pm_suspend }, section "___ksymtab+st33zp24_pm_suspend", align 4
@__kstrtab_st33zp24_pm_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_st33zp24_pm_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_st33zp24_pm_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st33zp24_pm_resume to i32), ptr @__kstrtab_st33zp24_pm_resume, ptr @__kstrtabns_st33zp24_pm_resume }, section "___ksymtab+st33zp24_pm_resume", align 4
@__UNIQUE_ID_author250 = internal constant [57 x i8] c"tpm_st33zp24.author=TPM support (TPMsupport@list.st.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [49 x i8] c"tpm_st33zp24.description=ST33ZP24 TPM 1.2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version252 = internal constant [27 x i8] c"tpm_st33zp24.version=1.3.0\00", section ".modinfo", align 1
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpm_st33zp24\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.3.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.12, ptr @.str.13 }, section "__modver", align 4
@__UNIQUE_ID_file253 = internal constant [57 x i8] c"tpm_st33zp24.file=drivers/char/tpm/st33zp24/tpm_st33zp24\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [25 x i8] c"tpm_st33zp24.license=GPL\00", section ".modinfo", align 1
@st33zp24_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 396, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to read header\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st33zp24_recv\00", [18 x i8] zeroinitializer }, align 32
@st33zp24_recv._entry_ptr = internal global ptr @st33zp24_recv._entry, section ".printk_index", align 4
@st33zp24_recv._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 409, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to read remainder of result\0A\00", [60 x i8] zeroinitializer }, align 32
@st33zp24_recv._entry_ptr.18 = internal global ptr @st33zp24_recv._entry.16, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"st33zp24_tpm\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 424, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 468, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 478, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 481, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 509, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 561, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 396, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [40 x i8] c"../drivers/char/tpm/st33zp24/st33zp24.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 409, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__UNIQUE_ID_version252, ptr @__ksymtab_st33zp24_pm_resume, ptr @__ksymtab_st33zp24_pm_suspend, ptr @__ksymtab_st33zp24_probe, ptr @__ksymtab_st33zp24_remove, ptr @__modver_attr, ptr @st33zp24_probe._entry, ptr @st33zp24_probe._entry.7, ptr @st33zp24_probe._entry_ptr, ptr @st33zp24_probe._entry_ptr.10, ptr @st33zp24_recv._entry, ptr @st33zp24_recv._entry.16, ptr @st33zp24_recv._entry_ptr, ptr @st33zp24_recv._entry_ptr.18, ptr @st33zp24_tpm, ptr @st33zp24_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_tpm to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st33zp24_recv._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st33zp24_probe(ptr noundef %phy_id, ptr noundef %ops, ptr noundef %dev, i32 noundef %irq, i32 %io_lpcpd) #0 align 64 {
entry:
  %interrupt.i = alloca i8, align 1
  %intmask = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %intmask) #7
  %0 = ptrtoint ptr %intmask to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %intmask, align 1
  %call = tail call ptr @tpmm_chip_alloc(ptr noundef %dev, ptr noundef nonnull @st33zp24_tpm) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %phy_id6 = getelementptr inbounds %struct.st33zp24_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %phy_id, ptr %phy_id6, align 4
  %ops7 = getelementptr inbounds %struct.st33zp24_dev, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops, ptr %ops7, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %timeout_a to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 75, ptr %timeout_a, align 8
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 16
  %6 = ptrtoint ptr %timeout_b to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 200, ptr %timeout_b, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %timeout_c to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 75, ptr %timeout_c, align 8
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 18
  %8 = ptrtoint ptr %timeout_d to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 75, ptr %timeout_d, align 4
  %locality = getelementptr inbounds %struct.st33zp24_dev, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %locality to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %locality, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool13.not = icmp eq i32 %irq, 0
  br i1 %tobool13.not, label %if.end5.if.end46_crit_edge, label %do.body

if.end5.if.end46_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.body:                                          ; preds = %if.end5
  %read_queue = getelementptr inbounds %struct.st33zp24_dev, ptr %call.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str, ptr noundef nonnull @st33zp24_probe.__key) #7
  %intrs = getelementptr inbounds %struct.st33zp24_dev, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %intrs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %intrs, align 4
  %call15 = tail call fastcc i32 @request_locality(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp.not = icmp eq i32 %call15, 0
  br i1 %cmp.not, label %if.end17, label %do.body.do.end50_crit_edge

do.body.do.end50_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

if.end17:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %interrupt.i) #7
  %11 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %interrupt.i, align 1, !annotation !60
  %12 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops7, align 4
  %recv.i = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %recv.i, align 4
  %16 = ptrtoint ptr %phy_id6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_id6, align 4
  %call.i88 = call i32 %15(ptr noundef %17, i8 noundef zeroext 16, ptr noundef nonnull %interrupt.i, i32 noundef 1) #7
  %18 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops7, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %phy_id6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_id6, align 4
  %call3.i = call i32 %21(ptr noundef %23, i8 noundef zeroext 16, ptr noundef nonnull %interrupt.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %interrupt.i) #7
  %call.i89 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef nonnull @tpm_ioserirq_handler, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp20 = icmp slt i32 %call.i89, 0
  br i1 %cmp20, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.2, i32 noundef %irq) #10
  br label %do.end50

if.end26:                                         ; preds = %if.end17
  %24 = ptrtoint ptr %intmask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %intmask, align 1
  %26 = or i8 %25, -125
  store i8 %26, ptr %intmask, align 1
  %27 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops7, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %phy_id6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy_id6, align 4
  %call30 = call i32 %30(ptr noundef %32, i8 noundef zeroext 8, ptr noundef nonnull %intmask, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end26.do.end50_crit_edge, label %if.end34

if.end26.do.end50_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

if.end34:                                         ; preds = %if.end26
  %33 = ptrtoint ptr %intmask to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -128, ptr %intmask, align 1
  %34 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops7, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %phy_id6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_id6, align 4
  %call38 = call i32 %37(ptr noundef %39, i8 noundef zeroext 11, ptr noundef nonnull %intmask, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end34.do.end50_crit_edge, label %if.end42

if.end34.do.end50_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

if.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %irq43 = getelementptr inbounds %struct.st33zp24_dev, ptr %call.i, i32 0, i32 4
  %40 = ptrtoint ptr %irq43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %irq, ptr %irq43, align 4
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 9
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %or44 = or i32 %42, 4
  store i32 %or44, ptr %flags, align 4
  %43 = load i32, ptr %irq43, align 4
  call void @disable_irq_nosync(i32 noundef %43) #7
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.end5.if.end46_crit_edge
  %call47 = call i32 @tpm_chip_register(ptr noundef %call) #7
  br label %cleanup

do.end50:                                         ; preds = %if.end34.do.end50_crit_edge, %if.end26.do.end50_crit_edge, %do.end24, %do.body.do.end50_crit_edge
  %ret.0 = phi i32 [ %call.i89, %do.end24 ], [ %call30, %if.end26.do.end50_crit_edge ], [ %call38, %if.end34.do.end50_crit_edge ], [ -19, %do.body.do.end50_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call, ptr noundef nonnull @.str.8) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end46, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %ret.0, %do.end50 ], [ %call47, %if.end46 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %intmask) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpmm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @request_locality(ptr nocapture noundef readonly %chip) unnamed_addr #0 align 64 {
entry:
  %data.i20 = alloca i8, align 1
  %data.i = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i, align 1, !annotation !60
  %ops.i = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %recv.i = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recv.i, align 4
  %phy_id.i = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_id.i, align 4
  %call1.i = call i32 %6(ptr noundef %8, i8 noundef zeroext 0, ptr noundef nonnull %data.i, i32 noundef 1) #7
  %conv2.i = and i32 %call1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %tobool.not.i = icmp eq i32 %conv2.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i, align 1
  %11 = and i8 %10, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %11)
  %cmp.i = icmp eq i8 %11, -96
  br i1 %cmp.i, label %if.then, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %data, align 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_id.i, align 4
  %call2 = call i32 %16(ptr noundef %18, i8 noundef zeroext 0, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %20 = ptrtoint ptr %timeout_a to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout_a, align 8
  %22 = add i32 %21, %19
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %if.end4
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i20) #7
  %25 = ptrtoint ptr %data.i20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %data.i20, align 1, !annotation !60
  %ops.i22 = getelementptr inbounds %struct.st33zp24_dev, ptr %24, i32 0, i32 2
  %26 = ptrtoint ptr %ops.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i22, align 4
  %recv.i23 = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %recv.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %recv.i23, align 4
  %phy_id.i24 = getelementptr inbounds %struct.st33zp24_dev, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %phy_id.i24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_id.i24, align 4
  %call1.i25 = call i32 %29(ptr noundef %31, i8 noundef zeroext 0, ptr noundef nonnull %data.i20, i32 noundef 1) #7
  %conv2.i26 = and i32 %call1.i25, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i26)
  %tobool.not.i27 = icmp eq i32 %conv2.i26, 0
  br i1 %tobool.not.i27, label %do.body.if.end8_crit_edge, label %land.lhs.true.i29

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true.i29:                                ; preds = %do.body
  %32 = ptrtoint ptr %data.i20 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data.i20, align 1
  %34 = and i8 %33, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %34)
  %cmp.i28 = icmp eq i8 %34, -96
  br i1 %cmp.i28, label %if.then6, label %land.lhs.true.i29.if.end8_crit_edge

land.lhs.true.i29.if.end8_crit_edge:              ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i20) #7
  br label %cleanup.sink.split

if.end8:                                          ; preds = %land.lhs.true.i29.if.end8_crit_edge, %do.body.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i20) #7
  call void @msleep(i32 noundef 5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %35, %22
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %if.end8.do.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup.sink.split:                               ; preds = %if.then6, %if.then
  %locality7 = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %locality7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %locality7, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.cleanup_crit_edge ], [ %37, %cleanup.sink.split ], [ -13, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_ioserirq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %intrs = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intrs, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %intrs, align 4
  %read_queue = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %irq1 = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st33zp24_remove(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tpm_chip_unregister(ptr noundef %chip) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st33zp24_pm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i8, align 4
  %io_lpcpd = getelementptr inbounds %struct.st33zp24_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %io_lpcpd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_lpcpd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %5) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @tpm_pm_suspend(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call5, %if.else ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st33zp24_pm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i17 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i17, align 4
  %io_lpcpd = getelementptr inbounds %struct.st33zp24_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %io_lpcpd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_lpcpd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %5) #7
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #7
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout_b, align 4
  %read_queue = getelementptr inbounds %struct.st33zp24_dev, ptr %3, i32 0, i32 7
  %call5 = tail call fastcc i32 @wait_for_stat(ptr noundef %1, i8 noundef zeroext -128, i32 noundef %8, ptr noundef %read_queue, i1 noundef zeroext false)
  br label %if.end9

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @tpm_pm_resume(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @tpm1_do_selftest(ptr noundef %1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else.if.end9_crit_edge, %if.then
  %ret.0 = phi i32 [ %call5, %if.then ], [ %call6, %if.else.if.end9_crit_edge ], [ 0, %if.then7 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext %mask, i32 noundef %timeout, ptr noundef %queue, i1 noundef zeroext %check_cancel) unnamed_addr #0 align 64 {
entry:
  %interrupt.i155 = alloca i8, align 1
  %interrupt.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i, align 1, !annotation !60
  %ops.i = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %recv.i = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recv.i, align 4
  %phy_id.i = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_id.i, align 4
  %call1.i = call i32 %6(ptr noundef %8, i8 noundef zeroext 24, ptr noundef nonnull %data.i, i32 noundef 1) #7
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  %and150 = and i8 %10, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and150, i8 %mask)
  %cmp = icmp eq i8 %and150, %mask
  br i1 %cmp, label %entry.cleanup110_crit_edge, label %if.end

entry.cleanup110_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %11, %timeout
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and5 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body93.preheader, label %if.then6

do.body93.preheader:                              ; preds = %if.end
  %ops = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 5
  br label %do.body93

if.then6:                                         ; preds = %if.end
  %intrs = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %intrs, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %interrupt.i) #7
  %16 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %interrupt.i, align 1, !annotation !60
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %recv.i153 = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %recv.i153 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %recv.i153, align 4
  %21 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy_id.i, align 4
  %call.i = call i32 %20(ptr noundef %22, i8 noundef zeroext 16, ptr noundef nonnull %interrupt.i, i32 noundef 1) #7
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_id.i, align 4
  %call3.i = call i32 %26(ptr noundef %28, i8 noundef zeroext 16, ptr noundef nonnull %interrupt.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %interrupt.i) #7
  %irq = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %30) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub197 = sub i32 %add, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub197)
  %cmp16198 = icmp slt i32 %sub197, 1
  br i1 %cmp16198, label %if.then6.cleanup110_crit_edge, label %if.end19.lr.ph

if.then6.cleanup110_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end19.lr.ph:                                   ; preds = %if.then6
  %ops.i161 = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 5
  %check_cancel.not.i = xor i1 %check_cancel, true
  br label %if.end19

land.lhs.true.critedge:                           ; preds = %freezing.exit170
  %32 = call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %36 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %land.lhs.true.critedge.if.end15.backedge_crit_edge, label %if.end.i, !prof !61

land.lhs.true.critedge.if.end15.backedge_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.backedge

if.end.i:                                         ; preds = %land.lhs.true.critedge
  %call4.i = call zeroext i1 @freezing_slow_path(ptr noundef %35) #7
  br i1 %call4.i, label %if.then13, label %if.end.i.if.end15.backedge_crit_edge

if.end.i.if.end15.backedge_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.backedge

if.then13:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %33) #7
  br label %if.end15.backedge

if.end15.backedge:                                ; preds = %if.then13, %if.end.i.if.end15.backedge_crit_edge, %land.lhs.true.critedge.if.end15.backedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %37
  %cmp16 = icmp slt i32 %sub, 1
  br i1 %cmp16, label %if.end15.backedge.cleanup110_crit_edge, label %if.end15.backedge.if.end19_crit_edge

if.end15.backedge.if.end19_crit_edge:             ; preds = %if.end15.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end15.backedge.cleanup110_crit_edge:           ; preds = %if.end15.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

if.end19:                                         ; preds = %if.end15.backedge.if.end19_crit_edge, %if.end19.lr.ph
  %sub199 = phi i32 [ %sub197, %if.end19.lr.ph ], [ %sub, %if.end15.backedge.if.end19_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 237) #7
  %38 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %intrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %39)
  %cmp25.not = icmp eq i32 %15, %39
  br i1 %cmp25.not, label %if.then38, label %if.end19.if.end68_crit_edge

if.end19.if.end68_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then38:                                        ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %40 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call40189 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %41 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %intrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %42)
  %cmp43.not190.not = icmp eq i32 %15, %42
  br i1 %cmp43.not190.not, label %if.then38.if.end62_crit_edge, label %if.then38.for.end_crit_edge

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then38.if.end62_crit_edge:                     ; preds = %if.then38
  br label %if.end62

if.end62:                                         ; preds = %cleanup.if.end62_crit_edge, %if.then38.if.end62_crit_edge
  %__ret39.1196 = phi i32 [ %__ret39.1, %cleanup.if.end62_crit_edge ], [ %sub199, %if.then38.if.end62_crit_edge ]
  %call40195 = phi i32 [ %call40, %cleanup.if.end62_crit_edge ], [ %call40189, %if.then38.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40195)
  %tobool63.not = icmp eq i32 %call40195, 0
  br i1 %tobool63.not, label %cleanup, label %if.end62.__out_crit_edge

if.end62.__out_crit_edge:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end62
  %call66 = call i32 @schedule_timeout(i32 noundef %__ret39.1196) #7
  %call40 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %43 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %intrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %44)
  %cmp43.not = icmp eq i32 %15, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool49.not = icmp eq i32 %call66, 0
  %spec.store.select117 = select i1 %tobool49.not, i32 1, i32 %call66
  %__ret39.1 = select i1 %cmp43.not, i32 %call66, i32 %spec.store.select117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret39.1)
  %tobool56.not = icmp eq i32 %__ret39.1, 0
  %not.cmp43.not = xor i1 %cmp43.not, true
  %45 = select i1 %not.cmp43.not, i1 true, i1 %tobool56.not
  br i1 %45, label %cleanup.for.end_crit_edge, label %cleanup.if.end62_crit_edge

cleanup.if.end62_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then38.for.end_crit_edge
  %__ret39.1.lcssa = phi i32 [ %sub199, %if.then38.for.end_crit_edge ], [ %__ret39.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end62.__out_crit_edge
  %__ret39.2173 = phi i32 [ %__ret39.1.lcssa, %for.end ], [ %call40195, %if.end62.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end68

if.end68:                                         ; preds = %__out, %if.end19.if.end68_crit_edge
  %__ret.1 = phi i32 [ %sub199, %if.end19.if.end68_crit_edge ], [ %__ret39.2173, %__out ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %interrupt.i155) #7
  %46 = ptrtoint ptr %interrupt.i155 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %interrupt.i155, align 1, !annotation !60
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %recv.i157 = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %recv.i157 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %recv.i157, align 4
  %51 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy_id.i, align 4
  %call.i159 = call i32 %50(ptr noundef %52, i8 noundef zeroext 16, ptr noundef nonnull %interrupt.i155, i32 noundef 1) #7
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy_id.i, align 4
  %call3.i160 = call i32 %56(ptr noundef %58, i8 noundef zeroext 16, ptr noundef nonnull %interrupt.i155, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %interrupt.i155) #7
  %59 = ptrtoint ptr %ops.i161 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i161, align 8
  %status1.i = getelementptr inbounds %struct.tpm_class_ops, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %status1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %status1.i, align 4
  %call.i162 = call zeroext i8 %62(ptr noundef %chip) #7
  %and17.i = and i8 %call.i162, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and17.i, i8 %mask)
  %cmp.i = icmp eq i8 %and17.i, %mask
  %brmerge.i = or i1 %cmp.i, %check_cancel.not.i
  br i1 %brmerge.i, label %if.end68.wait_for_tpm_stat_cond.exit_crit_edge, label %land.lhs.true.i

if.end68.wait_for_tpm_stat_cond.exit_crit_edge:   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_for_tpm_stat_cond.exit

land.lhs.true.i:                                  ; preds = %if.end68
  %63 = ptrtoint ptr %ops.i161 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i161, align 8
  %req_canceled.i = getelementptr inbounds %struct.tpm_class_ops, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %req_canceled.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %req_canceled.i, align 4
  %call7.i = call zeroext i1 %66(ptr noundef %chip, i8 noundef zeroext %call.i162) #7
  br i1 %call7.i, label %land.lhs.true.i.wait_for_tpm_stat_cond.exit_crit_edge, label %land.lhs.true.i.do.cond84_crit_edge

land.lhs.true.i.do.cond84_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond84

land.lhs.true.i.wait_for_tpm_stat_cond.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_for_tpm_stat_cond.exit

wait_for_tpm_stat_cond.exit:                      ; preds = %land.lhs.true.i.wait_for_tpm_stat_cond.exit_crit_edge, %if.end68.wait_for_tpm_stat_cond.exit_crit_edge
  %retval.0.i163 = phi i1 [ %cmp.i, %if.end68.wait_for_tpm_stat_cond.exit_crit_edge ], [ true, %land.lhs.true.i.wait_for_tpm_stat_cond.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp74 = icmp slt i32 %__ret.1, 0
  %call72.not = xor i1 %retval.0.i163, true
  %brmerge = select i1 %cmp74, i1 true, i1 %call72.not
  br i1 %brmerge, label %wait_for_tpm_stat_cond.exit.do.cond84_crit_edge, label %if.then79

wait_for_tpm_stat_cond.exit.do.cond84_crit_edge:  ; preds = %wait_for_tpm_stat_cond.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond84

if.then79:                                        ; preds = %wait_for_tpm_stat_cond.exit
  call void @__sanitizer_cov_trace_pc() #9
  %. = select i1 %brmerge.i, i32 0, i32 -125
  br label %cleanup110

do.cond84:                                        ; preds = %wait_for_tpm_stat_cond.exit.do.cond84_crit_edge, %land.lhs.true.i.do.cond84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret.1)
  %cmp85 = icmp eq i32 %__ret.1, -512
  br i1 %cmp85, label %land.rhs, label %do.cond84.do.end91_crit_edge

do.cond84.do.end91_crit_edge:                     ; preds = %do.cond84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91

land.rhs:                                         ; preds = %do.cond84
  %67 = call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i164 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i164 to ptr
  %task88 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task88 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task88, align 8
  %call.i.i.i165 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %71 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i166 = icmp eq i32 %71, 0
  br i1 %tobool.not.i166, label %land.rhs.do.end91_crit_edge, label %freezing.exit170, !prof !61

land.rhs.do.end91_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91

freezing.exit170:                                 ; preds = %land.rhs
  %call4.i167 = call zeroext i1 @freezing_slow_path(ptr noundef %70) #7
  br i1 %call4.i167, label %land.lhs.true.critedge, label %freezing.exit170.do.end91_crit_edge

freezing.exit170.do.end91_crit_edge:              ; preds = %freezing.exit170
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91

do.end91:                                         ; preds = %freezing.exit170.do.end91_crit_edge, %land.rhs.do.end91_crit_edge, %do.cond84.do.end91_crit_edge
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  call void @disable_irq_nosync(i32 noundef %73) #7
  br label %cleanup110

do.body93:                                        ; preds = %do.cond104.do.body93_crit_edge, %do.body93.preheader
  call void @msleep(i32 noundef 5) #7
  %74 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops, align 8
  %status94 = getelementptr inbounds %struct.tpm_class_ops, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %status94 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %status94, align 4
  %call95 = call zeroext i8 %77(ptr noundef %chip) #7
  %and98151 = and i8 %call95, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and98151, i8 %mask)
  %cmp100 = icmp eq i8 %and98151, %mask
  br i1 %cmp100, label %do.body93.cleanup110_crit_edge, label %do.cond104

do.body93.cleanup110_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

do.cond104:                                       ; preds = %do.body93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %sub105 = sub i32 %78, %add
  %cmp106 = icmp slt i32 %sub105, 0
  br i1 %cmp106, label %do.cond104.do.body93_crit_edge, label %do.cond104.cleanup110_crit_edge

do.cond104.cleanup110_crit_edge:                  ; preds = %do.cond104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup110

do.cond104.do.body93_crit_edge:                   ; preds = %do.cond104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

cleanup110:                                       ; preds = %do.cond104.cleanup110_crit_edge, %do.body93.cleanup110_crit_edge, %do.end91, %if.then79, %if.end15.backedge.cleanup110_crit_edge, %if.then6.cleanup110_crit_edge, %entry.cleanup110_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup110_crit_edge ], [ %., %if.then79 ], [ -62, %do.end91 ], [ -1, %if.then6.cleanup110_crit_edge ], [ -62, %do.cond104.cleanup110_crit_edge ], [ 0, %do.body93.cleanup110_crit_edge ], [ -1, %if.end15.backedge.cleanup110_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_do_selftest(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @st33zp24_req_canceled(ptr nocapture noundef readnone %chip, i8 noundef zeroext %status) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %status)
  %cmp = icmp eq i8 %status, 64
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_recv(ptr noundef %chip, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %data.i34 = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chip, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count)
  %cmp = icmp ult i32 %count, 10
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end2:                                          ; preds = %if.end
  %call = tail call fastcc i32 @recv_data(ptr noundef nonnull %chip, ptr noundef %buf, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call)
  %cmp3 = icmp slt i32 %call, 10
  br i1 %cmp3, label %if.end2.out.sink.split_crit_edge, label %if.end5

if.end2.out.sink.split_crit_edge:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

if.end5:                                          ; preds = %if.end2
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp6 = icmp ugt i32 %1, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp7 = icmp ult i32 %1, 10
  %or.cond = or i1 %cmp6, %cmp7
  br i1 %or.cond, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end5
  %arrayidx = getelementptr i8, ptr %buf, i32 10
  %sub = add i32 %1, -10
  %call10 = tail call fastcc i32 @recv_data(ptr noundef nonnull %chip, ptr noundef %arrayidx, i32 noundef %sub)
  %add = add i32 %call10, %call
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp11 = icmp ult i32 %add, %1
  br i1 %cmp11, label %if.end9.out.sink.split_crit_edge, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9.out.sink.split_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end9.out.sink.split_crit_edge, %if.end2.out.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.14, %if.end2.out.sink.split_crit_edge ], [ @.str.17, %if.end9.out.sink.split_crit_edge ]
  %size.0.ph = phi i32 [ %call, %if.end2.out.sink.split_crit_edge ], [ -62, %if.end9.out.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %chip, ptr noundef nonnull %.str.17.sink) #10
  br label %out

out:                                              ; preds = %out.sink.split, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %size.0 = phi i32 [ %add, %if.end9.out_crit_edge ], [ -5, %if.end.out_crit_edge ], [ -5, %if.end5.out_crit_edge ], [ %size.0.ph, %out.sink.split ]
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %data.i, align 1
  %ops.i = getelementptr inbounds %struct.st33zp24_dev, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %phy_id.i = getelementptr inbounds %struct.st33zp24_dev, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_id.i, align 4
  %call1.i = call i32 %8(ptr noundef %10, i8 noundef zeroext 24, ptr noundef nonnull %data.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i34) #7
  %13 = ptrtoint ptr %data.i34 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %data.i34, align 1
  %ops.i36 = getelementptr inbounds %struct.st33zp24_dev, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i36, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %phy_id.i37 = getelementptr inbounds %struct.st33zp24_dev, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %phy_id.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_id.i37, align 4
  %call1.i38 = call i32 %17(ptr noundef %19, i8 noundef zeroext 0, ptr noundef nonnull %data.i34, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i34) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size.0, %out ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st33zp24_send(ptr noundef %chip, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data.i149 = alloca i8, align 1
  %data.i144 = alloca i8, align 1
  %data.i138 = alloca i8, align 1
  %data.i132 = alloca i8, align 1
  %temp.i = alloca i8, align 1
  %data.i122 = alloca i8, align 1
  %data.i = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %len)
  %cmp = icmp ult i32 %len, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @request_locality(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %data.i, align 1, !annotation !60
  %ops.i = getelementptr inbounds %struct.st33zp24_dev, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %recv.i = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %recv.i, align 4
  %phy_id.i = getelementptr inbounds %struct.st33zp24_dev, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_id.i, align 4
  %call1.i = call i32 %9(ptr noundef %11, i8 noundef zeroext 24, ptr noundef nonnull %data.i, i32 noundef 1) #7
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  %14 = and i8 %13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp6 = icmp eq i8 %14, 0
  br i1 %cmp6, label %if.then8, label %if.end4.for.body.lr.ph_crit_edge

if.end4.for.body.lr.ph_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.then8:                                         ; preds = %if.end4
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i122) #7
  %17 = ptrtoint ptr %data.i122 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %data.i122, align 1
  %ops.i124 = getelementptr inbounds %struct.st33zp24_dev, ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i124 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i124, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %phy_id.i125 = getelementptr inbounds %struct.st33zp24_dev, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %phy_id.i125 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_id.i125, align 4
  %call1.i126 = call i32 %21(ptr noundef %23, i8 noundef zeroext 24, ptr noundef nonnull %data.i122, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i122) #7
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %24 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout_b, align 4
  %read_queue = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 7
  %call9 = call fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext 64, i32 noundef %25, ptr noundef %read_queue, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.out_err_crit_edge, label %if.then8.for.body.lr.ph_crit_edge

if.then8.for.body.lr.ph_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.then8.out_err_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

for.body.lr.ph:                                   ; preds = %if.then8.for.body.lr.ph_crit_edge, %if.end4.for.body.lr.ph_crit_edge
  %sub = add i32 %len, -1
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %ops = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 2
  %phy_id = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end21
  %add = add i32 %51, %i.0159
  %cmp15 = icmp ult i32 %add, %sub
  br i1 %cmp15, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #7
  %28 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %temp.i, align 1, !annotation !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %30 = ptrtoint ptr %timeout_d.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeout_d.i, align 4
  %ops.i128 = getelementptr inbounds %struct.st33zp24_dev, ptr %27, i32 0, i32 2
  %phy_id.i129 = getelementptr inbounds %struct.st33zp24_dev, ptr %27, i32 0, i32 1
  %32 = add i32 %31, %29
  br label %do.body.i

do.body.i:                                        ; preds = %if.end12.i.do.body.i_crit_edge, %for.body
  %33 = ptrtoint ptr %ops.i128 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i128, align 4
  %recv.i130 = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %recv.i130 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %recv.i130, align 4
  %37 = ptrtoint ptr %phy_id.i129 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_id.i129, align 4
  %call1.i131 = call i32 %36(ptr noundef %38, i8 noundef zeroext 25, ptr noundef nonnull %temp.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %cmp.i = icmp slt i32 %call1.i131, 0
  br i1 %cmp.i, label %do.body.i.get_burstcount.exit.thread_crit_edge, label %if.end.i

do.body.i.get_burstcount.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_burstcount.exit.thread

if.end.i:                                         ; preds = %do.body.i
  %39 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %temp.i, align 1
  %41 = ptrtoint ptr %ops.i128 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i128, align 4
  %recv3.i = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %recv3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %recv3.i, align 4
  %45 = ptrtoint ptr %phy_id.i129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy_id.i129, align 4
  %call5.i = call i32 %44(ptr noundef %46, i8 noundef zeroext 26, ptr noundef nonnull %temp.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.get_burstcount.exit.thread_crit_edge, label %if.end9.i

if.end.i.get_burstcount.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_burstcount.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %conv.i = zext i8 %40 to i32
  %47 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %temp.i, align 1
  %conv10.i = zext i8 %48 to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %or.i = or i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end21

if.end12.i:                                       ; preds = %if.end9.i
  call void @msleep(i32 noundef 5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %49, %32
  %cmp13.i = icmp slt i32 %sub.i, 0
  br i1 %cmp13.i, label %if.end12.i.do.body.i_crit_edge, label %if.end12.i.get_burstcount.exit.thread_crit_edge

if.end12.i.get_burstcount.exit.thread_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_burstcount.exit.thread

if.end12.i.do.body.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

get_burstcount.exit.thread:                       ; preds = %if.end12.i.get_burstcount.exit.thread_crit_edge, %if.end.i.get_burstcount.exit.thread_crit_edge, %do.body.i.get_burstcount.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #7
  %50 = xor i32 %i.0159, -1
  %sub23 = add i32 %50, %len
  %51 = call i32 @llvm.smin.i32(i32 %sub23, i32 %or.i)
  %52 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy_id, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.0159
  %call26 = call i32 %55(ptr noundef %57, i8 noundef zeroext 36, ptr noundef %add.ptr, i32 noundef %51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end21.out_err_crit_edge, label %for.cond

if.end21.out_err_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

for.end:                                          ; preds = %for.cond
  %58 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i132) #7
  %60 = ptrtoint ptr %data.i132 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %data.i132, align 1, !annotation !60
  %ops.i134 = getelementptr inbounds %struct.st33zp24_dev, ptr %59, i32 0, i32 2
  %61 = ptrtoint ptr %ops.i134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i134, align 4
  %recv.i135 = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %recv.i135 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %recv.i135, align 4
  %phy_id.i136 = getelementptr inbounds %struct.st33zp24_dev, ptr %59, i32 0, i32 1
  %65 = ptrtoint ptr %phy_id.i136 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %phy_id.i136, align 4
  %call1.i137 = call i32 %64(ptr noundef %66, i8 noundef zeroext 24, ptr noundef nonnull %data.i132, i32 noundef 1) #7
  %67 = ptrtoint ptr %data.i132 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %data.i132, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i132) #7
  %69 = and i8 %68, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp34 = icmp eq i8 %69, 0
  br i1 %cmp34, label %for.end.out_err_crit_edge, label %if.end37

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end37:                                         ; preds = %for.end
  %ops38 = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %ops38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops38, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %phy_id40 = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %phy_id40 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy_id40, align 4
  %add.ptr41 = getelementptr i8, ptr %buf, i32 %len
  %add.ptr42 = getelementptr i8, ptr %add.ptr41, i32 -1
  %call43 = call i32 %73(ptr noundef %75, i8 noundef zeroext 36, ptr noundef %add.ptr42, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end37.out_err_crit_edge, label %if.end47

if.end37.out_err_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end47:                                         ; preds = %if.end37
  %76 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i138) #7
  %78 = ptrtoint ptr %data.i138 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %data.i138, align 1, !annotation !60
  %ops.i140 = getelementptr inbounds %struct.st33zp24_dev, ptr %77, i32 0, i32 2
  %79 = ptrtoint ptr %ops.i140 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i140, align 4
  %recv.i141 = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %recv.i141 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %recv.i141, align 4
  %phy_id.i142 = getelementptr inbounds %struct.st33zp24_dev, ptr %77, i32 0, i32 1
  %83 = ptrtoint ptr %phy_id.i142 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy_id.i142, align 4
  %call1.i143 = call i32 %82(ptr noundef %84, i8 noundef zeroext 24, ptr noundef nonnull %data.i138, i32 noundef 1) #7
  %85 = ptrtoint ptr %data.i138 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %data.i138, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i138) #7
  %87 = and i8 %86, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp51.not = icmp eq i8 %87, 0
  br i1 %cmp51.not, label %if.end54, label %if.end47.out_err_crit_edge

if.end47.out_err_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end54:                                         ; preds = %if.end47
  %88 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 32, ptr %data, align 1
  %89 = ptrtoint ptr %ops38 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops38, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %phy_id40 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %phy_id40, align 4
  %call58 = call i32 %92(ptr noundef %94, i8 noundef zeroext 24, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end54.out_err_crit_edge, label %if.end62

if.end54.out_err_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end62:                                         ; preds = %if.end54
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  %and63 = and i32 %96, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool.not = icmp eq i32 %and63, 0
  br i1 %tobool.not, label %if.end62.cleanup_crit_edge, label %if.then64

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %if.end62
  %add.ptr65 = getelementptr i8, ptr %buf, i32 6
  %97 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr65, align 4
  %call66 = call i32 @tpm_calc_ordinal_duration(ptr noundef %chip, i32 noundef %98) #7
  %read_queue67 = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 7
  %call68 = call fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext -112, i32 noundef %call66, ptr noundef %read_queue67, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then64.out_err_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64.out_err_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

out_err:                                          ; preds = %if.then64.out_err_crit_edge, %if.end54.out_err_crit_edge, %if.end47.out_err_crit_edge, %if.end37.out_err_crit_edge, %for.end.out_err_crit_edge, %if.end21.out_err_crit_edge, %if.then8.out_err_crit_edge
  %ret.0 = phi i32 [ %call43, %if.end37.out_err_crit_edge ], [ %call58, %if.end54.out_err_crit_edge ], [ %call68, %if.then64.out_err_crit_edge ], [ -62, %if.then8.out_err_crit_edge ], [ -5, %for.end.out_err_crit_edge ], [ -5, %if.end47.out_err_crit_edge ], [ %call26, %if.end21.out_err_crit_edge ]
  %99 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i144) #7
  %101 = ptrtoint ptr %data.i144 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 64, ptr %data.i144, align 1
  %ops.i146 = getelementptr inbounds %struct.st33zp24_dev, ptr %100, i32 0, i32 2
  %102 = ptrtoint ptr %ops.i146 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops.i146, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %phy_id.i147 = getelementptr inbounds %struct.st33zp24_dev, ptr %100, i32 0, i32 1
  %106 = ptrtoint ptr %phy_id.i147 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy_id.i147, align 4
  %call1.i148 = call i32 %105(ptr noundef %107, i8 noundef zeroext 24, ptr noundef nonnull %data.i144, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i144) #7
  %108 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i149) #7
  %110 = ptrtoint ptr %data.i149 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 32, ptr %data.i149, align 1
  %ops.i151 = getelementptr inbounds %struct.st33zp24_dev, ptr %109, i32 0, i32 2
  %111 = ptrtoint ptr %ops.i151 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i151, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %phy_id.i152 = getelementptr inbounds %struct.st33zp24_dev, ptr %109, i32 0, i32 1
  %115 = ptrtoint ptr %phy_id.i152 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %phy_id.i152, align 4
  %call1.i153 = call i32 %114(ptr noundef %116, i8 noundef zeroext 0, ptr noundef nonnull %data.i149, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i149) #7
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then64.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %get_burstcount.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ -16, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %if.then64.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ], [ -16, %get_burstcount.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st33zp24_cancel(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %data, align 1
  %ops = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %phy_id = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_id, align 4
  %call1 = call i32 %6(ptr noundef %8, i8 noundef zeroext 24, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @st33zp24_status(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !60
  %ops = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %recv = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %recv, align 4
  %phy_id = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_id, align 4
  %call1 = call i32 %6(ptr noundef %8, i8 noundef zeroext 24, ptr noundef nonnull %data, i32 noundef 1) #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i8 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_data(ptr noundef %chip, ptr noundef %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %temp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp34.not = icmp eq i32 %count, 0
  br i1 %cmp34.not, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %read_queue = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 7
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %ops = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 2
  %phy_id = getelementptr inbounds %struct.st33zp24_dev, ptr %1, i32 0, i32 1
  br label %land.rhs

while.cond:                                       ; preds = %if.end
  %add = add i32 %28, %size.035
  %cmp = icmp ult i32 %add, %count
  br i1 %cmp, label %while.cond.land.rhs_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %size.035 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add, %while.cond.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_c, align 8
  %call1 = call fastcc i32 @wait_for_stat(ptr noundef %chip, i8 noundef zeroext -112, i32 noundef %3, ptr noundef %read_queue, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp.i) #7
  %6 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %temp.i, align 1, !annotation !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %timeout_d.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout_d.i, align 4
  %ops.i = getelementptr inbounds %struct.st33zp24_dev, ptr %5, i32 0, i32 2
  %phy_id.i = getelementptr inbounds %struct.st33zp24_dev, ptr %5, i32 0, i32 1
  %10 = add i32 %9, %7
  br label %do.body.i

do.body.i:                                        ; preds = %if.end12.i.do.body.i_crit_edge, %while.body
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %recv.i = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %recv.i, align 4
  %15 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_id.i, align 4
  %call1.i = call i32 %14(ptr noundef %16, i8 noundef zeroext 25, ptr noundef nonnull %temp.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i.get_burstcount.exit.thread_crit_edge, label %if.end.i

do.body.i.get_burstcount.exit.thread_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_burstcount.exit.thread

if.end.i:                                         ; preds = %do.body.i
  %17 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %temp.i, align 1
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %recv3.i = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %recv3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %recv3.i, align 4
  %23 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_id.i, align 4
  %call5.i = call i32 %22(ptr noundef %24, i8 noundef zeroext 26, ptr noundef nonnull %temp.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.get_burstcount.exit.thread_crit_edge, label %if.end9.i

if.end.i.get_burstcount.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_burstcount.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %conv.i = zext i8 %18 to i32
  %25 = ptrtoint ptr %temp.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %temp.i, align 1
  %conv10.i = zext i8 %26 to i32
  %shl.i = shl nuw nsw i32 %conv10.i, 8
  %or.i = or i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end

if.end12.i:                                       ; preds = %if.end9.i
  call void @msleep(i32 noundef 5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %27, %10
  %cmp13.i = icmp slt i32 %sub.i, 0
  br i1 %cmp13.i, label %if.end12.i.do.body.i_crit_edge, label %if.end12.i.get_burstcount.exit.thread_crit_edge

if.end12.i.get_burstcount.exit.thread_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_burstcount.exit.thread

if.end12.i.do.body.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

get_burstcount.exit.thread:                       ; preds = %if.end12.i.get_burstcount.exit.thread_crit_edge, %if.end.i.get_burstcount.exit.thread_crit_edge, %do.body.i.get_burstcount.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp.i) #7
  %sub = sub i32 %count, %size.035
  %28 = call i32 @llvm.smin.i32(i32 %or.i, i32 %sub)
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %recv = getelementptr inbounds %struct.st33zp24_phy_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %recv, align 4
  %33 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_id, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %size.035
  %call6 = call i32 %32(ptr noundef %34, i8 noundef zeroext 36, ptr noundef %add.ptr, i32 noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %get_burstcount.exit.thread, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %get_burstcount.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %add, %while.cond.cleanup_crit_edge ], [ %size.035, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_calc_ordinal_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @st33zp24_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 468, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 478, i32 24}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 481, i32 4}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @st33zp24_probe._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @st33zp24_probe._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 509, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @st33zp24_probe._entry.7, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @st33zp24_probe._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_st33zp24_probe, !19, !"__ksymtab_st33zp24_probe", i1 false, i1 false}
!19 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 512, i32 1}
!20 = !{ptr @__ksymtab_st33zp24_remove, !21, !"__ksymtab_st33zp24_remove", i1 false, i1 false}
!21 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 519, i32 1}
!22 = !{ptr @__ksymtab_st33zp24_pm_suspend, !23, !"__ksymtab_st33zp24_pm_suspend", i1 false, i1 false}
!23 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 536, i32 1}
!24 = !{ptr @__ksymtab_st33zp24_pm_resume, !25, !"__ksymtab_st33zp24_pm_resume", i1 false, i1 false}
!25 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 556, i32 1}
!26 = !{ptr @__UNIQUE_ID_author250, !27, !"__UNIQUE_ID_author250", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 559, i32 1}
!28 = !{ptr @__UNIQUE_ID_description251, !29, !"__UNIQUE_ID_description251", i1 false, i1 false}
!29 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 560, i32 1}
!30 = !{ptr @__UNIQUE_ID_version252, !31, !"__UNIQUE_ID_version252", i1 false, i1 false}
!31 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 561, i32 1}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__modver_attr, !31, !"__modver_attr", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_file253, !37, !"__UNIQUE_ID_file253", i1 false, i1 false}
!37 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 562, i32 1}
!38 = !{ptr @__UNIQUE_ID_license254, !37, !"__UNIQUE_ID_license254", i1 false, i1 false}
!39 = !{ptr @st33zp24_tpm, !40, !"st33zp24_tpm", i1 false, i1 false}
!40 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 424, i32 35}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 396, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @st33zp24_recv._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @st33zp24_recv._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/st33zp24/st33zp24.c", i32 409, i32 3}
!48 = !{ptr @st33zp24_recv._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st33zp24_recv._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 2000, i32 1}
