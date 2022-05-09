; ModuleID = '/llk/IR_all_yes/drivers/media/platform/coda/imx-vdoa.c_pt.bc'
source_filename = "../drivers/media/platform/coda/imx-vdoa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vdoa_wait_for_completion\22, \22a\22\09"
module asm "\09.weak\09__crc_vdoa_wait_for_completion\09\09\09\09"
module asm "\09.long\09__crc_vdoa_wait_for_completion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vdoa_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22vdoa_wait_for_completion\22\09\09\09\09\09"
module asm "__kstrtabns_vdoa_wait_for_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vdoa_device_run\22, \22a\22\09"
module asm "\09.weak\09__crc_vdoa_device_run\09\09\09\09"
module asm "\09.long\09__crc_vdoa_device_run\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vdoa_device_run:\09\09\09\09\09"
module asm "\09.asciz \09\22vdoa_device_run\22\09\09\09\09\09"
module asm "__kstrtabns_vdoa_device_run:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vdoa_context_create\22, \22a\22\09"
module asm "\09.weak\09__crc_vdoa_context_create\09\09\09\09"
module asm "\09.long\09__crc_vdoa_context_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vdoa_context_create:\09\09\09\09\09"
module asm "\09.asciz \09\22vdoa_context_create\22\09\09\09\09\09"
module asm "__kstrtabns_vdoa_context_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vdoa_context_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_vdoa_context_destroy\09\09\09\09"
module asm "\09.long\09__crc_vdoa_context_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vdoa_context_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22vdoa_context_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_vdoa_context_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vdoa_context_configure\22, \22a\22\09"
module asm "\09.weak\09__crc_vdoa_context_configure\09\09\09\09"
module asm "\09.long\09__crc_vdoa_context_configure\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vdoa_context_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22vdoa_context_configure\22\09\09\09\09\09"
module asm "__kstrtabns_vdoa_context_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.vdoa_ctx = type { ptr, %struct.completion, [2 x %struct.vdoa_q_data], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vdoa_q_data = type { i32, i32, i32, i32, i32 }
%struct.vdoa_data = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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

@vdoa_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Timeout waiting for transfer result\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vdoa_wait_for_completion\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/platform/coda/imx-vdoa.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vdoa_wait_for_completion._entry_ptr = internal global ptr @vdoa_wait_for_completion._entry, section ".printk_index", align 4
@__kstrtab_vdoa_wait_for_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_vdoa_wait_for_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_vdoa_wait_for_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vdoa_wait_for_completion to i32), ptr @__kstrtab_vdoa_wait_for_completion, ptr @__kstrtabns_vdoa_wait_for_completion }, section "___ksymtab+vdoa_wait_for_completion", align 4
@__kstrtab_vdoa_device_run = external dso_local constant [0 x i8], align 1
@__kstrtabns_vdoa_device_run = external dso_local constant [0 x i8], align 1
@__ksymtab_vdoa_device_run = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vdoa_device_run to i32), ptr @__kstrtab_vdoa_device_run, ptr @__kstrtabns_vdoa_device_run }, section "___ksymtab+vdoa_device_run", align 4
@__kstrtab_vdoa_context_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_vdoa_context_create = external dso_local constant [0 x i8], align 1
@__ksymtab_vdoa_context_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vdoa_context_create to i32), ptr @__kstrtab_vdoa_context_create, ptr @__kstrtabns_vdoa_context_create }, section "___ksymtab+vdoa_context_create", align 4
@__kstrtab_vdoa_context_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_vdoa_context_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_vdoa_context_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vdoa_context_destroy to i32), ptr @__kstrtab_vdoa_context_destroy, ptr @__kstrtabns_vdoa_context_destroy }, section "___ksymtab+vdoa_context_destroy", align 4
@__kstrtab_vdoa_context_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_vdoa_context_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_vdoa_context_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vdoa_context_configure to i32), ptr @__kstrtab_vdoa_context_configure, ptr @__kstrtabns_vdoa_context_configure }, section "___ksymtab+vdoa_context_configure", align 4
@__initcall__kmod_imx_vdoa__234_348_vdoa_driver_init6 = internal global ptr @vdoa_driver_init, section ".initcall6.init", align 4
@vdoa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vdoa_probe, ptr @vdoa_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vdoa_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vdoa_driver_exit = internal global ptr @vdoa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [46 x i8] c"imx_vdoa.description=Video Data Order Adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [56 x i8] c"imx_vdoa.author=Philipp Zabel <philipp.zabel@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [33 x i8] c"imx_vdoa.alias=platform:imx-vdoa\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [51 x i8] c"imx_vdoa.file=drivers/media/platform/coda/imx-vdoa\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [21 x i8] c"imx_vdoa.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-vdoa\00", [23 x i8] zeroinitializer }, align 32
@vdoa_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-vdoa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vdoa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdoa_probe\00", [21 x i8] zeroinitializer }, align 32
@vdoa_probe._entry_ptr = internal global ptr @vdoa_probe._entry, section ".printk_index", align 4
@vdoa_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@vdoa_probe._entry_ptr.11 = internal global ptr @vdoa_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdoa\00", [27 x i8] zeroinitializer }, align 32
@vdoa_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@vdoa_probe._entry_ptr.15 = internal global ptr @vdoa_probe._entry.13, section ".printk_index", align 4
@vdoa_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 112, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Instance released before the end of transaction\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vdoa_irq_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vdoa_irq_handler._entry_ptr = internal global ptr @vdoa_irq_handler._entry, section ".printk_index", align 4
@vdoa_irq_handler._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AXI %s error\0A\00", [18 x i8] zeroinitializer }, align 32
@vdoa_irq_handler._entry_ptr.21 = internal global ptr @vdoa_irq_handler._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@vdoa_irq_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 122, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Spurious interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@vdoa_irq_handler._entry_ptr.26 = internal global ptr @vdoa_irq_handler._entry.24, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 842094158, i64 1448695129]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 139, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"vdoa_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 339, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 87, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 343, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"vdoa_dt_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 333, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 292, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 304, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 317, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 319, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 111, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 120, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [42 x i8] c"../drivers/media/platform/coda/imx-vdoa.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 122, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_vdoa_driver_exit, ptr @__initcall__kmod_imx_vdoa__234_348_vdoa_driver_init6, ptr @__ksymtab_vdoa_context_configure, ptr @__ksymtab_vdoa_context_create, ptr @__ksymtab_vdoa_context_destroy, ptr @__ksymtab_vdoa_device_run, ptr @__ksymtab_vdoa_wait_for_completion, ptr @vdoa_driver_exit, ptr @vdoa_irq_handler._entry, ptr @vdoa_irq_handler._entry.19, ptr @vdoa_irq_handler._entry.24, ptr @vdoa_irq_handler._entry_ptr, ptr @vdoa_irq_handler._entry_ptr.21, ptr @vdoa_irq_handler._entry_ptr.26, ptr @vdoa_probe._entry, ptr @vdoa_probe._entry.13, ptr @vdoa_probe._entry.9, ptr @vdoa_probe._entry_ptr, ptr @vdoa_probe._entry_ptr.11, ptr @vdoa_probe._entry_ptr.15, ptr @vdoa_wait_for_completion._entry, ptr @vdoa_wait_for_completion._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vdoa_driver, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @vdoa_dt_ids, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_irq_handler._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdoa_irq_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vdoa_wait_for_completion(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %submitted_job = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %submitted_job to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %submitted_job, align 4
  %completed_job = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 4
  %4 = ptrtoint ptr %completed_job to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed_job, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %completion = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 1
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.vdoa_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vdoa_device_run(ptr noundef %ctx, i32 noundef %dst, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %submitted_job.i = getelementptr inbounds %struct.vdoa_ctx, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %submitted_job.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %submitted_job.i, align 4
  %completed_job.i = getelementptr inbounds %struct.vdoa_ctx, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %completed_job.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %completed_job.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %completion.i = getelementptr inbounds %struct.vdoa_ctx, ptr %3, i32 0, i32 1
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.vdoa_data, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ctx, ptr %1, align 4
  %completion = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %completion, align 4
  %submitted_job = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 3
  %14 = ptrtoint ptr %submitted_job to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %submitted_job, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %submitted_job, align 4
  %arrayidx5 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %pixelformat = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 4
  %16 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %17)
  %cmp = icmp eq i32 %17, 1448695129
  %. = select i1 %cmp, i32 536870912, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.vdoa_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %.) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %height = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %shl = shl i32 %21, 16
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5, align 4
  %or = or i32 %shl, %23
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %24) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %dst)
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr17 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %27) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %bytesperline = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 0, i32 2
  %30 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytesperline, align 4
  %shl21 = shl i32 %31, 16
  %bytesperline22 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 2
  %32 = ptrtoint ptr %bytesperline22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytesperline22, align 4
  %or23 = or i32 %shl21, %33
  %34 = tail call i32 @llvm.bswap.i32(i32 %or23)
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %36, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %34) #8, !srcloc !80
  %37 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixelformat, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.end.do.body35_crit_edge [
    i32 842094158, label %if.end.if.then30_crit_edge
    i32 825382478, label %if.end.if.then30_crit_edge94
  ]

if.end.if.then30_crit_edge94:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end.if.then30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end.do.body35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

if.then30:                                        ; preds = %if.end.if.then30_crit_edge, %if.end.if.then30_crit_edge94
  %40 = ptrtoint ptr %bytesperline22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytesperline22, align 4
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  %mul = mul i32 %43, %41
  br label %do.body35

do.body35:                                        ; preds = %if.then30, %if.end.do.body35_crit_edge
  %val.1 = phi i32 [ %mul, %if.then30 ], [ 0, %if.end.do.body35_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %44 = tail call i32 @llvm.bswap.i32(i32 %val.1)
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %46, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %44) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %src)
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %add.ptr44 = getelementptr i8, ptr %49, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %47) #8, !srcloc !80
  %50 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bytesperline, align 4
  %height46 = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 0, i32 1
  %52 = ptrtoint ptr %height46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height46, align 4
  %mul47 = mul i32 %53, %51
  %sub = add i32 %mul47, -1
  %or48 = or i32 %sub, 4095
  %add = add i32 %or48, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %add)
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr53 = getelementptr i8, ptr %56, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %54) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr58 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 50331648) #8, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr63 = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 33554432) #8, !srcloc !80
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vdoa_context_create(ptr noundef %vdoa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdoa_clk = getelementptr inbounds %struct.vdoa_data, ptr %vdoa, i32 0, i32 2
  %1 = ptrtoint ptr %vdoa_clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vdoa_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %2) #8
  br label %if.then3

if.then3:                                         ; preds = %if.then3.i, %if.end.if.then3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %completion = getelementptr inbounds %struct.vdoa_ctx, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.vdoa_ctx, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vdoa, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call7.i.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vdoa_context_destroy(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, %ctx
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %submitted_job.i = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %submitted_job.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %submitted_job.i, align 4
  %completed_job.i = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %completed_job.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %completed_job.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %if.then.vdoa_wait_for_completion.exit_crit_edge, label %if.end.i

if.then.vdoa_wait_for_completion.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %vdoa_wait_for_completion.exit

if.end.i:                                         ; preds = %if.then
  %completion.i = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 1
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.vdoa_wait_for_completion.exit_crit_edge

if.end.i.vdoa_wait_for_completion.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vdoa_wait_for_completion.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.vdoa_data, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str) #11
  br label %vdoa_wait_for_completion.exit

vdoa_wait_for_completion.exit:                    ; preds = %do.end.i, %if.end.i.vdoa_wait_for_completion.exit_crit_edge, %if.then.vdoa_wait_for_completion.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %vdoa_wait_for_completion.exit, %entry.if.end_crit_edge
  %vdoa_clk = getelementptr inbounds %struct.vdoa_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %vdoa_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdoa_clk, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  tail call void @kfree(ptr noundef %ctx) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @vdoa_context_configure(ptr noundef writeonly %ctx, i32 noundef %width, i32 noundef %height, i32 noundef %pixelformat) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %width, -8193
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8177, i32 %0)
  %1 = icmp ult i32 %0, -8177
  %rem = and i32 %width, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3.not = icmp ne i32 %rem, 0
  %or.cond76.not = or i1 %1, %cmp3.not
  %2 = add i32 %height, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4081, i32 %2)
  %3 = icmp ult i32 %2, -4081
  %4 = or i1 %3, %or.cond76.not
  %rem9 = and i32 %height, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem9)
  %cmp10.not = icmp ne i32 %rem9, 0
  %5 = or i1 %cmp10.not, %4
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %pixelformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %pixelformat, label %if.end.cleanup_crit_edge [
    i32 1448695129, label %if.end.if.end14_crit_edge
    i32 842094158, label %if.end.if.end14_crit_edge80
  ]

if.end.if.end14_crit_edge80:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end.if.end14_crit_edge, %if.end.if.end14_crit_edge80
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %q_data = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2
  %arrayidx18 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %q_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %width, ptr %q_data, align 4
  %height20 = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %height20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %height, ptr %height20, align 4
  %bytesperline = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %width, ptr %bytesperline, align 4
  %mul = mul nuw nsw i32 %height, %width
  %sub = add nsw i32 %mul, -1
  %or = or i32 %sub, 4095
  %div74 = lshr i32 %mul, 1
  %add = add nuw nsw i32 %div74, 1
  %add24 = add i32 %add, %or
  %sizeimage = getelementptr inbounds %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 0, i32 3
  %10 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add24, ptr %sizeimage, align 4
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %width, ptr %arrayidx18, align 4
  %height26 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %height26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %height, ptr %height26, align 4
  %pixelformat27 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 4
  %13 = ptrtoint ptr %pixelformat27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pixelformat, ptr %pixelformat27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %pixelformat)
  %cond = icmp eq i32 %pixelformat, 1448695129
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %mul28 = shl nuw nsw i32 %width, 1
  %bytesperline29 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 2
  %14 = ptrtoint ptr %bytesperline29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul28, ptr %bytesperline29, align 4
  %mul31 = mul nuw nsw i32 %mul28, %height
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline34 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 2
  %15 = ptrtoint ptr %bytesperline34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %width, ptr %bytesperline34, align 4
  %mul37 = mul nuw nsw i32 %mul, 3
  %div3875 = lshr i32 %mul37, 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default, %sw.bb
  %mul31.sink = phi i32 [ %mul31, %sw.bb ], [ %div3875, %sw.default ]
  %sizeimage32 = getelementptr %struct.vdoa_ctx, ptr %ctx, i32 0, i32 2, i32 1, i32 3
  %16 = ptrtoint ptr %sizeimage32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul31.sink, ptr %sizeimage32, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vdoa_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vdoa_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vdoa_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @vdoa_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdoa_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.vdoa_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev8, align 4
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %vdoa_clk = getelementptr inbounds %struct.vdoa_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %vdoa_clk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call10, ptr %vdoa_clk, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end20

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #11
  %4 = ptrtoint ptr %vdoa_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdoa_clk, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.vdoa_data, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call21, ptr %regs, align 4
  %cmp.i65 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %call28 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %9 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call28, align 4
  %call33 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %10, ptr noundef null, ptr noundef nonnull @vdoa_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end37, %if.end27.cleanup_crit_edge, %if.then24, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %6, %do.end16 ], [ %8, %if.then24 ], [ %call33, %do.end37 ], [ 0, %if.end39 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdoa_remove(ptr nocapture noundef readnone %pdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdoa_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.vdoa_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !80
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.vdoa_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !90
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #8, !srcloc !80
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %13, i32 68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %dev26 = getelementptr inbounds %struct.vdoa_data, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev26, align 4
  %17 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not = icmp eq i32 %17, 0
  %cond = select i1 %tobool27.not, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond) #11
  br label %if.end36

if.else:                                          ; preds = %if.end
  %and28 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end33, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.vdoa_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.25) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.else.if.end36_crit_edge, %if.then14
  %completed_job = getelementptr inbounds %struct.vdoa_ctx, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %completed_job to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %completed_job, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %completed_job, align 4
  %completion = getelementptr inbounds %struct.vdoa_ctx, ptr %3, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 139, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vdoa_wait_for_completion._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vdoa_wait_for_completion._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_vdoa_wait_for_completion, !9, !"__ksymtab_vdoa_wait_for_completion", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 146, i32 1}
!10 = !{ptr @__ksymtab_vdoa_device_run, !11, !"__ksymtab_vdoa_device_run", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 197, i32 1}
!12 = !{ptr @__ksymtab_vdoa_context_create, !13, !"__ksymtab_vdoa_context_create", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 219, i32 1}
!14 = !{ptr @__ksymtab_vdoa_context_destroy, !15, !"__ksymtab_vdoa_context_destroy", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 233, i32 1}
!16 = !{ptr @__ksymtab_vdoa_context_configure, !17, !"__ksymtab_vdoa_context_configure", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 282, i32 1}
!18 = !{ptr @__initcall__kmod_imx_vdoa__234_348_vdoa_driver_init6, !19, !"__initcall__kmod_imx_vdoa__234_348_vdoa_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 348, i32 1}
!20 = !{ptr @__exitcall_vdoa_driver_exit, !19, !"__exitcall_vdoa_driver_exit", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description235, !22, !"__UNIQUE_ID_description235", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 350, i32 1}
!23 = !{ptr @__UNIQUE_ID_author236, !24, !"__UNIQUE_ID_author236", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 351, i32 1}
!25 = !{ptr @__UNIQUE_ID_alias237, !26, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 352, i32 1}
!27 = !{ptr @__UNIQUE_ID_file238, !28, !"__UNIQUE_ID_file238", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 353, i32 1}
!29 = !{ptr @__UNIQUE_ID_license239, !28, !"__UNIQUE_ID_license239", i1 false, i1 false}
!30 = !{ptr @init_completion.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../include/linux/completion.h", i32 87, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 343, i32 11}
!35 = !{ptr @vdoa_driver, !36, !"vdoa_driver", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 339, i32 31}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 292, i32 3}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vdoa_probe._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @vdoa_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 304, i32 3}
!44 = !{ptr @vdoa_probe._entry.9, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vdoa_probe._entry_ptr.11, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 317, i32 6}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 319, i32 3}
!50 = !{ptr @vdoa_probe._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @vdoa_probe._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 111, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vdoa_irq_handler._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @vdoa_irq_handler._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 120, i32 3}
!60 = !{ptr @vdoa_irq_handler._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vdoa_irq_handler._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 122, i32 3}
!66 = !{ptr @vdoa_irq_handler._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @vdoa_irq_handler._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @vdoa_dt_ids, !69, !"vdoa_dt_ids", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/coda/imx-vdoa.c", i32 333, i32 34}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2154369126}
!80 = !{i64 4896344}
!81 = !{i64 2154369561}
!82 = !{i64 2154370078}
!83 = !{i64 2154370526}
!84 = !{i64 2154371328}
!85 = !{i64 2154371722}
!86 = !{i64 2154372324}
!87 = !{i64 2154372936}
!88 = !{i64 2154373598}
!89 = !{i64 2154358575}
!90 = !{i64 4896762}
!91 = !{i64 2154361070}
!92 = !{i64 2154361289}
!93 = !{i64 2154362037}
