; ModuleID = '/llk/IR_all_yes/arch/arm/plat-pxa/ssp.c_pt.bc'
source_filename = "../arch/arm/plat-pxa/ssp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pxa_ssp_request\22, \22a\22\09"
module asm "\09.weak\09__crc_pxa_ssp_request\09\09\09\09"
module asm "\09.long\09__crc_pxa_ssp_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa_ssp_request:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa_ssp_request\22\09\09\09\09\09"
module asm "__kstrtabns_pxa_ssp_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pxa_ssp_request_of\22, \22a\22\09"
module asm "\09.weak\09__crc_pxa_ssp_request_of\09\09\09\09"
module asm "\09.long\09__crc_pxa_ssp_request_of\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa_ssp_request_of:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa_ssp_request_of\22\09\09\09\09\09"
module asm "__kstrtabns_pxa_ssp_request_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pxa_ssp_free\22, \22a\22\09"
module asm "\09.weak\09__crc_pxa_ssp_free\09\09\09\09"
module asm "\09.long\09__crc_pxa_ssp_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pxa_ssp_free:\09\09\09\09\09"
module asm "\09.asciz \09\22pxa_ssp_free\22\09\09\09\09\09"
module asm "__kstrtabns_pxa_ssp_free:\09\09\09\09\09"
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
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ssp_device = type { ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@ssp_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ssp_lock, i64 52), ptr getelementptr (i8, ptr @ssp_lock, i64 52) }, ptr @ssp_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ssp_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ssp_list, ptr @ssp_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_pxa_ssp_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa_ssp_request = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa_ssp_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa_ssp_request to i32), ptr @__kstrtab_pxa_ssp_request, ptr @__kstrtabns_pxa_ssp_request }, section "___ksymtab+pxa_ssp_request", align 4
@__kstrtab_pxa_ssp_request_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa_ssp_request_of = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa_ssp_request_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa_ssp_request_of to i32), ptr @__kstrtab_pxa_ssp_request_of, ptr @__kstrtabns_pxa_ssp_request_of }, section "___ksymtab+pxa_ssp_request_of", align 4
@pxa_ssp_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device already free\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pxa_ssp_free\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arch/arm/plat-pxa/ssp.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa_ssp_free._entry_ptr = internal global ptr @pxa_ssp_free._entry, section ".printk_index", align 4
@__kstrtab_pxa_ssp_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_pxa_ssp_free = external dso_local constant [0 x i8], align 1
@__ksymtab_pxa_ssp_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pxa_ssp_free to i32), ptr @__kstrtab_pxa_ssp_free, ptr @__kstrtabns_pxa_ssp_free }, section "___ksymtab+pxa_ssp_free", align 4
@pxa_ssp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa_ssp_probe, ptr @pxa_ssp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa_ssp_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ssp_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ssp__187_226_pxa_ssp_init3 = internal global ptr @pxa_ssp_init, section ".initcall3.init", align 4
@__exitcall_pxa_ssp_exit = internal global ptr @pxa_ssp_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [31 x i8] c"ssp.description=PXA SSP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [25 x i8] c"ssp.author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [31 x i8] c"ssp.file=arch/arm/plat-pxa/ssp\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [16 x i8] c"ssp.license=GPL\00", section ".modinfo", align 1
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssp_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa2xx-ssp\00", [21 x i8] zeroinitializer }, align 32
@pxa_ssp_of_ids = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa25x-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mvrl,pxa25x-nssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa27x-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa3xx-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mvrl,pxa168-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,pxa910-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,ce4100-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@ssp_id_table = internal constant { [7 x %struct.platform_device_id], [56 x i8] } { [7 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa25x-ssp\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"pxa25x-nssp\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"pxa27x-ssp\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.platform_device_id { [20 x i8] c"pxa3xx-ssp\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.platform_device_id { [20 x i8] c"pxa168-ssp\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.platform_device_id { [20 x i8] c"pxa910-ssp\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@pxa_ssp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory resource defined\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pxa_ssp_probe\00", [18 x i8] zeroinitializer }, align 32
@pxa_ssp_probe._entry_ptr = internal global ptr @pxa_ssp_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@pxa_ssp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to request memory resource\0A\00", [61 x i8] zeroinitializer }, align 32
@pxa_ssp_probe._entry_ptr.12 = internal global ptr @pxa_ssp_probe._entry.10, section ".printk_index", align 4
@pxa_ssp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to ioremap() registers\0A\00", [33 x i8] zeroinitializer }, align 32
@pxa_ssp_probe._entry_ptr.15 = internal global ptr @pxa_ssp_probe._entry.13, section ".printk_index", align 4
@pxa_ssp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 150, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no IRQ resource defined\0A\00", [39 x i8] zeroinitializer }, align 32
@pxa_ssp_probe._entry_ptr.18 = internal global ptr @pxa_ssp_probe._entry.16, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"ssp_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"ssp_list\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 36, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 92, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"pxa_ssp_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 206, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 35, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 210, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"pxa_ssp_of_ids\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 98, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"ssp_id_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 196, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 129, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 136, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 144, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [27 x i8] c"../arch/arm/plat-pxa/ssp.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 150, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_pxa_ssp_exit, ptr @__initcall__kmod_ssp__187_226_pxa_ssp_init3, ptr @__ksymtab_pxa_ssp_free, ptr @__ksymtab_pxa_ssp_request, ptr @__ksymtab_pxa_ssp_request_of, ptr @pxa_ssp_exit, ptr @pxa_ssp_free._entry, ptr @pxa_ssp_free._entry_ptr, ptr @pxa_ssp_probe._entry, ptr @pxa_ssp_probe._entry.10, ptr @pxa_ssp_probe._entry.13, ptr @pxa_ssp_probe._entry.16, ptr @pxa_ssp_probe._entry_ptr, ptr @pxa_ssp_probe._entry_ptr.12, ptr @pxa_ssp_probe._entry_ptr.15, ptr @pxa_ssp_probe._entry_ptr.18, ptr @ssp_lock, ptr @ssp_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pxa_ssp_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pxa_ssp_of_ids, ptr @ssp_id_table, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_of_ids to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_id_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa_ssp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pxa_ssp_request(i32 noundef %port, ptr noundef %label) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssp_lock, i32 noundef 0) #4
  %.pn25 = load ptr, ptr @ssp_list, align 4
  %cmp26 = icmp eq ptr %.pn25, @ssp_list
  br i1 %cmp26, label %entry..loopexit_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry..loopexit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %.loopexit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn27 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn25, %entry.for.body_crit_edge ]
  %port_id = getelementptr i8, ptr %.pn27, i32 24
  %0 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %port)
  %cmp1 = icmp eq i32 %1, %port
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %use_count = getelementptr i8, ptr %.pn27, i32 32
  %2 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn27, align 4
  %cmp = icmp eq ptr %.pn, @ssp_list
  br i1 %cmp, label %for.inc..loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc..loopexit_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %.loopexit

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %use_count.le = getelementptr i8, ptr %.pn27, i32 32
  %5 = ptrtoint ptr %use_count.le to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %use_count.le, align 4
  %label4 = getelementptr i8, ptr %.pn27, i32 20
  %6 = ptrtoint ptr %label4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %label, ptr %label4, align 4
  %ssp.0 = getelementptr i8, ptr %.pn27, i32 -4
  br label %.loopexit

.loopexit:                                        ; preds = %for.end, %for.inc..loopexit_crit_edge, %entry..loopexit_crit_edge
  %7 = phi ptr [ %ssp.0, %for.end ], [ null, %entry..loopexit_crit_edge ], [ null, %for.inc..loopexit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pxa_ssp_request_of(ptr noundef readnone %of_node, ptr noundef %label) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssp_lock, i32 noundef 0) #4
  %.pn26 = load ptr, ptr @ssp_list, align 4
  %cmp27 = icmp eq ptr %.pn26, @ssp_list
  br i1 %cmp27, label %entry..loopexit_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry..loopexit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %.loopexit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn26, %entry.for.body_crit_edge ]
  %of_node1 = getelementptr i8, ptr %.pn28, i32 40
  %0 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node1, align 4
  %cmp2 = icmp eq ptr %1, %of_node
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %use_count = getelementptr i8, ptr %.pn28, i32 32
  %2 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp = icmp eq ptr %.pn, @ssp_list
  br i1 %cmp, label %for.inc..loopexit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc..loopexit_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %.loopexit

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %use_count.le = getelementptr i8, ptr %.pn28, i32 32
  %5 = ptrtoint ptr %use_count.le to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %use_count.le, align 4
  %label5 = getelementptr i8, ptr %.pn28, i32 20
  %6 = ptrtoint ptr %label5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %label, ptr %label5, align 4
  %ssp.0 = getelementptr i8, ptr %.pn28, i32 -4
  br label %.loopexit

.loopexit:                                        ; preds = %for.end, %for.inc..loopexit_crit_edge, %entry..loopexit_crit_edge
  %7 = phi ptr [ %ssp.0, %for.end ], [ null, %entry..loopexit_crit_edge ], [ null, %for.inc..loopexit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pxa_ssp_free(ptr nocapture noundef %ssp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssp_lock, i32 noundef 0) #4
  %use_count = getelementptr inbounds %struct.ssp_device, ptr %ssp, i32 0, i32 8
  %0 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dec = add i32 %1, -1
  %2 = ptrtoint ptr %use_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %use_count, align 4
  %label = getelementptr inbounds %struct.ssp_device, ptr %ssp, i32 0, i32 5
  %3 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %label, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %ssp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa_ssp_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @pxa_ssp_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_ssp_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %clk = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %3 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call10, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call10, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call15 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %add.i, ptr noundef %8) #4
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call15, align 4
  %phys_base = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %phys_base, align 4
  %12 = load i32, ptr %call15, align 4
  %end.i90 = getelementptr inbounds %struct.resource, ptr %call15, i32 0, i32 1
  %13 = ptrtoint ptr %end.i90 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i90, align 4
  %sub.i91 = sub i32 1, %12
  %add.i92 = add i32 %sub.i91, %14
  %call25 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %12, i32 noundef %add.i92) #4
  %mmio_base = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %mmio_base, align 4
  %cmp27 = icmp eq ptr %call25, null
  br i1 %cmp27, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %call33 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call33, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp35 = icmp slt i32 %call33, 0
  br i1 %cmp35, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = tail call ptr @of_match_device(ptr noundef nonnull @pxa_ssp_of_ids, ptr noundef %dev1) #4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call42, i32 0, i32 3
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %if.end46

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %22 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %driver_data, align 4
  %id45 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %26 = ptrtoint ptr %id45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id45, align 4
  %add = add i32 %27, 1
  %port_id = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %port_id, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then41
  %.sink = phi i32 [ %25, %if.else ], [ %21, %if.then41 ]
  %29 = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %use_count = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %use_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %use_count, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %of_node48 = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 10
  %34 = ptrtoint ptr %of_node48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_node48, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssp_lock, i32 noundef 0) #4
  %node = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 1
  %35 = load ptr, ptr @ssp_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @ssp_list, ptr noundef %35) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_add.exit_crit_edge

if.end46.list_add.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node, ptr %prev1.i.i, align 4
  %37 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.ssp_device, ptr %call.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ssp_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @ssp_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end46.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end39, %do.end31, %do.end20, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ -19, %do.end ], [ -16, %do.end20 ], [ -19, %do.end31 ], [ -19, %do.end39 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa_ssp_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssp_lock, i32 noundef 0) #4
  %node = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ssp_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__ksymtab_pxa_ssp_request, !1, !"__ksymtab_pxa_ssp_request", i1 false, i1 false}
!1 = !{!"../arch/arm/plat-pxa/ssp.c", i32 59, i32 1}
!2 = !{ptr @__ksymtab_pxa_ssp_request_of, !3, !"__ksymtab_pxa_ssp_request_of", i1 false, i1 false}
!3 = !{!"../arch/arm/plat-pxa/ssp.c", i32 83, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/plat-pxa/ssp.c", i32 92, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pxa_ssp_free._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @pxa_ssp_free._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_pxa_ssp_free, !13, !"__ksymtab_pxa_ssp_free", i1 false, i1 false}
!13 = !{!"../arch/arm/plat-pxa/ssp.c", i32 95, i32 1}
!14 = !{ptr @__initcall__kmod_ssp__187_226_pxa_ssp_init3, !15, !"__initcall__kmod_ssp__187_226_pxa_ssp_init3", i1 false, i1 false}
!15 = !{!"../arch/arm/plat-pxa/ssp.c", i32 226, i32 1}
!16 = !{ptr @__exitcall_pxa_ssp_exit, !17, !"__exitcall_pxa_ssp_exit", i1 false, i1 false}
!17 = !{!"../arch/arm/plat-pxa/ssp.c", i32 227, i32 1}
!18 = !{ptr @__UNIQUE_ID_description188, !19, !"__UNIQUE_ID_description188", i1 false, i1 false}
!19 = !{!"../arch/arm/plat-pxa/ssp.c", i32 229, i32 1}
!20 = !{ptr @__UNIQUE_ID_author189, !21, !"__UNIQUE_ID_author189", i1 false, i1 false}
!21 = !{!"../arch/arm/plat-pxa/ssp.c", i32 230, i32 1}
!22 = !{ptr @__UNIQUE_ID_file190, !23, !"__UNIQUE_ID_file190", i1 false, i1 false}
!23 = !{!"../arch/arm/plat-pxa/ssp.c", i32 231, i32 1}
!24 = !{ptr @__UNIQUE_ID_license191, !23, !"__UNIQUE_ID_license191", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/plat-pxa/ssp.c", i32 35, i32 8}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ssp_lock, !26, !"ssp_lock", i1 false, i1 false}
!29 = !{ptr @ssp_list, !30, !"ssp_list", i1 false, i1 false}
!30 = !{!"../arch/arm/plat-pxa/ssp.c", i32 36, i32 8}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/plat-pxa/ssp.c", i32 210, i32 12}
!33 = !{ptr @pxa_ssp_driver, !34, !"pxa_ssp_driver", i1 false, i1 false}
!34 = !{!"../arch/arm/plat-pxa/ssp.c", i32 206, i32 31}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/plat-pxa/ssp.c", i32 129, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pxa_ssp_probe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pxa_ssp_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/plat-pxa/ssp.c", i32 136, i32 3}
!42 = !{ptr @pxa_ssp_probe._entry.10, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pxa_ssp_probe._entry_ptr.12, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/plat-pxa/ssp.c", i32 144, i32 3}
!46 = !{ptr @pxa_ssp_probe._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pxa_ssp_probe._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/plat-pxa/ssp.c", i32 150, i32 3}
!50 = !{ptr @pxa_ssp_probe._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pxa_ssp_probe._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @pxa_ssp_of_ids, !53, !"pxa_ssp_of_ids", i1 false, i1 false}
!53 = !{!"../arch/arm/plat-pxa/ssp.c", i32 98, i32 34}
!54 = !{ptr @ssp_id_table, !55, !"ssp_id_table", i1 false, i1 false}
!55 = !{!"../arch/arm/plat-pxa/ssp.c", i32 196, i32 40}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
