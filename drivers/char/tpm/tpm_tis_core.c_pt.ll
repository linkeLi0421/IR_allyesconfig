; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_tis_core.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_tis_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tpm_tis_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm_tis_remove\09\09\09\09"
module asm "\09.long\09__crc_tpm_tis_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_tis_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_tis_remove\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_tis_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tpm_tis_core_init\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm_tis_core_init\09\09\09\09"
module asm "\09.long\09__crc_tpm_tis_core_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_tis_core_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_tis_core_init\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_tis_core_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tpm_tis_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm_tis_resume\09\09\09\09"
module asm "\09.long\09__crc_tpm_tis_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_tis_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_tis_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_tis_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.tis_vendor_timeout_override = type { i32, [4 x i32] }
%struct.tis_vendor_durations_override = type { i32, %struct.tpm1_version, [3 x i32] }
%struct.tpm1_version = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.tpm_tis_data = type { i16, i32, i32, i8, i32, ptr, i16, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i16, i32, i32 }
%struct.tpm_tis_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.cap_t = type { %struct.timeout_t, [8 x i8] }
%struct.timeout_t = type { i32, i32, i32, i32 }
%struct.tpm1_version2 = type { i16, %struct.tpm1_version }

@__kstrtab_tpm_tis_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_tis_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_tis_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_tis_remove to i32), ptr @__kstrtab_tpm_tis_remove, ptr @__kstrtabns_tpm_tis_remove }, section "___ksymtab_gpl+tpm_tis_remove", align 4
@tpm_tis = internal constant { %struct.tpm_class_ops, [40 x i8] } { %struct.tpm_class_ops { i32 1, i8 -112, i8 -112, ptr @tpm_tis_req_canceled, ptr @tpm_tis_recv, ptr @tpm_tis_send, ptr @tpm_tis_ready, ptr @tpm_tis_status, ptr @tpm_tis_update_timeouts, ptr @tpm_tis_update_durations, ptr null, ptr null, ptr @request_locality, ptr @release_locality, ptr @tpm_tis_clkrun_enable }, [40 x i8] zeroinitializer }, align 32
@tpm_tis_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s TPM (device-id 0x%X, rev-id %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm_tis_core_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/tpm/tpm_tis_core.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm_tis_core_init._entry_ptr = internal global ptr @tpm_tis_core_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpm_tis_core\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TPM interface capabilities (0x%x):\0A\00", [60 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09Burst Count Static\0A\00", [43 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09Command Ready Int Support\0A\00", [36 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 1, i8 4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09Interrupt Edge Falling\0A\00", [39 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 1, i8 4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09Interrupt Edge Rising\0A\00", [40 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09Interrupt Level Low\0A\00", [42 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09Interrupt Level High\0A\00", [41 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\09Locality Change Int Support\0A\00", [34 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 1, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09Sts Valid Int Support\0A\00", [40 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 1, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09Data Avail Int Support\0A\00", [39 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->read_queue\00", [46 x i8] zeroinitializer }, align 32
@tpm_tis_core_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->int_queue\00", [47 x i8] zeroinitializer }, align 32
@tpm_tis_core_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1074, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not get TPM timeouts and durations\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tpm_tis_core_init._entry_ptr.24 = internal global ptr @tpm_tis_core_init._entry.21, section ".printk_index", align 4
@tpm_tis_core_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 1084, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[Firmware Bug]: TPM interrupt not working, polling instead\0A\00", [36 x i8] zeroinitializer }, align 32
@tpm_tis_core_init._entry_ptr.27 = internal global ptr @tpm_tis_core_init._entry.25, section ".printk_index", align 4
@__kstrtab_tpm_tis_core_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_tis_core_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_tis_core_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_tis_core_init to i32), ptr @__kstrtab_tpm_tis_core_init, ptr @__kstrtabns_tpm_tis_core_init }, section "___ksymtab_gpl+tpm_tis_core_init", align 4
@__kstrtab_tpm_tis_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_tis_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_tis_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_tis_resume to i32), ptr @__kstrtab_tpm_tis_resume, ptr @__kstrtabns_tpm_tis_resume }, section "___ksymtab_gpl+tpm_tis_resume", align 4
@__UNIQUE_ID_author268 = internal constant [65 x i8] c"tpm_tis_core.author=Leendert van Doorn (leendert@watson.ibm.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [36 x i8] c"tpm_tis_core.description=TPM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version270 = internal constant [25 x i8] c"tpm_tis_core.version=2.0\00", section ".modinfo", align 1
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.7, ptr @.str.5 }, section "__modver", align 4
@__UNIQUE_ID_file271 = internal constant [48 x i8] c"tpm_tis_core.file=drivers/char/tpm/tpm_tis_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [25 x i8] c"tpm_tis_core.license=GPL\00", section ".modinfo", align 1
@tpm_tis_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 301, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to read header\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpm_tis_recv\00", [19 x i8] zeroinitializer }, align 32
@tpm_tis_recv._entry_ptr = internal global ptr @tpm_tis_recv._entry, section ".printk_index", align 4
@tpm_tis_recv._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 314, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to read remainder of result\0A\00", [60 x i8] zeroinitializer }, align 32
@tpm_tis_recv._entry_ptr.33 = internal global ptr @tpm_tis_recv._entry.31, section ".printk_index", align 4
@tpm_tis_recv._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 326, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error left over data\0A\00", [42 x i8] zeroinitializer }, align 32
@tpm_tis_recv._entry_ptr.36 = internal global ptr @tpm_tis_recv._entry.34, section ".printk_index", align 4
@recv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 271, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to read burstcount\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"recv_data\00", [22 x i8] zeroinitializer }, align 32
@recv_data._entry_ptr = internal global ptr @recv_data._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@tpm_tis_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.39, ptr @.str.2, i32 362, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm_tis_send_data\00", [46 x i8] zeroinitializer }, align 32
@tpm_tis_send_data._entry_ptr = internal global ptr @tpm_tis_send_data._entry, section ".printk_index", align 4
@tpm_tis_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 208, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"invalid TPM_STS.x 0x%02x, dumping stack for forensics\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tpm_tis_status\00", [17 x i8] zeroinitializer }, align 32
@tpm_tis_status._entry_ptr = internal global ptr @tpm_tis_status._entry, section ".printk_index", align 4
@tpm_tis_update_timeouts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 595, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to read did_vid: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tpm_tis_update_timeouts\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tpm_tis_update_timeouts._entry_ptr = internal global ptr @tpm_tis_update_timeouts._entry, section ".printk_index", align 4
@vendor_timeout_overrides = internal constant { [1 x %struct.tis_vendor_timeout_override], [44 x i8] } { [1 x %struct.tis_vendor_timeout_override] [%struct.tis_vendor_timeout_override { i32 839127316, [4 x i32] [i32 750000, i32 2000000, i32 750000, i32 750000] }], [44 x i8] zeroinitializer }, align 32
@tpm_tis_update_durations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 521, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to read did_vid. %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tpm_tis_update_durations\00", [39 x i8] zeroinitializer }, align 32
@tpm_tis_update_durations._entry_ptr = internal global ptr @tpm_tis_update_durations._entry, section ".printk_index", align 4
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"attempting to determine the 1.2 version\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"attempting to determine the 1.1 version\00", [56 x i8] zeroinitializer }, align 32
@vendor_dur_overrides = internal constant { [1 x %struct.tis_vendor_durations_override], [44 x i8] } { [1 x %struct.tis_vendor_durations_override] [%struct.tis_vendor_durations_override { i32 4170, %struct.tpm1_version { i8 1, i8 2, i8 8, i8 28 }, [3 x i32] [i32 12000, i32 12000, i32 12000] }], [44 x i8] zeroinitializer }, align 32
@probe_itpm.cmd_getticks = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\C1\00\00\00\0A\00\00\00\F1", [22 x i8] zeroinitializer }, align 32
@probe_itpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 654, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Detected an iTPM.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"probe_itpm\00", [21 x i8] zeroinitializer }, align 32
@probe_itpm._entry_ptr = internal global ptr @probe_itpm._entry, section ".printk_index", align 4
@tpm_tis_probe_irq_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 753, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to request irq: %d for probe\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tpm_tis_probe_irq_single\00", [39 x i8] zeroinitializer }, align 32
@tpm_tis_probe_irq_single._entry_ptr = internal global ptr @tpm_tis_probe_irq_single._entry, section ".printk_index", align 4
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"attempting to generate an interrupt\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4170, i64 4176]
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"tpm_tis\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 906, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1019, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1034, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1037, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1039, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1041, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1043, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1045, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1047, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1049, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1051, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1053, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1056, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1057, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1074, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1083, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1178, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 301, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 314, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 326, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 271, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 362, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 207, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 594, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"vendor_timeout_overrides\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 574, i32 49 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 520, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 527, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 533, i32 6 }
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"vendor_dur_overrides\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 497, i32 52 }
@___asan_gen_.222 = private unnamed_addr constant [13 x i8] c"cmd_getticks\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 623, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 654, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 752, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [35 x i8] c"../drivers/char/tpm/tpm_tis_core.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 719, i32 21 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__UNIQUE_ID_version270, ptr @__ksymtab_tpm_tis_core_init, ptr @__ksymtab_tpm_tis_remove, ptr @__ksymtab_tpm_tis_resume, ptr @__modver_attr, ptr @probe_itpm._entry, ptr @probe_itpm._entry_ptr, ptr @recv_data._entry, ptr @recv_data._entry_ptr, ptr @tpm_tis_core_init._entry, ptr @tpm_tis_core_init._entry.21, ptr @tpm_tis_core_init._entry.25, ptr @tpm_tis_core_init._entry_ptr, ptr @tpm_tis_core_init._entry_ptr.24, ptr @tpm_tis_core_init._entry_ptr.27, ptr @tpm_tis_probe_irq_single._entry, ptr @tpm_tis_probe_irq_single._entry_ptr, ptr @tpm_tis_recv._entry, ptr @tpm_tis_recv._entry.31, ptr @tpm_tis_recv._entry.34, ptr @tpm_tis_recv._entry_ptr, ptr @tpm_tis_recv._entry_ptr.33, ptr @tpm_tis_recv._entry_ptr.36, ptr @tpm_tis_send_data._entry, ptr @tpm_tis_send_data._entry_ptr, ptr @tpm_tis_status._entry, ptr @tpm_tis_status._entry_ptr, ptr @tpm_tis_update_durations._entry, ptr @tpm_tis_update_durations._entry_ptr, ptr @tpm_tis_update_timeouts._entry, ptr @tpm_tis_update_timeouts._entry_ptr, ptr @tpm_tis, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @tpm_tis_core_init.__key, ptr @.str.18, ptr @tpm_tis_core_init.__key.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @vendor_timeout_overrides, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @vendor_dur_overrides, ptr @probe_itpm.cmd_getticks, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_core_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_core_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_core_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_core_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_recv._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_recv._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_update_timeouts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_timeout_overrides to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_update_durations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_dur_overrides to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_itpm.cmd_getticks to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probe_itpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_tis_probe_irq_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm_tis_remove(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  %interrupt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %locality, align 4
  %shl = shl i32 %3, 12
  %or = or i32 %shl, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interrupt) #8
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %interrupt, align 4, !annotation !145
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_ops.i, align 4
  %read32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %8(ptr noundef %1, i32 noundef %or, ptr noundef nonnull %interrupt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %interrupt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interrupt, align 4
  %and = and i32 %11, 2147483647
  %12 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i, align 4
  %call.i14 = call i32 %15(ptr noundef %1, i32 noundef %or, i32 noundef %and) #8
  %ilb_base_addr = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %ilb_base_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ilb_base_addr, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %17) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interrupt) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tpm_tis_clkrun_enable(ptr nocapture noundef %chip, i1 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_core_init(ptr noundef %dev, ptr noundef %priv, i32 noundef %irq, ptr noundef %phy_ops, ptr nocapture readnone %acpi_dev_handle) #0 align 64 {
entry:
  %interrupt.i = alloca i32, align 4
  %value.addr.i.i472 = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %access.i = alloca i8, align 1
  %vendor = alloca i32, align 4
  %intfcaps = alloca i32, align 4
  %intmask = alloca i32, align 4
  %rid = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendor) #8
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vendor, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intfcaps) #8
  %1 = ptrtoint ptr %intfcaps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %intfcaps, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intmask) #8
  %2 = ptrtoint ptr %intmask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %intmask, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rid) #8
  %3 = ptrtoint ptr %rid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %rid, align 1, !annotation !145
  %call = tail call ptr @tpmm_chip_alloc(ptr noundef %dev, ptr noundef nonnull @tpm_tis) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %rng_quality = getelementptr inbounds %struct.tpm_tis_data, ptr %priv, i32 0, i32 10
  %5 = ptrtoint ptr %rng_quality to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rng_quality, align 4
  %quality = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 13, i32 7
  %7 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %quality, align 4
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %timeout_a to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 75, ptr %timeout_a, align 8
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 16
  %9 = ptrtoint ptr %timeout_b to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 200, ptr %timeout_b, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 17
  %10 = ptrtoint ptr %timeout_c to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 75, ptr %timeout_c, align 8
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 18
  %11 = ptrtoint ptr %timeout_d to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 75, ptr %timeout_d, align 4
  %timeout_min = getelementptr inbounds %struct.tpm_tis_data, ptr %priv, i32 0, i32 11
  %12 = ptrtoint ptr %timeout_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 100, ptr %timeout_min, align 4
  %timeout_max = getelementptr inbounds %struct.tpm_tis_data, ptr %priv, i32 0, i32 12
  %13 = ptrtoint ptr %timeout_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 500, ptr %timeout_max, align 4
  %phy_ops7 = getelementptr inbounds %struct.tpm_tis_data, ptr %priv, i32 0, i32 9
  %14 = ptrtoint ptr %phy_ops7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %phy_ops, ptr %phy_ops7, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %priv, ptr %driver_data.i, align 4
  %16 = load ptr, ptr %phy_ops7, align 4
  %read32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %18(ptr noundef %priv, i32 noundef 3840, ptr noundef nonnull %vendor) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %19 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vendor, align 4
  %conv = trunc i32 %20 to i16
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %priv, align 4
  %conv13 = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4372, i32 %conv13)
  %cmp14 = icmp eq i32 %conv13, 4372
  br i1 %cmp14, label %land.lhs.true, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 9
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then16, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %timeout_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 14700, ptr %timeout_min, align 4
  %25 = ptrtoint ptr %timeout_max to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 15000, ptr %timeout_max, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %land.lhs.true.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %ops = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 5
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 8
  %clk_enable = getelementptr inbounds %struct.tpm_class_ops, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_enable, align 4
  %cmp36.not = icmp eq ptr %29, null
  br i1 %cmp36.not, label %if.end19.if.end41_crit_edge, label %if.then38

if.end19.if.end41_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void %29(ptr noundef %call, i1 noundef zeroext true) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end19.if.end41_crit_edge
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %timeout_a to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeout_a, align 8
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %31, i32 0, i32 9
  %35 = add i32 %34, %32
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i) #8
  %36 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %access.i, align 1, !annotation !145
  %37 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_ops.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i.i = call i32 %40(ptr noundef %31, i32 noundef 0, i16 noundef zeroext 1, ptr noundef nonnull %access.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i458 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i458, label %wait_startup.exit, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %41 = ptrtoint ptr %access.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %access.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %tobool.not.i = icmp sgt i8 %42, -1
  br i1 %tobool.not.i, label %do.cond.i, label %if.end46

do.cond.i:                                        ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 4700, i32 noundef 5000, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %43, %35
  %cmp5.i = icmp slt i32 %sub.i, 0
  br i1 %cmp5.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.out_err_crit_edge

do.cond.i.out_err_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

wait_startup.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  br label %out_err

if.end46:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %locality, align 4
  %shl = shl i32 %45, 12
  %or = or i32 %shl, 8
  %46 = ptrtoint ptr %phy_ops7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy_ops7, align 4
  %read32.i460 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %read32.i460 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i460, align 4
  %call.i461 = call i32 %49(ptr noundef %priv, i32 noundef %or, ptr noundef nonnull %intmask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i461)
  %cmp48 = icmp slt i32 %call.i461, 0
  br i1 %cmp48, label %if.end46.out_err_crit_edge, label %if.end51

if.end46.out_err_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end51:                                         ; preds = %if.end46
  %50 = ptrtoint ptr %intmask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %intmask, align 4
  %or52 = and i32 %51, 2147483512
  %and53 = or i32 %or52, 135
  store i32 %and53, ptr %intmask, align 4
  %call54 = call i32 @request_locality(ptr noundef %call, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end51.out_err_crit_edge, label %if.end58

if.end51.out_err_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end58:                                         ; preds = %if.end51
  %52 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %locality, align 4
  %shl60 = shl i32 %53, 12
  %or61 = or i32 %shl60, 8
  %54 = ptrtoint ptr %intmask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %intmask, align 4
  %56 = ptrtoint ptr %phy_ops7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy_ops7, align 4
  %write32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i, align 4
  %call.i463 = call i32 %59(ptr noundef %priv, i32 noundef %or61, i32 noundef %55) #8
  %60 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %62 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 32, ptr %value.addr.i.i, align 1
  %phy_ops.i.i465 = getelementptr inbounds %struct.tpm_tis_data, ptr %61, i32 0, i32 9
  %63 = ptrtoint ptr %phy_ops.i.i465 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy_ops.i.i465, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_bytes.i.i, align 4
  %call.i.i466 = call i32 %66(ptr noundef %61, i32 noundef 0, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %call64 = call i32 @tpm_chip_start(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end58.out_err_crit_edge

if.end58.out_err_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end67:                                         ; preds = %if.end58
  %call68 = call i32 @tpm2_probe(ptr noundef %call) #8
  call void @tpm_chip_stop(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end67.out_err_crit_edge

if.end67.out_err_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end71:                                         ; preds = %if.end67
  %67 = ptrtoint ptr %phy_ops7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy_ops7, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call.i468 = call i32 %70(ptr noundef %priv, i32 noundef 3844, i16 noundef zeroext 1, ptr noundef nonnull %rid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i468)
  %cmp73 = icmp slt i32 %call.i468, 0
  br i1 %cmp73, label %if.end71.out_err_crit_edge, label %do.end

if.end71.out_err_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.end:                                           ; preds = %if.end71
  %flags77 = getelementptr inbounds %struct.tpm_chip, ptr %call, i32 0, i32 9
  %71 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags77, align 4
  %and78 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond = select i1 %tobool79.not, ptr @.str.6, ptr @.str.5
  %73 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %vendor, align 4
  %shr = lshr i32 %74, 16
  %75 = ptrtoint ptr %rid to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rid, align 1
  %conv80 = zext i8 %76 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %shr, i32 noundef %conv80) #11
  %call81 = call fastcc i32 @probe_itpm(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.end.out_err_crit_edge, label %if.end85

do.end.out_err_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end85:                                         ; preds = %do.end
  %77 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %locality, align 4
  %shl87 = shl i32 %78, 12
  %or88 = or i32 %shl87, 20
  %79 = ptrtoint ptr %phy_ops7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy_ops7, align 4
  %read32.i470 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %read32.i470 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read32.i470, align 4
  %call.i471 = call i32 %82(ptr noundef %priv, i32 noundef %or88, ptr noundef nonnull %intfcaps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i471)
  %cmp90 = icmp slt i32 %call.i471, 0
  br i1 %cmp90, label %if.end85.out_err_crit_edge, label %do.body94

if.end85.out_err_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

do.body94:                                        ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then99)) #8
          to label %do.end102 [label %if.then99], !srcloc !146

if.then99:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %intfcaps, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %84) #8
  br label %do.end102

do.end102:                                        ; preds = %if.then99, %do.body94
  %85 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %intfcaps, align 4
  %and103 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.end102.if.end122_crit_edge, label %do.body106

do.end102.if.end122_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

do.body106:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then118)) #8
          to label %if.end122 [label %if.then118], !srcloc !146

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %do.body106, %do.end102.if.end122_crit_edge
  %87 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %intfcaps, align 4
  %and123 = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.if.end142_crit_edge, label %do.body126

if.end122.if.end142_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

do.body126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then138)) #8
          to label %if.end142 [label %if.then138], !srcloc !146

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %do.body126, %if.end122.if.end142_crit_edge
  %89 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %intfcaps, align 4
  %and143 = and i32 %90, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end142.if.end162_crit_edge, label %do.body146

if.end142.if.end162_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

do.body146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then158)) #8
          to label %if.end162 [label %if.then158], !srcloc !146

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %if.end162

if.end162:                                        ; preds = %if.then158, %do.body146, %if.end142.if.end162_crit_edge
  %91 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %intfcaps, align 4
  %and163 = and i32 %92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.end162.if.end182_crit_edge, label %do.body166

if.end162.if.end182_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

do.body166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then178)) #8
          to label %if.end182 [label %if.then178], !srcloc !146

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %do.body166, %if.end162.if.end182_crit_edge
  %93 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %intfcaps, align 4
  %and183 = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.end182.if.end202_crit_edge, label %do.body186

if.end182.if.end202_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

do.body186:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then198)) #8
          to label %if.end202 [label %if.then198], !srcloc !146

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %do.body186, %if.end182.if.end202_crit_edge
  %95 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %intfcaps, align 4
  %and203 = and i32 %96, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %if.end202.if.end222_crit_edge, label %do.body206

if.end202.if.end222_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

do.body206:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then218)) #8
          to label %if.end222 [label %if.then218], !srcloc !146

if.then218:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %if.end222

if.end222:                                        ; preds = %if.then218, %do.body206, %if.end202.if.end222_crit_edge
  %97 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %intfcaps, align 4
  %and223 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %if.end222.if.end242_crit_edge, label %do.body226

if.end222.if.end242_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

do.body226:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then238)) #8
          to label %if.end242 [label %if.then238], !srcloc !146

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug265, ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %do.body226, %if.end222.if.end242_crit_edge
  %99 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %intfcaps, align 4
  %and243 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and243)
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %if.end242.if.end262_crit_edge, label %do.body246

if.end242.if.end262_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end262

do.body246:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then258)) #8
          to label %if.end262 [label %if.then258], !srcloc !146

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %if.end262

if.end262:                                        ; preds = %if.then258, %do.body246, %if.end242.if.end262_crit_edge
  %101 = ptrtoint ptr %intfcaps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %intfcaps, align 4
  %and263 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %if.end262.do.body283_crit_edge, label %do.body266

if.end262.do.body283_crit_edge:                   ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body283

do.body266:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tpm_tis_core_init, %if.then278)) #8
          to label %do.body283 [label %if.then278], !srcloc !146

if.then278:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tpm_tis_core_init.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %do.body283

do.body283:                                       ; preds = %if.then278, %do.body266, %if.end262.do.body283_crit_edge
  %read_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %priv, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.18, ptr noundef nonnull @tpm_tis_core_init.__key) #8
  %int_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %priv, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %int_queue, ptr noundef nonnull @.str.20, ptr noundef nonnull @tpm_tis_core_init.__key.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq)
  %cmp289.not = icmp eq i32 %irq, -1
  br i1 %cmp289.not, label %do.body283.if.end318_crit_edge, label %if.then291

do.body283.if.end318_crit_edge:                   ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end318

if.then291:                                       ; preds = %do.body283
  %call292 = call i32 @request_locality(ptr noundef %call, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %cmp293 = icmp slt i32 %call292, 0
  br i1 %cmp293, label %if.then291.out_err_crit_edge, label %if.end296

if.then291.out_err_crit_edge:                     ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end296:                                        ; preds = %if.then291
  %call297 = call i32 @tpm_get_timeouts(ptr noundef %call) #8
  %103 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i472) #8
  %105 = ptrtoint ptr %value.addr.i.i472 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 32, ptr %value.addr.i.i472, align 1
  %phy_ops.i.i474 = getelementptr inbounds %struct.tpm_tis_data, ptr %104, i32 0, i32 9
  %106 = ptrtoint ptr %phy_ops.i.i474 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy_ops.i.i474, align 4
  %write_bytes.i.i475 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_bytes.i.i475 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_bytes.i.i475, align 4
  %call.i.i476 = call i32 %109(ptr noundef %104, i32 noundef 0, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i472) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i472) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call297)
  %tobool299.not = icmp eq i32 %call297, 0
  br i1 %tobool299.not, label %if.end304, label %do.end303

do.end303:                                        ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  br label %out_err

if.end304:                                        ; preds = %if.end296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool305.not = icmp eq i32 %irq, 0
  %110 = ptrtoint ptr %intmask to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %intmask, align 4
  br i1 %tobool305.not, label %if.else, label %if.then306

if.then306:                                       ; preds = %if.end304
  %call307 = call fastcc i32 @tpm_tis_probe_irq_single(ptr noundef %call, i32 noundef %111, i32 noundef 128, i32 noundef %irq)
  %112 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags77, align 4
  %and309 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and309)
  %tobool310.not = icmp eq i32 %and309, 0
  br i1 %tobool310.not, label %do.end314, label %if.then306.if.end318_crit_edge

if.then306.if.end318_crit_edge:                   ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end318

do.end314:                                        ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.26) #11
  call fastcc void @disable_interrupts(ptr noundef %call)
  br label %if.end318

if.else:                                          ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @tpm_tis_probe_irq(ptr noundef %call, i32 noundef %111)
  br label %if.end318

if.end318:                                        ; preds = %if.else, %do.end314, %if.then306.if.end318_crit_edge, %do.body283.if.end318_crit_edge
  %call319 = call i32 @tpm_chip_register(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %if.end318.out_err_crit_edge

if.end318.out_err_crit_edge:                      ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end322:                                        ; preds = %if.end318
  %114 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops, align 8
  %clk_enable324 = getelementptr inbounds %struct.tpm_class_ops, ptr %115, i32 0, i32 14
  %116 = ptrtoint ptr %clk_enable324 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk_enable324, align 4
  %cmp325.not = icmp eq ptr %117, null
  br i1 %cmp325.not, label %if.end322.cleanup_crit_edge, label %if.then327

if.end322.cleanup_crit_edge:                      ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then327:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  call void %117(ptr noundef %call, i1 noundef zeroext false) #8
  br label %cleanup

out_err:                                          ; preds = %if.end318.out_err_crit_edge, %do.end303, %if.then291.out_err_crit_edge, %if.end85.out_err_crit_edge, %do.end.out_err_crit_edge, %if.end71.out_err_crit_edge, %if.end67.out_err_crit_edge, %if.end58.out_err_crit_edge, %if.end51.out_err_crit_edge, %if.end46.out_err_crit_edge, %wait_startup.exit, %do.cond.i.out_err_crit_edge
  %rc.0 = phi i32 [ %call.i461, %if.end46.out_err_crit_edge ], [ %call64, %if.end58.out_err_crit_edge ], [ %call68, %if.end67.out_err_crit_edge ], [ %call.i468, %if.end71.out_err_crit_edge ], [ %call.i471, %if.end85.out_err_crit_edge ], [ %call292, %if.then291.out_err_crit_edge ], [ -19, %do.end303 ], [ %call319, %if.end318.out_err_crit_edge ], [ -19, %wait_startup.exit ], [ -19, %if.end51.out_err_crit_edge ], [ -19, %do.end.out_err_crit_edge ], [ -19, %do.cond.i.out_err_crit_edge ]
  %118 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ops, align 8
  %clk_enable332 = getelementptr inbounds %struct.tpm_class_ops, ptr %119, i32 0, i32 14
  %120 = ptrtoint ptr %clk_enable332 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %clk_enable332, align 4
  %cmp333.not = icmp eq ptr %121, null
  br i1 %cmp333.not, label %out_err.if.end338_crit_edge, label %if.then335

out_err.if.end338_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end338

if.then335:                                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  call void %121(ptr noundef %call, i1 noundef zeroext false) #8
  br label %if.end338

if.end338:                                        ; preds = %if.then335, %out_err.if.end338_crit_edge
  %122 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %driver_data.i, align 4
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %125, 12
  %or.i = or i32 %shl.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interrupt.i) #8
  %126 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %interrupt.i, align 4, !annotation !145
  %phy_ops.i.i478 = getelementptr inbounds %struct.tpm_tis_data, ptr %123, i32 0, i32 9
  %127 = ptrtoint ptr %phy_ops.i.i478 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %phy_ops.i.i478, align 4
  %read32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read32.i.i, align 4
  %call.i.i479 = call i32 %130(ptr noundef %123, i32 noundef %or.i, ptr noundef nonnull %interrupt.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i479)
  %cmp.i480 = icmp slt i32 %call.i.i479, 0
  br i1 %cmp.i480, label %if.then.i, label %if.end338.if.end.i482_crit_edge

if.end338.if.end.i482_crit_edge:                  ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i482

if.then.i:                                        ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %interrupt.i, align 4
  br label %if.end.i482

if.end.i482:                                      ; preds = %if.then.i, %if.end338.if.end.i482_crit_edge
  %132 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %interrupt.i, align 4
  %and.i = and i32 %133, 2147483647
  %134 = ptrtoint ptr %phy_ops.i.i478 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %phy_ops.i.i478, align 4
  %write32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write32.i.i, align 4
  %call.i14.i = call i32 %137(ptr noundef %123, i32 noundef %or.i, i32 noundef %and.i) #8
  %ilb_base_addr.i = getelementptr inbounds %struct.tpm_tis_data, ptr %123, i32 0, i32 5
  %138 = ptrtoint ptr %ilb_base_addr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ilb_base_addr.i, align 4
  %tobool.not.i481 = icmp eq ptr %139, null
  br i1 %tobool.not.i481, label %if.end.i482.tpm_tis_remove.exit_crit_edge, label %if.then3.i

if.end.i482.tpm_tis_remove.exit_crit_edge:        ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_remove.exit

if.then3.i:                                       ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %139) #8
  br label %tpm_tis_remove.exit

tpm_tis_remove.exit:                              ; preds = %if.then3.i, %if.end.i482.tpm_tis_remove.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interrupt.i) #8
  br label %cleanup

cleanup:                                          ; preds = %tpm_tis_remove.exit, %if.then327, %if.end322.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %rc.0, %tpm_tis_remove.exit ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.then327 ], [ 0, %if.end322.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intmask) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intfcaps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpmm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @request_locality(ptr nocapture noundef readonly %chip, i32 noundef %l) #0 align 64 {
entry:
  %access.i128 = alloca i8, align 1
  %access.i114 = alloca i8, align 1
  %access.i102 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  %access.i = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i) #8
  %2 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %access.i, align 1, !annotation !145
  %shl.i = shl i32 %l, 12
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_ops.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i.i = call i32 %6(ptr noundef %1, i32 noundef %shl.i, i16 noundef zeroext 1, ptr noundef nonnull %access.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %access.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %access.i, align 1
  %9 = and i8 %8, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %9)
  %cmp2.i = icmp eq i8 %9, -96
  br i1 %cmp2.i, label %check_locality.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

check_locality.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %locality.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %l, ptr %locality.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  br label %cleanup68

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %11 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %value.addr.i, align 1
  %12 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_ops.i.i, align 4
  %write_bytes.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_bytes.i, align 4
  %call.i = call i32 %15(ptr noundef %1, i32 noundef %shl.i, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup68_crit_edge, label %if.end4

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %17 = ptrtoint ptr %timeout_a to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout_a, align 8
  %add = add i32 %18, %16
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.do.body59_crit_edge, label %again.preheader

if.end4.do.body59_crit_edge:                      ; preds = %if.end4
  br label %do.body59

again.preheader:                                  ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub172 = sub i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub172)
  %cmp6173 = icmp slt i32 %sub172, 1
  br i1 %cmp6173, label %again.preheader.cleanup68_crit_edge, label %if.end8.lr.ph

again.preheader.cleanup68_crit_edge:              ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end8.lr.ph:                                    ; preds = %again.preheader
  %int_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 7
  br label %if.end8

if.end8:                                          ; preds = %if.then56.if.end8_crit_edge, %if.end8.lr.ph
  %sub174 = phi i32 [ %sub172, %if.end8.lr.ph ], [ %sub, %if.then56.if.end8_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 171) #8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i102) #8
  %24 = ptrtoint ptr %access.i102 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %access.i102, align 1, !annotation !145
  %phy_ops.i.i105 = getelementptr inbounds %struct.tpm_tis_data, ptr %23, i32 0, i32 9
  %25 = ptrtoint ptr %phy_ops.i.i105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_ops.i.i105, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i.i106 = call i32 %28(ptr noundef %23, i32 noundef %shl.i, i16 noundef zeroext 1, ptr noundef nonnull %access.i102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %cmp.i107 = icmp slt i32 %call.i.i106, 0
  br i1 %cmp.i107, label %if.end8.if.then20_crit_edge, label %if.end.i109

if.end8.if.then20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end.i109:                                      ; preds = %if.end8
  %29 = ptrtoint ptr %access.i102 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %access.i102, align 1
  %31 = and i8 %30, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %31)
  %cmp2.i108 = icmp eq i8 %31, -96
  br i1 %cmp2.i108, label %if.end47.thread, label %if.end.i109.if.then20_crit_edge

if.end.i109.if.then20_crit_edge:                  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end47.thread:                                  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #10
  %locality.i110 = getelementptr inbounds %struct.tpm_tis_data, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %locality.i110 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %l, ptr %locality.i110, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i102) #8
  br label %cleanup68

if.then20:                                        ; preds = %if.end.i109.if.then20_crit_edge, %if.end8.if.then20_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i102) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then20
  %__ret21.0 = phi i32 [ %sub174, %if.then20 ], [ %call44, %cleanup ]
  %call22 = call i32 @prepare_to_wait_event(ptr noundef %int_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %34 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i114) #8
  %36 = ptrtoint ptr %access.i114 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %access.i114, align 1, !annotation !145
  %phy_ops.i.i117 = getelementptr inbounds %struct.tpm_tis_data, ptr %35, i32 0, i32 9
  %37 = ptrtoint ptr %phy_ops.i.i117 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_ops.i.i117, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %call.i.i118 = call i32 %40(ptr noundef %35, i32 noundef %shl.i, i16 noundef zeroext 1, ptr noundef nonnull %access.i114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %cmp.i119 = icmp slt i32 %call.i.i118, 0
  br i1 %cmp.i119, label %for.cond._crit_edge, label %if.end.i121

for.cond._crit_edge:                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %45

if.end.i121:                                      ; preds = %for.cond
  %41 = ptrtoint ptr %access.i114 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %access.i114, align 1
  %43 = and i8 %42, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %43)
  %cmp2.i120 = icmp eq i8 %43, -96
  br i1 %cmp2.i120, label %.thread, label %if.end.i121._crit_edge

if.end.i121._crit_edge:                           ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %45

.thread:                                          ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #10
  %locality.i122 = getelementptr inbounds %struct.tpm_tis_data, ptr %35, i32 0, i32 1
  %44 = ptrtoint ptr %locality.i122 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %l, ptr %locality.i122, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.0)
  %tobool28.not = icmp eq i32 %__ret21.0, 0
  %spec.store.select72 = select i1 %tobool28.not, i32 1, i32 %__ret21.0
  br label %for.end

45:                                               ; preds = %if.end.i121._crit_edge, %for.cond._crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.0)
  %tobool34.not = icmp eq i32 %__ret21.0, 0
  br i1 %tobool34.not, label %.for.end_crit_edge, label %if.end40

.for.end_crit_edge:                               ; preds = %45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end40:                                         ; preds = %45
  %tobool41.not = icmp eq i32 %call22, 0
  br i1 %tobool41.not, label %cleanup, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

cleanup:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = call i32 @schedule_timeout(i32 noundef %__ret21.0) #8
  br label %for.cond

for.end:                                          ; preds = %.for.end_crit_edge, %.thread
  %__ret21.2.ph = phi i32 [ %spec.store.select72, %.thread ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %int_queue, ptr noundef nonnull %__wq_entry) #8
  br label %if.end47

if.end47:                                         ; preds = %for.end, %if.end40.if.end47_crit_edge
  %__ret21.2150 = phi i32 [ %__ret21.2.ph, %for.end ], [ %call22, %if.end40.if.end47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.2150)
  %cmp49 = icmp sgt i32 %__ret21.2150, 0
  br i1 %cmp49, label %if.end47.cleanup68_crit_edge, label %if.end51

if.end47.cleanup68_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret21.2150)
  %cmp52 = icmp eq i32 %__ret21.2150, -512
  br i1 %cmp52, label %land.lhs.true53, label %if.end51.cleanup68_crit_edge

if.end51.cleanup68_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

land.lhs.true53:                                  ; preds = %if.end51
  %46 = call i32 @llvm.read_register.i32(metadata !135) #8
  %and.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %50 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %land.lhs.true53.cleanup68_crit_edge, label %freezing.exit, !prof !147

land.lhs.true53.cleanup68_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

freezing.exit:                                    ; preds = %land.lhs.true53
  %call4.i = call zeroext i1 @freezing_slow_path(ptr noundef %49) #8
  br i1 %call4.i, label %if.then56, label %freezing.exit.cleanup68_crit_edge

freezing.exit.cleanup68_crit_edge:                ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.then56:                                        ; preds = %freezing.exit
  call void @_clear_bit(i32 noundef 0, ptr noundef %47) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %51
  %cmp6 = icmp slt i32 %sub, 1
  br i1 %cmp6, label %if.then56.cleanup68_crit_edge, label %if.then56.if.end8_crit_edge

if.then56.if.end8_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then56.cleanup68_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

do.body59:                                        ; preds = %if.end62.do.body59_crit_edge, %if.end4.do.body59_crit_edge
  %52 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i128) #8
  %54 = ptrtoint ptr %access.i128 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %access.i128, align 1, !annotation !145
  %phy_ops.i.i131 = getelementptr inbounds %struct.tpm_tis_data, ptr %53, i32 0, i32 9
  %55 = ptrtoint ptr %phy_ops.i.i131 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy_ops.i.i131, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %call.i.i132 = call i32 %58(ptr noundef %53, i32 noundef %shl.i, i16 noundef zeroext 1, ptr noundef nonnull %access.i128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %cmp.i133 = icmp slt i32 %call.i.i132, 0
  br i1 %cmp.i133, label %do.body59.if.end62_crit_edge, label %if.end.i135

do.body59.if.end62_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.end.i135:                                      ; preds = %do.body59
  %59 = ptrtoint ptr %access.i128 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %access.i128, align 1
  %61 = and i8 %60, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %61)
  %cmp2.i134 = icmp eq i8 %61, -96
  br i1 %cmp2.i134, label %check_locality.exit139, label %if.end.i135.if.end62_crit_edge

if.end.i135.if.end62_crit_edge:                   ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

check_locality.exit139:                           ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #10
  %locality.i136 = getelementptr inbounds %struct.tpm_tis_data, ptr %53, i32 0, i32 1
  %62 = ptrtoint ptr %locality.i136 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %l, ptr %locality.i136, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i128) #8
  br label %cleanup68

if.end62:                                         ; preds = %if.end.i135.if.end62_crit_edge, %do.body59.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i128) #8
  call void @usleep_range_state(i32 noundef 4700, i32 noundef 5000, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub64 = sub i32 %63, %add
  %cmp65 = icmp slt i32 %sub64, 0
  br i1 %cmp65, label %if.end62.do.body59_crit_edge, label %if.end62.cleanup68_crit_edge

if.end62.cleanup68_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end62.do.body59_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body59

cleanup68:                                        ; preds = %if.end62.cleanup68_crit_edge, %check_locality.exit139, %if.then56.cleanup68_crit_edge, %freezing.exit.cleanup68_crit_edge, %land.lhs.true53.cleanup68_crit_edge, %if.end51.cleanup68_crit_edge, %if.end47.cleanup68_crit_edge, %if.end47.thread, %again.preheader.cleanup68_crit_edge, %if.end.cleanup68_crit_edge, %check_locality.exit
  %retval.0 = phi i32 [ %l, %check_locality.exit ], [ %call.i, %if.end.cleanup68_crit_edge ], [ %l, %check_locality.exit139 ], [ %l, %if.end47.thread ], [ -1, %again.preheader.cleanup68_crit_edge ], [ -1, %if.end62.cleanup68_crit_edge ], [ -1, %if.then56.cleanup68_crit_edge ], [ %l, %if.end47.cleanup68_crit_edge ], [ -1, %if.end51.cleanup68_crit_edge ], [ -1, %freezing.exit.cleanup68_crit_edge ], [ -1, %land.lhs.true53.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @release_locality(ptr nocapture noundef readonly %chip, i32 noundef %l) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shl = shl i32 %l, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %2 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %value.addr.i, align 1
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_ops.i, align 4
  %write_bytes.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_bytes.i, align 4
  %call.i = call i32 %6(ptr noundef %1, i32 noundef %shl, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @probe_itpm(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i55 = alloca i8, align 1
  %value.addr.i.i47 = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %vendor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor) #8
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %vendor, align 2, !annotation !145
  %flags = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_ops.i, align 4
  %read16.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %read16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read16.i, align 4
  %call.i = call i32 %8(ptr noundef %1, i32 noundef 3840, ptr noundef nonnull %vendor) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %10)
  %cmp4.not = icmp eq i16 %10, -32634
  br i1 %cmp4.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call i32 @request_locality(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = call fastcc i32 @tpm_tis_send_data(ptr noundef %chip, ptr noundef nonnull @probe_itpm.cmd_getticks, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end12.out_crit_edge, label %if.end17

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %14, 12
  %or.i = or i32 %shl.i, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %15 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %value.addr.i.i, align 1
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %12, i32 0, i32 9
  %16 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_ops.i.i, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_bytes.i.i, align 4
  %call.i.i = call i32 %19(ptr noundef %12, i32 noundef %or.i, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 1
  store i32 %or, ptr %flags, align 4
  %call19 = call fastcc i32 @tpm_tis_send_data(ptr noundef %chip, ptr noundef nonnull @probe_itpm.cmd_getticks, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %do.end, label %if.else

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.49) #11
  br label %out

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and25 = and i32 %23, -2
  store i32 %and25, ptr %flags, align 4
  br label %out

out:                                              ; preds = %if.else, %do.end, %if.end12.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end12.out_crit_edge ], [ 0, %do.end ], [ -14, %if.else ]
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i, align 4
  %locality.i49 = getelementptr inbounds %struct.tpm_tis_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %locality.i49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %locality.i49, align 4
  %shl.i50 = shl i32 %27, 12
  %or.i51 = or i32 %shl.i50, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i47) #8
  %28 = ptrtoint ptr %value.addr.i.i47 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 64, ptr %value.addr.i.i47, align 1
  %phy_ops.i.i52 = getelementptr inbounds %struct.tpm_tis_data, ptr %25, i32 0, i32 9
  %29 = ptrtoint ptr %phy_ops.i.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_ops.i.i52, align 4
  %write_bytes.i.i53 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_bytes.i.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_bytes.i.i53, align 4
  %call.i.i54 = call i32 %32(ptr noundef %25, i32 noundef %or.i51, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i47) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i47) #8
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %locality, align 4
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i, align 4
  %shl.i57 = shl i32 %34, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i55) #8
  %37 = ptrtoint ptr %value.addr.i.i55 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 32, ptr %value.addr.i.i55, align 1
  %phy_ops.i.i58 = getelementptr inbounds %struct.tpm_tis_data, ptr %36, i32 0, i32 9
  %38 = ptrtoint ptr %phy_ops.i.i58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_ops.i.i58, align 4
  %write_bytes.i.i59 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write_bytes.i.i59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write_bytes.i.i59, align 4
  %call.i.i60 = call i32 %41(ptr noundef %36, i32 noundef %shl.i57, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i55) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i55) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -16, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_get_timeouts(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_tis_probe_irq_single(ptr noundef %chip, i32 noundef %intmask, i32 noundef %flags, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  %value.addr.i114 = alloca i8, align 1
  %value.addr.i.i.i = alloca i8, align 1
  %cap2.i = alloca i32, align 4
  %cap.i = alloca %union.cap_t, align 4
  %value.addr.i = alloca i8, align 1
  %original_int_vec = alloca i8, align 1
  %int_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %original_int_vec) #8
  %2 = ptrtoint ptr %original_int_vec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %original_int_vec, align 1, !annotation !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_status) #8
  %3 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %int_status, align 4, !annotation !145
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %irq, ptr noundef nonnull @tis_int_handler, ptr noundef null, i32 noundef %flags, ptr noundef %retval.0.i, ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %chip, ptr noundef nonnull @.str.51, i32 noundef %irq) #11
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %irq6 = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %irq, ptr %irq6, align 4
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %locality, align 4
  %shl = shl i32 %12, 12
  %or = or i32 %shl, 12
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call.i100 = call i32 %16(ptr noundef %1, i32 noundef %or, i16 noundef zeroext 1, ptr noundef nonnull %original_int_vec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp8 = icmp slt i32 %call.i100, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %17 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %locality, align 4
  %shl12 = shl i32 %18, 12
  %or13 = or i32 %shl12, 12
  %conv = trunc i32 %irq to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %19 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %value.addr.i, align 1
  %20 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_ops.i, align 4
  %write_bytes.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_bytes.i, align 4
  %call.i102 = call i32 %23(ptr noundef %1, i32 noundef %or13, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp15 = icmp slt i32 %call.i102, 0
  br i1 %cmp15, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %24 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %locality, align 4
  %shl20 = shl i32 %25, 12
  %or21 = or i32 %shl20, 16
  %26 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_ops.i, align 4
  %read32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32.i, align 4
  %call.i104 = call i32 %29(ptr noundef %1, i32 noundef %or21, ptr noundef nonnull %int_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp23 = icmp slt i32 %call.i104, 0
  br i1 %cmp23, label %if.end18.cleanup_crit_edge, label %if.end26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %30 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %locality, align 4
  %shl28 = shl i32 %31, 12
  %or29 = or i32 %shl28, 16
  %32 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %int_status, align 4
  %34 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write32.i, align 4
  %call.i106 = call i32 %37(ptr noundef %1, i32 noundef %or29, i32 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp31 = icmp slt i32 %call.i106, 0
  br i1 %cmp31, label %if.end26.cleanup_crit_edge, label %if.end34

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %38 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %locality, align 4
  %shl36 = shl i32 %39, 12
  %or37 = or i32 %shl36, 8
  %or38 = or i32 %intmask, -2147483648
  %40 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_ops.i, align 4
  %write32.i108 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %write32.i108 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i108, align 4
  %call.i109 = call i32 %43(ptr noundef %1, i32 noundef %or37, i32 noundef %or38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp40 = icmp slt i32 %call.i109, 0
  br i1 %cmp40, label %if.end34.cleanup_crit_edge, label %if.end43

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %irq_tested = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %irq_tested to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %irq_tested, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cap2.i) #8
  %45 = ptrtoint ptr %cap2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %cap2.i, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap.i) #8
  %46 = call ptr @memset(ptr %cap.i, i32 255, i32 24)
  %call.i110 = call i32 @request_locality(ptr noundef %chip, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i = icmp slt i32 %call.i110, 0
  br i1 %cmp.i, label %tpm_tis_gen_interrupt.exit.thread, label %if.end.i112

tpm_tis_gen_interrupt.exit.thread:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap2.i) #8
  br label %cleanup

if.end.i112:                                      ; preds = %if.end43
  %flags.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i111 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i111, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @tpm2_get_tpm_pt(ptr noundef %chip, i32 noundef 256, ptr noundef nonnull %cap2.i, ptr noundef nonnull @.str.53) #8
  br label %tpm_tis_gen_interrupt.exit

if.else.i:                                        ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 @tpm1_getcap(ptr noundef %chip, i32 noundef 277, ptr noundef nonnull %cap.i, ptr noundef nonnull @.str.53, i32 noundef 0) #8
  br label %tpm_tis_gen_interrupt.exit

tpm_tis_gen_interrupt.exit:                       ; preds = %if.else.i, %if.then1.i
  %ret.0.i = phi i32 [ %call2.i, %if.then1.i ], [ %call3.i, %if.else.i ]
  %49 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #8
  %51 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 32, ptr %value.addr.i.i.i, align 1
  %phy_ops.i.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %50, i32 0, i32 9
  %52 = ptrtoint ptr %phy_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy_ops.i.i.i, align 4
  %write_bytes.i.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_bytes.i.i.i, align 4
  %call.i.i.i = call i32 %55(ptr noundef %50, i32 noundef 0, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cap2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp45 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp45, label %tpm_tis_gen_interrupt.exit.cleanup_crit_edge, label %if.end48

tpm_tis_gen_interrupt.exit.cleanup_crit_edge:     ; preds = %tpm_tis_gen_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %tpm_tis_gen_interrupt.exit
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i, align 4
  %and = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then50, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %original_int_vec to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %original_int_vec, align 1
  %conv51 = zext i8 %59 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i114)
  %60 = ptrtoint ptr %value.addr.i114 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 12, ptr %value.addr.i114, align 1
  %61 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %phy_ops.i, align 4
  %write_bytes.i116 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %write_bytes.i116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_bytes.i116, align 4
  %call.i117 = call i32 %64(ptr noundef %1, i32 noundef %conv51, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i114) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i114)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp57 = icmp slt i32 %call.i117, 0
  %call56. = select i1 %cmp57, i32 %call.i117, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end48.cleanup_crit_edge, %tpm_tis_gen_interrupt.exit.cleanup_crit_edge, %tpm_tis_gen_interrupt.exit.thread, %if.end34.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call.i100, %if.end.cleanup_crit_edge ], [ %call.i102, %if.end10.cleanup_crit_edge ], [ %call.i104, %if.end18.cleanup_crit_edge ], [ %call.i106, %if.end26.cleanup_crit_edge ], [ %call.i109, %if.end34.cleanup_crit_edge ], [ %ret.0.i, %tpm_tis_gen_interrupt.exit.cleanup_crit_edge ], [ %call56., %if.then50 ], [ 0, %if.end48.cleanup_crit_edge ], [ %call.i110, %tpm_tis_gen_interrupt.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_status) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %original_int_vec) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_interrupts(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %intmask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intmask) #8
  %2 = ptrtoint ptr %intmask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %intmask, align 4, !annotation !145
  %irq = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %locality, align 4
  %shl = shl i32 %6, 12
  %or = or i32 %shl, 8
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_ops.i, align 4
  %read32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %10(ptr noundef %1, i32 noundef %or, ptr noundef nonnull %intmask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %intmask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %intmask, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %12 = ptrtoint ptr %intmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intmask, align 4
  %and = and i32 %13, 2147483647
  store i32 %and, ptr %intmask, align 4
  %14 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %locality, align 4
  %shl6 = shl i32 %15, 12
  %or7 = or i32 %shl6, 8
  %16 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i, align 4
  %call.i25 = call i32 %19(ptr noundef %1, i32 noundef %or7, i32 noundef %and) #8
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 8
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @devm_free_irq(ptr noundef %21, i32 noundef %23, ptr noundef %chip) #8
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %irq, align 4
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and12 = and i32 %26, -5
  store i32 %and12, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intmask) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tpm_tis_probe_irq(ptr noundef %chip, i32 noundef %intmask) unnamed_addr #0 align 64 {
entry:
  %original_int_vec = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %original_int_vec) #8
  %2 = ptrtoint ptr %original_int_vec to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %original_int_vec, align 1, !annotation !145
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %locality, align 4
  %shl = shl i32 %4, 12
  %or = or i32 %shl, 12
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = call i32 %8(ptr noundef %1, i32 noundef %or, i16 noundef zeroext 1, ptr noundef nonnull %original_int_vec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %original_int_vec to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %original_int_vec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %10 to i32
  %call3 = call fastcc i32 @tpm_tis_probe_irq_single(ptr noundef %chip, i32 noundef %intmask, i32 noundef 0, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %original_int_vec) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tpm_tis_resume(ptr noundef %dev) #0 align 64 {
entry:
  %value.addr.i.i25 = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %intmask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intmask.i) #8
  %6 = ptrtoint ptr %intmask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %intmask.i, align 4, !annotation !145
  %ops.i = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 8
  %clk_enable.i = getelementptr inbounds %struct.tpm_class_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %clk_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_enable.i, align 4
  %cmp.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %10(ptr noundef %1, i1 noundef zeroext true) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %12, 12
  %or.i = or i32 %shl.i, 12
  %irq.i = getelementptr inbounds %struct.tpm_tis_data, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  %conv.i = trunc i32 %14 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %15 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %value.addr.i.i, align 1
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_ops.i.i, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_bytes.i.i, align 4
  %call.i.i = call i32 %19(ptr noundef %5, i32 noundef %or.i, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.end.i.out.i_crit_edge, label %if.end7.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end7.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %locality.i, align 4
  %shl9.i = shl i32 %21, 12
  %or10.i = or i32 %shl9.i, 8
  %22 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i44.i = call i32 %25(ptr noundef %5, i32 noundef %or10.i, ptr noundef nonnull %intmask.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp12.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp12.i, label %if.end7.i.out.i_crit_edge, label %if.end15.i

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end15.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %intmask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %intmask.i, align 4
  %or16.i = or i32 %27, -2147483513
  store i32 %or16.i, ptr %intmask.i, align 4
  %28 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %locality.i, align 4
  %shl18.i = shl i32 %29, 12
  %or19.i = or i32 %shl18.i, 8
  %30 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i.i, align 4
  %call.i46.i = call i32 %33(ptr noundef %5, i32 noundef %or19.i, i32 noundef %or16.i) #8
  br label %out.i

out.i:                                            ; preds = %if.end15.i, %if.end7.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 8
  %clk_enable22.i = getelementptr inbounds %struct.tpm_class_ops, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %clk_enable22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_enable22.i, align 4
  %cmp23.not.i = icmp eq ptr %37, null
  br i1 %cmp23.not.i, label %out.i.tpm_tis_reenable_interrupts.exit_crit_edge, label %if.then25.i

out.i.tpm_tis_reenable_interrupts.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_reenable_interrupts.exit

if.then25.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %37(ptr noundef %1, i1 noundef zeroext false) #8
  br label %tpm_tis_reenable_interrupts.exit

tpm_tis_reenable_interrupts.exit:                 ; preds = %if.then25.i, %out.i.tpm_tis_reenable_interrupts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intmask.i) #8
  br label %if.end

if.end:                                           ; preds = %tpm_tis_reenable_interrupts.exit, %entry.if.end_crit_edge
  %call1 = call i32 @tpm_pm_resume(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and6 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  %call9 = call i32 @request_locality(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 @tpm1_do_selftest(ptr noundef %1) #8
  %driver_data.i.i26 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i26, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i25) #8
  %42 = ptrtoint ptr %value.addr.i.i25 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 32, ptr %value.addr.i.i25, align 1
  %phy_ops.i.i27 = getelementptr inbounds %struct.tpm_tis_data, ptr %41, i32 0, i32 9
  %43 = ptrtoint ptr %phy_ops.i.i27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_ops.i.i27, align 4
  %write_bytes.i.i28 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_bytes.i.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_bytes.i.i28, align 4
  %call.i.i29 = call i32 %46(ptr noundef %41, i32 noundef 0, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i25) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ], [ 0, %if.end11 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_do_selftest(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tpm_tis_req_canceled(ptr nocapture noundef readonly %chip, i8 noundef zeroext %status) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.default [
    i16 4176, label %sw.bb
    i16 4170, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = and i8 %status, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %5)
  %6 = icmp eq i8 %5, -128
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %status)
  %cmp8 = icmp eq i8 %status, -64
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %status)
  %cmp11 = icmp eq i8 %status, 64
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %sw.bb
  %retval.0 = phi i1 [ %cmp11, %sw.default ], [ %cmp8, %sw.bb6 ], [ %6, %sw.bb ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_recv(ptr noundef %chip, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.addr.i.i = alloca i8, align 1
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count)
  %cmp = icmp ult i32 %count, 10
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @recv_data(ptr noundef %chip, ptr noundef %buf, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 10
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.29) #11
  br label %out

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %count)
  %cmp6 = icmp ugt i32 %3, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp7 = icmp ult i32 %3, 10
  %or.cond = or i1 %cmp6, %cmp7
  br i1 %or.cond, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end5
  %arrayidx = getelementptr i8, ptr %buf, i32 10
  %sub = add i32 %3, -10
  %call10 = tail call fastcc i32 @recv_data(ptr noundef %chip, ptr noundef %arrayidx, i32 noundef %sub)
  %add = add i32 %call10, %call1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp11 = icmp ult i32 %add, %3
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.32) #11
  br label %out

if.end17:                                         ; preds = %if.end9
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %4 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout_c, align 8
  %int_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 7
  %call18 = tail call fastcc i32 @wait_for_tpm_stat(ptr noundef %chip, i8 noundef zeroext -128, i32 noundef %5, ptr noundef %int_queue, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end21:                                         ; preds = %if.end17
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #8
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %status.i, align 1, !annotation !145
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %10, 12
  %or.i = or i32 %shl.i, 24
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %7, i32 0, i32 9
  %11 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_ops.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i.i = call i32 %14(ptr noundef %7, i32 noundef %or.i, i16 noundef zeroext 1, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end21.tpm_tis_status.exit.thread_crit_edge, label %if.end.i

if.end21.tpm_tis_status.exit.thread_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit.thread

if.end.i:                                         ; preds = %if.end21
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status.i, align 1
  %17 = and i8 %16, 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp2.not.i = icmp eq i8 %17, 0
  br i1 %cmp2.not.i, label %tpm_tis_status.exit, label %if.then5.i, !prof !147

if.then5.i:                                       ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.tpm_tis_data, ptr %7, i32 0, i32 4
  %call6.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.end.i, label %if.then5.i.tpm_tis_status.exit.thread_crit_edge

if.then5.i.tpm_tis_status.exit.thread_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit.thread

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %status.i, align 1
  %conv10.i = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.40, i32 noundef %conv10.i) #11
  call void @dump_stack() #11
  br label %tpm_tis_status.exit.thread

tpm_tis_status.exit.thread:                       ; preds = %do.end.i, %if.then5.i.tpm_tis_status.exit.thread_crit_edge, %if.end21.tpm_tis_status.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #8
  br label %out

tpm_tis_status.exit:                              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #8
  %20 = and i8 %16, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %tpm_tis_status.exit.out_crit_edge, label %do.end26

tpm_tis_status.exit.out_crit_edge:                ; preds = %tpm_tis_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end26:                                         ; preds = %tpm_tis_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.35) #11
  br label %out

out:                                              ; preds = %do.end26, %tpm_tis_status.exit.out_crit_edge, %tpm_tis_status.exit.thread, %if.end17.out_crit_edge, %do.end15, %if.end5.out_crit_edge, %do.end, %entry.out_crit_edge
  %size.0 = phi i32 [ %call1, %do.end ], [ -62, %do.end15 ], [ -5, %do.end26 ], [ %add, %tpm_tis_status.exit.out_crit_edge ], [ -5, %entry.out_crit_edge ], [ -5, %if.end5.out_crit_edge ], [ -62, %if.end17.out_crit_edge ], [ %add, %tpm_tis_status.exit.thread ]
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i, align 4
  %locality.i48 = getelementptr inbounds %struct.tpm_tis_data, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %locality.i48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %locality.i48, align 4
  %shl.i49 = shl i32 %24, 12
  %or.i50 = or i32 %shl.i49, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %25 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 64, ptr %value.addr.i.i, align 1
  %phy_ops.i.i51 = getelementptr inbounds %struct.tpm_tis_data, ptr %22, i32 0, i32 9
  %26 = ptrtoint ptr %phy_ops.i.i51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_ops.i.i51, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_bytes.i.i, align 4
  %call.i.i52 = call i32 %29(ptr noundef %22, i32 noundef %or.i50, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  ret i32 %size.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_tis_send(ptr noundef %chip, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %intmask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %irq_tested = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_tested to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_tested, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call fastcc i32 @tpm_tis_send_main(ptr noundef %chip, ptr noundef %buf, i32 noundef %len)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %irq3 = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq3, align 4
  store i32 0, ptr %irq3, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and6 = and i32 %9, -5
  store i32 %and6, ptr %flags, align 4
  %call7 = tail call fastcc i32 @tpm_tis_send_main(ptr noundef %chip, ptr noundef %buf, i32 noundef %len)
  %10 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %irq3, align 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %or = or i32 %12, 4
  store i32 %or, ptr %flags, align 4
  %13 = ptrtoint ptr %irq_tested to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %irq_tested, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end13:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 700, i32 noundef 1000, i32 noundef 2) #8
  %15 = ptrtoint ptr %irq_tested to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %irq_tested, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool15.not = icmp eq i8 %.pr, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intmask.i) #8
  %18 = ptrtoint ptr %intmask.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %intmask.i, align 4, !annotation !145
  %irq.i = getelementptr inbounds %struct.tpm_tis_data, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  br i1 %cmp.i, label %if.then16.disable_interrupts.exit_crit_edge, label %if.end.i

if.then16.disable_interrupts.exit_crit_edge:      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_interrupts.exit

if.end.i:                                         ; preds = %if.then16
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %22, 12
  %or.i = or i32 %shl.i, 8
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %17, i32 0, i32 9
  %23 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %26(ptr noundef %17, i32 noundef %or.i, ptr noundef nonnull %intmask.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %intmask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %intmask.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %28 = ptrtoint ptr %intmask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %intmask.i, align 4
  %and.i = and i32 %29, 2147483647
  store i32 %and.i, ptr %intmask.i, align 4
  %30 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %locality.i, align 4
  %shl6.i = shl i32 %31, 12
  %or7.i = or i32 %shl6.i, 8
  %32 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_ops.i.i, align 4
  %write32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write32.i.i, align 4
  %call.i25.i = call i32 %35(ptr noundef %17, i32 noundef %or7.i, i32 noundef %and.i) #8
  %parent.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i, align 8
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i, align 4
  call void @devm_free_irq(ptr noundef %37, i32 noundef %39, ptr noundef %chip) #8
  %40 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %irq.i, align 4
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and12.i = and i32 %42, -5
  store i32 %and12.i, ptr %flags, align 4
  br label %disable_interrupts.exit

disable_interrupts.exit:                          ; preds = %if.end4.i, %if.then16.disable_interrupts.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intmask.i) #8
  br label %if.end17

if.end17:                                         ; preds = %disable_interrupts.exit, %if.end13.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %43 = ptrtoint ptr %irq_tested to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %irq_tested, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call7, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpm_tis_ready(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %locality, align 4
  %shl = shl i32 %3, 12
  %or = or i32 %shl, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %4 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %value.addr.i, align 1
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_ops.i, align 4
  %write_bytes.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_bytes.i, align 4
  %call.i = call i32 %8(ptr noundef %1, i32 noundef %or, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tpm_tis_status(ptr noundef %chip) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !145
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %locality, align 4
  %shl = shl i32 %4, 12
  %or = or i32 %shl, 24
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_ops.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i = call i32 %8(ptr noundef %1, i32 noundef %or, i16 noundef zeroext 1, ptr noundef nonnull %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  %11 = and i8 %10, 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp2.not = icmp eq i8 %11, 0
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then5, !prof !147

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 4
  %call6 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  %conv10 = zext i8 %13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.40, i32 noundef %conv10) #11
  call void @dump_stack() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.then5.cleanup_crit_edge ], [ %10, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpm_tis_update_timeouts(ptr noundef %chip, ptr nocapture noundef writeonly %timeout_cap) #0 align 64 {
entry:
  %did_vid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %did_vid) #8
  %2 = ptrtoint ptr %did_vid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %did_vid, align 4, !annotation !145
  %timeout_adjusted = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 19
  %3 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %timeout_adjusted, align 8
  %ops = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %clk_enable = getelementptr inbounds %struct.tpm_class_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_enable, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %chip, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_ops.i, align 4
  %read32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %11(ptr noundef %1, i32 noundef 3840, ptr noundef nonnull %did_vid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %call.i) #11
  br label %out

for.body:                                         ; preds = %if.end
  %12 = ptrtoint ptr %did_vid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %did_vid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 839127316, i32 %13)
  %cmp10.not = icmp eq i32 %13, 839127316
  br i1 %cmp10.not, label %if.end12, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call ptr @memcpy(ptr %timeout_cap, ptr getelementptr inbounds ([1 x %struct.tis_vendor_timeout_override], ptr @vendor_timeout_overrides, i32 0, i32 0, i32 1), i32 16)
  %15 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %timeout_adjusted, align 8
  br label %out

out:                                              ; preds = %if.end12, %for.body.out_crit_edge, %do.end
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 8
  %clk_enable16 = getelementptr inbounds %struct.tpm_class_ops, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %clk_enable16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_enable16, align 4
  %cmp17.not = icmp eq ptr %19, null
  br i1 %cmp17.not, label %out.if.end21_crit_edge, label %if.then18

out.if.end21_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void %19(ptr noundef %chip, i1 noundef zeroext false) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %out.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %did_vid) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpm_tis_update_durations(ptr noundef %chip, ptr nocapture noundef writeonly %duration_cap) #0 align 64 {
entry:
  %did_vid = alloca i32, align 4
  %cap = alloca %union.cap_t, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %did_vid) #8
  %2 = ptrtoint ptr %did_vid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %did_vid, align 4, !annotation !145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #8
  %duration_adjusted = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 21
  %3 = call ptr @memset(ptr %cap, i32 255, i32 24)
  %4 = ptrtoint ptr %duration_adjusted to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %duration_adjusted, align 4
  %ops = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 5
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 8
  %clk_enable = getelementptr inbounds %struct.tpm_class_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %clk_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_enable, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %chip, i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_ops.i, align 4
  %read32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %12(ptr noundef %1, i32 noundef 3840, ptr noundef nonnull %did_vid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %call.i) #11
  br label %out

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @tpm1_getcap(ptr noundef %chip, i32 noundef 26, ptr noundef nonnull %cap, ptr noundef nonnull @.str.47, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %version10 = getelementptr inbounds %struct.tpm1_version2, ptr %cap, i32 0, i32 1
  br label %if.end15

if.else:                                          ; preds = %if.end7
  %call11 = call i32 @tpm1_getcap(ptr noundef %chip, i32 noundef 6, ptr noundef nonnull %cap, ptr noundef nonnull @.str.48, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else.if.end15_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then9
  %version.0 = phi ptr [ %version10, %if.then9 ], [ %cap, %if.else.if.end15_crit_edge ]
  %13 = ptrtoint ptr %did_vid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %did_vid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4170, i32 %14)
  %cmp18.not = icmp eq i32 %14, 4170
  br i1 %cmp18.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %version.0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %version.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp25 = icmp eq i8 %16, 1
  br i1 %cmp25, label %land.lhs.true, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.end20
  %minor = getelementptr inbounds %struct.tpm1_version, ptr %version.0, i32 0, i32 1
  %17 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp32 = icmp eq i8 %18, 2
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true34:                                  ; preds = %land.lhs.true
  %rev_major = getelementptr inbounds %struct.tpm1_version, ptr %version.0, i32 0, i32 2
  %19 = ptrtoint ptr %rev_major to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rev_major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %cmp40 = icmp eq i8 %20, 8
  br i1 %cmp40, label %land.lhs.true42, label %land.lhs.true34.out_crit_edge

land.lhs.true34.out_crit_edge:                    ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true42:                                  ; preds = %land.lhs.true34
  %rev_minor = getelementptr inbounds %struct.tpm1_version, ptr %version.0, i32 0, i32 3
  %21 = ptrtoint ptr %rev_minor to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rev_minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %22)
  %cmp48 = icmp eq i8 %22, 28
  br i1 %cmp48, label %if.then50, label %land.lhs.true42.out_crit_edge

land.lhs.true42.out_crit_edge:                    ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then50:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  %23 = call ptr @memcpy(ptr %duration_cap, ptr getelementptr inbounds ([1 x %struct.tis_vendor_durations_override], ptr @vendor_dur_overrides, i32 0, i32 0, i32 2), i32 12)
  %24 = ptrtoint ptr %duration_adjusted to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %duration_adjusted, align 4
  br label %out

out:                                              ; preds = %if.then50, %land.lhs.true42.out_crit_edge, %land.lhs.true34.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end20.out_crit_edge, %if.end15.out_crit_edge, %if.else.out_crit_edge, %do.end
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 8
  %clk_enable55 = getelementptr inbounds %struct.tpm_class_ops, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %clk_enable55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_enable55, align 4
  %cmp56.not = icmp eq ptr %28, null
  br i1 %cmp56.not, label %out.if.end61_crit_edge, label %if.then58

out.if.end61_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then58:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void %28(ptr noundef %chip, i1 noundef zeroext false) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %out.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %did_vid) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @recv_data(ptr noundef %chip, ptr noundef %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp40.not = icmp eq i32 %count, 0
  br i1 %cmp40.not, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %read_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 8
  %flags.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %timeout_a.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  br label %while.body

while.cond:                                       ; preds = %if.end7
  %add = add i32 %21, %size.041
  %cmp = icmp ult i32 %add, %count
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %size.041 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %while.cond.while.body_crit_edge ]
  %2 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_c, align 8
  %call1 = call fastcc i32 @wait_for_tpm_stat(ptr noundef %chip, i8 noundef zeroext -112, i32 noundef %3, ptr noundef %read_queue, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i, align 4, !annotation !145
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %.sink.in.i = select i1 %tobool.not.i, ptr %timeout_d.i, ptr %timeout_a.i
  %10 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %5, i32 0, i32 1
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %5, i32 0, i32 9
  %11 = add i32 %.sink.i, %9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %if.end
  %12 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %13, 12
  %or.i = or i32 %shl.i, 24
  %14 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = call i32 %17(ptr noundef %5, i32 noundef %or.i, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i.do.end_crit_edge, label %if.end4.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end4.i:                                        ; preds = %do.body.i
  %18 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value.i, align 4
  %shr.i = lshr i32 %19, 8
  %and5.i = and i32 %shr.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end7

if.end8.i:                                        ; preds = %if.end4.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %20, %11
  %cmp9.i = icmp slt i32 %sub.i, 0
  br i1 %cmp9.i, label %if.end8.i.do.body.i_crit_edge, label %if.end8.i.do.end_crit_edge

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end:                                           ; preds = %if.end8.i.do.end_crit_edge, %do.body.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -16, %if.end8.i.do.end_crit_edge ], [ %call.i.i, %do.body.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.37) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %sub = sub i32 %count, %size.041
  %21 = call i32 @llvm.smin.i32(i32 %and5.i, i32 %sub)
  %22 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %locality, align 4
  %shl = shl i32 %23, 12
  %or = or i32 %shl, 36
  %conv = trunc i32 %21 to i16
  %add.ptr = getelementptr i8, ptr %buf, i32 %size.041
  %24 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_ops.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i = call i32 %27(ptr noundef %1, i32 noundef %or, i16 noundef zeroext %conv, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %while.cond

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %do.end, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %while.body.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ %add, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_tpm_stat(ptr noundef %chip, i8 noundef zeroext %mask, i32 noundef %timeout, ptr noundef %queue, i1 noundef zeroext %check_cancel) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 5
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 8
  %status1 = getelementptr inbounds %struct.tpm_class_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %status1, align 4
  %call2 = tail call zeroext i8 %5(ptr noundef %chip) #8
  %and127 = and i8 %call2, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and127, i8 %mask)
  %cmp = icmp eq i8 %and127, %mask
  br i1 %cmp, label %entry.cleanup92_crit_edge, label %if.end

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, %timeout
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and6 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %do.body74.preheader, label %again.preheader

again.preheader:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub197 = sub i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub197)
  %cmp8198 = icmp slt i32 %sub197, 1
  br i1 %cmp8198, label %again.preheader.cleanup92_crit_edge, label %if.end11.lr.ph

again.preheader.cleanup92_crit_edge:              ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.end11.lr.ph:                                   ; preds = %again.preheader
  %check_cancel.not.i = xor i1 %check_cancel, true
  br label %if.end11

do.body74.preheader:                              ; preds = %if.end
  %timeout_min = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 11
  %timeout_max = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 12
  br label %do.body74

if.end11:                                         ; preds = %if.then71.if.end11_crit_edge, %if.end11.lr.ph
  %sub199 = phi i32 [ %sub197, %if.end11.lr.ph ], [ %sub, %if.then71.if.end11_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 72) #8
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 8
  %status1.i = getelementptr inbounds %struct.tpm_class_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %status1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %status1.i, align 4
  %call.i = call zeroext i8 %13(ptr noundef %chip) #8
  %and17.i = and i8 %call.i, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and17.i, i8 %mask)
  %cmp.i = icmp eq i8 %and17.i, %mask
  %brmerge.i = or i1 %cmp.i, %check_cancel.not.i
  br i1 %brmerge.i, label %wait_for_tpm_stat_cond.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end11
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 8
  %req_canceled.i = getelementptr inbounds %struct.tpm_class_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %req_canceled.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req_canceled.i, align 4
  %call7.i = call zeroext i1 %17(ptr noundef %chip, i8 noundef zeroext %call.i) #8
  br i1 %call7.i, label %land.lhs.true.i.cleanup92_crit_edge, label %land.lhs.true.i.if.then27_crit_edge

land.lhs.true.i.if.then27_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

land.lhs.true.i.cleanup92_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

wait_for_tpm_stat_cond.exit:                      ; preds = %if.end11
  br i1 %cmp.i, label %wait_for_tpm_stat_cond.exit.if.then60.thread_crit_edge, label %wait_for_tpm_stat_cond.exit.if.then27_crit_edge

wait_for_tpm_stat_cond.exit.if.then27_crit_edge:  ; preds = %wait_for_tpm_stat_cond.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

wait_for_tpm_stat_cond.exit.if.then60.thread_crit_edge: ; preds = %wait_for_tpm_stat_cond.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60.thread

if.then27:                                        ; preds = %wait_for_tpm_stat_cond.exit.if.then27_crit_edge, %land.lhs.true.i.if.then27_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then27
  %__ret28.0 = phi i32 [ %sub199, %if.then27 ], [ %call54, %cleanup ]
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 8
  %status1.i130 = getelementptr inbounds %struct.tpm_class_ops, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %status1.i130 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %status1.i130, align 4
  %call.i131 = call zeroext i8 %22(ptr noundef %chip) #8
  %and17.i132 = and i8 %call.i131, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and17.i132, i8 %mask)
  %cmp.i133 = icmp eq i8 %and17.i132, %mask
  %brmerge.i135 = or i1 %cmp.i133, %check_cancel.not.i
  br i1 %brmerge.i135, label %wait_for_tpm_stat_cond.exit141, label %land.lhs.true.i138

land.lhs.true.i138:                               ; preds = %for.cond
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 8
  %req_canceled.i136 = getelementptr inbounds %struct.tpm_class_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %req_canceled.i136 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req_canceled.i136, align 4
  %call7.i137 = call zeroext i1 %26(ptr noundef %chip, i8 noundef zeroext %call.i131) #8
  br i1 %call7.i137, label %wait_for_tpm_stat_cond.exit141.thread, label %land.lhs.true.i138.wait_for_tpm_stat_cond.exit141.thread157_crit_edge

land.lhs.true.i138.wait_for_tpm_stat_cond.exit141.thread157_crit_edge: ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_tpm_stat_cond.exit141.thread157

wait_for_tpm_stat_cond.exit141.thread:            ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0)
  %tobool37.not150 = icmp eq i32 %__ret28.0, 0
  br i1 %tobool37.not150, label %wait_for_tpm_stat_cond.exit141.thread.if.end56.thread221_crit_edge, label %wait_for_tpm_stat_cond.exit141.thread.if.end56_crit_edge

wait_for_tpm_stat_cond.exit141.thread.if.end56_crit_edge: ; preds = %wait_for_tpm_stat_cond.exit141.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

wait_for_tpm_stat_cond.exit141.thread.if.end56.thread221_crit_edge: ; preds = %wait_for_tpm_stat_cond.exit141.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.thread221

wait_for_tpm_stat_cond.exit141:                   ; preds = %for.cond
  br i1 %cmp.i133, label %for.end.loopexit.split.loop.exit193, label %wait_for_tpm_stat_cond.exit141.wait_for_tpm_stat_cond.exit141.thread157_crit_edge

wait_for_tpm_stat_cond.exit141.wait_for_tpm_stat_cond.exit141.thread157_crit_edge: ; preds = %wait_for_tpm_stat_cond.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_for_tpm_stat_cond.exit141.thread157

wait_for_tpm_stat_cond.exit141.thread157:         ; preds = %wait_for_tpm_stat_cond.exit141.wait_for_tpm_stat_cond.exit141.thread157_crit_edge, %land.lhs.true.i138.wait_for_tpm_stat_cond.exit141.thread157_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0)
  %tobool44.not = icmp eq i32 %__ret28.0, 0
  br i1 %tobool44.not, label %if.end64.thread, label %if.end50

if.end64.thread:                                  ; preds = %wait_for_tpm_stat_cond.exit141.thread157
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup92

if.end50:                                         ; preds = %wait_for_tpm_stat_cond.exit141.thread157
  %tobool51.not = icmp eq i32 %call29, 0
  br i1 %tobool51.not, label %cleanup, label %if.end56.thread

cleanup:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = call i32 @schedule_timeout(i32 noundef %__ret28.0) #8
  br label %for.cond

for.end.loopexit.split.loop.exit193:              ; preds = %wait_for_tpm_stat_cond.exit141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0)
  %tobool37.not.le = icmp eq i32 %__ret28.0, 0
  br i1 %tobool37.not.le, label %for.end.loopexit.split.loop.exit193.if.end56.thread221_crit_edge, label %for.end.loopexit.split.loop.exit193.if.end56_crit_edge

for.end.loopexit.split.loop.exit193.if.end56_crit_edge: ; preds = %for.end.loopexit.split.loop.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

for.end.loopexit.split.loop.exit193.if.end56.thread221_crit_edge: ; preds = %for.end.loopexit.split.loop.exit193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.thread221

if.end56.thread221:                               ; preds = %for.end.loopexit.split.loop.exit193.if.end56.thread221_crit_edge, %wait_for_tpm_stat_cond.exit141.thread.if.end56.thread221_crit_edge
  %canceled.1152165.ph.ph = phi i8 [ 1, %wait_for_tpm_stat_cond.exit141.thread.if.end56.thread221_crit_edge ], [ 0, %for.end.loopexit.split.loop.exit193.if.end56.thread221_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.then60

if.end56:                                         ; preds = %for.end.loopexit.split.loop.exit193.if.end56_crit_edge, %wait_for_tpm_stat_cond.exit141.thread.if.end56_crit_edge
  %canceled.1152165.ph = phi i8 [ 1, %wait_for_tpm_stat_cond.exit141.thread.if.end56_crit_edge ], [ 0, %for.end.loopexit.split.loop.exit193.if.end56_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret28.0)
  %cmp58 = icmp sgt i32 %__ret28.0, 0
  br i1 %cmp58, label %if.end56.if.then60_crit_edge, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end56.if.then60_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60

if.end56.thread:                                  ; preds = %if.end50
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp58214 = icmp sgt i32 %call29, 0
  br i1 %cmp58214, label %if.end56.thread.if.then60.thread_crit_edge, label %if.end56.thread.if.end64_crit_edge

if.end56.thread.if.end64_crit_edge:               ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end56.thread.if.then60.thread_crit_edge:       ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60.thread

if.then60:                                        ; preds = %if.end56.if.then60_crit_edge, %if.end56.thread221
  %canceled.1152165169216 = phi i8 [ %canceled.1152165.ph.ph, %if.end56.thread221 ], [ %canceled.1152165.ph, %if.end56.if.then60_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %canceled.1152165169216)
  %tobool61.not = icmp eq i8 %canceled.1152165169216, 0
  br i1 %tobool61.not, label %if.then60.if.then60.thread_crit_edge, label %if.then60.cleanup92_crit_edge

if.then60.cleanup92_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.then60.if.then60.thread_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then60.thread

if.then60.thread:                                 ; preds = %if.then60.if.then60.thread_crit_edge, %if.end56.thread.if.then60.thread_crit_edge, %wait_for_tpm_stat_cond.exit.if.then60.thread_crit_edge
  br label %cleanup92

if.end64:                                         ; preds = %if.end56.thread.if.end64_crit_edge, %if.end56.if.end64_crit_edge
  %__ret28.2171215 = phi i32 [ %call29, %if.end56.thread.if.end64_crit_edge ], [ %__ret28.0, %if.end56.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %__ret28.2171215)
  %cmp65 = icmp eq i32 %__ret28.2171215, -512
  br i1 %cmp65, label %land.lhs.true67, label %if.end64.cleanup92_crit_edge

if.end64.cleanup92_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

land.lhs.true67:                                  ; preds = %if.end64
  %27 = call i32 @llvm.read_register.i32(metadata !135) #8
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %31 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %land.lhs.true67.cleanup92_crit_edge, label %freezing.exit, !prof !147

land.lhs.true67.cleanup92_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

freezing.exit:                                    ; preds = %land.lhs.true67
  %call4.i = call zeroext i1 @freezing_slow_path(ptr noundef %30) #8
  br i1 %call4.i, label %if.then71, label %freezing.exit.cleanup92_crit_edge

freezing.exit.cleanup92_crit_edge:                ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

if.then71:                                        ; preds = %freezing.exit
  call void @_clear_bit(i32 noundef 0, ptr noundef %28) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %32
  %cmp8 = icmp slt i32 %sub, 1
  br i1 %cmp8, label %if.then71.cleanup92_crit_edge, label %if.then71.if.end11_crit_edge

if.then71.if.end11_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then71.cleanup92_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

do.body74:                                        ; preds = %do.cond86.do.body74_crit_edge, %do.body74.preheader
  %33 = ptrtoint ptr %timeout_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeout_min, align 4
  %35 = ptrtoint ptr %timeout_max to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %timeout_max, align 4
  tail call void @usleep_range_state(i32 noundef %34, i32 noundef %36, i32 noundef 2) #8
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 8
  %status76 = getelementptr inbounds %struct.tpm_class_ops, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %status76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %status76, align 4
  %call77 = tail call zeroext i8 %40(ptr noundef %chip) #8
  %and80128 = and i8 %call77, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and80128, i8 %mask)
  %cmp82 = icmp eq i8 %and80128, %mask
  br i1 %cmp82, label %do.body74.cleanup92_crit_edge, label %do.cond86

do.body74.cleanup92_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

do.cond86:                                        ; preds = %do.body74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub87 = sub i32 %41, %add
  %cmp88 = icmp slt i32 %sub87, 0
  br i1 %cmp88, label %do.cond86.do.body74_crit_edge, label %do.cond86.cleanup92_crit_edge

do.cond86.cleanup92_crit_edge:                    ; preds = %do.cond86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup92

do.cond86.do.body74_crit_edge:                    ; preds = %do.cond86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

cleanup92:                                        ; preds = %do.cond86.cleanup92_crit_edge, %do.body74.cleanup92_crit_edge, %if.then71.cleanup92_crit_edge, %freezing.exit.cleanup92_crit_edge, %land.lhs.true67.cleanup92_crit_edge, %if.end64.cleanup92_crit_edge, %if.then60.thread, %if.then60.cleanup92_crit_edge, %if.end64.thread, %land.lhs.true.i.cleanup92_crit_edge, %again.preheader.cleanup92_crit_edge, %entry.cleanup92_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup92_crit_edge ], [ 0, %if.then60.thread ], [ -125, %if.then60.cleanup92_crit_edge ], [ -62, %again.preheader.cleanup92_crit_edge ], [ -62, %if.end64.thread ], [ -62, %do.cond86.cleanup92_crit_edge ], [ 0, %do.body74.cleanup92_crit_edge ], [ -62, %if.then71.cleanup92_crit_edge ], [ -62, %if.end64.cleanup92_crit_edge ], [ -62, %freezing.exit.cleanup92_crit_edge ], [ -62, %land.lhs.true67.cleanup92_crit_edge ], [ -125, %land.lhs.true.i.cleanup92_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_tis_send_main(ptr noundef %chip, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @tpm_tis_send_data(ptr noundef %chip, ptr noundef %buf, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %locality, align 4
  %shl = shl i32 %3, 12
  %or = or i32 %shl, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %4 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %value.addr.i, align 1
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_ops.i, align 4
  %write_bytes.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_bytes.i, align 4
  %call.i = call i32 %8(ptr noundef %1, i32 noundef %or, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.out_err_crit_edge, label %if.end5

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.then6

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end5
  %add.ptr = getelementptr i8, ptr %buf, i32 6
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %call7 = call i32 @tpm_calc_ordinal_duration(ptr noundef %chip, i32 noundef %12) #8
  %read_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 8
  %call8 = call fastcc i32 @wait_for_tpm_stat(ptr noundef %chip, i8 noundef zeroext -112, i32 noundef %call7, ptr noundef %read_queue, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.out_err_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.out_err_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

out_err:                                          ; preds = %if.then6.out_err_crit_edge, %if.end.out_err_crit_edge
  %rc.0 = phi i32 [ %call.i, %if.end.out_err_crit_edge ], [ -62, %if.then6.out_err_crit_edge ]
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i, align 4
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %16, 12
  %or.i = or i32 %shl.i, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %17 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 64, ptr %value.addr.i.i, align 1
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %14, i32 0, i32 9
  %18 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_ops.i.i, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_bytes.i.i, align 4
  %call.i.i = call i32 %21(ptr noundef %14, i32 noundef %or.i, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.then6.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_err ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_tis_send_data(ptr noundef %chip, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i163 = alloca i8, align 1
  %status.i145 = alloca i8, align 1
  %value.addr.i = alloca i8, align 1
  %status.i124 = alloca i8, align 1
  %value.i = alloca i32, align 4
  %value.addr.i.i = alloca i8, align 1
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #8
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status.i, align 1, !annotation !145
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %locality.i, align 4
  %shl.i = shl i32 %6, 12
  %or.i = or i32 %shl.i, 24
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_ops.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i.i = call i32 %10(ptr noundef %1, i32 noundef %or.i, i16 noundef zeroext 1, ptr noundef nonnull %status.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.tpm_tis_status.exit.thread_crit_edge, label %if.end.i

entry.tpm_tis_status.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit.thread

if.end.i:                                         ; preds = %entry
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status.i, align 1
  %13 = and i8 %12, 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp2.not.i = icmp eq i8 %13, 0
  br i1 %cmp2.not.i, label %tpm_tis_status.exit, label %if.then5.i, !prof !147

if.then5.i:                                       ; preds = %if.end.i
  %call6.i = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.end.i, label %if.then5.i.tpm_tis_status.exit.thread_crit_edge

if.then5.i.tpm_tis_status.exit.thread_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit.thread

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status.i, align 1
  %conv10.i = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.40, i32 noundef %conv10.i) #11
  call void @dump_stack() #11
  br label %tpm_tis_status.exit.thread

tpm_tis_status.exit.thread:                       ; preds = %do.end.i, %if.then5.i.tpm_tis_status.exit.thread_crit_edge, %entry.tpm_tis_status.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #8
  br label %if.then

tpm_tis_status.exit:                              ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #8
  %16 = and i8 %12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp = icmp eq i8 %16, 0
  br i1 %cmp, label %tpm_tis_status.exit.if.then_crit_edge, label %tpm_tis_status.exit.if.end8_crit_edge

tpm_tis_status.exit.if.end8_crit_edge:            ; preds = %tpm_tis_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

tpm_tis_status.exit.if.then_crit_edge:            ; preds = %tpm_tis_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %tpm_tis_status.exit.if.then_crit_edge, %tpm_tis_status.exit.thread
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i, align 4
  %locality.i109 = getelementptr inbounds %struct.tpm_tis_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %locality.i109 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %locality.i109, align 4
  %shl.i110 = shl i32 %20, 12
  %or.i111 = or i32 %shl.i110, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %21 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 64, ptr %value.addr.i.i, align 1
  %phy_ops.i.i112 = getelementptr inbounds %struct.tpm_tis_data, ptr %18, i32 0, i32 9
  %22 = ptrtoint ptr %phy_ops.i.i112 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_ops.i.i112, align 4
  %write_bytes.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_bytes.i.i, align 4
  %call.i.i113 = call i32 %25(ptr noundef %18, i32 noundef %or.i111, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #8
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %26 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timeout_b, align 4
  %int_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 7
  %call4 = call fastcc i32 @wait_for_tpm_stat(ptr noundef %chip, i8 noundef zeroext 64, i32 noundef %27, ptr noundef %int_queue, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.out_err_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.out_err_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %tpm_tis_status.exit.if.end8_crit_edge
  %sub = add i32 %len, -1
  %flags.i115 = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %timeout_d.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %timeout_a.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %int_queue27 = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %tpm_tis_status.exit141.while.cond_crit_edge, %if.end8
  %count.0 = phi i32 [ 0, %if.end8 ], [ %add, %tpm_tis_status.exit141.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0, i32 %sub)
  %cmp9 = icmp ult i32 %count.0, %sub
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %value.i, align 4, !annotation !145
  %31 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i115, align 4
  %and.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %.sink.in.i = select i1 %tobool.not.i, ptr %timeout_d.i, ptr %timeout_a.i
  %34 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %locality.i116 = getelementptr inbounds %struct.tpm_tis_data, ptr %29, i32 0, i32 1
  %phy_ops.i.i117 = getelementptr inbounds %struct.tpm_tis_data, ptr %29, i32 0, i32 9
  %35 = add i32 %.sink.i, %33
  br label %do.body.i

do.body.i:                                        ; preds = %if.end8.i.do.body.i_crit_edge, %while.body
  %36 = ptrtoint ptr %locality.i116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %locality.i116, align 4
  %shl.i119 = shl i32 %37, 12
  %or.i120 = or i32 %shl.i119, 24
  %38 = ptrtoint ptr %phy_ops.i.i117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_ops.i.i117, align 4
  %read32.i.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i.i, align 4
  %call.i.i121 = call i32 %41(ptr noundef %29, i32 noundef %or.i120, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %cmp.i122 = icmp slt i32 %call.i.i121, 0
  br i1 %cmp.i122, label %do.body.i.do.end_crit_edge, label %if.end4.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end4.i:                                        ; preds = %do.body.i
  %42 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %value.i, align 4
  %shr.i = lshr i32 %43, 8
  %and5.i = and i32 %shr.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end16

if.end8.i:                                        ; preds = %if.end4.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %44, %35
  %cmp9.i = icmp slt i32 %sub.i, 0
  br i1 %cmp9.i, label %if.end8.i.do.body.i_crit_edge, label %if.end8.i.do.end_crit_edge

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end8.i.do.body.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end:                                           ; preds = %if.end8.i.do.end_crit_edge, %do.body.i.do.end_crit_edge
  %retval.0.i123.ph = phi i32 [ -16, %if.end8.i.do.end_crit_edge ], [ %call.i.i121, %do.body.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.37) #11
  br label %out_err

if.end16:                                         ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  %45 = xor i32 %count.0, -1
  %sub18 = add i32 %45, %len
  %46 = call i32 @llvm.smin.i32(i32 %and5.i, i32 %sub18)
  %47 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %locality.i, align 4
  %shl = shl i32 %48, 12
  %or = or i32 %shl, 36
  %conv21 = trunc i32 %46 to i16
  %add.ptr = getelementptr i8, ptr %buf, i32 %count.0
  %49 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_ops.i.i, align 4
  %write_bytes.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_bytes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_bytes.i, align 4
  %call.i = call i32 %52(ptr noundef %1, i32 noundef %or, i16 noundef zeroext %conv21, ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23 = icmp slt i32 %call.i, 0
  br i1 %cmp23, label %if.end16.out_err_crit_edge, label %if.end26

if.end16.out_err_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end26:                                         ; preds = %if.end16
  %add = add i32 %46, %count.0
  %53 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %timeout_c, align 8
  %call28 = call fastcc i32 @wait_for_tpm_stat(ptr noundef %chip, i8 noundef zeroext -128, i32 noundef %54, ptr noundef %int_queue27, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.out_err_crit_edge, label %if.end32

if.end26.out_err_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end32:                                         ; preds = %if.end26
  %55 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i124) #8
  %57 = ptrtoint ptr %status.i124 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %status.i124, align 1, !annotation !145
  %locality.i126 = getelementptr inbounds %struct.tpm_tis_data, ptr %56, i32 0, i32 1
  %58 = ptrtoint ptr %locality.i126 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %locality.i126, align 4
  %shl.i127 = shl i32 %59, 12
  %or.i128 = or i32 %shl.i127, 24
  %phy_ops.i.i129 = getelementptr inbounds %struct.tpm_tis_data, ptr %56, i32 0, i32 9
  %60 = ptrtoint ptr %phy_ops.i.i129 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_ops.i.i129, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.i.i130 = call i32 %63(ptr noundef %56, i32 noundef %or.i128, i16 noundef zeroext 1, ptr noundef nonnull %status.i124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %cmp.i131 = icmp slt i32 %call.i.i130, 0
  br i1 %cmp.i131, label %if.end32.tpm_tis_status.exit141_crit_edge, label %if.end.i133

if.end32.tpm_tis_status.exit141_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit141

if.end.i133:                                      ; preds = %if.end32
  %64 = ptrtoint ptr %status.i124 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %status.i124, align 1
  %66 = and i8 %65, 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp2.not.i132 = icmp eq i8 %66, 0
  br i1 %cmp2.not.i132, label %if.end.i133.tpm_tis_status.exit141_crit_edge, label %if.then5.i137, !prof !147

if.end.i133.tpm_tis_status.exit141_crit_edge:     ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit141

if.then5.i137:                                    ; preds = %if.end.i133
  %flags.i134 = getelementptr inbounds %struct.tpm_tis_data, ptr %56, i32 0, i32 4
  %call6.i135 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i134) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i135)
  %tobool7.not.i136 = icmp eq i32 %call6.i135, 0
  br i1 %tobool7.not.i136, label %do.end.i139, label %if.then5.i137.tpm_tis_status.exit141_crit_edge

if.then5.i137.tpm_tis_status.exit141_crit_edge:   ; preds = %if.then5.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit141

do.end.i139:                                      ; preds = %if.then5.i137
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %status.i124 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %status.i124, align 1
  %conv10.i138 = zext i8 %68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.40, i32 noundef %conv10.i138) #11
  call void @dump_stack() #11
  br label %tpm_tis_status.exit141

tpm_tis_status.exit141:                           ; preds = %do.end.i139, %if.then5.i137.tpm_tis_status.exit141_crit_edge, %if.end.i133.tpm_tis_status.exit141_crit_edge, %if.end32.tpm_tis_status.exit141_crit_edge
  %retval.0.i140 = phi i8 [ 0, %if.end32.tpm_tis_status.exit141_crit_edge ], [ 0, %do.end.i139 ], [ 0, %if.then5.i137.tpm_tis_status.exit141_crit_edge ], [ %65, %if.end.i133.tpm_tis_status.exit141_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i124) #8
  %69 = and i8 %retval.0.i140, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp37 = icmp eq i8 %69, 0
  %or.cond = select i1 %tobool.not, i1 %cmp37, i1 false
  br i1 %or.cond, label %tpm_tis_status.exit141.out_err_crit_edge, label %tpm_tis_status.exit141.while.cond_crit_edge

tpm_tis_status.exit141.while.cond_crit_edge:      ; preds = %tpm_tis_status.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

tpm_tis_status.exit141.out_err_crit_edge:         ; preds = %tpm_tis_status.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

while.end:                                        ; preds = %while.cond
  %70 = ptrtoint ptr %locality.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %locality.i, align 4
  %shl42 = shl i32 %71, 12
  %or43 = or i32 %shl42, 36
  %arrayidx = getelementptr i8, ptr %buf, i32 %count.0
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %74 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %value.addr.i, align 1
  %75 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phy_ops.i.i, align 4
  %write_bytes.i143 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_bytes.i143 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_bytes.i143, align 4
  %call.i144 = call i32 %78(ptr noundef %1, i32 noundef %or43, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp45 = icmp slt i32 %call.i144, 0
  br i1 %cmp45, label %while.end.out_err_crit_edge, label %if.end48

while.end.out_err_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end48:                                         ; preds = %while.end
  %79 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %timeout_c, align 8
  %call51 = call fastcc i32 @wait_for_tpm_stat(ptr noundef %chip, i8 noundef zeroext -128, i32 noundef %80, ptr noundef %int_queue27, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end48.out_err_crit_edge, label %if.end55

if.end48.out_err_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end55:                                         ; preds = %if.end48
  %81 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i145) #8
  %83 = ptrtoint ptr %status.i145 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %status.i145, align 1, !annotation !145
  %locality.i147 = getelementptr inbounds %struct.tpm_tis_data, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %locality.i147 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %locality.i147, align 4
  %shl.i148 = shl i32 %85, 12
  %or.i149 = or i32 %shl.i148, 24
  %phy_ops.i.i150 = getelementptr inbounds %struct.tpm_tis_data, ptr %82, i32 0, i32 9
  %86 = ptrtoint ptr %phy_ops.i.i150 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phy_ops.i.i150, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %call.i.i151 = call i32 %89(ptr noundef %82, i32 noundef %or.i149, i16 noundef zeroext 1, ptr noundef nonnull %status.i145) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i151)
  %cmp.i152 = icmp slt i32 %call.i.i151, 0
  br i1 %cmp.i152, label %if.end55.tpm_tis_status.exit162.thread_crit_edge, label %if.end.i154

if.end55.tpm_tis_status.exit162.thread_crit_edge: ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit162.thread

if.end.i154:                                      ; preds = %if.end55
  %90 = ptrtoint ptr %status.i145 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %status.i145, align 1
  %92 = and i8 %91, 35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp2.not.i153 = icmp eq i8 %92, 0
  br i1 %cmp2.not.i153, label %tpm_tis_status.exit162, label %if.then5.i158, !prof !147

if.then5.i158:                                    ; preds = %if.end.i154
  %flags.i155 = getelementptr inbounds %struct.tpm_tis_data, ptr %82, i32 0, i32 4
  %call6.i156 = call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i155) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i156)
  %tobool7.not.i157 = icmp eq i32 %call6.i156, 0
  br i1 %tobool7.not.i157, label %do.end.i160, label %if.then5.i158.tpm_tis_status.exit162.thread_crit_edge

if.then5.i158.tpm_tis_status.exit162.thread_crit_edge: ; preds = %if.then5.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %tpm_tis_status.exit162.thread

do.end.i160:                                      ; preds = %if.then5.i158
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %status.i145 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %status.i145, align 1
  %conv10.i159 = zext i8 %94 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.40, i32 noundef %conv10.i159) #11
  call void @dump_stack() #11
  br label %tpm_tis_status.exit162.thread

tpm_tis_status.exit162.thread:                    ; preds = %do.end.i160, %if.then5.i158.tpm_tis_status.exit162.thread_crit_edge, %if.end55.tpm_tis_status.exit162.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i145) #8
  br label %cleanup

tpm_tis_status.exit162:                           ; preds = %if.end.i154
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i145) #8
  %tobool.not.not = xor i1 %tobool.not, true
  %95 = and i8 %91, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp61.not = icmp eq i8 %95, 0
  %or.cond107 = select i1 %tobool.not.not, i1 true, i1 %cmp61.not
  br i1 %or.cond107, label %tpm_tis_status.exit162.cleanup_crit_edge, label %tpm_tis_status.exit162.out_err_crit_edge

tpm_tis_status.exit162.out_err_crit_edge:         ; preds = %tpm_tis_status.exit162
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

tpm_tis_status.exit162.cleanup_crit_edge:         ; preds = %tpm_tis_status.exit162
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_err:                                          ; preds = %tpm_tis_status.exit162.out_err_crit_edge, %if.end48.out_err_crit_edge, %while.end.out_err_crit_edge, %tpm_tis_status.exit141.out_err_crit_edge, %if.end26.out_err_crit_edge, %if.end16.out_err_crit_edge, %do.end, %if.then.out_err_crit_edge
  %rc.0 = phi i32 [ %retval.0.i123.ph, %do.end ], [ %call.i144, %while.end.out_err_crit_edge ], [ -62, %if.then.out_err_crit_edge ], [ -62, %if.end48.out_err_crit_edge ], [ -5, %tpm_tis_status.exit162.out_err_crit_edge ], [ -5, %tpm_tis_status.exit141.out_err_crit_edge ], [ -62, %if.end26.out_err_crit_edge ], [ %call.i, %if.end16.out_err_crit_edge ]
  %96 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %driver_data.i, align 4
  %locality.i165 = getelementptr inbounds %struct.tpm_tis_data, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %locality.i165 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %locality.i165, align 4
  %shl.i166 = shl i32 %99, 12
  %or.i167 = or i32 %shl.i166, 24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i163) #8
  %100 = ptrtoint ptr %value.addr.i.i163 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 64, ptr %value.addr.i.i163, align 1
  %phy_ops.i.i168 = getelementptr inbounds %struct.tpm_tis_data, ptr %97, i32 0, i32 9
  %101 = ptrtoint ptr %phy_ops.i.i168 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %phy_ops.i.i168, align 4
  %write_bytes.i.i169 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %write_bytes.i.i169 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_bytes.i.i169, align 4
  %call.i.i170 = call i32 %104(ptr noundef %97, i32 noundef %or.i167, i16 noundef zeroext 1, ptr noundef nonnull %value.addr.i.i163) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i163) #8
  br label %cleanup

cleanup:                                          ; preds = %out_err, %tpm_tis_status.exit162.cleanup_crit_edge, %tpm_tis_status.exit162.thread
  %retval.0 = phi i32 [ %rc.0, %out_err ], [ 0, %tpm_tis_status.exit162.cleanup_crit_edge ], [ 0, %tpm_tis_status.exit162.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_calc_ordinal_duration(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_getcap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tis_int_handler(i32 noundef %dummy, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  %access.i = alloca i8, align 1
  %interrupt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interrupt) #8
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %interrupt, align 4, !annotation !145
  %locality = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %locality, align 4
  %shl = shl i32 %4, 12
  %or = or i32 %shl, 16
  %phy_ops.i = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_ops.i, align 4
  %read32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i, align 4
  %call.i = call i32 %8(ptr noundef %1, i32 noundef %or, ptr noundef nonnull %interrupt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %irq_tested = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %irq_tested to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %irq_tested, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4.if.end6_crit_edge, label %if.then5

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %read_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 8
  call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  %12 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interrupt, align 4
  %and7 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end14_crit_edge, label %for.body.preheader

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.preheader:                               ; preds = %if.end6
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i) #8
  %16 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %access.i, align 1, !annotation !145
  %phy_ops.i.i = getelementptr inbounds %struct.tpm_tis_data, ptr %15, i32 0, i32 9
  %17 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_ops.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i.i = call i32 %20(ptr noundef %15, i32 noundef 0, i16 noundef zeroext 1, ptr noundef nonnull %access.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %for.body.preheader.for.inc_crit_edge, label %if.end.i

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %for.body.preheader
  %21 = ptrtoint ptr %access.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %access.i, align 1
  %23 = and i8 %22, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %23)
  %cmp2.i = icmp eq i8 %23, -96
  br i1 %cmp2.i, label %if.end.i.check_locality.exit_crit_edge, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.check_locality.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_locality.exit

check_locality.exit:                              ; preds = %if.end.i.4.check_locality.exit_crit_edge, %if.end.i.3.check_locality.exit_crit_edge, %if.end.i.2.check_locality.exit_crit_edge, %if.end.i.1.check_locality.exit_crit_edge, %if.end.i.check_locality.exit_crit_edge
  %i.053.lcssa = phi i32 [ 0, %if.end.i.check_locality.exit_crit_edge ], [ 1, %if.end.i.1.check_locality.exit_crit_edge ], [ 2, %if.end.i.2.check_locality.exit_crit_edge ], [ 3, %if.end.i.3.check_locality.exit_crit_edge ], [ 4, %if.end.i.4.check_locality.exit_crit_edge ]
  %.lcssa = phi ptr [ %15, %if.end.i.check_locality.exit_crit_edge ], [ %26, %if.end.i.1.check_locality.exit_crit_edge ], [ %36, %if.end.i.2.check_locality.exit_crit_edge ], [ %46, %if.end.i.3.check_locality.exit_crit_edge ], [ %56, %if.end.i.4.check_locality.exit_crit_edge ]
  %locality.i = getelementptr inbounds %struct.tpm_tis_data, ptr %.lcssa, i32 0, i32 1
  %24 = ptrtoint ptr %locality.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.053.lcssa, ptr %locality.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  br label %if.end14

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i) #8
  %27 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %access.i, align 1, !annotation !145
  %phy_ops.i.i.1 = getelementptr inbounds %struct.tpm_tis_data, ptr %26, i32 0, i32 9
  %28 = ptrtoint ptr %phy_ops.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_ops.i.i.1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i.i.1 = call i32 %31(ptr noundef %26, i32 noundef 4096, i16 noundef zeroext 1, ptr noundef nonnull %access.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.1, label %for.inc.for.inc.1_crit_edge, label %if.end.i.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.i.1:                                       ; preds = %for.inc
  %32 = ptrtoint ptr %access.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %access.i, align 1
  %34 = and i8 %33, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %34)
  %cmp2.i.1 = icmp eq i8 %34, -96
  br i1 %cmp2.i.1, label %if.end.i.1.check_locality.exit_crit_edge, label %if.end.i.1.for.inc.1_crit_edge

if.end.i.1.for.inc.1_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.end.i.1.check_locality.exit_crit_edge:         ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_locality.exit

for.inc.1:                                        ; preds = %if.end.i.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  %35 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i) #8
  %37 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %access.i, align 1, !annotation !145
  %phy_ops.i.i.2 = getelementptr inbounds %struct.tpm_tis_data, ptr %36, i32 0, i32 9
  %38 = ptrtoint ptr %phy_ops.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_ops.i.i.2, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i.i.2 = call i32 %41(ptr noundef %36, i32 noundef 8192, i16 noundef zeroext 1, ptr noundef nonnull %access.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp.i.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.i.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.i.2:                                       ; preds = %for.inc.1
  %42 = ptrtoint ptr %access.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %access.i, align 1
  %44 = and i8 %43, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %44)
  %cmp2.i.2 = icmp eq i8 %44, -96
  br i1 %cmp2.i.2, label %if.end.i.2.check_locality.exit_crit_edge, label %if.end.i.2.for.inc.2_crit_edge

if.end.i.2.for.inc.2_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.end.i.2.check_locality.exit_crit_edge:         ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_locality.exit

for.inc.2:                                        ; preds = %if.end.i.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  %45 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i) #8
  %47 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %access.i, align 1, !annotation !145
  %phy_ops.i.i.3 = getelementptr inbounds %struct.tpm_tis_data, ptr %46, i32 0, i32 9
  %48 = ptrtoint ptr %phy_ops.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_ops.i.i.3, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call.i.i.3 = call i32 %51(ptr noundef %46, i32 noundef 12288, i16 noundef zeroext 1, ptr noundef nonnull %access.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp.i.3 = icmp slt i32 %call.i.i.3, 0
  br i1 %cmp.i.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.i.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.i.3:                                       ; preds = %for.inc.2
  %52 = ptrtoint ptr %access.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %access.i, align 1
  %54 = and i8 %53, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %54)
  %cmp2.i.3 = icmp eq i8 %54, -96
  br i1 %cmp2.i.3, label %if.end.i.3.check_locality.exit_crit_edge, label %if.end.i.3.for.inc.3_crit_edge

if.end.i.3.for.inc.3_crit_edge:                   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.end.i.3.check_locality.exit_crit_edge:         ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_locality.exit

for.inc.3:                                        ; preds = %if.end.i.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  %55 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %access.i) #8
  %57 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %access.i, align 1, !annotation !145
  %phy_ops.i.i.4 = getelementptr inbounds %struct.tpm_tis_data, ptr %56, i32 0, i32 9
  %58 = ptrtoint ptr %phy_ops.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_ops.i.i.4, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %call.i.i.4 = call i32 %61(ptr noundef %56, i32 noundef 16384, i16 noundef zeroext 1, ptr noundef nonnull %access.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %cmp.i.4 = icmp slt i32 %call.i.i.4, 0
  br i1 %cmp.i.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.i.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end.i.4:                                       ; preds = %for.inc.3
  %62 = ptrtoint ptr %access.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %access.i, align 1
  %64 = and i8 %63, -94
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %64)
  %cmp2.i.4 = icmp eq i8 %64, -96
  br i1 %cmp2.i.4, label %if.end.i.4.check_locality.exit_crit_edge, label %if.end.i.4.for.inc.4_crit_edge

if.end.i.4.for.inc.4_crit_edge:                   ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.end.i.4.check_locality.exit_crit_edge:         ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_locality.exit

for.inc.4:                                        ; preds = %if.end.i.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %access.i) #8
  br label %if.end14

if.end14:                                         ; preds = %for.inc.4, %check_locality.exit, %if.end6.if.end14_crit_edge
  %65 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %interrupt, align 4
  %and15 = and i32 %66, 134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %int_queue = getelementptr inbounds %struct.tpm_tis_data, ptr %1, i32 0, i32 7
  call void @__wake_up(ptr noundef %int_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %67 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %locality, align 4
  %shl20 = shl i32 %68, 12
  %or21 = or i32 %shl20, 16
  %69 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %interrupt, align 4
  %71 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy_ops.i, align 4
  %write32.i = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32.i, align 4
  %call.i47 = call i32 %74(ptr noundef %1, i32 noundef %or21, i32 noundef %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp23 = icmp slt i32 %call.i47, 0
  br i1 %cmp23, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %locality to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %locality, align 4
  %shl27 = shl i32 %76, 12
  %or28 = or i32 %shl27, 16
  %77 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %phy_ops.i, align 4
  %read32.i49 = getelementptr inbounds %struct.tpm_tis_phy_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %read32.i49 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read32.i49, align 4
  %call.i50 = call i32 %80(ptr noundef %1, i32 noundef %or28, ptr noundef nonnull %interrupt) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interrupt) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_get_tpm_pt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !69, !70, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !108, !110, !112, !113, !114, !115, !117, !119, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__ksymtab_tpm_tis_remove, !1, !"__ksymtab_tpm_tis_remove", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 852, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1019, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tpm_tis_core_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tpm_tis_core_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1034, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug258, !13, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1037, i32 3}
!18 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug259, !17, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1039, i32 3}
!21 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug260, !20, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1041, i32 3}
!24 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug261, !23, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1043, i32 3}
!27 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug262, !26, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1045, i32 3}
!30 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug263, !29, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1047, i32 3}
!33 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug264, !32, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1049, i32 3}
!36 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug265, !35, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1051, i32 3}
!39 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug266, !38, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1053, i32 3}
!42 = !{ptr @tpm_tis_core_init.__UNIQUE_ID_ddebug267, !41, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!43 = !{ptr @tpm_tis_core_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1056, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tpm_tis_core_init.__key.19, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1057, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1074, i32 4}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tpm_tis_core_init._entry.21, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tpm_tis_core_init._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1083, i32 5}
!56 = !{ptr @tpm_tis_core_init._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @tpm_tis_core_init._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @__ksymtab_tpm_tis_core_init, !59, !"__ksymtab_tpm_tis_core_init", i1 false, i1 false}
!59 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1109, i32 1}
!60 = !{ptr @__ksymtab_tpm_tis_resume, !61, !"__ksymtab_tpm_tis_resume", i1 false, i1 false}
!61 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1173, i32 1}
!62 = !{ptr @__UNIQUE_ID_author268, !63, !"__UNIQUE_ID_author268", i1 false, i1 false}
!63 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1176, i32 1}
!64 = !{ptr @__UNIQUE_ID_description269, !65, !"__UNIQUE_ID_description269", i1 false, i1 false}
!65 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1177, i32 1}
!66 = !{ptr @__UNIQUE_ID_version270, !67, !"__UNIQUE_ID_version270", i1 false, i1 false}
!67 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1178, i32 1}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__modver_attr, !67, !"__modver_attr", i1 false, i1 false}
!70 = !{ptr @__UNIQUE_ID_file271, !71, !"__UNIQUE_ID_file271", i1 false, i1 false}
!71 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 1179, i32 1}
!72 = !{ptr @__UNIQUE_ID_license272, !71, !"__UNIQUE_ID_license272", i1 false, i1 false}
!73 = !{ptr @tpm_tis, !74, !"tpm_tis", i1 false, i1 false}
!74 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 906, i32 35}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 301, i32 3}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @tpm_tis_recv._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @tpm_tis_recv._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 314, i32 3}
!82 = !{ptr @tpm_tis_recv._entry.31, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tpm_tis_recv._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 326, i32 3}
!86 = !{ptr @tpm_tis_recv._entry.34, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tpm_tis_recv._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 271, i32 4}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @recv_data._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @recv_data._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 362, i32 4}
!95 = !{ptr @tpm_tis_send_data._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @tpm_tis_send_data._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 207, i32 4}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @tpm_tis_status._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @tpm_tis_status._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 594, i32 3}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tpm_tis_update_timeouts._entry, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @tpm_tis_update_timeouts._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @vendor_timeout_overrides, !109, !"vendor_timeout_overrides", i1 false, i1 false}
!109 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 574, i32 49}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 520, i32 3}
!112 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @tpm_tis_update_durations._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @tpm_tis_update_durations._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 527, i32 5}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 533, i32 6}
!119 = !{ptr @vendor_dur_overrides, !120, !"vendor_dur_overrides", i1 false, i1 false}
!120 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 497, i32 52}
!121 = !{ptr @probe_itpm.cmd_getticks, !122, !"cmd_getticks", i1 false, i1 false}
!122 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 623, i32 18}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 654, i32 3}
!125 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @probe_itpm._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @probe_itpm._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 752, i32 3}
!130 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @tpm_tis_probe_irq_single._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @tpm_tis_probe_irq_single._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/char/tpm/tpm_tis_core.c", i32 719, i32 21}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{!"auto-init"}
!146 = !{i64 2148980454, i64 2148980459, i64 2148980472, i64 2148980516, i64 2148980550, i64 2148980571}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i8 0, i8 2}
