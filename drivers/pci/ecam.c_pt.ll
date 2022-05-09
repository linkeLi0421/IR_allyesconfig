; ModuleID = '/llk/IR_all_yes/drivers/pci/ecam.c_pt.bc'
source_filename = "../drivers/pci/ecam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_ecam_create\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ecam_create\09\09\09\09"
module asm "\09.long\09__crc_pci_ecam_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ecam_create:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ecam_create\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ecam_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_ecam_free\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ecam_free\09\09\09\09"
module asm "\09.long\09__crc_pci_ecam_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ecam_free:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ecam_free\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ecam_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_ecam_map_bus\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_ecam_map_bus\09\09\09\09"
module asm "\09.long\09__crc_pci_ecam_map_bus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ecam_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ecam_map_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ecam_map_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_generic_ecam_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_generic_ecam_ops\09\09\09\09"
module asm "\09.long\09__crc_pci_generic_ecam_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_generic_ecam_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_generic_ecam_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pci_generic_ecam_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_ecam_ops = type { i32, %struct.pci_ops, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_config_window = type { %struct.resource, %struct.resource, i32, ptr, ptr, %union.anon.68, ptr }
%union.anon.68 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
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

@pci_ecam_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ECAM area %pR can only accommodate %pR (reduced from %pR desired)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_ecam_create\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/pci/ecam.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_ecam_create._entry_ptr = internal global ptr @pci_ecam_create._entry, section ".printk_index", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCI ECAM\00", [23 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@pci_ecam_create._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 73, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"can't claim ECAM area %pR: address conflict with %s %pR\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_ecam_create._entry_ptr.9 = internal global ptr @pci_ecam_create._entry.6, section ".printk_index", align 4
@pci_ecam_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ECAM at %pR for %pR\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pci_ecam_create._entry_ptr.13 = internal global ptr @pci_ecam_create._entry.10, section ".printk_index", align 4
@pci_ecam_create._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ECAM ioremap failed\0A\00", [43 x i8] zeroinitializer }, align 32
@pci_ecam_create._entry_ptr.16 = internal global ptr @pci_ecam_create._entry.14, section ".printk_index", align 4
@__kstrtab_pci_ecam_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ecam_create = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ecam_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ecam_create to i32), ptr @__kstrtab_pci_ecam_create, ptr @__kstrtabns_pci_ecam_create }, section "___ksymtab_gpl+pci_ecam_create", align 4
@__kstrtab_pci_ecam_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ecam_free = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ecam_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ecam_free to i32), ptr @__kstrtab_pci_ecam_free, ptr @__kstrtabns_pci_ecam_free }, section "___ksymtab_gpl+pci_ecam_free", align 4
@__kstrtab_pci_ecam_map_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ecam_map_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ecam_map_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ecam_map_bus to i32), ptr @__kstrtab_pci_ecam_map_bus, ptr @__kstrtabns_pci_ecam_map_bus }, section "___ksymtab_gpl+pci_ecam_map_bus", align 4
@pci_generic_ecam_ops = dso_local constant { %struct.pci_ecam_ops, [36 x i8] } { %struct.pci_ecam_ops { i32 0, %struct.pci_ops { ptr @pci_ecam_add_bus, ptr @pci_ecam_remove_bus, ptr @pci_ecam_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_pci_generic_ecam_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_generic_ecam_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_generic_ecam_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_generic_ecam_ops to i32), ptr @__kstrtab_pci_generic_ecam_ops, ptr @__kstrtabns_pci_generic_ecam_ops }, section "___ksymtab_gpl+pci_generic_ecam_ops", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 59, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 67, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 72, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 92, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 96, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"pci_generic_ecam_ops\00", align 1
@___asan_gen_.63 = private constant [22 x i8] c"../drivers/pci/ecam.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 200, i32 27 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab_pci_ecam_create, ptr @__ksymtab_pci_ecam_free, ptr @__ksymtab_pci_ecam_map_bus, ptr @__ksymtab_pci_generic_ecam_ops, ptr @pci_ecam_create._entry, ptr @pci_ecam_create._entry.10, ptr @pci_ecam_create._entry.14, ptr @pci_ecam_create._entry.6, ptr @pci_ecam_create._entry_ptr, ptr @pci_ecam_create._entry_ptr.13, ptr @pci_ecam_create._entry_ptr.16, ptr @pci_ecam_create._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @pci_generic_ecam_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ecam_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ecam_create._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ecam_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ecam_create._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_generic_ecam_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_ecam_create(ptr noundef %dev, ptr noundef %cfgres, ptr noundef %busr, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ops, align 4
  %2 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busr, align 4
  %end = getelementptr inbounds %struct.resource, ptr %busr, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  %spec.store.select = select i1 %tobool6.not, i32 20, i32 %1
  %parent = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %ops9 = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ops, ptr %ops9, align 8
  %9 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %busr, align 4
  %busr11 = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %busr11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %busr11, align 8
  %12 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end, align 4
  %end15 = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %end15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %end15, align 4
  %flags = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %flags, align 4
  %bus_shift17 = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %bus_shift17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select, ptr %bus_shift17, align 8
  %sub.i = sub i32 1, %10
  %add.i = add i32 %sub.i, %13
  %end.i118 = getelementptr inbounds %struct.resource, ptr %cfgres, i32 0, i32 1
  %17 = ptrtoint ptr %end.i118 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i118, align 4
  %19 = ptrtoint ptr %cfgres to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cfgres, align 4
  %sub.i119 = add i32 %18, 1
  %add.i120 = sub i32 %sub.i119, %20
  %shr = lshr i32 %add.i120, %spec.store.select
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shr)
  %cmp21 = icmp ugt i32 %add.i, %shr
  br i1 %cmp21, label %if.then22, label %if.end5.if.end27_crit_edge

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then22:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %10, -1
  %sub = add i32 %add, %shr
  %21 = ptrtoint ptr %end15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %end15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %cfgres, ptr noundef %busr11, ptr noundef %busr) #11
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end5.if.end27_crit_edge
  %bus_range.0 = phi i32 [ %shr, %if.then22 ], [ %add.i, %if.end5.if.end27_crit_edge ]
  %22 = ptrtoint ptr %cfgres to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cfgres, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %end.i118 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i118, align 4
  %end32 = getelementptr inbounds %struct.resource, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %end32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %end32, align 4
  %flags34 = getelementptr inbounds %struct.resource, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2147483136, ptr %flags34, align 4
  %name = getelementptr inbounds %struct.resource, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.5, ptr %name, align 8
  %call37 = tail call ptr @request_resource_conflict(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call7.i.i) #7
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end45, label %if.then39

if.then39:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %name44 = getelementptr inbounds %struct.resource, ptr %call37, i32 0, i32 2
  %30 = ptrtoint ptr %name44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %call7.i.i, ptr noundef %31, ptr noundef nonnull %call37) #11
  br label %err_exit

if.end45:                                         ; preds = %if.end27
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %bus_range.0, i32 4) #7
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !43

kcalloc.exit.thread:                              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %34 = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %34, align 4
  br label %err_exit

if.end7.i.i:                                      ; preds = %if.end45
  %36 = extractvalue { i32, i1 } %32, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #12
  %37 = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i.i, ptr %37, align 4
  %tobool47.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool47.not, label %if.end7.i.i.err_exit_crit_edge, label %if.end49

if.end7.i.i.err_exit_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.end49:                                         ; preds = %if.end7.i.i
  %init = getelementptr inbounds %struct.pci_ecam_ops, ptr %ops, i32 0, i32 2
  %39 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init, align 4
  %tobool50.not = icmp eq ptr %40, null
  br i1 %tobool50.not, label %if.end49.do.end60_crit_edge, label %if.then51

if.end49.do.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.then51:                                        ; preds = %if.end49
  %call53 = tail call i32 %40(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then51.do.end60_crit_edge, label %if.then51.err_exit_crit_edge

if.then51.err_exit_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

if.then51.do.end60_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

do.end60:                                         ; preds = %if.then51.do.end60_crit_edge, %if.end49.do.end60_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %call7.i.i, ptr noundef %busr11) #11
  br label %cleanup

err_exit:                                         ; preds = %if.then51.err_exit_crit_edge, %if.end7.i.i.err_exit_crit_edge, %kcalloc.exit.thread, %if.then39
  %err.0 = phi i32 [ -16, %if.then39 ], [ %call53, %if.then51.err_exit_crit_edge ], [ -12, %if.end7.i.i.err_exit_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %41 = getelementptr inbounds %struct.pci_config_window, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %err_exit.if.end4.i_crit_edge, label %for.cond.preheader.i

err_exit.if.end4.i_crit_edge:                     ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.cond.preheader.i:                             ; preds = %err_exit
  %44 = ptrtoint ptr %end15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %end15, align 4
  %46 = ptrtoint ptr %busr11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %busr11, align 8
  %sub.i20.i = add i32 %45, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i20.i, i32 %47)
  %cmp23.not.i = icmp eq i32 %sub.i20.i, %47
  br i1 %cmp23.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %41, align 4
  %arrayidx.i = getelementptr ptr, ptr %49, i32 %i.024.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %51, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then2.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %51) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %52 = ptrtoint ptr %end15 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end15, align 4
  %54 = ptrtoint ptr %busr11 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %busr11, align 8
  %sub.i.i = add i32 %53, 1
  %add.i.i = sub i32 %sub.i.i, %55
  %cmp.i = icmp ult i32 %inc.i, %add.i.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %57) #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.end.i, %err_exit.if.end4.i_crit_edge
  %parent.i = getelementptr inbounds %struct.resource, ptr %call7.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent.i, align 4
  %tobool5.not.i = icmp eq ptr %59, null
  br i1 %tobool5.not.i, label %if.end4.i.pci_ecam_free.exit_crit_edge, label %if.then6.i

if.end4.i.pci_ecam_free.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_ecam_free.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call i32 @release_resource(ptr noundef nonnull %call7.i.i) #7
  br label %pci_ecam_free.exit

pci_ecam_free.exit:                               ; preds = %if.then6.i, %if.end4.i.pci_ecam_free.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %60 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %pci_ecam_free.exit, %do.end60, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %60, %pci_ecam_free.exit ], [ %call7.i.i, %do.end60 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_ecam_free(ptr noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %for.cond.preheader

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

for.cond.preheader:                               ; preds = %entry
  %busr = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 1
  %end.i = getelementptr inbounds %struct.pci_config_window, ptr %cfg, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %5 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %busr, align 4
  %sub.i20 = add i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i20, i32 %6)
  %cmp23.not = icmp eq i32 %sub.i20, %6
  br i1 %cmp23.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %i.024
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %10) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.024, 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %13 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %busr, align 4
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %14
  %cmp = icmp ult i32 %inc, %add.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %16) #7
  br label %if.end4

if.end4:                                          ; preds = %for.end, %entry.if.end4_crit_edge
  %parent = getelementptr inbounds %struct.resource, ptr %cfg, i32 0, i32 5
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @release_resource(ptr noundef %cfg) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  tail call void @kfree(ptr noundef %cfg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pci_ecam_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %ops = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub = add i32 %5, -8
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number, align 4
  %conv = zext i8 %7 to i32
  %busr = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %busr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp ugt i32 %9, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %end = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp6 = icmp ult i32 %11, %conv
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub10 = sub i32 %conv, %9
  %12 = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %sub10
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end18, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = and i32 %devfn, 255
  %shl15 = shl i32 %and14, %sub
  %and16 = and i32 %where, 4095
  %or17 = or i32 %shl15, %and16
  %add.ptr = getelementptr i8, ptr %16, i32 %or17
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and21 = shl i32 %devfn, 12
  %shl22 = and i32 %and21, 1044480
  %and24 = and i32 %where, 4095
  %or25 = or i32 %shl22, %and24
  %add.ptr26 = getelementptr i8, ptr %16, i32 %or25
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.then13 ], [ %add.ptr26, %if.end18 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_ecam_add_bus(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %bus_shift = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_shift, align 4
  %shl = shl nuw i32 1, %3
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  %conv = zext i8 %5 to i32
  %busr = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %busr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp ugt i32 %7, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %end = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp4 = icmp ult i32 %9, %conv
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %conv, %7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %mul = shl i32 %sub, %3
  %add = add i32 %11, %mul
  %call = tail call ptr @pci_remap_cfgspace(i32 noundef %add, i32 noundef %shl) #7
  %12 = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %arrayidx, align 4
  %16 = load ptr, ptr %12, align 4
  %arrayidx9 = getelementptr ptr, ptr %16, i32 %sub
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %18, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_ecam_remove_bus(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %busr = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %busr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp = icmp ugt i32 %5, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %end = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3 = icmp ult i32 %7, %conv
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub = sub i32 %conv, %5
  %8 = getelementptr inbounds %struct.pci_config_window, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %12) #7
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %arrayidx9 = getelementptr ptr, ptr %14, i32 %sub
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_remap_cfgspace(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/ecam.c", i32 59, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pci_ecam_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pci_ecam_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/ecam.c", i32 67, i32 18}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/ecam.c", i32 72, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pci_ecam_create._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @pci_ecam_create._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/ecam.c", i32 92, i32 2}
!17 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pci_ecam_create._entry.10, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @pci_ecam_create._entry_ptr.13, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/ecam.c", i32 96, i32 2}
!22 = !{ptr @pci_ecam_create._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @pci_ecam_create._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_pci_ecam_create, !25, !"__ksymtab_pci_ecam_create", i1 false, i1 false}
!25 = !{!"../drivers/pci/ecam.c", i32 103, i32 1}
!26 = !{ptr @__ksymtab_pci_ecam_free, !27, !"__ksymtab_pci_ecam_free", i1 false, i1 false}
!27 = !{!"../drivers/pci/ecam.c", i32 124, i32 1}
!28 = !{ptr @__ksymtab_pci_ecam_map_bus, !29, !"__ksymtab_pci_ecam_map_bus", i1 false, i1 false}
!29 = !{!"../drivers/pci/ecam.c", i32 197, i32 1}
!30 = !{ptr @pci_generic_ecam_ops, !31, !"pci_generic_ecam_ops", i1 false, i1 false}
!31 = !{!"../drivers/pci/ecam.c", i32 200, i32 27}
!32 = !{ptr @__ksymtab_pci_generic_ecam_ops, !33, !"__ksymtab_pci_generic_ecam_ops", i1 false, i1 false}
!33 = !{!"../drivers/pci/ecam.c", i32 209, i32 1}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
