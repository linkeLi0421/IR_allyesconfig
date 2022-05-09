; ModuleID = '/llk/IR_all_yes/drivers/scsi/megaraid/megaraid_mm.c_pt.bc'
source_filename = "../drivers/scsi/megaraid/megaraid_mm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mraid_mm_register_adp\22, \22a\22\09"
module asm "\09.weak\09__crc_mraid_mm_register_adp\09\09\09\09"
module asm "\09.long\09__crc_mraid_mm_register_adp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mraid_mm_register_adp:\09\09\09\09\09"
module asm "\09.asciz \09\22mraid_mm_register_adp\22\09\09\09\09\09"
module asm "__kstrtabns_mraid_mm_register_adp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mraid_mm_unregister_adp\22, \22a\22\09"
module asm "\09.weak\09__crc_mraid_mm_unregister_adp\09\09\09\09"
module asm "\09.long\09__crc_mraid_mm_unregister_adp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mraid_mm_unregister_adp:\09\09\09\09\09"
module asm "\09.asciz \09\22mraid_mm_unregister_adp\22\09\09\09\09\09"
module asm "__kstrtabns_mraid_mm_unregister_adp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mraid_mm_adapter_app_handle\22, \22a\22\09"
module asm "\09.weak\09__crc_mraid_mm_adapter_app_handle\09\09\09\09"
module asm "\09.long\09__crc_mraid_mm_adapter_app_handle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mraid_mm_adapter_app_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22mraid_mm_adapter_app_handle\22\09\09\09\09\09"
module asm "__kstrtabns_mraid_mm_adapter_app_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mraid_mmadp = type { i32, i32, i32, i16, i8, ptr, ptr, i32, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, %struct.semaphore, ptr, ptr, [5 x %struct.mm_dmapool] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mm_dmapool = type { ptr, i32, i32, ptr, %struct.spinlock, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.mbox64_t = type <{ i32, i32, %struct.mbox_t }>
%struct.mbox_t = type <{ i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, [46 x i8], i8, i8 }>
%struct.uioc = type <{ [16 x i8], i16, i16, i32, i32, i64, i32, i32, i32, [128 x i8], ptr, i32, i32, ptr, ptr, i32, %struct.list_head, ptr, ptr, i32, i8, i8, i8, [801 x i8] }>
%struct.mimd = type <{ i32, i32, %union.anon.72, [18 x i8], %struct.mraid_passthru_t, ptr, [4 x i8] }>
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i8, i8, i16, ptr, [4 x i8], i32 }
%struct.mraid_passthru_t = type { i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, [32 x i8], i8, i8, i32, i32 }
%struct.uioc_timeout = type { %struct.timer_list, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mcontroller = type <{ i64, i8, i8, i8, i16, i8, i16, i16, i8, i32 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mraid_hba_info = type { i16, i16, i16, i16, i64, i8, i8, i8, i8, i32, i32, i8, [227 x i8] }

@__UNIQUE_ID_author236 = internal constant [41 x i8] c"megaraid_mm.author=LSI Logic Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [52 x i8] c"megaraid_mm.description=LSI Logic Management Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [51 x i8] c"megaraid_mm.file=drivers/scsi/megaraid/megaraid_mm\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [24 x i8] c"megaraid_mm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version240 = internal constant [29 x i8] c"megaraid_mm.version=2.20.2.7\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"megaraid_mm\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.20.2.7\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_dlevel = internal constant [19 x i8] c"megaraid_mm.dlevel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dbglevel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dlevel = internal constant %struct.kernel_param { ptr @__param_str_dlevel, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @dbglevel } }, section "__param", align 4
@__UNIQUE_ID_dleveltype241 = internal constant [32 x i8] c"megaraid_mm.parmtype=dlevel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dlevel242 = internal constant [48 x i8] c"megaraid_mm.parm=dlevel:Debug level (default=0)\00", section ".modinfo", align 1
@__kstrtab_mraid_mm_register_adp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mraid_mm_register_adp = external dso_local constant [0 x i8], align 1
@__ksymtab_mraid_mm_register_adp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mraid_mm_register_adp to i32), ptr @__kstrtab_mraid_mm_register_adp, ptr @__kstrtabns_mraid_mm_register_adp }, section "___ksymtab+mraid_mm_register_adp", align 4
@__kstrtab_mraid_mm_unregister_adp = external dso_local constant [0 x i8], align 1
@__kstrtabns_mraid_mm_unregister_adp = external dso_local constant [0 x i8], align 1
@__ksymtab_mraid_mm_unregister_adp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mraid_mm_unregister_adp to i32), ptr @__kstrtab_mraid_mm_unregister_adp, ptr @__kstrtabns_mraid_mm_unregister_adp }, section "___ksymtab+mraid_mm_unregister_adp", align 4
@__kstrtab_mraid_mm_adapter_app_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_mraid_mm_adapter_app_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_mraid_mm_adapter_app_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mraid_mm_adapter_app_handle to i32), ptr @__kstrtab_mraid_mm_adapter_app_handle, ptr @__kstrtabns_mraid_mm_adapter_app_handle }, section "___ksymtab+mraid_mm_adapter_app_handle", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"megaraid mm pthru pool\00", [41 x i8] zeroinitializer }, align 32
@mraid_mm_register_adp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014megaraid cmm: out of memory, %s %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mraid_mm_register_adp\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/megaraid/megaraid_mm.c\00", [60 x i8] zeroinitializer }, align 32
@mraid_mm_register_adp._entry_ptr = internal global ptr @mraid_mm_register_adp._entry, section ".printk_index", align 4
@mraid_mm_register_adp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&adapter->kioc_pool_lock\00", [39 x i8] zeroinitializer }, align 32
@mraid_mm_register_adp._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mraid_mm_register_adp._entry_ptr.9 = internal global ptr @mraid_mm_register_adp._entry.8, section ".printk_index", align 4
@adapters_list_g = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@adapters_count_g = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mraid_mm_unregister_adp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"megaraid cmm: Unregistered one adapter:%#x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mraid_mm_unregister_adp\00", [40 x i8] zeroinitializer }, align 32
@mraid_mm_unregister_adp._entry_ptr = internal global ptr @mraid_mm_unregister_adp._entry, section ".printk_index", align 4
@mraid_mm_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exiting common mod\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mraid_mm_exit\00", [18 x i8] zeroinitializer }, align 32
@mraid_mm_exit._entry_ptr = internal global ptr @mraid_mm_exit._entry, section ".printk_index", align 4
@megaraid_mm_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.18, ptr @lsi_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_megaraid_mm__243_1243_mraid_mm_init6 = internal global ptr @mraid_mm_init, section ".initcall6.init", align 4
@__exitcall_mraid_mm_exit = internal global ptr @mraid_mm_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@mraid_mm_setup_dma_pools.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"megaraid mm data buffer\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"megadev0\00", [23 x i8] zeroinitializer }, align 32
@lsi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mraid_mm_unlocked_ioctl, ptr null, ptr null, i32 0, ptr @mraid_mm_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mraid_mm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mraid_mm_mutex, i64 52), ptr getelementptr (i8, ptr @mraid_mm_mutex, i64 52) }, ptr @mraid_mm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mraid_mm_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mraid_mm_mutex\00", [17 x i8] zeroinitializer }, align 32
@mraid_mm_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014megaraid cmm: copy from usr addr failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mraid_mm_ioctl\00", [17 x i8] zeroinitializer }, align 32
@mraid_mm_ioctl._entry_ptr = internal global ptr @mraid_mm_ioctl._entry, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"$$_EXTD_IOCTL_$$\00", [47 x i8] zeroinitializer }, align 32
@mraid_mm_ioctl._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.6, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014megaraid cmm: controller cannot accept cmds due to earlier errors\0A\00", [59 x i8] zeroinitializer }, align 32
@mraid_mm_ioctl._entry_ptr.26 = internal global ptr @mraid_mm_ioctl._entry.24, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@drvr_ver = internal global { i32, [28 x i8] } { i32 35652103, [28 x i8] zeroinitializer }, align 32
@mraid_mm_alloc_kioc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"megaraid cmm: kioc list empty!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mraid_mm_alloc_kioc\00", [44 x i8] zeroinitializer }, align 32
@mraid_mm_alloc_kioc._entry_ptr = internal global ptr @mraid_mm_alloc_kioc._entry, section ".printk_index", align 4
@mimd_to_kioc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014megaraid cmm: Invalid subop\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mimd_to_kioc\00", [19 x i8] zeroinitializer }, align 32
@mimd_to_kioc._entry_ptr = internal global ptr @mimd_to_kioc._entry, section ".printk_index", align 4
@ioctl_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014megaraid cmm: lld didn't change status!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ioctl_done\00", [21 x i8] zeroinitializer }, align 32
@ioctl_done._entry_ptr = internal global ptr @ioctl_done._entry, section ".printk_index", align 4
@ioctl_done._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.6, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014megaraid cmm: completed ioctl that was timedout before\0A\00", [38 x i8] zeroinitializer }, align 32
@ioctl_done._entry_ptr.38 = internal global ptr @ioctl_done._entry.36, section ".printk_index", align 4
@wait_q = internal global { %struct.wait_queue_head, [44 x i8] } zeroinitializer, align 32
@lld_ioctl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&timeout.timer)\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lld_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014megaraid cmm: ioctl timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lld_timedout\00", [19 x i8] zeroinitializer }, align 32
@lld_timedout._entry_ptr = internal global ptr @lld_timedout._entry, section ".printk_index", align 4
@mraid_mm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.6, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016megaraid cmm: %s %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mraid_mm_init\00", [18 x i8] zeroinitializer }, align 32
@mraid_mm_init._entry_ptr = internal global ptr @mraid_mm_init._entry, section ".printk_index", align 4
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(Release Date: Sun Jul 16 00:01:03 EST 2006)\00", [51 x i8] zeroinitializer }, align 32
@mraid_mm_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.6, i32 1220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"megaraid cmm: cannot register misc device\0A\00", [53 x i8] zeroinitializer }, align 32
@mraid_mm_init._entry_ptr.47 = internal global ptr @mraid_mm_init._entry.45, section ".printk_index", align 4
@mraid_mm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"&wait_q\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 101, i64 109]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 195, i64 227]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 8, i64 128, i64 129, i64 130]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 47, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"dbglevel\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 49, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 941, i32 44 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 949, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 962, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 976, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"adapters_list_g\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 60, i32 25 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"adapters_count_g\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 59, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1137, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1238, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [16 x i8] c"megaraid_mm_dev\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 72, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 33, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 34, i32 28 }
@___asan_gen_.121 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 35, i32 39 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1084, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1086, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 74, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant [9 x i8] c"lsi_fops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 64, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"mraid_mm_mutex\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 20, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 126, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 131, i32 24 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 163, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 230, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 214, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 156, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [9 x i8] c"drvr_ver\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 57, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 604, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 399, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 740, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 757, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"wait_q\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 62, i32 26 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 693, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 792, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1215, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1220, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [39 x i8] c"../drivers/scsi/megaraid/megaraid_mm.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1224, i32 2 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_dlevel242, ptr @__UNIQUE_ID_dleveltype241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__UNIQUE_ID_version240, ptr @__exitcall_mraid_mm_exit, ptr @__initcall__kmod_megaraid_mm__243_1243_mraid_mm_init6, ptr @__ksymtab_mraid_mm_adapter_app_handle, ptr @__ksymtab_mraid_mm_register_adp, ptr @__ksymtab_mraid_mm_unregister_adp, ptr @__modver_attr, ptr @__param_dlevel, ptr @ioctl_done._entry, ptr @ioctl_done._entry.36, ptr @ioctl_done._entry_ptr, ptr @ioctl_done._entry_ptr.38, ptr @lld_timedout._entry, ptr @lld_timedout._entry_ptr, ptr @mimd_to_kioc._entry, ptr @mimd_to_kioc._entry_ptr, ptr @mraid_mm_alloc_kioc._entry, ptr @mraid_mm_alloc_kioc._entry_ptr, ptr @mraid_mm_exit, ptr @mraid_mm_exit._entry, ptr @mraid_mm_exit._entry_ptr, ptr @mraid_mm_init._entry, ptr @mraid_mm_init._entry.45, ptr @mraid_mm_init._entry_ptr, ptr @mraid_mm_init._entry_ptr.47, ptr @mraid_mm_ioctl._entry, ptr @mraid_mm_ioctl._entry.24, ptr @mraid_mm_ioctl._entry_ptr, ptr @mraid_mm_ioctl._entry_ptr.26, ptr @mraid_mm_register_adp._entry, ptr @mraid_mm_register_adp._entry.8, ptr @mraid_mm_register_adp._entry_ptr, ptr @mraid_mm_register_adp._entry_ptr.9, ptr @mraid_mm_unregister_adp._entry, ptr @mraid_mm_unregister_adp._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dbglevel, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mraid_mm_register_adp.__key, ptr @.str.7, ptr @adapters_list_g, ptr @adapters_count_g, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @megaraid_mm_dev, ptr @sema_init.__key, ptr @.str.14, ptr @.str.15, ptr @mraid_mm_setup_dma_pools.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @lsi_fops, ptr @mraid_mm_mutex, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @drvr_ver, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @wait_q, ptr @lld_ioctl.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @mraid_mm_init.__key, ptr @.str.48], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbglevel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_register_adp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_register_adp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_register_adp._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapters_list_g to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapters_count_g to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_unregister_adp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @megaraid_mm_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_setup_dma_pools.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lsi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_ioctl._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drvr_ver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_alloc_kioc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mimd_to_kioc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctl_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctl_done._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_q to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lld_ioctl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lld_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mraid_mm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mraid_mm_register_adp(ptr nocapture noundef readonly %lld_adp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drvr_type = getelementptr inbounds %struct.mraid_mmadp, ptr %lld_adp, i32 0, i32 1
  %0 = ptrtoint ptr %drvr_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drvr_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 476) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %3 = ptrtoint ptr %lld_adp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lld_adp, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %drvr_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drvr_type, align 4
  %drvr_type5 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %drvr_type5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %drvr_type5, align 4
  %drvr_data = getelementptr inbounds %struct.mraid_mmadp, ptr %lld_adp, i32 0, i32 2
  %9 = ptrtoint ptr %drvr_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %drvr_data, align 4
  %drvr_data6 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %drvr_data6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %drvr_data6, align 8
  %pdev = getelementptr inbounds %struct.mraid_mmadp, ptr %lld_adp, i32 0, i32 5
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %pdev7 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %pdev7, align 8
  %issue_uioc = getelementptr inbounds %struct.mraid_mmadp, ptr %lld_adp, i32 0, i32 6
  %15 = ptrtoint ptr %issue_uioc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %issue_uioc, align 4
  %issue_uioc8 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %issue_uioc8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %issue_uioc8, align 4
  %timeout = getelementptr inbounds %struct.mraid_mmadp, ptr %lld_adp, i32 0, i32 3
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %timeout, align 4
  %timeout9 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %timeout9 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %timeout9, align 4
  %max_kioc = getelementptr inbounds %struct.mraid_mmadp, ptr %lld_adp, i32 0, i32 4
  %21 = ptrtoint ptr %max_kioc to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_kioc, align 2
  %max_kioc10 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %max_kioc10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %max_kioc10, align 2
  %quiescent = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %quiescent to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %quiescent, align 8
  %conv = zext i8 %22 to i32
  %25 = shl nuw nsw i32 %conv, 10
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #15
  %kioc_list = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %kioc_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i, ptr %kioc_list, align 4
  %27 = ptrtoint ptr %max_kioc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_kioc, align 2
  %conv14 = zext i8 %28 to i32
  %29 = mul nuw nsw i32 %conv14, 74
  %call8.i180 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #15
  %mbox_list16 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 13
  %30 = ptrtoint ptr %mbox_list16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i180, ptr %mbox_list16, align 4
  %31 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev7, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call18 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.3, ptr noundef %dev, i32 noundef 60, i32 noundef 16, i32 noundef 0) #11
  %pthru_dma_pool = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 14
  %33 = ptrtoint ptr %pthru_dma_pool to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call18, ptr %pthru_dma_pool, align 8
  %34 = ptrtoint ptr %kioc_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %kioc_list, align 4
  %tobool20.not = icmp eq ptr %35, null
  br i1 %tobool20.not, label %if.end2.if.then26_crit_edge, label %lor.lhs.false

if.end2.if.then26_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end2
  %36 = ptrtoint ptr %mbox_list16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mbox_list16, align 4
  %tobool22.not = icmp eq ptr %37, null
  %tobool25.not = icmp eq ptr %call18, null
  %or.cond = select i1 %tobool22.not, i1 true, i1 %tobool25.not
  br i1 %or.cond, label %lor.lhs.false.if.then26_crit_edge, label %if.end32

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.end2.if.then26_crit_edge
  %38 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp27 = icmp sgt i32 %38, -1
  br i1 %cmp27, label %do.end, label %if.then26.memalloc_error_crit_edge

if.then26.memalloc_error_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %memalloc_error

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 951) #16
  br label %memalloc_error

if.end32:                                         ; preds = %lor.lhs.false
  %kioc_pool = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %kioc_pool to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %kioc_pool, ptr %kioc_pool, align 8
  %prev.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %kioc_pool, ptr %prev.i, align 4
  %kioc_pool_lock = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %kioc_pool_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mraid_mm_register_adp.__key, i16 noundef signext 3) #11
  %kioc_semaphore = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12
  %41 = ptrtoint ptr %max_kioc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %max_kioc, align 2
  %conv38 = zext i8 %42 to i32
  %wait_list1.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 2
  %43 = ptrtoint ptr %kioc_semaphore to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %kioc_semaphore, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 1
  %44 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 2
  %45 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 3
  %46 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 4
  %47 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.14, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 0, i32 4, i32 5
  %51 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 1
  %52 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv38, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 8
  %53 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 12, i32 2, i32 1
  %54 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %55 = ptrtoint ptr %mbox_list16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mbox_list16, align 4
  %57 = ptrtoint ptr %max_kioc to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %max_kioc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp42195.not = icmp eq i8 %58, 0
  br i1 %cmp42195.not, label %if.end32.for.body.i.preheader_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

if.end32.for.body.i.preheader_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.0196 = phi i32 [ %inc, %list_add_tail.exit.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %59 = ptrtoint ptr %kioc_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %kioc_list, align 4
  %add.ptr45 = getelementptr %struct.mbox64_t, ptr %56, i32 %i.0196
  %61 = ptrtoint ptr %add.ptr45 to i32
  %conv46 = zext i32 %61 to i64
  %cmdbuf = getelementptr %struct.uioc, ptr %60, i32 %i.0196, i32 5
  %62 = ptrtoint ptr %cmdbuf to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %conv46, ptr %cmdbuf, align 4
  %63 = ptrtoint ptr %pthru_dma_pool to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pthru_dma_pool, align 8
  %pthru32_h = getelementptr %struct.uioc, ptr %60, i32 %i.0196, i32 15
  %call48 = tail call ptr @dma_pool_alloc(ptr noundef %64, i32 noundef 3264, ptr noundef %pthru32_h) #11
  %pthru32 = getelementptr %struct.uioc, ptr %60, i32 %i.0196, i32 14
  %65 = ptrtoint ptr %pthru32 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call48, ptr %pthru32, align 64
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.then51, label %if.end61

if.then51:                                        ; preds = %for.body
  %66 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp52 = icmp sgt i32 %66, -1
  br i1 %cmp52, label %do.end57, label %if.then51.pthru_dma_pool_error_crit_edge

if.then51.pthru_dma_pool_error_crit_edge:         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %pthru_dma_pool_error

do.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 978) #16
  br label %pthru_dma_pool_error

if.end61:                                         ; preds = %for.body
  %list = getelementptr %struct.uioc, ptr %60, i32 %i.0196, i32 16
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %68, ptr noundef %kioc_pool) #11
  br i1 %call.i.i, label %if.end.i.i185, label %if.end61.list_add_tail.exit_crit_edge

if.end61.list_add_tail.exit_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i185:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list, ptr %prev.i, align 4
  %70 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %kioc_pool, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.uioc, ptr %60, i32 %i.0196, i32 16, i32 1
  %71 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %list, ptr %68, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i185, %if.end61.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0196, 1
  %73 = ptrtoint ptr %max_kioc to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %max_kioc, align 2
  %conv41 = zext i8 %74 to i32
  %cmp42 = icmp ult i32 %inc, %conv41
  br i1 %cmp42, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.body.i.preheader_crit_edge

list_add_tail.exit.for.body.i.preheader_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.i.preheader:                             ; preds = %list_add_tail.exit.for.body.i.preheader_crit_edge, %if.end32.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.025.i = phi i32 [ %inc.i, %if.end8.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %bufsize.024.i = phi i32 [ %mul.i, %if.end8.i.for.body.i_crit_edge ], [ 4096, %for.body.i.preheader ]
  %buf_size.i = getelementptr %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 15, i32 %i.025.i, i32 2
  %75 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %bufsize.024.i, ptr %buf_size.i, align 4
  %lock.i = getelementptr %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 15, i32 %i.025.i, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @mraid_mm_setup_dma_pools.__key, i16 noundef signext 3) #11
  %76 = ptrtoint ptr %pdev7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev7, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  %call1.i = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.17, ptr noundef %dev.i, i32 noundef %bufsize.024.i, i32 noundef 16, i32 noundef 0) #11
  %handle.i = getelementptr %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 15, i32 %i.025.i, i32 3
  %78 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call1.i, ptr %handle.i, align 8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.mraid_mm_setup_dma_pools.exit_crit_edge, label %if.end.i186

for.body.i.mraid_mm_setup_dma_pools.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_setup_dma_pools.exit

if.end.i186:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 15, i32 %i.025.i
  %paddr.i = getelementptr %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 15, i32 %i.025.i, i32 1
  %call4.i = tail call ptr @dma_pool_alloc(ptr noundef nonnull %call1.i, i32 noundef 3264, ptr noundef %paddr.i) #11
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call4.i, ptr %arrayidx.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.end.i186.mraid_mm_setup_dma_pools.exit_crit_edge, label %if.end8.i

if.end.i186.mraid_mm_setup_dma_pools.exit_crit_edge: ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_setup_dma_pools.exit

if.end8.i:                                        ; preds = %if.end.i186
  %mul.i = shl i32 %bufsize.024.i, 1
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %if.end67, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mraid_mm_setup_dma_pools.exit:                    ; preds = %if.end.i186.mraid_mm_setup_dma_pools.exit_crit_edge, %for.body.i.mraid_mm_setup_dma_pools.exit_crit_edge
  tail call fastcc void @mraid_mm_teardown_dma_pools(ptr noundef %call7.i.i) #11
  br label %pthru_dma_pool_error

if.end67:                                         ; preds = %if.end8.i
  %list68 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 8
  %80 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adapters_list_g, i32 0, i32 1), align 4
  %call.i.i188 = tail call zeroext i1 @__list_add_valid(ptr noundef %list68, ptr noundef %80, ptr noundef nonnull @adapters_list_g) #11
  br i1 %call.i.i188, label %if.end.i.i190, label %if.end67.list_add_tail.exit191_crit_edge

if.end67.list_add_tail.exit191_crit_edge:         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit191

if.end.i.i190:                                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %list68, ptr getelementptr inbounds (%struct.list_head, ptr @adapters_list_g, i32 0, i32 1), align 4
  %81 = ptrtoint ptr %list68 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @adapters_list_g, ptr %list68, align 4
  %prev3.i.i189 = getelementptr inbounds %struct.mraid_mmadp, ptr %call7.i.i, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %prev3.i.i189 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %80, ptr %prev3.i.i189, align 8
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %list68, ptr %80, align 4
  br label %list_add_tail.exit191

list_add_tail.exit191:                            ; preds = %if.end.i.i190, %if.end67.list_add_tail.exit191_crit_edge
  %84 = load i32, ptr @adapters_count_g, align 4
  %inc69 = add i32 %84, 1
  store i32 %inc69, ptr @adapters_count_g, align 4
  br label %cleanup

pthru_dma_pool_error:                             ; preds = %mraid_mm_setup_dma_pools.exit, %do.end57, %if.then51.pthru_dma_pool_error_crit_edge
  %85 = ptrtoint ptr %max_kioc to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %max_kioc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp73199.not = icmp eq i8 %86, 0
  br i1 %cmp73199.not, label %pthru_dma_pool_error.memalloc_error_crit_edge, label %pthru_dma_pool_error.for.body75_crit_edge

pthru_dma_pool_error.for.body75_crit_edge:        ; preds = %pthru_dma_pool_error
  br label %for.body75

pthru_dma_pool_error.memalloc_error_crit_edge:    ; preds = %pthru_dma_pool_error
  call void @__sanitizer_cov_trace_pc() #13
  br label %memalloc_error

for.body75:                                       ; preds = %for.inc85.for.body75_crit_edge, %pthru_dma_pool_error.for.body75_crit_edge
  %i.1200 = phi i32 [ %inc86, %for.inc85.for.body75_crit_edge ], [ 0, %pthru_dma_pool_error.for.body75_crit_edge ]
  %87 = ptrtoint ptr %kioc_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %kioc_list, align 4
  %pthru3278 = getelementptr %struct.uioc, ptr %88, i32 %i.1200, i32 14
  %89 = ptrtoint ptr %pthru3278 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pthru3278, align 64
  %tobool79.not = icmp eq ptr %90, null
  br i1 %tobool79.not, label %for.body75.for.inc85_crit_edge, label %if.then80

for.body75.for.inc85_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc85

if.then80:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %pthru_dma_pool to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pthru_dma_pool, align 8
  %pthru32_h83 = getelementptr %struct.uioc, ptr %88, i32 %i.1200, i32 15
  %93 = ptrtoint ptr %pthru32_h83 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pthru32_h83, align 4
  tail call void @dma_pool_free(ptr noundef %92, ptr noundef nonnull %90, i32 noundef %94) #11
  br label %for.inc85

for.inc85:                                        ; preds = %if.then80, %for.body75.for.inc85_crit_edge
  %inc86 = add nuw nsw i32 %i.1200, 1
  %95 = ptrtoint ptr %max_kioc to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %max_kioc, align 2
  %conv72 = zext i8 %96 to i32
  %cmp73 = icmp ult i32 %inc86, %conv72
  br i1 %cmp73, label %for.inc85.for.body75_crit_edge, label %for.inc85.memalloc_error_crit_edge

for.inc85.memalloc_error_crit_edge:               ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #13
  br label %memalloc_error

for.inc85.for.body75_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body75

memalloc_error:                                   ; preds = %for.inc85.memalloc_error_crit_edge, %pthru_dma_pool_error.memalloc_error_crit_edge, %do.end, %if.then26.memalloc_error_crit_edge
  %97 = ptrtoint ptr %kioc_list to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %kioc_list, align 4
  tail call void @kfree(ptr noundef %98) #11
  %99 = ptrtoint ptr %mbox_list16 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mbox_list16, align 4
  tail call void @kfree(ptr noundef %100) #11
  %101 = ptrtoint ptr %pthru_dma_pool to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pthru_dma_pool, align 8
  tail call void @dma_pool_destroy(ptr noundef %102) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %memalloc_error, %list_add_tail.exit191, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %memalloc_error ], [ 0, %list_add_tail.exit191 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mraid_mm_unregister_adp(i32 noundef %unique_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ @adapters_list_g, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @adapters_list_g
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %adapter.0 = getelementptr i8, ptr %.pn.in, i32 -28
  %1 = ptrtoint ptr %adapter.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %adapter.0, align 4
  %cmp7 = icmp eq i32 %2, %unique_id
  br i1 %cmp7, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  %adapter.0.le = getelementptr i8, ptr %.pn.in, i32 -28
  %3 = load i32, ptr @adapters_count_g, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr @adapters_count_g, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %.pn.in, ptr %.pn.in, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.pn.in, ptr %prev.i3.i, align 4
  tail call fastcc void @mraid_mm_teardown_dma_pools(ptr noundef %adapter.0.le) #11
  %max_kioc.i = getelementptr i8, ptr %.pn.in, i32 -14
  %12 = ptrtoint ptr %max_kioc.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_kioc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp14.not.i = icmp eq i8 %13, 0
  br i1 %cmp14.not.i, label %list_del_init.exit.mraid_mm_free_adp_resources.exit_crit_edge, label %for.body.lr.ph.i

list_del_init.exit.mraid_mm_free_adp_resources.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_free_adp_resources.exit

for.body.lr.ph.i:                                 ; preds = %list_del_init.exit
  %kioc_list.i = getelementptr i8, ptr %.pn.in, i32 8
  %pthru_dma_pool.i = getelementptr i8, ptr %.pn.in, i32 124
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %kioc_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kioc_list.i, align 4
  %16 = ptrtoint ptr %pthru_dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pthru_dma_pool.i, align 4
  %pthru32.i = getelementptr %struct.uioc, ptr %15, i32 %i.015.i, i32 14
  %18 = ptrtoint ptr %pthru32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pthru32.i, align 64
  %pthru32_h.i = getelementptr %struct.uioc, ptr %15, i32 %i.015.i, i32 15
  %20 = ptrtoint ptr %pthru32_h.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pthru32_h.i, align 4
  tail call void @dma_pool_free(ptr noundef %17, ptr noundef %19, i32 noundef %21) #11
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %22 = ptrtoint ptr %max_kioc.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_kioc.i, align 2
  %conv.i = zext i8 %23 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mraid_mm_free_adp_resources.exit_crit_edge

for.body.i.mraid_mm_free_adp_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_free_adp_resources.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mraid_mm_free_adp_resources.exit:                 ; preds = %for.body.i.mraid_mm_free_adp_resources.exit_crit_edge, %list_del_init.exit.mraid_mm_free_adp_resources.exit_crit_edge
  %kioc_list2.i = getelementptr i8, ptr %.pn.in, i32 8
  %24 = ptrtoint ptr %kioc_list2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kioc_list2.i, align 4
  tail call void @kfree(ptr noundef %25) #11
  %mbox_list.i = getelementptr i8, ptr %.pn.in, i32 120
  %26 = ptrtoint ptr %mbox_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbox_list.i, align 4
  tail call void @kfree(ptr noundef %27) #11
  %pthru_dma_pool3.i = getelementptr i8, ptr %.pn.in, i32 124
  %28 = ptrtoint ptr %pthru_dma_pool3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pthru_dma_pool3.i, align 4
  tail call void @dma_pool_destroy(ptr noundef %29) #11
  tail call void @kfree(ptr noundef %adapter.0.le) #11
  %30 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp9 = icmp sgt i32 %30, -1
  br i1 %cmp9, label %do.end, label %mraid_mm_free_adp_resources.exit.cleanup_crit_edge

mraid_mm_free_adp_resources.exit.cleanup_crit_edge: ; preds = %mraid_mm_free_adp_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %mraid_mm_free_adp_resources.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %unique_id) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %mraid_mm_free_adp_resources.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %mraid_mm_free_adp_resources.exit.cleanup_crit_edge ], [ -19, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mraid_mm_adapter_app_handle(i32 noundef %unique_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @adapters_list_g, align 4
  %cmp.not22 = icmp eq ptr %0, @adapters_list_g
  br i1 %cmp.not22, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn25, %if.end.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %index.023 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %adapter.0 = getelementptr i8, ptr %.pn.in24, i32 -28
  %1 = ptrtoint ptr %adapter.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %adapter.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %unique_id)
  %cmp7 = icmp eq i32 %2, %unique_id
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %index.023, 27904
  br label %cleanup

if.end:                                           ; preds = %for.body
  %3 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn25 = load ptr, ptr %.pn.in24, align 4
  %inc = add i32 %index.023, 1
  %cmp.not = icmp eq ptr %.pn25, @adapters_list_g
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mraid_mm_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @misc_deregister(ptr noundef nonnull @megaraid_mm_dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mraid_mm_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.44) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @misc_register(ptr noundef nonnull @megaraid_mm_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %do.body13

if.then3:                                         ; preds = %if.end
  %1 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp4 = icmp sgt i32 %1, -1
  br i1 %cmp4, label %do.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #16
  br label %cleanup

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__init_waitqueue_head(ptr noundef nonnull @wait_q, ptr noundef nonnull @.str.48, ptr noundef nonnull @mraid_mm_init.__key) #11
  store volatile ptr @adapters_list_g, ptr @adapters_list_g, align 4
  store ptr @adapters_list_g, ptr getelementptr inbounds (%struct.list_head, ptr @adapters_list_g, i32 0, i32 1), align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %do.end8, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body13 ], [ %call1, %do.end8 ], [ %call1, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mraid_mm_teardown_dma_pools(ptr nocapture noundef %adp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %paddr = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %paddr, align 4
  tail call void @dma_pool_free(ptr noundef nonnull %1, ptr noundef nonnull %3, i32 noundef %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 4
  tail call void @dma_pool_destroy(ptr noundef %7) #11
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %handle, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %handle.1 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 1, i32 3
  %9 = ptrtoint ptr %handle.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %handle.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %12, null
  br i1 %tobool1.not.1, label %if.then.1.if.end.1_crit_edge, label %if.then2.1

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

if.then2.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #13
  %paddr.1 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 1, i32 1
  %13 = ptrtoint ptr %paddr.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %paddr.1, align 4
  tail call void @dma_pool_free(ptr noundef nonnull %10, ptr noundef nonnull %12, i32 noundef %14) #11
  br label %if.end.1

if.end.1:                                         ; preds = %if.then2.1, %if.then.1.if.end.1_crit_edge
  %15 = ptrtoint ptr %handle.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle.1, align 4
  tail call void @dma_pool_destroy(ptr noundef %16) #11
  %17 = ptrtoint ptr %handle.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %handle.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %handle.2 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 2, i32 3
  %18 = ptrtoint ptr %handle.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.2, align 4
  %tobool.not.2 = icmp eq ptr %19, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %21, null
  br i1 %tobool1.not.2, label %if.then.2.if.end.2_crit_edge, label %if.then2.2

if.then.2.if.end.2_crit_edge:                     ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2

if.then2.2:                                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #13
  %paddr.2 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 2, i32 1
  %22 = ptrtoint ptr %paddr.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %paddr.2, align 4
  tail call void @dma_pool_free(ptr noundef nonnull %19, ptr noundef nonnull %21, i32 noundef %23) #11
  br label %if.end.2

if.end.2:                                         ; preds = %if.then2.2, %if.then.2.if.end.2_crit_edge
  %24 = ptrtoint ptr %handle.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle.2, align 4
  tail call void @dma_pool_destroy(ptr noundef %25) #11
  %26 = ptrtoint ptr %handle.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %handle.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %handle.3 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 3, i32 3
  %27 = ptrtoint ptr %handle.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle.3, align 4
  %tobool.not.3 = icmp eq ptr %28, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.3, align 4
  %tobool1.not.3 = icmp eq ptr %30, null
  br i1 %tobool1.not.3, label %if.then.3.if.end.3_crit_edge, label %if.then2.3

if.then.3.if.end.3_crit_edge:                     ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.3

if.then2.3:                                       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #13
  %paddr.3 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 3, i32 1
  %31 = ptrtoint ptr %paddr.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %paddr.3, align 4
  tail call void @dma_pool_free(ptr noundef nonnull %28, ptr noundef nonnull %30, i32 noundef %32) #11
  br label %if.end.3

if.end.3:                                         ; preds = %if.then2.3, %if.then.3.if.end.3_crit_edge
  %33 = ptrtoint ptr %handle.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle.3, align 4
  tail call void @dma_pool_destroy(ptr noundef %34) #11
  %35 = ptrtoint ptr %handle.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %handle.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %handle.4 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 4, i32 3
  %36 = ptrtoint ptr %handle.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handle.4, align 4
  %tobool.not.4 = icmp eq ptr %37, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 4
  %38 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.4, align 4
  %tobool1.not.4 = icmp eq ptr %39, null
  br i1 %tobool1.not.4, label %if.then.4.if.end.4_crit_edge, label %if.then2.4

if.then.4.if.end.4_crit_edge:                     ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.4

if.then2.4:                                       ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #13
  %paddr.4 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 4, i32 1
  %40 = ptrtoint ptr %paddr.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %paddr.4, align 4
  tail call void @dma_pool_free(ptr noundef nonnull %37, ptr noundef nonnull %39, i32 noundef %41) #11
  br label %if.end.4

if.end.4:                                         ; preds = %if.then2.4, %if.then.4.if.end.4_crit_edge
  %42 = ptrtoint ptr %handle.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handle.4, align 4
  tail call void @dma_pool_destroy(ptr noundef %43) #11
  %44 = ptrtoint ptr %handle.4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %handle.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mraid_mm_unlocked_ioctl(ptr nocapture noundef readnone %filep, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  %mimd.i = alloca %struct.mimd, align 4
  %timeout.i = alloca %struct.uioc_timeout, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %kmimd.i = alloca %struct.mimd, align 1
  %cinfo.i = alloca %struct.mcontroller, align 8
  %mimd.i.i = alloca %struct.mimd, align 1
  %kmimd.i.i = alloca %struct.mimd, align 1
  %signature.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mraid_mm_mutex, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %signature.i) #11
  %0 = call ptr @memset(ptr %signature.i, i32 0, i32 16)
  %1 = inttoptr i32 %arg to ptr
  %2 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 27904, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 27904
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %cmd)
  %cmp1.not.i = icmp eq i32 %cmd, 128
  %or.cond.i = or i1 %cmp1.not.i, %cmp.not.i
  br i1 %or.cond.i, label %if.end8.i.i.i, label %entry.mraid_mm_ioctl.exit_crit_edge

entry.mraid_mm_ioctl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

if.end8.i.i.i:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 16, i32 -1226833920) #17, !srcloc !152
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !153

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %signature.i, i32 noundef 16) #11
  %4 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !154
  %and.i.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %signature.i, ptr noundef %1, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !153

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i25.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i25.i
  %add.ptr.i.i.i = getelementptr i8, ptr %signature.i, i32 %sub.i.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i25.i)
  %8 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp3.i = icmp sgt i32 %8, -1
  br i1 %cmp3.i, label %do.end.i, label %if.then11.i.i.i.mraid_mm_ioctl.exit_crit_edge

if.then11.i.i.i.mraid_mm_ioctl.exit_crit_edge:    ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

do.end.i:                                         ; preds = %if.then11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #16
  br label %mraid_mm_ioctl.exit

if.end7.i:                                        ; preds = %if.end.i.i.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %signature.i, ptr noundef nonnull dereferenceable(16) @.str.23, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp10.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp10.i, label %if.end7.i.mraid_mm_ioctl.exit_crit_edge, label %if.end15.i

if.end7.i.mraid_mm_ioctl.exit_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

if.end15.i:                                       ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %kmimd.i.i) #11
  %9 = call ptr @memset(ptr %kmimd.i.i, i32 255, i32 110)
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i.i1.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i1.i, label %if.end15.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end15.i.if.then11.i.i.i.i_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end15.i
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 110, i32 -1226833920) #17
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !153

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kmimd.i.i, i32 noundef 110) #11
  %11 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !154
  %and.i.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kmimd.i.i, ptr noundef %1, i32 noundef 110) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !153

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end15.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i27.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 110, %if.end15.i.if.then11.i.i.i.i_crit_edge ], [ 110, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 110, %res.0.i.i27.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %kmimd.i.i, i32 %sub.i.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i27.i.i)
  br label %handle_drvrcmd.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i
  %ui.i.i = getelementptr inbounds %struct.mimd, ptr %kmimd.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %ui.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ui.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %16)
  %cmp.not.i.i = icmp eq i8 %16, -126
  br i1 %cmp.not.i.i, label %if.end8.i.i, label %if.end.i.i.if.end23.i_crit_edge

if.end.i.i.if.end23.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %subopcode5.i.i = getelementptr inbounds %struct.mimd, ptr %kmimd.i.i, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %subopcode5.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %subopcode5.i.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.end8.i.i.if.end23.i_crit_edge [
    i8 101, label %sw.bb.i.i
    i8 109, label %sw.bb14.i.i
  ]

if.end8.i.i.if.end23.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

sw.bb.i.i:                                        ; preds = %if.end8.i.i
  %data.i.i = getelementptr inbounds %struct.mimd, ptr %kmimd.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load ptr, ptr %data.i.i, align 1
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i6.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i6.i.i, label %sw.bb.i.i.handle_drvrcmd.exit.thread.i_crit_edge, label %if.end.i.i9.i.i

sw.bb.i.i.handle_drvrcmd.exit.thread.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_drvrcmd.exit.thread.i

if.end.i.i9.i.i:                                  ; preds = %sw.bb.i.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 4, i32 -1226833920) #17, !srcloc !157
  %asmresult.i.i7.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i7.i.i)
  %cmp.i6.i8.i.i = icmp eq i32 %asmresult.i.i7.i.i, 0
  br i1 %cmp.i6.i8.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i9.i.i.handle_drvrcmd.exit.thread.i_crit_edge

if.end.i.i9.i.i.handle_drvrcmd.exit.thread.i_crit_edge: ; preds = %if.end.i.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_drvrcmd.exit.thread.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i9.i.i
  %call.i.i.i10.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @drvr_ver, i32 noundef 4) #11
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull @drvr_ver, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool11.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool11.not.i.i, label %copy_to_user.exit.i.i.if.then21.i_crit_edge, label %copy_to_user.exit.i.i.handle_drvrcmd.exit.thread.i_crit_edge

copy_to_user.exit.i.i.handle_drvrcmd.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_drvrcmd.exit.thread.i

copy_to_user.exit.i.i.if.then21.i_crit_edge:      ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

sw.bb14.i.i:                                      ; preds = %if.end8.i.i
  %23 = load i32, ptr @adapters_count_g, align 4
  %data15.i.i = getelementptr inbounds %struct.mimd, ptr %kmimd.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %data15.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %data15.i.i, align 1
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i16.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i16.i.i, label %sw.bb14.i.i.handle_drvrcmd.exit.thread.i_crit_edge, label %if.end.i.i19.i.i

sw.bb14.i.i.handle_drvrcmd.exit.thread.i_crit_edge: ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_drvrcmd.exit.thread.i

if.end.i.i19.i.i:                                 ; preds = %sw.bb14.i.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 4, i32 -1226833920) #17, !srcloc !157
  %asmresult.i.i17.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i17.i.i)
  %cmp.i6.i18.i.i = icmp eq i32 %asmresult.i.i17.i.i, 0
  br i1 %cmp.i6.i18.i.i, label %copy_to_user.exit24.i.i, label %if.end.i.i19.i.i.handle_drvrcmd.exit.thread.i_crit_edge

if.end.i.i19.i.i.handle_drvrcmd.exit.thread.i_crit_edge: ; preds = %if.end.i.i19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_drvrcmd.exit.thread.i

copy_to_user.exit24.i.i:                          ; preds = %if.end.i.i19.i.i
  %call.i.i.i20.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @adapters_count_g, i32 noundef 4) #11
  %call.i12.i.i21.i.i = call i32 @arm_copy_to_user(ptr noundef %25, ptr noundef nonnull @adapters_count_g, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i21.i.i)
  %tobool17.not.i.i = icmp eq i32 %call.i12.i.i21.i.i, 0
  br i1 %tobool17.not.i.i, label %copy_to_user.exit24.i.i.if.then21.i_crit_edge, label %copy_to_user.exit24.i.i.handle_drvrcmd.exit.thread.i_crit_edge

copy_to_user.exit24.i.i.handle_drvrcmd.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_drvrcmd.exit.thread.i

copy_to_user.exit24.i.i.if.then21.i_crit_edge:    ; preds = %copy_to_user.exit24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i

handle_drvrcmd.exit.thread.i:                     ; preds = %copy_to_user.exit24.i.i.handle_drvrcmd.exit.thread.i_crit_edge, %if.end.i.i19.i.i.handle_drvrcmd.exit.thread.i_crit_edge, %sw.bb14.i.i.handle_drvrcmd.exit.thread.i_crit_edge, %copy_to_user.exit.i.i.handle_drvrcmd.exit.thread.i_crit_edge, %if.end.i.i9.i.i.handle_drvrcmd.exit.thread.i_crit_edge, %sw.bb.i.i.handle_drvrcmd.exit.thread.i_crit_edge, %if.then11.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %kmimd.i.i) #11
  br label %mraid_mm_ioctl.exit

if.then21.i:                                      ; preds = %copy_to_user.exit24.i.i.if.then21.i_crit_edge, %copy_to_user.exit.i.i.if.then21.i_crit_edge
  %drvrcmd_rval.0.ph.i = phi i32 [ 0, %copy_to_user.exit.i.i.if.then21.i_crit_edge ], [ %23, %copy_to_user.exit24.i.i.if.then21.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %kmimd.i.i) #11
  br label %mraid_mm_ioctl.exit

if.end23.i:                                       ; preds = %if.end8.i.i.if.end23.i_crit_edge, %if.end.i.i.if.end23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %kmimd.i.i) #11
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %mimd.i.i) #11
  %27 = call ptr @memset(ptr %mimd.i.i, i32 255, i32 110)
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i.i2.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i2.i, label %if.end23.i.if.then11.i.i.i16.i_crit_edge, label %if.end.i.i.i13.i

if.end23.i.if.then11.i.i.i16.i_crit_edge:         ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i16.i

if.end.i.i.i13.i:                                 ; preds = %if.end23.i
  %call.i.i.i.i6.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mimd.i.i, i32 noundef 110) #11
  %28 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i.i7.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i.i7.i to ptr
  %cpu_domain.i.i.i.i.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i8.i) #8, !srcloc !154
  %and.i.i.i.i.i9.i = and i32 %30, -13
  %or.i.i.i.i.i10.i = or i32 %and.i.i.i.i.i9.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i10.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i.i11.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mimd.i.i, ptr noundef %1, i32 noundef 110) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i11.i)
  %tobool4.not.i.i.i12.i = icmp eq i32 %call1.i.i.i.i11.i, 0
  br i1 %tobool4.not.i.i.i12.i, label %if.end.i18.i, label %if.end.i.i.i13.i.if.then11.i.i.i16.i_crit_edge, !prof !153

if.end.i.i.i13.i.if.then11.i.i.i16.i_crit_edge:   ; preds = %if.end.i.i.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i16.i

if.then11.i.i.i16.i:                              ; preds = %if.end.i.i.i13.i.if.then11.i.i.i16.i_crit_edge, %if.end23.i.if.then11.i.i.i16.i_crit_edge
  %res.0.i.i29.i.i = phi i32 [ %call1.i.i.i.i11.i, %if.end.i.i.i13.i.if.then11.i.i.i16.i_crit_edge ], [ 110, %if.end23.i.if.then11.i.i.i16.i_crit_edge ]
  %sub.i.i.i14.i = sub i32 110, %res.0.i.i29.i.i
  %add.ptr.i.i.i15.i = getelementptr i8, ptr %mimd.i.i, i32 %sub.i.i.i14.i
  %31 = call ptr @memset(ptr %add.ptr.i.i.i15.i, i32 0, i32 %res.0.i.i29.i.i)
  br label %mraid_mm_get_adapter.exit.thread.i

if.end.i18.i:                                     ; preds = %if.end.i.i.i13.i
  %adapno1.i.i = getelementptr inbounds %struct.mimd, ptr %mimd.i.i, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %adapno1.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %adapno1.i.i, align 1
  %34 = xor i16 %33, 27904
  %xor.i.i = zext i16 %34 to i32
  %35 = load i32, ptr @adapters_count_g, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %xor.i.i)
  %cmp.not.i17.i = icmp ugt i32 %35, %xor.i.i
  br i1 %cmp.not.i17.i, label %for.cond.preheader.i.i, label %if.end.i18.i.mraid_mm_get_adapter.exit.thread.i_crit_edge

if.end.i18.i.mraid_mm_get_adapter.exit.thread.i_crit_edge: ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_get_adapter.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %if.end.i18.i
  %.pn32.i.i = load ptr, ptr @adapters_list_g, align 4
  %cmp5.not33.i.i = icmp eq ptr %.pn32.i.i, @adapters_list_g
  br i1 %cmp5.not33.i.i, label %for.cond.preheader.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_get_adapter.exit.thread.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %iterator.034.i.i, 1
  %36 = ptrtoint ptr %.pn35.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i.i = load ptr, ptr %.pn35.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %.pn.i.i, @adapters_list_g
  br i1 %cmp5.not.i.i, label %for.cond.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_get_adapter.exit.thread.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %.pn35.i.i = phi ptr [ %.pn.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %.pn32.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %iterator.034.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %iterator.034.i.i, i32 %xor.i.i)
  %cmp7.i.i = icmp eq i32 %iterator.034.i.i, %xor.i.i
  br i1 %cmp7.i.i, label %mraid_mm_get_adapter.exit.i, label %for.cond.i.i

mraid_mm_get_adapter.exit.thread.i:               ; preds = %for.cond.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge, %for.cond.preheader.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge, %if.end.i18.i.mraid_mm_get_adapter.exit.thread.i_crit_edge, %if.then11.i.i.i16.i
  %rval.0.ph.i = phi i32 [ -19, %for.cond.preheader.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge ], [ -19, %if.end.i18.i.mraid_mm_get_adapter.exit.thread.i_crit_edge ], [ -14, %if.then11.i.i.i16.i ], [ -19, %for.cond.i.i.mraid_mm_get_adapter.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %mimd.i.i) #11
  br label %mraid_mm_ioctl.exit

mraid_mm_get_adapter.exit.i:                      ; preds = %for.body.i.i
  %adapter.0.le.i.i = getelementptr i8, ptr %.pn35.i.i, i32 -28
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %mimd.i.i) #11
  %cmp25.i = icmp eq ptr %adapter.0.le.i.i, null
  br i1 %cmp25.i, label %mraid_mm_get_adapter.exit.i.mraid_mm_ioctl.exit_crit_edge, label %if.end27.i

mraid_mm_get_adapter.exit.i.mraid_mm_ioctl.exit_crit_edge: ; preds = %mraid_mm_get_adapter.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

if.end27.i:                                       ; preds = %mraid_mm_get_adapter.exit.i
  %quiescent.i = getelementptr i8, ptr %.pn35.i.i, i32 -4
  %37 = ptrtoint ptr %quiescent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quiescent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool28.not.i = icmp eq i32 %38, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end38.i

if.then29.i:                                      ; preds = %if.end27.i
  %39 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp30.i = icmp sgt i32 %39, -1
  br i1 %cmp30.i, label %do.end34.i, label %if.then29.i.mraid_mm_ioctl.exit_crit_edge

if.then29.i.mraid_mm_ioctl.exit_crit_edge:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

do.end34.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #16
  br label %mraid_mm_ioctl.exit

if.end38.i:                                       ; preds = %if.end27.i
  %kioc_semaphore.i = getelementptr i8, ptr %.pn35.i.i, i32 64
  call void @down(ptr noundef %kioc_semaphore.i) #11
  %kioc_pool_lock.i = getelementptr i8, ptr %.pn35.i.i, i32 20
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %kioc_pool_lock.i) #11
  %kioc_pool.i = getelementptr i8, ptr %.pn35.i.i, i32 12
  %40 = ptrtoint ptr %kioc_pool.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %kioc_pool.i, align 4
  %cmp.i.not.i = icmp eq ptr %41, %kioc_pool.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %if.end38.i
  call void @up(ptr noundef %kioc_semaphore.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %kioc_pool_lock.i, i32 noundef %call2.i) #11
  %42 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp8.i = icmp sgt i32 %42, -1
  br i1 %cmp8.i, label %do.end13.i, label %if.then.i.mraid_mm_ioctl.exit_crit_edge

if.then.i.mraid_mm_ioctl.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

do.end13.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #16
  br label %mraid_mm_ioctl.exit

if.end16.i:                                       ; preds = %if.end38.i
  %add.ptr.i = getelementptr i8, ptr %41, i32 -200
  %call.i.i.i63 = call zeroext i1 @__list_del_entry_valid(ptr noundef %41) #11
  br i1 %call.i.i.i63, label %if.end.i.i.i64, label %if.end16.i.mraid_mm_alloc_kioc.exit_crit_edge

if.end16.i.mraid_mm_alloc_kioc.exit_crit_edge:    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_alloc_kioc.exit

if.end.i.i.i64:                                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %41, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %mraid_mm_alloc_kioc.exit

mraid_mm_alloc_kioc.exit:                         ; preds = %if.end.i.i.i64, %if.end16.i.mraid_mm_alloc_kioc.exit_crit_edge
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %41, ptr %41, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %41, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %kioc_pool_lock.i, i32 noundef %call2.i) #11
  %cmdbuf.i65 = getelementptr i8, ptr %41, i32 -172
  %51 = ptrtoint ptr %cmdbuf.i65 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %cmdbuf.i65, align 4
  %conv19.i = trunc i64 %52 to i32
  %53 = inttoptr i32 %conv19.i to ptr
  %54 = call ptr @memset(ptr %53, i32 0, i32 74)
  %pthru32.i66 = getelementptr i8, ptr %41, i32 -8
  %55 = ptrtoint ptr %pthru32.i66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pthru32.i66, align 64
  %57 = call ptr @memset(ptr %56, i32 0, i32 60)
  %buf_vaddr.i67 = getelementptr i8, ptr %41, i32 12
  %58 = ptrtoint ptr %buf_vaddr.i67 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %buf_vaddr.i67, align 4
  %buf_paddr.i68 = getelementptr i8, ptr %41, i32 16
  %59 = ptrtoint ptr %buf_paddr.i68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %buf_paddr.i68, align 8
  %pool_index.i = getelementptr i8, ptr %41, i32 20
  %60 = ptrtoint ptr %pool_index.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %pool_index.i, align 4
  %free_buf.i = getelementptr i8, ptr %41, i32 21
  %61 = ptrtoint ptr %free_buf.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %free_buf.i, align 1
  %user_data.i69 = getelementptr i8, ptr %41, i32 -24
  %62 = ptrtoint ptr %user_data.i69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %user_data.i69, align 16
  %user_data_len.i70 = getelementptr i8, ptr %41, i32 -20
  %63 = ptrtoint ptr %user_data_len.i70 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %user_data_len.i70, align 4
  %user_pthru.i71 = getelementptr i8, ptr %41, i32 -12
  %64 = ptrtoint ptr %user_pthru.i71 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %user_pthru.i71, align 4
  %timedout.i72 = getelementptr i8, ptr %41, i32 22
  %65 = ptrtoint ptr %timedout.i72 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %timedout.i72, align 2
  %tobool40.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool40.not.i, label %mraid_mm_alloc_kioc.exit.mraid_mm_ioctl.exit_crit_edge, label %if.end42.i

mraid_mm_alloc_kioc.exit.mraid_mm_ioctl.exit_crit_edge: ; preds = %mraid_mm_alloc_kioc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

if.end42.i:                                       ; preds = %mraid_mm_alloc_kioc.exit
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %mimd.i) #11
  %66 = call ptr @memset(ptr %mimd.i, i32 255, i32 110)
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i.i25 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i25, label %if.end42.i.if.then11.i.i.i39_crit_edge, label %if.end.i.i.i36

if.end42.i.if.then11.i.i.i39_crit_edge:           ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i39

if.end.i.i.i36:                                   ; preds = %if.end42.i
  %call.i.i.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mimd.i, i32 noundef 110) #11
  %67 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i.i30 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i.i.i30 to ptr
  %cpu_domain.i.i.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 4
  %69 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i31) #8, !srcloc !154
  %and.i.i.i.i.i32 = and i32 %69, -13
  %or.i.i.i.i.i33 = or i32 %and.i.i.i.i.i32, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i33) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i.i34 = call i32 @arm_copy_from_user(ptr noundef nonnull %mimd.i, ptr noundef %1, i32 noundef 110) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i34)
  %tobool4.not.i.i.i35 = icmp eq i32 %call1.i.i.i.i34, 0
  br i1 %tobool4.not.i.i.i35, label %if.end.i40, label %if.end.i.i.i36.if.then11.i.i.i39_crit_edge, !prof !153

if.end.i.i.i36.if.then11.i.i.i39_crit_edge:       ; preds = %if.end.i.i.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i39

if.then11.i.i.i39:                                ; preds = %if.end.i.i.i36.if.then11.i.i.i39_crit_edge, %if.end42.i.if.then11.i.i.i39_crit_edge
  %res.0.i.i275.i = phi i32 [ %call1.i.i.i.i34, %if.end.i.i.i36.if.then11.i.i.i39_crit_edge ], [ 110, %if.end42.i.if.then11.i.i.i39_crit_edge ]
  %sub.i.i.i37 = sub i32 110, %res.0.i.i275.i
  %add.ptr.i.i.i38 = getelementptr i8, ptr %mimd.i, i32 %sub.i.i.i37
  %70 = call ptr @memset(ptr %add.ptr.i.i.i38, i32 0, i32 %res.0.i.i275.i)
  br label %if.then45.i

if.end.i40:                                       ; preds = %if.end.i.i.i36
  %mbox1.i = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 3
  %71 = ptrtoint ptr %mbox1.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mbox1.i, align 4
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %72, label %if.end9.i [
    i8 -61, label %if.end.i40.if.then45.i_crit_edge
    i8 -29, label %if.end.i40.if.then45.i_crit_edge103
  ]

if.end.i40.if.then45.i_crit_edge103:              ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.end.i40.if.then45.i_crit_edge:                 ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.end9.i:                                        ; preds = %if.end.i40
  %subopcode12.i = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 2, i32 0, i32 1
  %74 = ptrtoint ptr %subopcode12.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %subopcode12.i, align 1
  %adapno14.i = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 2, i32 0, i32 2
  %76 = ptrtoint ptr %adapno14.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %adapno14.i, align 2
  %78 = xor i16 %77, 27904
  %xor.i = zext i16 %78 to i32
  %79 = load i32, ptr @adapters_count_g, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %xor.i)
  %cmp16.not.i = icmp ugt i32 %79, %xor.i
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end9.i.if.then45.i_crit_edge

if.end9.i.if.then45.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.end19.i:                                       ; preds = %if.end9.i
  %ui.i41 = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 2
  %80 = ptrtoint ptr %ui.i41 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ui.i41, align 4
  %adapno20.i = getelementptr i8, ptr %41, i32 -176
  %82 = ptrtoint ptr %adapno20.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %xor.i, ptr %adapno20.i, align 8
  %mb_type.i = getelementptr i8, ptr %41, i32 -184
  %83 = ptrtoint ptr %mb_type.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %mb_type.i, align 16
  %app_type.i = getelementptr i8, ptr %41, i32 -182
  %84 = ptrtoint ptr %app_type.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %app_type.i, align 2
  %85 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %81, label %if.end19.i.if.then45.i_crit_edge [
    i8 -126, label %sw.bb.i42
    i8 -127, label %sw.bb38.i
    i8 -128, label %sw.bb57.i
  ]

if.end19.i.if.then45.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

sw.bb.i42:                                        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %75)
  %cmp23.i = icmp eq i8 %75, 103
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %sw.bb.i42
  %opcode26.i = getelementptr i8, ptr %41, i32 -180
  %86 = ptrtoint ptr %opcode26.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 196608, ptr %opcode26.i, align 4
  %data_dir.i = getelementptr i8, ptr %41, i32 -160
  %87 = ptrtoint ptr %data_dir.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %data_dir.i, align 8
  %xferlen.i = getelementptr i8, ptr %41, i32 -164
  %88 = ptrtoint ptr %xferlen.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 256, ptr %xferlen.i, align 4
  %call28.i = call fastcc i32 @mraid_mm_attach_buf(ptr noundef nonnull %adapter.0.le.i.i, ptr noundef nonnull %add.ptr.i, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then25.i.if.end46.i_crit_edge, label %if.then25.i.if.then45.i_crit_edge

if.then25.i.if.then45.i_crit_edge:                ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.then25.i.if.end46.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.else.i:                                        ; preds = %sw.bb.i42
  %89 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp32.i = icmp sgt i32 %89, -1
  br i1 %cmp32.i, label %do.end.i44, label %if.else.i.if.then45.i_crit_edge

if.else.i.if.then45.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

do.end.i44:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #16
  br label %if.then45.i

sw.bb38.i:                                        ; preds = %if.end19.i
  %opcode39.i = getelementptr i8, ptr %41, i32 -180
  %90 = ptrtoint ptr %opcode39.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %opcode39.i, align 4
  %length.i = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 2, i32 0, i32 5
  %91 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %length.i, align 4
  %xferlen41.i = getelementptr i8, ptr %41, i32 -164
  %93 = ptrtoint ptr %xferlen41.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %xferlen41.i, align 4
  %94 = ptrtoint ptr %user_data_len.i70 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %92, ptr %user_data_len.i70, align 4
  %buffer.i = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 2, i32 0, i32 3
  %95 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %buffer.i, align 4
  %97 = ptrtoint ptr %user_data.i69 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %user_data.i69, align 16
  %call45.i = call fastcc i32 @mraid_mm_attach_buf(ptr noundef nonnull %adapter.0.le.i.i, ptr noundef nonnull %add.ptr.i, i32 noundef %92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %sw.bb38.i.if.then45.i_crit_edge

sw.bb38.i.if.then45.i_crit_edge:                  ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.end48.i:                                       ; preds = %sw.bb38.i
  %outlen.i = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 1
  %98 = ptrtoint ptr %outlen.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %outlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool49.not.i = icmp eq i32 %99, 0
  br i1 %tobool49.not.i, label %if.end48.i.if.end52.i_crit_edge, label %if.then50.i

if.end48.i.if.end52.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  %data_dir51.i = getelementptr i8, ptr %41, i32 -160
  %100 = ptrtoint ptr %data_dir51.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %data_dir51.i, align 8
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then50.i, %if.end48.i.if.end52.i_crit_edge
  %101 = ptrtoint ptr %mimd.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mimd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool53.not.i = icmp eq i32 %102, 0
  br i1 %tobool53.not.i, label %if.end52.i.if.end89.i_crit_edge, label %if.end52.i.if.end89.sink.split.i_crit_edge

if.end52.i.if.end89.sink.split.i_crit_edge:       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.sink.split.i

if.end52.i.if.end89.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

sw.bb57.i:                                        ; preds = %if.end19.i
  %opcode58.i = getelementptr i8, ptr %41, i32 -180
  %103 = ptrtoint ptr %opcode58.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %opcode58.i, align 4
  %outlen59.i = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 1
  %104 = ptrtoint ptr %outlen59.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %outlen59.i, align 4
  %106 = ptrtoint ptr %mimd.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %mimd.i, align 4
  %108 = call i32 @llvm.umax.i32(i32 %105, i32 %107) #11
  %xferlen65.i = getelementptr i8, ptr %41, i32 -164
  %109 = ptrtoint ptr %xferlen65.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %xferlen65.i, align 4
  %110 = ptrtoint ptr %user_data_len.i70 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %108, ptr %user_data_len.i70, align 4
  %data.i47 = getelementptr inbounds %struct.mimd, ptr %mimd.i, i32 0, i32 5
  %111 = ptrtoint ptr %data.i47 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load ptr, ptr %data.i47, align 2
  %113 = ptrtoint ptr %user_data.i69 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %user_data.i69, align 16
  %call70.i = call fastcc i32 @mraid_mm_attach_buf(ptr noundef nonnull %adapter.0.le.i.i, ptr noundef nonnull %add.ptr.i, i32 noundef %108) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %sw.bb57.i.if.then45.i_crit_edge

sw.bb57.i.if.then45.i_crit_edge:                  ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.end73.i:                                       ; preds = %sw.bb57.i
  %114 = ptrtoint ptr %outlen59.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %outlen59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool75.not.i = icmp eq i32 %115, 0
  br i1 %tobool75.not.i, label %if.end73.i.if.end78.i_crit_edge, label %if.then76.i

if.end73.i.if.end78.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78.i

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #13
  %data_dir77.i = getelementptr i8, ptr %41, i32 -160
  %116 = ptrtoint ptr %data_dir77.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %data_dir77.i, align 8
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then76.i, %if.end73.i.if.end78.i_crit_edge
  %117 = ptrtoint ptr %mimd.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mimd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool80.not.i = icmp eq i32 %118, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end89.i_crit_edge, label %if.end78.i.if.end89.sink.split.i_crit_edge

if.end78.i.if.end89.sink.split.i_crit_edge:       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.sink.split.i

if.end78.i.if.end89.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i

if.end89.sink.split.i:                            ; preds = %if.end78.i.if.end89.sink.split.i_crit_edge, %if.end52.i.if.end89.sink.split.i_crit_edge
  %data_dir55.i = getelementptr i8, ptr %41, i32 -160
  %119 = ptrtoint ptr %data_dir55.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_dir55.i, align 8
  %or83.i = or i32 %120, 2
  store i32 %or83.i, ptr %data_dir55.i, align 8
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end89.sink.split.i, %if.end78.i.if.end89.i_crit_edge, %if.end52.i.if.end89.i_crit_edge
  %121 = ptrtoint ptr %cmdbuf.i65 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %cmdbuf.i65, align 4
  %conv90.i = trunc i64 %122 to i32
  %123 = inttoptr i32 %conv90.i to ptr
  %mbox32.i = getelementptr inbounds %struct.mbox64_t, ptr %123, i32 0, i32 2
  %124 = call ptr @memcpy(ptr %mbox32.i, ptr %mbox1.i, i32 14)
  %125 = ptrtoint ptr %mbox32.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %mbox32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %126)
  %cmp93.not.i = icmp eq i8 %126, 3
  br i1 %cmp93.not.i, label %if.end106.i, label %if.then95.i

if.then95.i:                                      ; preds = %if.end89.i
  %127 = ptrtoint ptr %buf_paddr.i68 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_paddr.i68, align 8
  %xferaddr.i = getelementptr inbounds %struct.mbox64_t, ptr %123, i32 0, i32 2, i32 4
  %129 = ptrtoint ptr %xferaddr.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %128, ptr %xferaddr.i, align 1
  %data_dir96.i = getelementptr i8, ptr %41, i32 -160
  %130 = ptrtoint ptr %data_dir96.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_dir96.i, align 8
  %and.i = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool97.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool97.not.i, label %if.then95.i.if.end46.i_crit_edge, label %if.then98.i

if.then95.i.if.end46.i_crit_edge:                 ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then98.i:                                      ; preds = %if.then95.i
  %132 = ptrtoint ptr %buf_vaddr.i67 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %buf_vaddr.i67, align 4
  %134 = ptrtoint ptr %user_data.i69 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %user_data.i69, align 16
  %xferlen100.i = getelementptr i8, ptr %41, i32 -164
  %136 = ptrtoint ptr %xferlen100.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %xferlen100.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp9.i.i.i53 = icmp slt i32 %137, 0
  br i1 %cmp9.i.i.i53, label %land.rhs16.i.i.i55, label %if.then.i.i.i.i58

land.rhs16.i.i.i55:                               ; preds = %if.then98.i
  %.b71.i.i.i54 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i54, label %land.rhs16.i.i.i55.if.then45.i_crit_edge, label %if.then27.i.i.i56, !prof !153

land.rhs16.i.i.i55.if.then45.i_crit_edge:         ; preds = %land.rhs16.i.i.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.then27.i.i.i56:                                ; preds = %land.rhs16.i.i.i55
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then45.i

if.then.i.i.i.i58:                                ; preds = %if.then98.i
  call void @__check_object_size(ptr noundef %133, i32 noundef %137, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i195.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i195.i, label %if.then.i.i.i.i58.if.end.i.i208.i_crit_edge, label %land.lhs.true.i.i198.i

if.then.i.i.i.i58.if.end.i.i208.i_crit_edge:      ; preds = %if.then.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i208.i

land.lhs.true.i.i198.i:                           ; preds = %if.then.i.i.i.i58
  %138 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %135, i32 %137, i32 -1226833920) #17, !srcloc !152
  %asmresult.i.i196.i = extractvalue { i32, i32 } %138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i196.i)
  %cmp.i6.i197.i = icmp eq i32 %asmresult.i.i196.i, 0
  br i1 %cmp.i6.i197.i, label %if.then.i7.i205.i, label %land.lhs.true.i.i198.i.if.end.i.i208.i_crit_edge, !prof !153

land.lhs.true.i.i198.i.if.end.i.i208.i_crit_edge: ; preds = %land.lhs.true.i.i198.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i208.i

if.then.i7.i205.i:                                ; preds = %land.lhs.true.i.i198.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i199.i = call zeroext i1 @__kasan_check_write(ptr noundef %133, i32 noundef %137) #11
  %139 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i200.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i.i.i.i200.i to ptr
  %cpu_domain.i.i.i.i.i201.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 4
  %141 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i201.i) #8, !srcloc !154
  %and.i.i.i.i202.i = and i32 %141, -13
  %or.i.i.i.i203.i = or i32 %and.i.i.i.i202.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i203.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i204.i = call i32 @arm_copy_from_user(ptr noundef %133, ptr noundef %135, i32 noundef %137) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %141) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  br label %if.end.i.i208.i

if.end.i.i208.i:                                  ; preds = %if.then.i7.i205.i, %land.lhs.true.i.i198.i.if.end.i.i208.i_crit_edge, %if.then.i.i.i.i58.if.end.i.i208.i_crit_edge
  %res.0.i.i206.i = phi i32 [ %137, %if.then.i.i.i.i58.if.end.i.i208.i_crit_edge ], [ %call1.i.i.i204.i, %if.then.i7.i205.i ], [ %137, %land.lhs.true.i.i198.i.if.end.i.i208.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i206.i)
  %tobool4.not.i.i207.i = icmp eq i32 %res.0.i.i206.i, 0
  br i1 %tobool4.not.i.i207.i, label %if.end.i.i208.i.if.end46.i_crit_edge, label %if.then11.i.i211.i, !prof !153

if.end.i.i208.i.if.end46.i_crit_edge:             ; preds = %if.end.i.i208.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then11.i.i211.i:                               ; preds = %if.end.i.i208.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i209.i = sub i32 %137, %res.0.i.i206.i
  %add.ptr.i.i210.i = getelementptr i8, ptr %133, i32 %sub.i.i209.i
  %142 = call ptr @memset(ptr %add.ptr.i.i210.i, i32 0, i32 %res.0.i.i206.i)
  br label %if.then45.i

if.end106.i:                                      ; preds = %if.end89.i
  %143 = ptrtoint ptr %pthru32.i66 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pthru32.i66, align 64
  %pthru.i = getelementptr inbounds %struct.mimd, ptr %1, i32 0, i32 4
  %145 = ptrtoint ptr %user_pthru.i71 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %pthru.i, ptr %user_pthru.i71, align 4
  %pthru32_h.i = getelementptr i8, ptr %41, i32 -4
  %146 = ptrtoint ptr %pthru32_h.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %pthru32_h.i, align 4
  %xferaddr108.i = getelementptr inbounds %struct.mbox64_t, ptr %123, i32 0, i32 2, i32 4
  %148 = ptrtoint ptr %xferaddr108.i to i32
  call void @__asan_storeN_noabort(i32 %148, i32 4)
  store i32 %147, ptr %xferaddr108.i, align 1
  %149 = load ptr, ptr %user_pthru.i71, align 4
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i220.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i220.i, label %if.end106.i.if.then11.i.i237.i_crit_edge, label %land.lhs.true.i.i224.i

if.end106.i.if.then11.i.i237.i_crit_edge:         ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i237.i

land.lhs.true.i.i224.i:                           ; preds = %if.end106.i
  %150 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %149, i32 60, i32 -1226833920) #17, !srcloc !152
  %asmresult.i.i222.i = extractvalue { i32, i32 } %150, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i222.i)
  %cmp.i6.i223.i = icmp eq i32 %asmresult.i.i222.i, 0
  br i1 %cmp.i6.i223.i, label %if.end.i.i234.i, label %land.lhs.true.i.i224.i.if.then11.i.i237.i_crit_edge, !prof !153

land.lhs.true.i.i224.i.if.then11.i.i237.i_crit_edge: ; preds = %land.lhs.true.i.i224.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i237.i

if.end.i.i234.i:                                  ; preds = %land.lhs.true.i.i224.i
  %call.i.i.i225.i = call zeroext i1 @__kasan_check_write(ptr noundef %144, i32 noundef 60) #11
  %151 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i226.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i.i.i.i.i.i226.i to ptr
  %cpu_domain.i.i.i.i.i227.i = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 4
  %153 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i227.i) #8, !srcloc !154
  %and.i.i.i.i228.i = and i32 %153, -13
  %or.i.i.i.i229.i = or i32 %and.i.i.i.i228.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i229.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i230.i = call i32 @arm_copy_from_user(ptr noundef %144, ptr noundef %149, i32 noundef 60) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i230.i)
  %tobool4.not.i.i233.i = icmp eq i32 %call1.i.i.i230.i, 0
  br i1 %tobool4.not.i.i233.i, label %if.end113.i, label %if.end.i.i234.i.if.then11.i.i237.i_crit_edge, !prof !153

if.end.i.i234.i.if.then11.i.i237.i_crit_edge:     ; preds = %if.end.i.i234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i237.i

if.then11.i.i237.i:                               ; preds = %if.end.i.i234.i.if.then11.i.i237.i_crit_edge, %land.lhs.true.i.i224.i.if.then11.i.i237.i_crit_edge, %if.end106.i.if.then11.i.i237.i_crit_edge
  %res.0.i.i232283.i = phi i32 [ %call1.i.i.i230.i, %if.end.i.i234.i.if.then11.i.i237.i_crit_edge ], [ 60, %if.end106.i.if.then11.i.i237.i_crit_edge ], [ 60, %land.lhs.true.i.i224.i.if.then11.i.i237.i_crit_edge ]
  %sub.i.i235.i = sub i32 60, %res.0.i.i232283.i
  %add.ptr.i.i236.i = getelementptr i8, ptr %144, i32 %sub.i.i235.i
  %154 = call ptr @memset(ptr %add.ptr.i.i236.i, i32 0, i32 %res.0.i.i232283.i)
  br label %if.then45.i

if.end113.i:                                      ; preds = %if.end.i.i234.i
  %155 = ptrtoint ptr %buf_paddr.i68 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %buf_paddr.i68, align 8
  %dataxferaddr.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %144, i32 0, i32 12
  %157 = ptrtoint ptr %dataxferaddr.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 %156, ptr %dataxferaddr.i, align 1
  %data_dir115.i = getelementptr i8, ptr %41, i32 -160
  %158 = ptrtoint ptr %data_dir115.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %data_dir115.i, align 8
  %and116.i = and i32 %159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %if.end113.i.if.end46.i_crit_edge, label %if.then118.i

if.end113.i.if.end46.i_crit_edge:                 ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then118.i:                                     ; preds = %if.end113.i
  %dataxferlen.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %144, i32 0, i32 13
  %160 = ptrtoint ptr %dataxferlen.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %dataxferlen.i, align 1
  %xferlen119.i = getelementptr i8, ptr %41, i32 -164
  %162 = ptrtoint ptr %xferlen119.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %xferlen119.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %163)
  %cmp120.i = icmp ugt i32 %161, %163
  br i1 %cmp120.i, label %if.then118.i.if.then45.i_crit_edge, label %if.end123.i

if.then118.i.if.then45.i_crit_edge:               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.end123.i:                                      ; preds = %if.then118.i
  %164 = ptrtoint ptr %buf_vaddr.i67 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %buf_vaddr.i67, align 4
  %166 = ptrtoint ptr %user_data.i69 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %user_data.i69, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp9.i.i246.i = icmp slt i32 %161, 0
  br i1 %cmp9.i.i246.i, label %land.rhs16.i.i249.i, label %if.then.i.i.i252.i

land.rhs16.i.i249.i:                              ; preds = %if.end123.i
  %.b71.i.i248.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i248.i, label %land.rhs16.i.i249.i.if.then45.i_crit_edge, label %if.then27.i.i250.i, !prof !153

land.rhs16.i.i249.i.if.then45.i_crit_edge:        ; preds = %land.rhs16.i.i249.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

if.then27.i.i250.i:                               ; preds = %land.rhs16.i.i249.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then45.i

if.then.i.i.i252.i:                               ; preds = %if.end123.i
  call void @__check_object_size(ptr noundef %165, i32 noundef %161, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i253.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i253.i, label %if.then.i.i.i252.i.if.end.i.i267.i_crit_edge, label %land.lhs.true.i.i257.i

if.then.i.i.i252.i.if.end.i.i267.i_crit_edge:     ; preds = %if.then.i.i.i252.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i267.i

land.lhs.true.i.i257.i:                           ; preds = %if.then.i.i.i252.i
  %168 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %167, i32 %161, i32 -1226833920) #17, !srcloc !152
  %asmresult.i.i255.i = extractvalue { i32, i32 } %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i255.i)
  %cmp.i6.i256.i = icmp eq i32 %asmresult.i.i255.i, 0
  br i1 %cmp.i6.i256.i, label %if.then.i7.i264.i, label %land.lhs.true.i.i257.i.if.end.i.i267.i_crit_edge, !prof !153

land.lhs.true.i.i257.i.if.end.i.i267.i_crit_edge: ; preds = %land.lhs.true.i.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i267.i

if.then.i7.i264.i:                                ; preds = %land.lhs.true.i.i257.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i258.i = call zeroext i1 @__kasan_check_write(ptr noundef %165, i32 noundef %161) #11
  %169 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i259.i = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i.i259.i to ptr
  %cpu_domain.i.i.i.i.i260.i = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 4
  %171 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i260.i) #8, !srcloc !154
  %and.i.i.i.i261.i = and i32 %171, -13
  %or.i.i.i.i262.i = or i32 %and.i.i.i.i261.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i262.i) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i263.i = call i32 @arm_copy_from_user(ptr noundef %165, ptr noundef %167, i32 noundef %161) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  br label %if.end.i.i267.i

if.end.i.i267.i:                                  ; preds = %if.then.i7.i264.i, %land.lhs.true.i.i257.i.if.end.i.i267.i_crit_edge, %if.then.i.i.i252.i.if.end.i.i267.i_crit_edge
  %res.0.i.i265.i = phi i32 [ %161, %if.then.i.i.i252.i.if.end.i.i267.i_crit_edge ], [ %call1.i.i.i263.i, %if.then.i7.i264.i ], [ %161, %land.lhs.true.i.i257.i.if.end.i.i267.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i265.i)
  %tobool4.not.i.i266.i = icmp eq i32 %res.0.i.i265.i, 0
  br i1 %tobool4.not.i.i266.i, label %if.end.i.i267.i.if.end46.i_crit_edge, label %if.then11.i.i270.i, !prof !153

if.end.i.i267.i.if.end46.i_crit_edge:             ; preds = %if.end.i.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then11.i.i270.i:                               ; preds = %if.end.i.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i268.i = sub i32 %161, %res.0.i.i265.i
  %add.ptr.i.i269.i = getelementptr i8, ptr %165, i32 %sub.i.i268.i
  %172 = call ptr @memset(ptr %add.ptr.i.i269.i, i32 0, i32 %res.0.i.i265.i)
  br label %if.then45.i

if.then45.i:                                      ; preds = %if.then11.i.i270.i, %if.then27.i.i250.i, %land.rhs16.i.i249.i.if.then45.i_crit_edge, %if.then118.i.if.then45.i_crit_edge, %if.then11.i.i237.i, %if.then11.i.i211.i, %if.then27.i.i.i56, %land.rhs16.i.i.i55.if.then45.i_crit_edge, %sw.bb57.i.if.then45.i_crit_edge, %sw.bb38.i.if.then45.i_crit_edge, %do.end.i44, %if.else.i.if.then45.i_crit_edge, %if.then25.i.if.then45.i_crit_edge, %if.end19.i.if.then45.i_crit_edge, %if.end9.i.if.then45.i_crit_edge, %if.end.i40.if.then45.i_crit_edge, %if.end.i40.if.then45.i_crit_edge103, %if.then11.i.i.i39
  %retval.0.i61.ph = phi i32 [ -12, %if.then25.i.if.then45.i_crit_edge ], [ -14, %land.rhs16.i.i249.i.if.then45.i_crit_edge ], [ -14, %if.then27.i.i250.i ], [ -14, %if.then11.i.i270.i ], [ -14, %if.then11.i.i237.i ], [ -14, %land.rhs16.i.i.i55.if.then45.i_crit_edge ], [ -14, %if.then27.i.i.i56 ], [ -14, %if.then11.i.i211.i ], [ -14, %if.then11.i.i.i39 ], [ -22, %if.then118.i.if.then45.i_crit_edge ], [ -22, %if.end19.i.if.then45.i_crit_edge ], [ -12, %sw.bb57.i.if.then45.i_crit_edge ], [ -12, %sw.bb38.i.if.then45.i_crit_edge ], [ -22, %if.else.i.if.then45.i_crit_edge ], [ -22, %do.end.i44 ], [ -19, %if.end9.i.if.then45.i_crit_edge ], [ -22, %if.end.i40.if.then45.i_crit_edge ], [ -22, %if.end.i40.if.then45.i_crit_edge103 ]
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %mimd.i) #11
  call fastcc void @mraid_mm_dealloc_kioc(ptr noundef nonnull %adapter.0.le.i.i, ptr noundef nonnull %add.ptr.i) #11
  br label %mraid_mm_ioctl.exit

if.end46.i:                                       ; preds = %if.end.i.i267.i.if.end46.i_crit_edge, %if.end113.i.if.end46.i_crit_edge, %if.end.i.i208.i.if.end46.i_crit_edge, %if.then95.i.if.end46.i_crit_edge, %if.then25.i.if.end46.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %mimd.i) #11
  %done.i = getelementptr i8, ptr %41, i32 8
  %173 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @ioctl_done, ptr %done.i, align 16
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %timeout.i) #11
  %174 = call ptr @memset(ptr %timeout.i, i32 0, i32 52)
  %status.i18 = getelementptr i8, ptr %41, i32 -156
  %175 = ptrtoint ptr %status.i18 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -61, ptr %status.i18, align 4
  %issue_uioc.i = getelementptr i8, ptr %.pn35.i.i, i32 -8
  %176 = ptrtoint ptr %issue_uioc.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %issue_uioc.i, align 4
  %drvr_data.i = getelementptr i8, ptr %.pn35.i.i, i32 -20
  %178 = ptrtoint ptr %drvr_data.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %drvr_data.i, align 4
  %call.i = call i32 %177(i32 noundef %179, ptr noundef nonnull %add.ptr.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i20, label %lld_ioctl.exit.thread

lld_ioctl.exit.thread:                            ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timeout.i) #11
  br label %if.then49.i

if.end.i20:                                       ; preds = %if.end46.i
  %timeout1.i = getelementptr i8, ptr %.pn35.i.i, i32 -16
  %180 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %timeout1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %181)
  %cmp.not.i19 = icmp eq i16 %181, 0
  br i1 %cmp.not.i19, label %if.end.i20.do.body10.i_crit_edge, label %if.then3.i

if.end.i20.do.body10.i_crit_edge:                 ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10.i

if.then3.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #13
  %uioc.i = getelementptr inbounds %struct.uioc_timeout, ptr %timeout.i, i32 0, i32 1
  %182 = ptrtoint ptr %uioc.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %add.ptr.i, ptr %uioc.i, align 4
  call void @init_timer_on_stack_key(ptr noundef nonnull %timeout.i, ptr noundef nonnull @lld_timedout, i32 noundef 0, ptr noundef nonnull @.str.39, ptr noundef nonnull @lld_ioctl.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %183 = load volatile i32, ptr @jiffies, align 128
  %184 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %timeout1.i, align 4
  %conv5.i = zext i16 %185 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, 100
  %add.i = add i32 %mul.i, %183
  %expires.i = getelementptr inbounds %struct.timer_list, ptr %timeout.i, i32 0, i32 1
  %186 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef nonnull %timeout.i) #11
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then3.i, %if.end.i20.do.body10.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 704) #11
  %187 = ptrtoint ptr %status.i18 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %status.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %188)
  %cmp17.not.i = icmp eq i32 %188, -61
  br i1 %cmp17.not.i, label %if.end20.i, label %do.body10.i.do.end28.i_crit_edge

do.body10.i.do.end28.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28.i

if.end20.i:                                       ; preds = %do.body10.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %189 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  %call2155.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @wait_q, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %190 = ptrtoint ptr %status.i18 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %status.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %191)
  %cmp23.not56.i = icmp eq i32 %191, -61
  br i1 %cmp23.not56.i, label %if.end20.i.cleanup.i_crit_edge, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end20.i.cleanup.i_crit_edge
  call void @schedule() #11
  %call21.i = call i32 @prepare_to_wait_event(ptr noundef nonnull @wait_q, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #11
  %192 = ptrtoint ptr %status.i18 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %status.i18, align 4
  %cmp23.not.i = icmp eq i32 %193, -61
  br i1 %cmp23.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef nonnull @wait_q, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %do.end28.i

do.end28.i:                                       ; preds = %for.end.i, %do.body10.i.do.end28.i_crit_edge
  %function.i = getelementptr inbounds %struct.timer_list, ptr %timeout.i, i32 0, i32 2
  %194 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %function.i, align 4
  %tobool30.not.i = icmp eq ptr %195, null
  br i1 %tobool30.not.i, label %do.end28.i.if.end35.i_crit_edge, label %if.then31.i

do.end28.i.if.end35.i_crit_edge:                  ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then31.i:                                      ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %call33.i = call i32 @del_timer_sync(ptr noundef nonnull %timeout.i) #11
  call void @destroy_timer_on_stack(ptr noundef nonnull %timeout.i) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %do.end28.i.if.end35.i_crit_edge
  %196 = ptrtoint ptr %timedout.i72 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %timedout.i72, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool36.not.i = icmp eq i8 %197, 0
  br i1 %tobool36.not.i, label %if.end35.i.lld_ioctl.exit_crit_edge, label %if.then37.i

if.end35.i.lld_ioctl.exit_crit_edge:              ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lld_ioctl.exit

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %quiescent.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %quiescent.i, align 4
  br label %lld_ioctl.exit

lld_ioctl.exit:                                   ; preds = %if.then37.i, %if.end35.i.lld_ioctl.exit_crit_edge
  %199 = ptrtoint ptr %status.i18 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %status.i18, align 4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timeout.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool48.not.i = icmp eq i32 %200, 0
  br i1 %tobool48.not.i, label %if.end53.i, label %lld_ioctl.exit.if.then49.i_crit_edge

lld_ioctl.exit.if.then49.i_crit_edge:             ; preds = %lld_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49.i

if.then49.i:                                      ; preds = %lld_ioctl.exit.if.then49.i_crit_edge, %lld_ioctl.exit.thread
  %retval.0.i2496 = phi i32 [ %call.i, %lld_ioctl.exit.thread ], [ %200, %lld_ioctl.exit.if.then49.i_crit_edge ]
  %201 = ptrtoint ptr %timedout.i72 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %timedout.i72, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool50.not.i = icmp eq i8 %202, 0
  br i1 %tobool50.not.i, label %if.then51.i, label %if.then49.i.mraid_mm_ioctl.exit_crit_edge

if.then49.i.mraid_mm_ioctl.exit_crit_edge:        ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mraid_mm_ioctl.exit

if.then51.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mraid_mm_dealloc_kioc(ptr noundef nonnull %adapter.0.le.i.i, ptr noundef nonnull %add.ptr.i) #11
  br label %mraid_mm_ioctl.exit

if.end53.i:                                       ; preds = %lld_ioctl.exit
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %kmimd.i) #11
  %203 = call ptr @memset(ptr %kmimd.i, i32 255, i32 110)
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %cinfo.i) #11
  %204 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 1
  %205 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 2
  %206 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 3
  %207 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 4
  %208 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 5
  %209 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 6
  %210 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 7
  %211 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 8
  %212 = getelementptr inbounds %struct.mcontroller, ptr %cinfo.i, i32 0, i32 9
  %213 = call ptr @memset(ptr %cinfo.i, i32 255, i32 23)
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 156) #11
  %call.i.i.i1 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i1, label %if.end53.i.if.then11.i.i.i15_crit_edge, label %if.end.i.i.i12

if.end53.i.if.then11.i.i.i15_crit_edge:           ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i15

if.end.i.i.i12:                                   ; preds = %if.end53.i
  %call.i.i.i.i5 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kmimd.i, i32 noundef 110) #11
  %214 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i.i.i6 = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i.i.i6 to ptr
  %cpu_domain.i.i.i.i.i.i7 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 4
  %216 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i7) #8, !srcloc !154
  %and.i.i.i.i.i8 = and i32 %216, -13
  %or.i.i.i.i.i9 = or i32 %and.i.i.i.i.i8, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i9) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  %call1.i.i.i.i10 = call i32 @arm_copy_from_user(ptr noundef nonnull %kmimd.i, ptr noundef %1, i32 noundef 110) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %216) #11, !srcloc !155
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i10)
  %tobool4.not.i.i.i11 = icmp eq i32 %call1.i.i.i.i10, 0
  br i1 %tobool4.not.i.i.i11, label %if.end.i, label %if.end.i.i.i12.if.then11.i.i.i15_crit_edge, !prof !153

if.end.i.i.i12.if.then11.i.i.i15_crit_edge:       ; preds = %if.end.i.i.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i15

if.then11.i.i.i15:                                ; preds = %if.end.i.i.i12.if.then11.i.i.i15_crit_edge, %if.end53.i.if.then11.i.i.i15_crit_edge
  %res.0.i.i107.i = phi i32 [ %call1.i.i.i.i10, %if.end.i.i.i12.if.then11.i.i.i15_crit_edge ], [ 110, %if.end53.i.if.then11.i.i.i15_crit_edge ]
  %sub.i.i.i13 = sub i32 110, %res.0.i.i107.i
  %add.ptr.i.i.i14 = getelementptr i8, ptr %kmimd.i, i32 %sub.i.i.i13
  %217 = call ptr @memset(ptr %add.ptr.i.i.i14, i32 0, i32 %res.0.i.i107.i)
  br label %kioc_to_mimd.exit

if.end.i:                                         ; preds = %if.end.i.i.i12
  %ui.i = getelementptr inbounds %struct.mimd, ptr %kmimd.i, i32 0, i32 2
  %218 = ptrtoint ptr %ui.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %ui.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %219)
  %cmp.i = icmp eq i8 %219, -126
  br i1 %cmp.i, label %if.then5.i, label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i
  %subopcode3.i = getelementptr inbounds %struct.mimd, ptr %kmimd.i, i32 0, i32 2, i32 0, i32 1
  %220 = ptrtoint ptr %subopcode3.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %subopcode3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 103, i8 %221)
  %cond.i = icmp eq i8 %221, 103
  br i1 %cond.i, label %sw.bb.i, label %if.then5.i.kioc_to_mimd.exit_crit_edge

if.then5.i.kioc_to_mimd.exit_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

sw.bb.i:                                          ; preds = %if.then5.i
  %222 = ptrtoint ptr %buf_vaddr.i67 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %buf_vaddr.i67, align 4
  %tobool.not.i.i = icmp eq ptr %223, null
  br i1 %tobool.not.i.i, label %sw.bb.i.hinfo_to_cinfo.exit.i_crit_edge, label %if.end.i.i16

sw.bb.i.hinfo_to_cinfo.exit.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hinfo_to_cinfo.exit.i

if.end.i.i16:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %baseport.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %baseport.i.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %baseport.i.i, align 8
  %226 = ptrtoint ptr %cinfo.i to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %225, ptr %cinfo.i, align 8
  %irq.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 8
  %227 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %irq.i.i, align 1
  %229 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %204, align 8
  %num_ldrv.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 11
  %230 = ptrtoint ptr %num_ldrv.i.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %num_ldrv.i.i, align 4
  %232 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %205, align 1
  %pci_bus.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 5
  %233 = ptrtoint ptr %pci_bus.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %pci_bus.i.i, align 16
  %235 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %206, align 2
  %pci_slot.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 7
  %236 = ptrtoint ptr %pci_slot.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %pci_slot.i.i, align 2
  %conv.i.i = zext i8 %237 to i16
  %238 = ptrtoint ptr %207 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 2)
  store i16 %conv.i.i, ptr %207, align 1
  %pci_dev_fn.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 6
  %239 = ptrtoint ptr %pci_dev_fn.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %pci_dev_fn.i.i, align 1
  %241 = and i8 %240, 7
  %242 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %241, ptr %208, align 1
  %pci_device_id.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 1
  %243 = ptrtoint ptr %pci_device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %pci_device_id.i.i, align 2
  %245 = ptrtoint ptr %209 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %244, ptr %209, align 2
  %246 = ptrtoint ptr %223 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %223, align 256
  %248 = ptrtoint ptr %210 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %247, ptr %210, align 8
  %249 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %237, ptr %211, align 2
  %unique_id.i.i = getelementptr inbounds %struct.mraid_hba_info, ptr %223, i32 0, i32 9
  %250 = ptrtoint ptr %unique_id.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %unique_id.i.i, align 4
  %252 = ptrtoint ptr %212 to i32
  call void @__asan_storeN_noabort(i32 %252, i32 4)
  store i32 %251, ptr %212, align 1
  br label %hinfo_to_cinfo.exit.i

hinfo_to_cinfo.exit.i:                            ; preds = %if.end.i.i16, %sw.bb.i.hinfo_to_cinfo.exit.i_crit_edge
  %data.i = getelementptr inbounds %struct.mimd, ptr %kmimd.i, i32 0, i32 5
  %253 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %253, i32 4)
  %254 = load ptr, ptr %data.i, align 1
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i57.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i57.i, label %hinfo_to_cinfo.exit.i.kioc_to_mimd.exit_crit_edge, label %if.end.i.i60.i

hinfo_to_cinfo.exit.i.kioc_to_mimd.exit_crit_edge: ; preds = %hinfo_to_cinfo.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

if.end.i.i60.i:                                   ; preds = %hinfo_to_cinfo.exit.i
  %255 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %254, i32 23, i32 -1226833920) #17, !srcloc !157
  %asmresult.i.i58.i = extractvalue { i32, i32 } %255, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i58.i)
  %cmp.i6.i59.i = icmp eq i32 %asmresult.i.i58.i, 0
  br i1 %cmp.i6.i59.i, label %copy_to_user.exit.i, label %if.end.i.i60.i.kioc_to_mimd.exit_crit_edge

if.end.i.i60.i.kioc_to_mimd.exit_crit_edge:       ; preds = %if.end.i.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i61.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cinfo.i, i32 noundef 23) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %254, ptr noundef nonnull %cinfo.i, i32 noundef 23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool8.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 -14
  br label %kioc_to_mimd.exit

if.end11.i:                                       ; preds = %if.end.i
  %256 = ptrtoint ptr %cmdbuf.i65 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 8)
  %257 = load i64, ptr %cmdbuf.i65, align 4
  %conv12.i = trunc i64 %257 to i32
  %258 = inttoptr i32 %conv12.i to ptr
  %259 = ptrtoint ptr %user_pthru.i71 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %user_pthru.i71, align 4
  %tobool13.not.i = icmp eq ptr %260, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end21.i_crit_edge, label %if.then14.i

if.end11.i.if.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then14.i:                                      ; preds = %if.end11.i
  %261 = ptrtoint ptr %pthru32.i66 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %pthru32.i66, align 64
  %scsistatus.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %260, i32 0, i32 11
  %scsistatus16.i = getelementptr inbounds %struct.mraid_passthru_t, ptr %262, i32 0, i32 11
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i67.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i67.i, label %if.then14.i.kioc_to_mimd.exit_crit_edge, label %if.end.i.i70.i

if.then14.i.kioc_to_mimd.exit_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

if.end.i.i70.i:                                   ; preds = %if.then14.i
  %263 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %scsistatus.i, i32 1, i32 -1226833920) #17, !srcloc !157
  %asmresult.i.i68.i = extractvalue { i32, i32 } %263, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i68.i)
  %cmp.i6.i69.i = icmp eq i32 %asmresult.i.i68.i, 0
  br i1 %cmp.i6.i69.i, label %copy_to_user.exit75.i, label %if.end.i.i70.i.kioc_to_mimd.exit_crit_edge

if.end.i.i70.i.kioc_to_mimd.exit_crit_edge:       ; preds = %if.end.i.i70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

copy_to_user.exit75.i:                            ; preds = %if.end.i.i70.i
  %call.i.i.i71.i = call zeroext i1 @__kasan_check_read(ptr noundef %scsistatus16.i, i32 noundef 1) #11
  %call.i12.i.i72.i = call i32 @arm_copy_to_user(ptr noundef %scsistatus.i, ptr noundef %scsistatus16.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i72.i)
  %tobool18.not.i = icmp eq i32 %call.i12.i.i72.i, 0
  br i1 %tobool18.not.i, label %copy_to_user.exit75.i.if.end21.i_crit_edge, label %copy_to_user.exit75.i.kioc_to_mimd.exit_crit_edge

copy_to_user.exit75.i.kioc_to_mimd.exit_crit_edge: ; preds = %copy_to_user.exit75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

copy_to_user.exit75.i.if.end21.i_crit_edge:       ; preds = %copy_to_user.exit75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.end21.i:                                       ; preds = %copy_to_user.exit75.i.if.end21.i_crit_edge, %if.end11.i.if.end21.i_crit_edge
  %264 = ptrtoint ptr %user_data.i69 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %user_data.i69, align 16
  %tobool22.not.i = icmp eq ptr %265, null
  br i1 %tobool22.not.i, label %if.end21.i.if.end30.i_crit_edge, label %if.then23.i

if.end21.i.if.end30.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.end21.i
  %266 = ptrtoint ptr %buf_vaddr.i67 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %buf_vaddr.i67, align 4
  %268 = ptrtoint ptr %user_data_len.i70 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %user_data_len.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %cmp9.i.i.i = icmp slt i32 %269, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then23.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.kioc_to_mimd.exit_crit_edge, label %if.then27.i.i.i, !prof !153

land.rhs16.i.i.i.kioc_to_mimd.exit_crit_edge:     ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %kioc_to_mimd.exit

if.then.i.i.i.i:                                  ; preds = %if.then23.i
  call void @__check_object_size(ptr noundef %267, i32 noundef %269, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i80.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i80.i, label %if.then.i.i.i.i.copy_to_user.exit88.i_crit_edge, label %if.end.i.i83.i

if.then.i.i.i.i.copy_to_user.exit88.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit88.i

if.end.i.i83.i:                                   ; preds = %if.then.i.i.i.i
  %270 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %265, i32 %269, i32 -1226833920) #17, !srcloc !157
  %asmresult.i.i81.i = extractvalue { i32, i32 } %270, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i81.i)
  %cmp.i6.i82.i = icmp eq i32 %asmresult.i.i81.i, 0
  br i1 %cmp.i6.i82.i, label %if.then2.i.i86.i, label %if.end.i.i83.i.copy_to_user.exit88.i_crit_edge

if.end.i.i83.i.copy_to_user.exit88.i_crit_edge:   ; preds = %if.end.i.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit88.i

if.then2.i.i86.i:                                 ; preds = %if.end.i.i83.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i84.i = call zeroext i1 @__kasan_check_read(ptr noundef %267, i32 noundef %269) #11
  %call.i12.i.i85.i = call i32 @arm_copy_to_user(ptr noundef nonnull %265, ptr noundef %267, i32 noundef %269) #11
  br label %copy_to_user.exit88.i

copy_to_user.exit88.i:                            ; preds = %if.then2.i.i86.i, %if.end.i.i83.i.copy_to_user.exit88.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit88.i_crit_edge
  %n.addr.0.i87.i = phi i32 [ %269, %if.then.i.i.i.i.copy_to_user.exit88.i_crit_edge ], [ %call.i12.i.i85.i, %if.then2.i.i86.i ], [ %269, %if.end.i.i83.i.copy_to_user.exit88.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i87.i)
  %tobool27.not.i = icmp eq i32 %n.addr.0.i87.i, 0
  br i1 %tobool27.not.i, label %copy_to_user.exit88.i.if.end30.i_crit_edge, label %copy_to_user.exit88.i.kioc_to_mimd.exit_crit_edge

copy_to_user.exit88.i.kioc_to_mimd.exit_crit_edge: ; preds = %copy_to_user.exit88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

copy_to_user.exit88.i.if.end30.i_crit_edge:       ; preds = %copy_to_user.exit88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %copy_to_user.exit88.i.if.end30.i_crit_edge, %if.end21.i.if.end30.i_crit_edge
  %arrayidx.i = getelementptr %struct.mimd, ptr %1, i32 0, i32 3, i32 17
  %status.i = getelementptr inbounds %struct.mbox64_t, ptr %258, i32 0, i32 2, i32 10
  call void @__might_fault(ptr noundef nonnull @.str.29, i32 noundef 174) #11
  %call.i.i95.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i95.i, label %if.end30.i.kioc_to_mimd.exit_crit_edge, label %if.end.i.i99.i

if.end30.i.kioc_to_mimd.exit_crit_edge:           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

if.end.i.i99.i:                                   ; preds = %if.end30.i
  %271 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx.i, i32 1, i32 -1226833920) #17, !srcloc !157
  %asmresult.i.i97.i = extractvalue { i32, i32 } %271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i97.i)
  %cmp.i6.i98.i = icmp eq i32 %asmresult.i.i97.i, 0
  br i1 %cmp.i6.i98.i, label %copy_to_user.exit104.i, label %if.end.i.i99.i.kioc_to_mimd.exit_crit_edge

if.end.i.i99.i.kioc_to_mimd.exit_crit_edge:       ; preds = %if.end.i.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kioc_to_mimd.exit

copy_to_user.exit104.i:                           ; preds = %if.end.i.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i100.i = call zeroext i1 @__kasan_check_read(ptr noundef %status.i, i32 noundef 1) #11
  %call.i12.i.i101.i = call i32 @arm_copy_to_user(ptr noundef %arrayidx.i, ptr noundef %status.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i101.i)
  %tobool32.not.i = icmp eq i32 %call.i12.i.i101.i, 0
  %spec.select118.i = select i1 %tobool32.not.i, i32 0, i32 -14
  br label %kioc_to_mimd.exit

kioc_to_mimd.exit:                                ; preds = %copy_to_user.exit104.i, %if.end.i.i99.i.kioc_to_mimd.exit_crit_edge, %if.end30.i.kioc_to_mimd.exit_crit_edge, %copy_to_user.exit88.i.kioc_to_mimd.exit_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.kioc_to_mimd.exit_crit_edge, %copy_to_user.exit75.i.kioc_to_mimd.exit_crit_edge, %if.end.i.i70.i.kioc_to_mimd.exit_crit_edge, %if.then14.i.kioc_to_mimd.exit_crit_edge, %copy_to_user.exit.i, %if.end.i.i60.i.kioc_to_mimd.exit_crit_edge, %hinfo_to_cinfo.exit.i.kioc_to_mimd.exit_crit_edge, %if.then5.i.kioc_to_mimd.exit_crit_edge, %if.then11.i.i.i15
  %retval.0.i17 = phi i32 [ -22, %if.then5.i.kioc_to_mimd.exit_crit_edge ], [ -14, %copy_to_user.exit75.i.kioc_to_mimd.exit_crit_edge ], [ -14, %copy_to_user.exit88.i.kioc_to_mimd.exit_crit_edge ], [ -14, %if.then11.i.i.i15 ], [ -14, %hinfo_to_cinfo.exit.i.kioc_to_mimd.exit_crit_edge ], [ -14, %if.end.i.i60.i.kioc_to_mimd.exit_crit_edge ], [ -14, %if.then14.i.kioc_to_mimd.exit_crit_edge ], [ -14, %if.end.i.i70.i.kioc_to_mimd.exit_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.kioc_to_mimd.exit_crit_edge ], [ -14, %if.end30.i.kioc_to_mimd.exit_crit_edge ], [ -14, %if.end.i.i99.i.kioc_to_mimd.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %spec.select118.i, %copy_to_user.exit104.i ]
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %cinfo.i) #11
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %kmimd.i) #11
  call fastcc void @mraid_mm_dealloc_kioc(ptr noundef nonnull %adapter.0.le.i.i, ptr noundef nonnull %add.ptr.i) #11
  br label %mraid_mm_ioctl.exit

mraid_mm_ioctl.exit:                              ; preds = %kioc_to_mimd.exit, %if.then51.i, %if.then49.i.mraid_mm_ioctl.exit_crit_edge, %if.then45.i, %mraid_mm_alloc_kioc.exit.mraid_mm_ioctl.exit_crit_edge, %do.end13.i, %if.then.i.mraid_mm_ioctl.exit_crit_edge, %do.end34.i, %if.then29.i.mraid_mm_ioctl.exit_crit_edge, %mraid_mm_get_adapter.exit.i.mraid_mm_ioctl.exit_crit_edge, %mraid_mm_get_adapter.exit.thread.i, %if.then21.i, %handle_drvrcmd.exit.thread.i, %if.end7.i.mraid_mm_ioctl.exit_crit_edge, %do.end.i, %if.then11.i.i.i.mraid_mm_ioctl.exit_crit_edge, %entry.mraid_mm_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %drvrcmd_rval.0.ph.i, %if.then21.i ], [ %retval.0.i61.ph, %if.then45.i ], [ %retval.0.i17, %kioc_to_mimd.exit ], [ -22, %entry.mraid_mm_ioctl.exit_crit_edge ], [ -14, %do.end.i ], [ -14, %if.then11.i.i.i.mraid_mm_ioctl.exit_crit_edge ], [ -22, %if.end7.i.mraid_mm_ioctl.exit_crit_edge ], [ -14, %do.end34.i ], [ -14, %if.then29.i.mraid_mm_ioctl.exit_crit_edge ], [ -6, %mraid_mm_alloc_kioc.exit.mraid_mm_ioctl.exit_crit_edge ], [ -14, %handle_drvrcmd.exit.thread.i ], [ %rval.0.ph.i, %mraid_mm_get_adapter.exit.thread.i ], [ 0, %mraid_mm_get_adapter.exit.i.mraid_mm_ioctl.exit_crit_edge ], [ %retval.0.i2496, %if.then51.i ], [ %retval.0.i2496, %if.then49.i.mraid_mm_ioctl.exit_crit_edge ], [ -6, %do.end13.i ], [ -6, %if.then.i.mraid_mm_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %signature.i) #11
  call void @mutex_unlock(ptr noundef nonnull @mraid_mm_mutex) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mraid_mm_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %filep) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #11
  %. = select i1 %call, i32 0, i32 -13
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mraid_mm_dealloc_kioc(ptr noundef %adp, ptr noundef %kioc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pool_index = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 20
  %0 = ptrtoint ptr %pool_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pool_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %entry.do.body16_crit_edge, label %if.then

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

if.then:                                          ; preds = %entry
  %conv = sext i8 %1 to i32
  %lock = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 %conv, i32 4
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %free_buf = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 21
  %2 = ptrtoint ptr %free_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %free_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp10 = icmp eq i8 %3, 1
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %handle = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 %conv, i32 3
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %buf_vaddr = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 18
  %6 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf_vaddr, align 4
  %buf_paddr = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 19
  %8 = ptrtoint ptr %buf_paddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_paddr, align 8
  tail call void @dma_pool_free(ptr noundef %5, ptr noundef %7, i32 noundef %9) #11
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %in_use = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 %conv, i32 5
  %10 = ptrtoint ptr %in_use to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %in_use, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #11
  br label %do.body16

do.body16:                                        ; preds = %if.end, %entry.do.body16_crit_edge
  %kioc_pool_lock = getelementptr inbounds %struct.mraid_mmadp, ptr %adp, i32 0, i32 11
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %kioc_pool_lock) #11
  %list = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 16
  %kioc_pool = getelementptr inbounds %struct.mraid_mmadp, ptr %adp, i32 0, i32 10
  %11 = ptrtoint ptr %kioc_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kioc_pool, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %kioc_pool, ptr noundef %12) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body16.list_add.exit_crit_edge

do.body16.list_add.exit_crit_edge:                ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev1.i.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %kioc_pool, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %kioc_pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %kioc_pool, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body16.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %kioc_pool_lock, i32 noundef %call23) #11
  %kioc_semaphore = getelementptr inbounds %struct.mraid_mmadp, ptr %adp, i32 0, i32 12
  tail call void @up(ptr noundef %kioc_semaphore) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioctl_done(ptr noundef %kioc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %1)
  %cmp = icmp eq i32 %1, -61
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp1 = icmp sgt i32 %2, -1
  br i1 %cmp1, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -22, ptr %status, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %timedout = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 22
  %4 = ptrtoint ptr %timedout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %timedout, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end4
  %adapno6 = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 4
  %6 = ptrtoint ptr %adapno6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adapno6, align 8
  %8 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp7 = icmp sgt i32 %8, -1
  br i1 %cmp7, label %do.end11, label %if.then5.if.end14_crit_edge

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #16
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.then5.if.end14_crit_edge
  %.pn37 = load ptr, ptr @adapters_list_g, align 4
  %cmp16.not38 = icmp eq ptr %.pn37, @adapters_list_g
  br i1 %cmp16.not38, label %if.end14.if.end28.critedge_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.if.end28.critedge_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.critedge

for.cond:                                         ; preds = %for.body
  %inc = add i32 %iterator.039, 1
  %9 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp16.not = icmp eq ptr %.pn, @adapters_list_g
  br i1 %cmp16.not, label %for.cond.if.end28.critedge_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.if.end28.critedge_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.critedge

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end14.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn37, %if.end14.for.body_crit_edge ]
  %iterator.039 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %iterator.039, i32 %7)
  %cmp17 = icmp eq i32 %iterator.039, %7
  br i1 %cmp17, label %if.then26.critedge, label %for.cond

if.then26.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %adapter.0.le = getelementptr i8, ptr %.pn40, i32 -28
  %10 = ptrtoint ptr %timedout to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %timedout, align 2
  tail call fastcc void @mraid_mm_dealloc_kioc(ptr noundef %adapter.0.le, ptr noundef %kioc)
  br label %if.end28

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wake_up(ptr noundef nonnull @wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end28

if.end28.critedge:                                ; preds = %for.cond.if.end28.critedge_crit_edge, %if.end14.if.end28.critedge_crit_edge
  %11 = ptrtoint ptr %timedout to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timedout, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.end28.critedge, %if.else, %if.then26.critedge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mraid_mm_attach_buf(ptr noundef %adp, ptr noundef %kioc, i32 noundef %xferlen) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pool_index = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 20
  %0 = ptrtoint ptr %pool_index to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pool_index, align 4
  %buf_vaddr = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 18
  %1 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %buf_vaddr, align 4
  %buf_paddr = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 19
  %2 = ptrtoint ptr %buf_paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buf_paddr, align 8
  %free_buf = getelementptr inbounds %struct.uioc, ptr %kioc, i32 0, i32 21
  %3 = ptrtoint ptr %free_buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %free_buf, align 1
  %buf_size = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 0, i32 2
  %4 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %xferlen)
  %cmp1 = icmp ult i32 %5, %xferlen
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %entry
  %lock = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 0, i32 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %in_use = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 0, i32 5
  %6 = ptrtoint ptr %in_use to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.then10_crit_edge, label %if.else

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.then10:                                        ; preds = %if.end.4.if.then10_crit_edge, %if.end.3.if.then10_crit_edge, %if.end.2.if.then10_crit_edge, %if.end.1.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %i.086.lcssa = phi i32 [ 0, %if.end.if.then10_crit_edge ], [ 1, %if.end.1.if.then10_crit_edge ], [ 2, %if.end.2.if.then10_crit_edge ], [ 3, %if.end.3.if.then10_crit_edge ], [ 4, %if.end.4.if.then10_crit_edge ]
  %lock.lcssa = phi ptr [ %lock, %if.end.if.then10_crit_edge ], [ %lock.1, %if.end.1.if.then10_crit_edge ], [ %lock.2, %if.end.2.if.then10_crit_edge ], [ %lock.3, %if.end.3.if.then10_crit_edge ], [ %lock.4, %if.end.4.if.then10_crit_edge ]
  %call7.lcssa = phi i32 [ %call7, %if.end.if.then10_crit_edge ], [ %call7.1, %if.end.1.if.then10_crit_edge ], [ %call7.2, %if.end.2.if.then10_crit_edge ], [ %call7.3, %if.end.3.if.then10_crit_edge ], [ %call7.4, %if.end.4.if.then10_crit_edge ]
  %in_use.lcssa = phi ptr [ %in_use, %if.end.if.then10_crit_edge ], [ %in_use.1, %if.end.1.if.then10_crit_edge ], [ %in_use.2, %if.end.2.if.then10_crit_edge ], [ %in_use.3, %if.end.3.if.then10_crit_edge ], [ %in_use.4, %if.end.4.if.then10_crit_edge ]
  %arrayidx.le = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 %i.086.lcssa
  %8 = ptrtoint ptr %in_use.lcssa to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %in_use.lcssa, align 4
  %conv12 = trunc i32 %i.086.lcssa to i8
  %9 = ptrtoint ptr %pool_index to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv12, ptr %pool_index, align 4
  %10 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.le, align 4
  %12 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %buf_vaddr, align 4
  %paddr = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 %i.086.lcssa, i32 1
  %13 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %paddr, align 4
  %15 = ptrtoint ptr %buf_paddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf_paddr, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.lcssa, i32 noundef %call7.lcssa) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %entry.for.inc_crit_edge
  %spec.select.1 = phi i32 [ 1, %entry.for.inc_crit_edge ], [ 0, %if.else ]
  %right_pool.2 = phi i32 [ -1, %entry.for.inc_crit_edge ], [ 0, %if.else ]
  %buf_size.1 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 1, i32 2
  %16 = ptrtoint ptr %buf_size.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_size.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %xferlen)
  %cmp1.1 = icmp ult i32 %17, %xferlen
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %lock.1 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 1, i32 4
  %call7.1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.1) #11
  %in_use.1 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 1, i32 5
  %18 = ptrtoint ptr %in_use.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %in_use.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.1 = icmp eq i8 %19, 0
  br i1 %tobool.not.1, label %if.end.1.if.then10_crit_edge, label %if.else.1

if.end.1.if.then10_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.else.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.1, i32 noundef %call7.1) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.inc.for.inc.1_crit_edge
  %right_pool.2.1 = phi i32 [ %right_pool.2, %for.inc.for.inc.1_crit_edge ], [ %spec.select.1, %if.else.1 ]
  %buf_size.2 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 2, i32 2
  %20 = ptrtoint ptr %buf_size.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_size.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %xferlen)
  %cmp1.2 = icmp ult i32 %21, %xferlen
  br i1 %cmp1.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %lock.2 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 2, i32 4
  %call7.2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.2) #11
  %in_use.2 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 2, i32 5
  %22 = ptrtoint ptr %in_use.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %in_use.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.2 = icmp eq i8 %23, 0
  br i1 %tobool.not.2, label %if.end.2.if.then10_crit_edge, label %if.else.2

if.end.2.if.then10_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.else.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %right_pool.2.1)
  %cmp2.2 = icmp eq i32 %right_pool.2.1, -1
  %spec.select.2 = select i1 %cmp2.2, i32 2, i32 %right_pool.2.1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.2, i32 noundef %call7.2) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %for.inc.1.for.inc.2_crit_edge
  %right_pool.2.2 = phi i32 [ %right_pool.2.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select.2, %if.else.2 ]
  %buf_size.3 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 3, i32 2
  %24 = ptrtoint ptr %buf_size.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %xferlen)
  %cmp1.3 = icmp ult i32 %25, %xferlen
  br i1 %cmp1.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %lock.3 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 3, i32 4
  %call7.3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.3) #11
  %in_use.3 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 3, i32 5
  %26 = ptrtoint ptr %in_use.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %in_use.3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.3 = icmp eq i8 %27, 0
  br i1 %tobool.not.3, label %if.end.3.if.then10_crit_edge, label %if.else.3

if.end.3.if.then10_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.else.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %right_pool.2.2)
  %cmp2.3 = icmp eq i32 %right_pool.2.2, -1
  %spec.select.3 = select i1 %cmp2.3, i32 3, i32 %right_pool.2.2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.3, i32 noundef %call7.3) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %for.inc.2.for.inc.3_crit_edge
  %right_pool.2.3 = phi i32 [ %right_pool.2.2, %for.inc.2.for.inc.3_crit_edge ], [ %spec.select.3, %if.else.3 ]
  %buf_size.4 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 4, i32 2
  %28 = ptrtoint ptr %buf_size.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_size.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %xferlen)
  %cmp1.4 = icmp ult i32 %29, %xferlen
  br i1 %cmp1.4, label %for.inc.4, label %if.end.4

if.end.4:                                         ; preds = %for.inc.3
  %lock.4 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 4, i32 4
  %call7.4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.4) #11
  %in_use.4 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 4, i32 5
  %30 = ptrtoint ptr %in_use.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %in_use.4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.4 = icmp eq i8 %31, 0
  br i1 %tobool.not.4, label %if.end.4.if.then10_crit_edge, label %if.else.4

if.end.4.if.then10_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.else.4:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %right_pool.2.3)
  %cmp2.4 = icmp eq i32 %right_pool.2.3, -1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.4, i32 noundef %call7.4) #11
  %spec.select = select i1 %cmp2.4, i32 4, i32 %right_pool.2.3
  br label %if.end21

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %right_pool.2.3)
  %cmp18 = icmp eq i32 %right_pool.2.3, -1
  br i1 %cmp18, label %for.inc.4.cleanup_crit_edge, label %for.inc.4.if.end21_crit_edge

for.inc.4.if.end21_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %for.inc.4.if.end21_crit_edge, %if.else.4
  %right_pool.2.491 = phi i32 [ %right_pool.2.3, %for.inc.4.if.end21_crit_edge ], [ %spec.select, %if.else.4 ]
  %lock31 = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 %right_pool.2.491, i32 4
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock31) #11
  %conv38 = trunc i32 %right_pool.2.491 to i8
  %32 = ptrtoint ptr %pool_index to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv38, ptr %pool_index, align 4
  %33 = ptrtoint ptr %free_buf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %free_buf, align 1
  %handle = getelementptr %struct.mraid_mmadp, ptr %adp, i32 0, i32 15, i32 %right_pool.2.491, i32 3
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle, align 4
  %call42 = tail call ptr @dma_pool_alloc(ptr noundef %35, i32 noundef 2592, ptr noundef %buf_paddr) #11
  %36 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call42, ptr %buf_vaddr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock31, i32 noundef %call33) #11
  %37 = ptrtoint ptr %buf_vaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf_vaddr, align 4
  %tobool46.not = icmp eq ptr %38, null
  %. = select i1 %tobool46.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.inc.4.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -22, %for.inc.4.cleanup_crit_edge ], [ %., %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lld_timedout(ptr nocapture noundef readonly %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %uioc = getelementptr inbounds %struct.uioc_timeout, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %uioc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uioc, align 4
  %status = getelementptr inbounds %struct.uioc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -62, ptr %status, align 4
  %timedout = getelementptr inbounds %struct.uioc, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %timedout to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %timedout, align 2
  %4 = load i32, ptr @dbglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @__wake_up(ptr noundef nonnull @wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !90, !91, !93, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !135, !137, !138, !139, !141}
!llvm.named.register.sp = !{!142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version240, !8, !"__UNIQUE_ID_version240", i1 false, i1 false}
!8 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 47, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_dlevel, !14, !"__param_dlevel", i1 false, i1 false}
!14 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 50, i32 1}
!15 = !{ptr @__UNIQUE_ID_dleveltype241, !14, !"__UNIQUE_ID_dleveltype241", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_dlevel242, !17, !"__UNIQUE_ID_dlevel242", i1 false, i1 false}
!17 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 51, i32 1}
!18 = !{ptr @__ksymtab_mraid_mm_register_adp, !19, !"__ksymtab_mraid_mm_register_adp", i1 false, i1 false}
!19 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 53, i32 1}
!20 = !{ptr @__ksymtab_mraid_mm_unregister_adp, !21, !"__ksymtab_mraid_mm_unregister_adp", i1 false, i1 false}
!21 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 54, i32 1}
!22 = !{ptr @__ksymtab_mraid_mm_adapter_app_handle, !23, !"__ksymtab_mraid_mm_adapter_app_handle", i1 false, i1 false}
!23 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 55, i32 1}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 941, i32 44}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 949, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mraid_mm_register_adp._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mraid_mm_register_adp._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mraid_mm_register_adp.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 962, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mraid_mm_register_adp._entry.8, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 976, i32 4}
!37 = !{ptr @mraid_mm_register_adp._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1137, i32 4}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mraid_mm_unregister_adp._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mraid_mm_unregister_adp._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1238, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mraid_mm_exit._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mraid_mm_exit._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__initcall__kmod_megaraid_mm__243_1243_mraid_mm_init6, !49, !"__initcall__kmod_megaraid_mm__243_1243_mraid_mm_init6", i1 false, i1 false}
!49 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1243, i32 1}
!50 = !{ptr @__exitcall_mraid_mm_exit, !51, !"__exitcall_mraid_mm_exit", i1 false, i1 false}
!51 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1244, i32 1}
!52 = !{ptr @adapters_count_g, !53, !"adapters_count_g", i1 false, i1 false}
!53 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 59, i32 12}
!54 = !{ptr @adapters_list_g, !55, !"adapters_list_g", i1 false, i1 false}
!55 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 60, i32 25}
!56 = !{ptr @__param_str_dlevel, !14, !"__param_str_dlevel", i1 false, i1 false}
!57 = !{ptr @dbglevel, !58, !"dbglevel", i1 false, i1 false}
!58 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 49, i32 12}
!59 = !{ptr @sema_init.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!65 = !{ptr @mraid_mm_setup_dma_pools.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1084, i32 3}
!67 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1086, i32 34}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 74, i32 12}
!72 = !{ptr @megaraid_mm_dev, !73, !"megaraid_mm_dev", i1 false, i1 false}
!73 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 72, i32 26}
!74 = !{ptr @lsi_fops, !75, !"lsi_fops", i1 false, i1 false}
!75 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 64, i32 37}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 20, i32 8}
!78 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mraid_mm_mutex, !77, !"mraid_mm_mutex", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 126, i32 3}
!82 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mraid_mm_ioctl._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mraid_mm_ioctl._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 131, i32 24}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 163, i32 3}
!89 = !{ptr @mraid_mm_ioctl._entry.24, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mraid_mm_ioctl._entry_ptr.26, !88, !"_entry_ptr", i1 false, i1 false}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!93 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!98 = !{ptr @drvr_ver, !99, !"drvr_ver", i1 false, i1 false}
!99 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 57, i32 17}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 604, i32 3}
!102 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mraid_mm_alloc_kioc._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mraid_mm_alloc_kioc._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 399, i32 4}
!107 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mimd_to_kioc._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @mimd_to_kioc._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 740, i32 3}
!112 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @ioctl_done._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @ioctl_done._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 757, i32 3}
!117 = !{ptr @ioctl_done._entry.36, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @ioctl_done._entry_ptr.38, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @wait_q, !120, !"wait_q", i1 false, i1 false}
!120 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 62, i32 26}
!121 = !{ptr @lld_ioctl.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 693, i32 3}
!123 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 792, i32 2}
!126 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @lld_timedout._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @lld_timedout._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1215, i32 2}
!131 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mraid_mm_init._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @mraid_mm_init._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1220, i32 3}
!137 = !{ptr @mraid_mm_init._entry.45, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @mraid_mm_init._entry_ptr.47, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @mraid_mm_init.__key, !140, !"__key", i1 false, i1 false}
!140 = !{!"../drivers/scsi/megaraid/megaraid_mm.c", i32 1224, i32 2}
!141 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!142 = !{!"sp"}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2152592539, i64 2152592564}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 5088094}
!155 = !{i64 5088291}
!156 = !{i64 2152573524}
!157 = !{i64 2152593220, i64 2152593245}
