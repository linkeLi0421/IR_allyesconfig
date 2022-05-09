; ModuleID = '/llk/IR_all_yes/drivers/ntb/msi.c_pt.bc'
source_filename = "../drivers/ntb/msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ntb_msi_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_msi_init\09\09\09\09"
module asm "\09.long\09__crc_ntb_msi_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_msi_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_msi_init\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_msi_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_msi_setup_mws\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_msi_setup_mws\09\09\09\09"
module asm "\09.long\09__crc_ntb_msi_setup_mws\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_msi_setup_mws:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_msi_setup_mws\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_msi_setup_mws:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_msi_clear_mws\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_msi_clear_mws\09\09\09\09"
module asm "\09.long\09__crc_ntb_msi_clear_mws\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_msi_clear_mws:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_msi_clear_mws\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_msi_clear_mws:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntbm_msi_request_threaded_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_ntbm_msi_request_threaded_irq\09\09\09\09"
module asm "\09.long\09__crc_ntbm_msi_request_threaded_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntbm_msi_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22ntbm_msi_request_threaded_irq\22\09\09\09\09\09"
module asm "__kstrtabns_ntbm_msi_request_threaded_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntbm_msi_free_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_ntbm_msi_free_irq\09\09\09\09"
module asm "\09.long\09__crc_ntbm_msi_free_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntbm_msi_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22ntbm_msi_free_irq\22\09\09\09\09\09"
module asm "__kstrtabns_ntbm_msi_free_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_msi_peer_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_msi_peer_trigger\09\09\09\09"
module asm "\09.long\09__crc_ntb_msi_peer_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_msi_peer_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_msi_peer_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_msi_peer_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ntb_msi_peer_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_ntb_msi_peer_addr\09\09\09\09"
module asm "\09.long\09__crc_ntb_msi_peer_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ntb_msi_peer_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22ntb_msi_peer_addr\22\09\09\09\09\09"
module asm "__kstrtabns_ntb_msi_peer_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_msi = type { i64, i64, ptr, [0 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.72, %union.anon.73, %union.anon.74 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.75, %struct.anon.76, %union.anon.77 }
%union.anon.75 = type { i32 }
%struct.anon.76 = type { i16, i32 }
%union.anon.77 = type { ptr }
%struct.ntb_msi_desc = type { i32, i32 }
%struct.ntb_msi_devres = type { ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }

@__kstrtab_ntb_msi_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_msi_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_msi_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_msi_init to i32), ptr @__kstrtab_ntb_msi_init, ptr @__kstrtabns_ntb_msi_init }, section "___ksymtab+ntb_msi_init", align 4
@__kstrtab_ntb_msi_setup_mws = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_msi_setup_mws = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_msi_setup_mws = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_msi_setup_mws to i32), ptr @__kstrtab_ntb_msi_setup_mws, ptr @__kstrtabns_ntb_msi_setup_mws }, section "___ksymtab+ntb_msi_setup_mws", align 4
@__kstrtab_ntb_msi_clear_mws = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_msi_clear_mws = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_msi_clear_mws = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_msi_clear_mws to i32), ptr @__kstrtab_ntb_msi_clear_mws, ptr @__kstrtabns_ntb_msi_clear_mws }, section "___ksymtab+ntb_msi_clear_mws", align 4
@__kstrtab_ntbm_msi_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntbm_msi_request_threaded_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_ntbm_msi_request_threaded_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntbm_msi_request_threaded_irq to i32), ptr @__kstrtab_ntbm_msi_request_threaded_irq, ptr @__kstrtabns_ntbm_msi_request_threaded_irq }, section "___ksymtab+ntbm_msi_request_threaded_irq", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/ntb/msi.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_ntbm_msi_free_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntbm_msi_free_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_ntbm_msi_free_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntbm_msi_free_irq to i32), ptr @__kstrtab_ntbm_msi_free_irq, ptr @__kstrtabns_ntbm_msi_free_irq }, section "___ksymtab+ntbm_msi_free_irq", align 4
@__kstrtab_ntb_msi_peer_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_msi_peer_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_msi_peer_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_msi_peer_trigger to i32), ptr @__kstrtab_ntb_msi_peer_trigger, ptr @__kstrtabns_ntb_msi_peer_trigger }, section "___ksymtab+ntb_msi_peer_trigger", align 4
@__kstrtab_ntb_msi_peer_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ntb_msi_peer_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_ntb_msi_peer_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ntb_msi_peer_addr to i32), ptr @__kstrtab_ntb_msi_peer_addr, ptr @__kstrtabns_ntb_msi_peer_addr }, section "___ksymtab+ntb_msi_peer_addr", align 4
@ntb_msi_set_desc.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ntb_msi_set_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"IRQ %d: MSI Address not within the memory window (%llx, [%llx %llx])\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ntb_msi_set_desc\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ntb_msi_set_desc._entry_ptr = internal global ptr @ntb_msi_set_desc._entry, section ".printk_index", align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ntbm_msi_callback_release\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 348, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 204, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [21 x i8] c"../drivers/ntb/msi.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 240, i32 7 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_ntb_msi_clear_mws, ptr @__ksymtab_ntb_msi_init, ptr @__ksymtab_ntb_msi_peer_addr, ptr @__ksymtab_ntb_msi_peer_trigger, ptr @__ksymtab_ntb_msi_setup_mws, ptr @__ksymtab_ntbm_msi_free_irq, ptr @__ksymtab_ntbm_msi_request_threaded_irq, ptr @ntb_msi_set_desc._entry, ptr @ntb_msi_set_desc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_msi_set_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntb_msi_init(ptr noundef %ntb, ptr noundef %desc_changed) #0 align 64 {
entry:
  %mw_phys_addr = alloca i32, align 4
  %mw_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mw_phys_addr) #8
  %0 = ptrtoint ptr %mw_phys_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mw_phys_addr, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mw_size) #8
  %1 = ptrtoint ptr %mw_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mw_size, align 4, !annotation !35
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 %5(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit

ntb_peer_port_count.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %ntb_peer_port_count.exit.cleanup_crit_edge, label %if.end

ntb_peer_port_count.exit.cleanup_crit_edge:       ; preds = %ntb_peer_port_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ntb_peer_port_count.exit
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 4) #8
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 24) #8
  %retval.0.i75 = select i1 %7, i32 -1, i32 %spec.select.i
  %call.i76 = tail call noalias ptr @devm_kmalloc(ptr noundef %ntb, i32 noundef %retval.0.i75, i32 noundef 3520) #8
  %msi = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 8
  %9 = ptrtoint ptr %msi to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i76, ptr %msi, align 8
  %tobool.not = icmp eq ptr %call.i76, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %desc_changed7 = getelementptr inbounds %struct.ntb_msi, ptr %call.i76, i32 0, i32 2
  %10 = ptrtoint ptr %desc_changed7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_changed, ptr %desc_changed7, align 8
  br label %for.body

for.cond:                                         ; preds = %if.end14
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.082 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 8
  %peer_mw_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %peer_mw_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %peer_mw_count.i, align 4
  %call.i78 = call i32 %14(ptr noundef %ntb) #8
  %15 = xor i32 %i.082, -1
  %sub10 = add i32 %call.i78, %15
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 8
  %peer_mw_get_addr.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %peer_mw_get_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peer_mw_get_addr.i, align 4
  %call.i80 = call i32 %19(ptr noundef %ntb, i32 noundef %sub10, ptr noundef nonnull %mw_phys_addr, ptr noundef nonnull %mw_size) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool12.not = icmp eq i32 %call.i80, 0
  br i1 %tobool12.not, label %if.end14, label %for.body.for.body26.preheader_crit_edge

for.body.for.body26.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.preheader

if.end14:                                         ; preds = %for.body
  %20 = ptrtoint ptr %mw_phys_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mw_phys_addr, align 4
  %22 = ptrtoint ptr %mw_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mw_size, align 4
  %call16 = call ptr @devm_ioremap(ptr noundef %ntb, i32 noundef %21, i32 noundef %23) #8
  %24 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msi, align 8
  %arrayidx = getelementptr %struct.ntb_msi, ptr %25, i32 0, i32 3, i32 %i.082
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16, ptr %arrayidx, align 4
  %27 = load ptr, ptr %msi, align 8
  %arrayidx20 = getelementptr %struct.ntb_msi, ptr %27, i32 0, i32 3, i32 %i.082
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %29, null
  br i1 %tobool21.not, label %if.end14.for.body26.preheader_crit_edge, label %for.cond

if.end14.for.body26.preheader_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.preheader

for.body26.preheader:                             ; preds = %if.end14.for.body26.preheader_crit_edge, %for.body.for.body26.preheader_crit_edge
  %ret.0 = phi i32 [ %call.i80, %for.body.for.body26.preheader_crit_edge ], [ -14, %if.end14.for.body26.preheader_crit_edge ]
  br label %for.body26

for.body26:                                       ; preds = %for.inc37.for.body26_crit_edge, %for.body26.preheader
  %i.184 = phi i32 [ %inc38, %for.inc37.for.body26_crit_edge ], [ 0, %for.body26.preheader ]
  %30 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msi, align 8
  %arrayidx29 = getelementptr %struct.ntb_msi, ptr %31, i32 0, i32 3, i32 %i.184
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %33, null
  br i1 %tobool30.not, label %for.body26.for.inc37_crit_edge, label %if.then31

for.body26.for.inc37_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc37

if.then31:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  call void @devm_iounmap(ptr noundef %ntb, ptr noundef nonnull %33) #8
  br label %for.inc37

for.inc37:                                        ; preds = %if.then31, %for.body26.for.inc37_crit_edge
  %inc38 = add nuw nsw i32 %i.184, 1
  %exitcond85.not = icmp eq i32 %inc38, %retval.0.i
  br i1 %exitcond85.not, label %for.end39, label %for.inc37.for.body26_crit_edge

for.inc37.for.body26_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.end39:                                        ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %msi, align 8
  call void @devm_kfree(ptr noundef %ntb, ptr noundef %35) #8
  %36 = ptrtoint ptr %msi to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %msi, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end39, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ntb_peer_port_count.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end39 ], [ -22, %ntb_peer_port_count.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mw_size) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mw_phys_addr) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntb_msi_setup_mws(ptr noundef %ntb) #0 align 64 {
entry:
  %addr_align = alloca i32, align 4
  %size_align = alloca i32, align 4
  %size_max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_align) #8
  %0 = ptrtoint ptr %addr_align to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr_align, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_align) #8
  %1 = ptrtoint ptr %size_align to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %size_align, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size_max) #8
  %2 = ptrtoint ptr %size_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size_max, align 4, !annotation !35
  %msi = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 8
  %3 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msi, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void @msi_lock_descs(ptr noundef %dev) #8
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call = tail call ptr @msi_first_desc(ptr noundef %dev2, i32 noundef 2) #8
  %msg = getelementptr inbounds %struct.msi_desc, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg, align 4
  %conv = zext i32 %10 to i64
  %11 = getelementptr inbounds %struct.msi_desc, ptr %call, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %conv4 = zext i32 %13 to i64
  %shl = shl nuw i64 %conv4, 32
  %add = or i64 %shl, %conv
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void @msi_unlock_descs(ptr noundef %dev6) #8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %if.end
  %addr.0 = phi i64 [ %add, %if.end ], [ %and, %if.end17 ]
  %peer.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end17 ]
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 8
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call i32 %19(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit

ntb_peer_port_count.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %peer.0, i32 %retval.0.i)
  %cmp = icmp slt i32 %peer.0, %retval.0.i
  br i1 %cmp, label %for.body, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %ntb_peer_port_count.exit
  %conv42 = trunc i64 %addr.0 to i32
  br label %for.cond19

for.body:                                         ; preds = %ntb_peer_port_count.exit
  %call9 = call fastcc i32 @ntb_peer_highest_mw_idx(ptr noundef %ntb, i32 noundef %peer.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = call i64 %23(ptr noundef %ntb, ptr noundef null, ptr noundef null) #8
  %sh_prom.i = zext i32 %peer.0 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %call.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i127 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i127, label %if.end13.cleanup_crit_edge, label %ntb_mw_get_align.exit

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ntb_mw_get_align.exit:                            ; preds = %if.end13
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 8
  %mw_get_align.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %mw_get_align.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mw_get_align.i, align 4
  %call1.i = call i32 %27(ptr noundef %ntb, i32 noundef %peer.0, i32 noundef %call9, ptr noundef nonnull %addr_align, ptr noundef null, ptr noundef null) #8
  %tobool15.not = icmp eq i32 %call1.i, 0
  br i1 %tobool15.not, label %if.end17, label %ntb_mw_get_align.exit.cleanup_crit_edge

ntb_mw_get_align.exit.cleanup_crit_edge:          ; preds = %ntb_mw_get_align.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %ntb_mw_get_align.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %addr_align to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr_align, align 4
  %neg = sub i32 0, %29
  %conv18 = zext i32 %neg to i64
  %and = and i64 %addr.0, %conv18
  %inc = add nuw nsw i32 %peer.0, 1
  br label %for.cond

for.cond19:                                       ; preds = %for.inc47, %for.cond19.preheader
  %peer.1 = phi i32 [ %inc48, %for.inc47 ], [ 0, %for.cond19.preheader ]
  %mw_size.0 = phi i32 [ %46, %for.inc47 ], [ 32768, %for.cond19.preheader ]
  %mw_min_size.0 = phi i32 [ %47, %for.inc47 ], [ 32768, %for.cond19.preheader ]
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 8
  %peer_port_count.i131 = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %peer_port_count.i131 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer_port_count.i131, align 4
  %tobool.not.i132 = icmp eq ptr %33, null
  br i1 %tobool.not.i132, label %if.then.i134, label %if.end.i136

if.then.i134:                                     ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #10
  %call.i133 = call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit138

if.end.i136:                                      ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i135 = call i32 %33(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit138

ntb_peer_port_count.exit138:                      ; preds = %if.end.i136, %if.then.i134
  %retval.0.i137 = phi i32 [ %call3.i135, %if.end.i136 ], [ %call.i133, %if.then.i134 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %peer.1, i32 %retval.0.i137)
  %cmp21 = icmp slt i32 %peer.1, %retval.0.i137
  br i1 %cmp21, label %for.body23, label %for.end49

for.body23:                                       ; preds = %ntb_peer_port_count.exit138
  %call24 = call fastcc i32 @ntb_peer_highest_mw_idx(ptr noundef %ntb, i32 noundef %peer.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.body23.error_out_crit_edge, label %if.end28

for.body23.error_out_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end28:                                         ; preds = %for.body23
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 8
  %link_is_up.i.i140 = getelementptr inbounds %struct.ntb_dev_ops, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %link_is_up.i.i140 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %link_is_up.i.i140, align 4
  %call.i.i141 = call i64 %37(ptr noundef %ntb, ptr noundef null, ptr noundef null) #8
  %sh_prom.i142 = zext i32 %peer.1 to i64
  %shl.i143 = shl nuw i64 1, %sh_prom.i142
  %and.i144 = and i64 %call.i.i141, %shl.i143
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i144)
  %tobool.not.i145 = icmp eq i64 %and.i144, 0
  br i1 %tobool.not.i145, label %if.end28.error_out_crit_edge, label %ntb_mw_get_align.exit150

if.end28.error_out_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

ntb_mw_get_align.exit150:                         ; preds = %if.end28
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 8
  %mw_get_align.i146 = getelementptr inbounds %struct.ntb_dev_ops, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %mw_get_align.i146 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mw_get_align.i146, align 4
  %call1.i147 = call i32 %41(ptr noundef %ntb, i32 noundef %peer.1, i32 noundef %call24, ptr noundef null, ptr noundef nonnull %size_align, ptr noundef nonnull %size_max) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i147)
  %tobool30.not = icmp eq i32 %call1.i147, 0
  br i1 %tobool30.not, label %if.end32, label %ntb_mw_get_align.exit150.error_out_crit_edge

ntb_mw_get_align.exit150.error_out_crit_edge:     ; preds = %ntb_mw_get_align.exit150
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

if.end32:                                         ; preds = %ntb_mw_get_align.exit150
  %sub33 = add i32 %mw_size.0, -1
  %42 = ptrtoint ptr %size_align to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size_align, align 4
  %sub34 = add i32 %43, -1
  %or = or i32 %sub34, %sub33
  %add35 = add i32 %or, 1
  %44 = ptrtoint ptr %size_max to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size_max, align 4
  %46 = call i32 @llvm.umax.i32(i32 %add35, i32 %45)
  %47 = call i32 @llvm.umin.i32(i32 %46, i32 %mw_min_size.0)
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 8
  %mw_set_trans.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %mw_set_trans.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mw_set_trans.i, align 4
  %tobool.not.i152 = icmp eq ptr %51, null
  br i1 %tobool.not.i152, label %if.end32.for.inc47_crit_edge, label %ntb_mw_set_trans.exit

if.end32.for.inc47_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

ntb_mw_set_trans.exit:                            ; preds = %if.end32
  %call.i153 = call i32 %51(ptr noundef %ntb, i32 noundef %peer.1, i32 noundef %call24, i32 noundef %conv42, i32 noundef %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool44.not = icmp eq i32 %call.i153, 0
  br i1 %tobool44.not, label %ntb_mw_set_trans.exit.for.inc47_crit_edge, label %ntb_mw_set_trans.exit.error_out_crit_edge

ntb_mw_set_trans.exit.error_out_crit_edge:        ; preds = %ntb_mw_set_trans.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_out

ntb_mw_set_trans.exit.for.inc47_crit_edge:        ; preds = %ntb_mw_set_trans.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

for.inc47:                                        ; preds = %ntb_mw_set_trans.exit.for.inc47_crit_edge, %if.end32.for.inc47_crit_edge
  %inc48 = add nuw nsw i32 %peer.1, 1
  br label %for.cond19

for.end49:                                        ; preds = %ntb_peer_port_count.exit138
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %msi, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %addr.0, ptr %53, align 8
  %conv51 = zext i32 %mw_min_size.0 to i64
  %add52 = add i64 %addr.0, %conv51
  %55 = load ptr, ptr %msi, align 8
  %end_addr = getelementptr inbounds %struct.ntb_msi, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %end_addr to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add52, ptr %end_addr, align 8
  br label %cleanup

error_out:                                        ; preds = %ntb_mw_set_trans.exit.error_out_crit_edge, %ntb_mw_get_align.exit150.error_out_crit_edge, %if.end28.error_out_crit_edge, %for.body23.error_out_crit_edge
  %ret.0 = phi i32 [ %call1.i147, %ntb_mw_get_align.exit150.error_out_crit_edge ], [ %call.i153, %ntb_mw_set_trans.exit.error_out_crit_edge ], [ %call24, %for.body23.error_out_crit_edge ], [ -107, %if.end28.error_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer.1)
  %cmp55174.not = icmp eq i32 %peer.1, 0
  br i1 %cmp55174.not, label %error_out.cleanup_crit_edge, label %error_out.for.body57_crit_edge

error_out.for.body57_crit_edge:                   ; preds = %error_out
  br label %for.body57

error_out.cleanup_crit_edge:                      ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body57:                                       ; preds = %for.inc64.for.body57_crit_edge, %error_out.for.body57_crit_edge
  %i.0175 = phi i32 [ %inc65, %for.inc64.for.body57_crit_edge ], [ 0, %error_out.for.body57_crit_edge ]
  %call58 = call fastcc i32 @ntb_peer_highest_mw_idx(ptr noundef %ntb, i32 noundef %peer.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %for.body57.for.inc64_crit_edge, label %if.end62

for.body57.for.inc64_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64

if.end62:                                         ; preds = %for.body57
  %57 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i, align 8
  %mw_clear_trans.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %mw_clear_trans.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mw_clear_trans.i, align 4
  %tobool.not.i157 = icmp eq ptr %60, null
  br i1 %tobool.not.i157, label %if.then.i158, label %if.end.i161

if.then.i158:                                     ; preds = %if.end62
  %mw_set_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %58, i32 0, i32 9
  %61 = ptrtoint ptr %mw_set_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mw_set_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i, label %if.then.i158.for.inc64_crit_edge, label %if.end.i.i

if.then.i158.for.inc64_crit_edge:                 ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64

if.end.i.i:                                       ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i159 = call i32 %62(ptr noundef %ntb, i32 noundef %i.0175, i32 noundef %call58, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc64

if.end.i161:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i160 = call i32 %60(ptr noundef %ntb, i32 noundef %i.0175, i32 noundef %call58) #8
  br label %for.inc64

for.inc64:                                        ; preds = %if.end.i161, %if.end.i.i, %if.then.i158.for.inc64_crit_edge, %for.body57.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.0175, 1
  %exitcond.not = icmp eq i32 %inc65, %peer.1
  br i1 %exitcond.not, label %for.inc64.cleanup_crit_edge, label %for.inc64.for.body57_crit_edge

for.inc64.for.body57_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.inc64.cleanup_crit_edge:                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc64.cleanup_crit_edge, %error_out.cleanup_crit_edge, %for.end49, %ntb_mw_get_align.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end49 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %error_out.cleanup_crit_edge ], [ %ret.0, %for.inc64.cleanup_crit_edge ], [ -107, %if.end13.cleanup_crit_edge ], [ %call1.i, %ntb_mw_get_align.exit.cleanup_crit_edge ], [ %call9, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_max) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size_align) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_align) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_lock_descs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_first_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_unlock_descs(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntb_peer_highest_mw_idx(ptr noundef %ntb, i32 noundef %pidx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %0 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i.i, align 8
  %peer_port_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_port_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_port_count.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 %3(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit.i

ntb_peer_port_count.exit.i:                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.end.i.i ], [ %call.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %pidx)
  %cmp.not.i = icmp sgt i32 %retval.0.i.i, %pidx
  br i1 %cmp.not.i, label %if.end.i, label %ntb_peer_port_count.exit.i.cleanup_crit_edge

ntb_peer_port_count.exit.i.cleanup_crit_edge:     ; preds = %ntb_peer_port_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %ntb_peer_port_count.exit.i
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 @ntb_default_port_number(ptr noundef %ntb) #8
  br label %ntb_port_number.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i.i = tail call i32 %7(ptr noundef %ntb) #8
  br label %ntb_port_number.exit.i.i

ntb_port_number.exit.i.i:                         ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.end.i.i.i ], [ %call.i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp.i.i, label %ntb_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge, label %ntb_port_number.exit.i.i.for.cond.i.i_crit_edge

ntb_port_number.exit.i.i.for.cond.i.i_crit_edge:  ; preds = %ntb_port_number.exit.i.i
  br label %for.cond.i.i

ntb_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge: ; preds = %ntb_port_number.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_logical_port_number.exit.i

for.cond.i.i:                                     ; preds = %for.inc.i.i, %ntb_port_number.exit.i.i.for.cond.i.i_crit_edge
  %pidx.0.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 0, %ntb_port_number.exit.i.i.for.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 8
  %peer_port_count.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %peer_port_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer_port_count.i.i.i, align 4
  %tobool.not.i17.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i17.i.i, label %if.then.i19.i.i, label %if.end.i21.i.i

if.then.i19.i.i:                                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i18.i.i = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit.i.i

if.end.i21.i.i:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i20.i.i = tail call i32 %11(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit.i.i

ntb_peer_port_count.exit.i.i:                     ; preds = %if.end.i21.i.i, %if.then.i19.i.i
  %retval.0.i22.i.i = phi i32 [ %call3.i20.i.i, %if.end.i21.i.i ], [ %call.i18.i.i, %if.then.i19.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pidx.0.i.i, i32 %retval.0.i22.i.i)
  %cmp2.i.i = icmp slt i32 %pidx.0.i.i, %retval.0.i22.i.i
  br i1 %cmp2.i.i, label %for.body.i.i, label %ntb_peer_port_count.exit.i.i.ntb_logical_port_number.exit.i_crit_edge

ntb_peer_port_count.exit.i.i.ntb_logical_port_number.exit.i_crit_edge: ; preds = %ntb_peer_port_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_logical_port_number.exit.i

for.body.i.i:                                     ; preds = %ntb_peer_port_count.exit.i.i
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 8
  %peer_port_number.i.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %peer_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer_port_number.i.i.i, align 4
  %tobool.not.i24.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i24.i.i, label %if.then.i26.i.i, label %if.end.i28.i.i

if.then.i26.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i.i = tail call i32 @ntb_default_peer_port_number(ptr noundef %ntb, i32 noundef %pidx.0.i.i) #8
  br label %ntb_peer_port_number.exit.i.i

if.end.i28.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i27.i.i = tail call i32 %15(ptr noundef %ntb, i32 noundef %pidx.0.i.i) #8
  br label %ntb_peer_port_number.exit.i.i

ntb_peer_port_number.exit.i.i:                    ; preds = %if.end.i28.i.i, %if.then.i26.i.i
  %retval.0.i29.i.i = phi i32 [ %call3.i27.i.i, %if.end.i28.i.i ], [ %call.i25.i.i, %if.then.i26.i.i ]
  %cmp4.not.i.i = icmp sgt i32 %retval.0.i.i.i, %retval.0.i29.i.i
  br i1 %cmp4.not.i.i, label %for.inc.i.i, label %ntb_peer_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge

ntb_peer_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge: ; preds = %ntb_peer_port_number.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntb_logical_port_number.exit.i

for.inc.i.i:                                      ; preds = %ntb_peer_port_number.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i.i = add nuw nsw i32 %pidx.0.i.i, 1
  br label %for.cond.i.i

ntb_logical_port_number.exit.i:                   ; preds = %ntb_peer_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge, %ntb_peer_port_count.exit.i.i.ntb_logical_port_number.exit.i_crit_edge, %ntb_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge
  %retval.0.i11.i = phi i32 [ %retval.0.i.i.i, %ntb_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge ], [ %pidx.0.i.i, %ntb_peer_port_count.exit.i.i.ntb_logical_port_number.exit.i_crit_edge ], [ %pidx.0.i.i, %ntb_peer_port_number.exit.i.i.ntb_logical_port_number.exit.i_crit_edge ]
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i, align 8
  %peer_port_number.i.i13.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %peer_port_number.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peer_port_number.i.i13.i, align 4
  %tobool.not.i.i14.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i14.i, label %if.then.i.i16.i, label %if.end.i.i18.i

if.then.i.i16.i:                                  ; preds = %ntb_logical_port_number.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i15.i = tail call i32 @ntb_default_peer_port_number(ptr noundef %ntb, i32 noundef %pidx) #8
  br label %ntb_peer_port_number.exit.i20.i

if.end.i.i18.i:                                   ; preds = %ntb_logical_port_number.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i17.i = tail call i32 %19(ptr noundef %ntb, i32 noundef %pidx) #8
  br label %ntb_peer_port_number.exit.i20.i

ntb_peer_port_number.exit.i20.i:                  ; preds = %if.end.i.i18.i, %if.then.i.i16.i
  %retval.0.i.i19.i = phi i32 [ %call3.i.i17.i, %if.end.i.i18.i ], [ %call.i.i15.i, %if.then.i.i16.i ]
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool.not.i6.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i6.i.i, label %if.then.i8.i.i, label %if.end.i10.i.i

if.then.i8.i.i:                                   ; preds = %ntb_peer_port_number.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i7.i.i = tail call i32 @ntb_default_port_number(ptr noundef %ntb) #8
  br label %ntb_peer_resource_idx.exit

if.end.i10.i.i:                                   ; preds = %ntb_peer_port_number.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i9.i.i = tail call i32 %23(ptr noundef %ntb) #8
  br label %ntb_peer_resource_idx.exit

ntb_peer_resource_idx.exit:                       ; preds = %if.end.i10.i.i, %if.then.i8.i.i
  %retval.0.i11.i.i = phi i32 [ %call3.i9.i.i, %if.end.i10.i.i ], [ %call.i7.i.i, %if.then.i8.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i19.i, i32 %retval.0.i11.i.i)
  %cmp.i21.i = icmp sge i32 %retval.0.i.i19.i, %retval.0.i11.i.i
  %add.i.i = zext i1 %cmp.i21.i to i32
  %retval.0.i22.i = add i32 %add.i.i, %pidx
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i22.i, i32 %retval.0.i11.i)
  %cmp3.i = icmp slt i32 %retval.0.i22.i, %retval.0.i11.i
  %sub.i = sext i1 %cmp3.i to i32
  %spec.select.i = add i32 %retval.0.i11.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp = icmp slt i32 %spec.select.i, 0
  br i1 %cmp, label %ntb_peer_resource_idx.exit.cleanup_crit_edge, label %if.end

ntb_peer_resource_idx.exit.cleanup_crit_edge:     ; preds = %ntb_peer_resource_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ntb_peer_resource_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 8
  %mw_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %mw_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mw_count.i, align 4
  %call.i = tail call i32 %27(ptr noundef %ntb, i32 noundef %pidx) #8
  %28 = xor i32 %spec.select.i, -1
  %sub2 = add i32 %call.i, %28
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ntb_peer_resource_idx.exit.cleanup_crit_edge, %ntb_peer_port_count.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub2, %if.end ], [ %spec.select.i, %ntb_peer_resource_idx.exit.cleanup_crit_edge ], [ -22, %ntb_peer_port_count.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntb_msi_clear_mws(ptr noundef %ntb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %peer.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit

if.end.i:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 %3(ptr noundef %ntb) #8
  br label %ntb_peer_port_count.exit

ntb_peer_port_count.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %peer.0, i32 %retval.0.i)
  %cmp = icmp slt i32 %peer.0, %retval.0.i
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %ntb_peer_port_count.exit
  %call1 = tail call fastcc i32 @ntb_peer_highest_mw_idx(ptr noundef %ntb, i32 noundef %peer.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %mw_clear_trans.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %mw_clear_trans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mw_clear_trans.i, align 4
  %tobool.not.i11 = icmp eq ptr %7, null
  br i1 %tobool.not.i11, label %if.then.i12, label %if.end.i14

if.then.i12:                                      ; preds = %if.end
  %mw_set_trans.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %mw_set_trans.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mw_set_trans.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.i12.for.inc_crit_edge, label %if.end.i.i

if.then.i12.for.inc_crit_edge:                    ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %9(ptr noundef %ntb, i32 noundef %peer.0, i32 noundef %call1, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc

if.end.i14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i13 = tail call i32 %7(ptr noundef %ntb, i32 noundef %peer.0, i32 noundef %call1) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.i14, %if.end.i.i, %if.then.i12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %peer.0, 1
  br label %for.cond

for.end:                                          ; preds = %ntb_peer_port_count.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntbm_msi_request_threaded_irq(ptr noundef %ntb, ptr noundef %handler, ptr noundef %thread_fn, ptr noundef %name, ptr noundef %dev_id, ptr noundef %msi_desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %msi = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 8
  %2 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msi_lock_descs(ptr noundef %dev1) #8
  %call = tail call ptr @msi_first_desc(ptr noundef %dev1, i32 noundef 2) #8
  %tobool3.not57 = icmp eq ptr %call, null
  br i1 %tobool3.not57, label %if.end.unlock_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %entry2.058 = phi ptr [ %call26, %for.inc.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %entry2.058 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entry2.058, align 4
  %call4 = tail call zeroext i1 @irq_has_action(i32 noundef %5) #8
  br i1 %call4, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %6 = ptrtoint ptr %entry2.058 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry2.058, align 4
  %call9 = tail call i32 @devm_request_threaded_irq(ptr noundef %ntb, i32 noundef %7, ptr noundef %handler, ptr noundef %thread_fn, i32 noundef 0, ptr noundef %name, ptr noundef %dev_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end12:                                         ; preds = %if.end6
  %msg.i = getelementptr inbounds %struct.msi_desc, ptr %entry2.058, i32 0, i32 3
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg.i, align 4
  %conv.i = zext i32 %9 to i64
  %10 = getelementptr inbounds %struct.msi_desc, ptr %entry2.058, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %conv3.i = zext i32 %12 to i64
  %shl.i = shl nuw i64 %conv3.i, 32
  %add.i = or i64 %shl.i, %conv.i
  %13 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msi, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %16)
  %cmp.i = icmp ult i64 %add.i, %16
  br i1 %cmp.i, label %if.end12.do.body.i_crit_edge, label %lor.lhs.false.i

if.end12.do.body.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.end12
  %end_addr.i = getelementptr inbounds %struct.ntb_msi, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %18)
  %cmp6.not.i = icmp ult i64 %add.i, %18
  br i1 %cmp6.not.i, label %if.end18, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %if.end12.do.body.i_crit_edge
  %.b33.i = load i1, ptr @ntb_msi_set_desc.__print_once, align 1
  br i1 %.b33.i, label %do.body.i.if.then15_crit_edge, label %if.then8.i

do.body.i.if.then15_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ntb_msi_set_desc.__print_once, align 1
  %19 = ptrtoint ptr %entry2.058 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %entry2.058, align 4
  %end_addr13.i = getelementptr inbounds %struct.ntb_msi, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %end_addr13.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %end_addr13.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %ntb, ptr noundef nonnull @.str.1, i32 noundef %20, i64 noundef %add.i, i64 noundef %16, i64 noundef %22) #11
  br label %if.then15

if.then15:                                        ; preds = %if.then8.i, %do.body.i.if.then15_crit_edge
  %23 = ptrtoint ptr %entry2.058 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entry2.058, align 4
  tail call void @devm_free_irq(ptr noundef %ntb, i32 noundef %24, ptr noundef %dev_id) #8
  br label %for.inc

if.end18:                                         ; preds = %lor.lhs.false.i
  %25 = trunc i64 %16 to i32
  %conv19.i = sub i32 %9, %25
  %26 = ptrtoint ptr %msi_desc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv19.i, ptr %msi_desc, align 4
  %27 = getelementptr inbounds %struct.msi_desc, ptr %entry2.058, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %data.i = getelementptr inbounds %struct.ntb_msi_desc, ptr %msi_desc, i32 0, i32 1
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %data.i, align 4
  %call.i = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @ntbm_msi_callback_release, i32 noundef 12, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.5) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %entry2.058 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %entry2.058, align 4
  tail call void @devm_free_irq(ptr noundef %ntb, i32 noundef %32, ptr noundef %dev_id) #8
  br label %unlock

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ntb, ptr %call.i, align 4
  %entry3.i = getelementptr inbounds %struct.ntb_msi_devres, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %entry3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry2.058, ptr %entry3.i, align 4
  %msi_desc4.i = getelementptr inbounds %struct.ntb_msi_devres, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %msi_desc4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msi_desc, ptr %msi_desc4.i, align 4
  tail call void @devres_add(ptr noundef %ntb, ptr noundef nonnull %call.i) #8
  %36 = ptrtoint ptr %entry3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %entry3.i, align 4
  %write_msi_msg.i = getelementptr inbounds %struct.msi_desc, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %write_msi_msg.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ntb_msi_write_msg, ptr %write_msi_msg.i, align 4
  %39 = load ptr, ptr %entry3.i, align 4
  %write_msi_msg_data.i = getelementptr inbounds %struct.msi_desc, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %write_msi_msg_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %write_msi_msg_data.i, align 4
  %41 = ptrtoint ptr %entry2.058 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %entry2.058, align 4
  br label %unlock

for.inc:                                          ; preds = %if.then15, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call26 = tail call ptr @msi_next_desc(ptr noundef %dev1, i32 noundef 2) #8
  %tobool3.not = icmp eq ptr %call26, null
  br i1 %tobool3.not, label %for.inc.unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.unlock_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

unlock:                                           ; preds = %for.inc.unlock_crit_edge, %if.end24, %if.then21, %if.end.unlock_crit_edge
  %ret.0 = phi i32 [ -12, %if.then21 ], [ %42, %if.end24 ], [ -19, %if.end.unlock_crit_edge ], [ -19, %for.inc.unlock_crit_edge ]
  tail call void @msi_unlock_descs(ptr noundef %dev1) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_has_action(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_next_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntbm_msi_free_irq(ptr noundef %ntb, i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %irq) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_msi_desc.exit_crit_edge, label %cond.true.i

entry.irq_get_msi_desc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_get_msi_desc.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc.i, align 4
  br label %irq_get_msi_desc.exit

irq_get_msi_desc.exit:                            ; preds = %cond.true.i, %entry.irq_get_msi_desc.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %entry.irq_get_msi_desc.exit_crit_edge ]
  %write_msi_msg = getelementptr inbounds %struct.msi_desc, ptr %cond.i, i32 0, i32 6
  %4 = ptrtoint ptr %write_msi_msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %write_msi_msg, align 4
  %write_msi_msg_data = getelementptr inbounds %struct.msi_desc, ptr %cond.i, i32 0, i32 7
  %5 = ptrtoint ptr %write_msi_msg_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %write_msi_msg_data, align 4
  %call2 = tail call i32 @devres_destroy(ptr noundef %ntb, ptr noundef nonnull @ntbm_msi_callback_release, ptr noundef nonnull @ntbm_msi_callback_match, ptr noundef %cond.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %irq_get_msi_desc.exit.if.end_crit_edge, label %do.end, !prof !36

irq_get_msi_desc.exit.if.end_crit_edge:           ; preds = %irq_get_msi_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %irq_get_msi_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %irq_get_msi_desc.exit.if.end_crit_edge
  tail call void @devm_free_irq(ptr noundef %ntb, i32 noundef %irq, ptr noundef %dev_id) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_destroy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ntbm_msi_callback_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.ntb_msi_devres, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %write_msi_msg = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %write_msi_msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %write_msi_msg, align 4
  %3 = load ptr, ptr %entry1, align 4
  %write_msi_msg_data = getelementptr inbounds %struct.msi_desc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %write_msi_msg_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %write_msi_msg_data, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntbm_msi_callback_match(ptr noundef readnone %dev, ptr nocapture noundef readonly %res, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %cmp = icmp eq ptr %1, %dev
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %entry2 = getelementptr inbounds %struct.ntb_msi_devres, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry2, align 4
  %cmp3 = icmp eq ptr %3, %data
  %phi.cast = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntb_msi_peer_trigger(ptr nocapture noundef readonly %ntb, i32 noundef %peer, ptr nocapture noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msi = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 8
  %0 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc, align 4
  %div5 = lshr i32 %3, 2
  %data = getelementptr inbounds %struct.ntb_msi_desc, ptr %desc, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %arrayidx = getelementptr %struct.ntb_msi, ptr %1, i32 0, i32 3, i32 %peer
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 %div5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx2, i32 %8) #8, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntb_msi_peer_addr(ptr noundef %ntb, i32 noundef %peer, ptr nocapture noundef readonly %desc, ptr noundef writeonly %msi_addr) #0 align 64 {
entry:
  %mw_phys_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %peer_mw_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %peer_mw_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer_mw_count.i, align 4
  %call.i = tail call i32 %3(ptr noundef %ntb) #8
  %4 = xor i32 %peer, -1
  %sub1 = add i32 %call.i, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mw_phys_addr) #8
  %5 = ptrtoint ptr %mw_phys_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %mw_phys_addr, align 4, !annotation !35
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 8
  %peer_mw_get_addr.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %peer_mw_get_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %peer_mw_get_addr.i, align 4
  %call.i12 = call i32 %9(ptr noundef %ntb, i32 noundef %sub1, ptr noundef nonnull %mw_phys_addr, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool.not = icmp ne i32 %call.i12, 0
  %tobool3.not = icmp eq ptr %msi_addr, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %mw_phys_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mw_phys_addr, align 4
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc, align 4
  %add = add i32 %13, %11
  %14 = ptrtoint ptr %msi_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %msi_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mw_phys_addr) #8
  ret i32 %call.i12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_port_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_number(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntb_msi_write_msg(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %msi_desc = getelementptr inbounds %struct.ntb_msi_devres, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %msi_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_desc, align 4
  %msg.i = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 3
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg.i, align 4
  %conv.i = zext i32 %5 to i64
  %6 = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %conv3.i = zext i32 %8 to i64
  %shl.i = shl nuw i64 %conv3.i, 32
  %add.i = or i64 %shl.i, %conv.i
  %msi.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %msi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msi.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %12)
  %cmp.i = icmp ult i64 %add.i, %12
  br i1 %cmp.i, label %entry.do.body.i_crit_edge, label %lor.lhs.false.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %entry
  %end_addr.i = getelementptr inbounds %struct.ntb_msi, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %end_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %14)
  %cmp6.not.i = icmp ult i64 %add.i, %14
  br i1 %cmp6.not.i, label %ntb_msi_set_desc.exit, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %.b33.i = load i1, ptr @ntb_msi_set_desc.__print_once, align 1
  br i1 %.b33.i, label %do.body.i.do.end_crit_edge, label %if.then8.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ntb_msi_set_desc.__print_once, align 1
  %15 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entry1, align 4
  %end_addr13.i = getelementptr inbounds %struct.ntb_msi, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %end_addr13.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %end_addr13.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %16, i64 noundef %add.i, i64 noundef %12, i64 noundef %18) #11
  br label %do.end

ntb_msi_set_desc.exit:                            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = trunc i64 %12 to i32
  %conv19.i = sub i32 %5, %19
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv19.i, ptr %3, align 4
  %21 = getelementptr inbounds %struct.msi_desc, ptr %entry1, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %data.i = getelementptr inbounds %struct.ntb_msi_desc, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %data.i, align 4
  br label %if.end

do.end:                                           ; preds = %if.then8.i, %do.body.i.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 221, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %ntb_msi_set_desc.exit
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %msi = getelementptr inbounds %struct.ntb_dev, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msi, align 8
  %desc_changed = getelementptr inbounds %struct.ntb_msi, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %desc_changed to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc_changed, align 8
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %if.end.if.end28_crit_edge, label %if.then23

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %26, i32 0, i32 4
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  tail call void %30(ptr noundef %32) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_ntb_msi_init, !1, !"__ksymtab_ntb_msi_init", i1 false, i1 false}
!1 = !{!"../drivers/ntb/msi.c", i32 79, i32 1}
!2 = !{ptr @__ksymtab_ntb_msi_setup_mws, !3, !"__ksymtab_ntb_msi_setup_mws", i1 false, i1 false}
!3 = !{!"../drivers/ntb/msi.c", i32 166, i32 1}
!4 = !{ptr @__ksymtab_ntb_msi_clear_mws, !5, !"__ksymtab_ntb_msi_clear_mws", i1 false, i1 false}
!5 = !{!"../drivers/ntb/msi.c", i32 187, i32 1}
!6 = !{ptr @__ksymtab_ntbm_msi_request_threaded_irq, !7, !"__ksymtab_ntbm_msi_request_threaded_irq", i1 false, i1 false}
!7 = !{!"../drivers/ntb/msi.c", i32 322, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/ntb/msi.c", i32 348, i32 2}
!10 = !{ptr @__ksymtab_ntbm_msi_free_irq, !11, !"__ksymtab_ntbm_msi_free_irq", i1 false, i1 false}
!11 = !{!"../drivers/ntb/msi.c", i32 353, i32 1}
!12 = !{ptr @__ksymtab_ntb_msi_peer_trigger, !13, !"__ksymtab_ntb_msi_peer_trigger", i1 false, i1 false}
!13 = !{!"../drivers/ntb/msi.c", i32 381, i32 1}
!14 = !{ptr @__ksymtab_ntb_msi_peer_addr, !15, !"__ksymtab_ntb_msi_peer_addr", i1 false, i1 false}
!15 = !{!"../drivers/ntb/msi.c", i32 414, i32 1}
!16 = distinct !{null, !17, !"__print_once", i1 false, i1 false}
!17 = !{!"../drivers/ntb/msi.c", i32 204, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ntb_msi_set_desc._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ntb_msi_set_desc._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ntb/msi.c", i32 240, i32 7}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2151179636}
!38 = !{i64 3637514}
