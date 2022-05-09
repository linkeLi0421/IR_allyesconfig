; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/nhi.c_pt.bc'
source_filename = "../drivers/thunderbolt/nhi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__tb_ring_enqueue\22, \22a\22\09"
module asm "\09.weak\09__crc___tb_ring_enqueue\09\09\09\09"
module asm "\09.long\09__crc___tb_ring_enqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tb_ring_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22__tb_ring_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns___tb_ring_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tb_ring_poll\22, \22a\22\09"
module asm "\09.weak\09__crc_tb_ring_poll\09\09\09\09"
module asm "\09.long\09__crc_tb_ring_poll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tb_ring_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22tb_ring_poll\22\09\09\09\09\09"
module asm "__kstrtabns_tb_ring_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tb_ring_poll_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_tb_ring_poll_complete\09\09\09\09"
module asm "\09.long\09__crc_tb_ring_poll_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tb_ring_poll_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22tb_ring_poll_complete\22\09\09\09\09\09"
module asm "__kstrtabns_tb_ring_poll_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tb_ring_alloc_tx\22, \22a\22\09"
module asm "\09.weak\09__crc_tb_ring_alloc_tx\09\09\09\09"
module asm "\09.long\09__crc_tb_ring_alloc_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tb_ring_alloc_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22tb_ring_alloc_tx\22\09\09\09\09\09"
module asm "__kstrtabns_tb_ring_alloc_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tb_ring_alloc_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_tb_ring_alloc_rx\09\09\09\09"
module asm "\09.long\09__crc_tb_ring_alloc_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tb_ring_alloc_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22tb_ring_alloc_rx\22\09\09\09\09\09"
module asm "__kstrtabns_tb_ring_alloc_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tb_ring_start\22, \22a\22\09"
module asm "\09.weak\09__crc_tb_ring_start\09\09\09\09"
module asm "\09.long\09__crc_tb_ring_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tb_ring_start:\09\09\09\09\09"
module asm "\09.asciz \09\22tb_ring_start\22\09\09\09\09\09"
module asm "__kstrtabns_tb_ring_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tb_ring_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_tb_ring_stop\09\09\09\09"
module asm "\09.long\09__crc_tb_ring_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tb_ring_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22tb_ring_stop\22\09\09\09\09\09"
module asm "__kstrtabns_tb_ring_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tb_ring_free\22, \22a\22\09"
module asm "\09.weak\09__crc_tb_ring_free\09\09\09\09"
module asm "\09.long\09__crc_tb_ring_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tb_ring_free:\09\09\09\09\09"
module asm "\09.asciz \09\22tb_ring_free\22\09\09\09\09\09"
module asm "__kstrtabns_tb_ring_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_nhi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_ring = type { %struct.spinlock, ptr, i32, i32, i32, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.work_struct, i8, i32, i8, i32, i32, i16, i16, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ring_frame = type { i32, ptr, %struct.list_head, i32 }
%struct.ring_desc = type { i64, i32, i32 }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }

@__kstrtab___tb_ring_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns___tb_ring_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab___tb_ring_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tb_ring_enqueue to i32), ptr @__kstrtab___tb_ring_enqueue, ptr @__kstrtabns___tb_ring_enqueue }, section "___ksymtab_gpl+__tb_ring_enqueue", align 4
@__kstrtab_tb_ring_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_tb_ring_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_tb_ring_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tb_ring_poll to i32), ptr @__kstrtab_tb_ring_poll, ptr @__kstrtabns_tb_ring_poll }, section "___ksymtab_gpl+tb_ring_poll", align 4
@__kstrtab_tb_ring_poll_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_tb_ring_poll_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_tb_ring_poll_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tb_ring_poll_complete to i32), ptr @__kstrtab_tb_ring_poll_complete, ptr @__kstrtabns_tb_ring_poll_complete }, section "___ksymtab_gpl+tb_ring_poll_complete", align 4
@__kstrtab_tb_ring_alloc_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_tb_ring_alloc_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_tb_ring_alloc_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tb_ring_alloc_tx to i32), ptr @__kstrtab_tb_ring_alloc_tx, ptr @__kstrtabns_tb_ring_alloc_tx }, section "___ksymtab_gpl+tb_ring_alloc_tx", align 4
@__kstrtab_tb_ring_alloc_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_tb_ring_alloc_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_tb_ring_alloc_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tb_ring_alloc_rx to i32), ptr @__kstrtab_tb_ring_alloc_rx, ptr @__kstrtabns_tb_ring_alloc_rx }, section "___ksymtab_gpl+tb_ring_alloc_rx", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/thunderbolt/nhi.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s %s: ring already started\0A\00", [35 x i8] zeroinitializer }, align 32
@tb_ring_start.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tb_ring_start\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"starting %s %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TX ring\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX ring\00", [24 x i8] zeroinitializer }, align 32
@tb_ring_start.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.7, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"enabling E2E for %s %d with TX HopID %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tb_ring_start.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.8, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling E2E for %s %d\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_tb_ring_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_tb_ring_start = external dso_local constant [0 x i8], align 1
@__ksymtab_tb_ring_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tb_ring_start to i32), ptr @__kstrtab_tb_ring_start, ptr @__kstrtabns_tb_ring_start }, section "___ksymtab_gpl+tb_ring_start", align 4
@tb_ring_stop.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_ring_stop\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stopping %s %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s: %s %d already stopped\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_tb_ring_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_tb_ring_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_tb_ring_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tb_ring_stop to i32), ptr @__kstrtab_tb_ring_stop, ptr @__kstrtabns_tb_ring_stop }, section "___ksymtab_gpl+tb_ring_stop", align 4
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s %s: %s %d still running\0A\00", [36 x i8] zeroinitializer }, align 32
@tb_ring_free.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.13, ptr @.str, ptr @.str.14, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_ring_free\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"freeing %s %d\0A\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_tb_ring_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_tb_ring_free = external dso_local constant [0 x i8], align 1
@__ksymtab_tb_ring_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tb_ring_free to i32), ptr @__kstrtab_tb_ring_free, ptr @__kstrtabns_tb_ring_free }, section "___ksymtab_gpl+tb_ring_free", align 4
@__UNIQUE_ID_file247 = internal constant [49 x i8] c"thunderbolt.file=drivers/thunderbolt/thunderbolt\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [24 x i8] c"thunderbolt.license=GPL\00", section ".modinfo", align 1
@nhi_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.2, ptr @nhi_ids, ptr @nhi_probe, ptr @nhi_remove, ptr null, ptr null, ptr @nhi_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nhi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_thunderbolt__249_1408_nhi_initrootfs = internal global ptr @nhi_init, section ".initcallrootfs.init", align 4
@__exitcall_nhi_unload = internal global ptr @nhi_unload, section ".exitcall.exit", align 4
@tb_ring_alloc.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tb_ring_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"allocating %s ring %d of size %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@tb_ring_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ring->lock\00", [20 x i8] zeroinitializer }, align 32
@tb_ring_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&ring->work)\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nhi_alloc_hop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 485, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid hop: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nhi_alloc_hop\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nhi_alloc_hop._entry_ptr = internal global ptr @nhi_alloc_hop._entry, section ".printk_index", align 4
@nhi_alloc_hop._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str, i32 491, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TX hop %d already allocated\0A\00", [35 x i8] zeroinitializer }, align 32
@nhi_alloc_hop._entry_ptr.28 = internal global ptr @nhi_alloc_hop._entry.26, section ".printk_index", align 4
@nhi_alloc_hop._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str, i32 496, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX hop %d already allocated\0A\00", [35 x i8] zeroinitializer }, align 32
@nhi_alloc_hop._entry_ptr.31 = internal global ptr @nhi_alloc_hop._entry.29, section ".printk_index", align 4
@ring_interrupt_active.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.32, ptr @.str, ptr @.str.33, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ring_interrupt_active\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s interrupt at register %#x bit %d (%#x -> %#x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s %s: interrupt for %s %d is already %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nhi_ids = internal global { [24 x %struct.pci_device_id], [192 x i8] } { [24 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 5395, i32 8738, i32 4369, i32 557056, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5447, i32 8738, i32 4369, i32 557056, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5482, i32 -1, i32 -1, i32 557056, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5484, i32 -1, i32 -1, i32 557056, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5493, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5495, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5597, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5567, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5596, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5593, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5586, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5598, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5608, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 5611, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 35351, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 35341, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39451, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39453, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39455, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 39457, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 17982, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 18029, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @icl_nhi_ops to i32), i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787264, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@nhi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr @nhi_complete, ptr @nhi_suspend, ptr null, ptr null, ptr null, ptr @nhi_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nhi_suspend_noirq, ptr @nhi_resume_noirq, ptr @nhi_freeze_noirq, ptr @nhi_thaw_noirq, ptr @nhi_poweroff_noirq, ptr @nhi_resume_noirq, ptr @nhi_runtime_suspend, ptr @nhi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@icl_nhi_ops = external dso_local constant %struct.tb_nhi_ops, align 4
@nhi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 1187, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware image not valid, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nhi_probe\00", [22 x i8] zeroinitializer }, align 32
@nhi_probe._entry_ptr = internal global ptr @nhi_probe._entry, section ".printk_index", align 4
@nhi_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str, i32 1193, ptr @.str.43, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot enable PCI device, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nhi_probe._entry_ptr.44 = internal global ptr @nhi_probe._entry.41, section ".printk_index", align 4
@nhi_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str, i32 1199, ptr @.str.43, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot obtain PCI resources, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@nhi_probe._entry_ptr.47 = internal global ptr @nhi_probe._entry.45, section ".printk_index", align 4
@nhi_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.40, ptr @.str, ptr @.str.48, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"total paths: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nhi_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.40, ptr @.str, i32 1225, ptr @.str.43, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot enable MSI, aborting\0A\00", [35 x i8] zeroinitializer }, align 32
@nhi_probe._entry_ptr.51 = internal global ptr @nhi_probe._entry.49, section ".printk_index", align 4
@nhi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nhi->lock\00", [21 x i8] zeroinitializer }, align 32
@nhi_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str, i32 1235, ptr @.str.43, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@nhi_probe._entry_ptr.55 = internal global ptr @nhi_probe._entry.53, section ".printk_index", align 4
@nhi_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.40, ptr @.str, i32 1250, ptr @.str.43, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to determine connection manager, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@nhi_probe._entry_ptr.58 = internal global ptr @nhi_probe._entry.56, section ".printk_index", align 4
@nhi_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.40, ptr @.str, ptr @.str.59, i8 1, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"NHI initialized, starting thunderbolt\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IMR_VALID\00", [22 x i8] zeroinitializer }, align 32
@nhi_init_msi.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&nhi->interrupt_work)\00", [56 x i8] zeroinitializer }, align 32
@nhi_init_msi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str, i32 1139, ptr @.str.43, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request_irq failed, aborting\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nhi_init_msi\00", [19 x i8] zeroinitializer }, align 32
@nhi_init_msi._entry_ptr = internal global ptr @nhi_init_msi._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@nhi_interrupt_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 871, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX overflow for ring %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nhi_interrupt_work\00", [45 x i8] zeroinitializer }, align 32
@nhi_interrupt_work._entry_ptr = internal global ptr @nhi_interrupt_work._entry, section ".printk_index", align 4
@nhi_interrupt_work._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str, i32 882, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"got interrupt for inactive %s ring %d\0A\00", [57 x i8] zeroinitializer }, align 32
@nhi_interrupt_work._entry_ptr.69 = internal global ptr @nhi_interrupt_work._entry.67, section ".printk_index", align 4
@nhi_shutdown.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.70, ptr @.str, ptr @.str.71, i8 1, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nhi_shutdown\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shutdown\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %s: TX ring %d is still active\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %s: RX ring %d is still active\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WAKE_SUPPORTED\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 626, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 629, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 666, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 670, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 704, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 709, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 758, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 773, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"nhi_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1380, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 520, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 527, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 530, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 485, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 490, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 495, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 100, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 105, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [8 x i8] c"nhi_ids\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1313, i32 29 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"nhi_pm_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1296, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1187, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1193, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1199, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1212, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1225, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1229, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1235, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1249, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1254, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1151, i32 43 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1130, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1139, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 378, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 869, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 879, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1070, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1074, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 1077, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.307 = private constant [29 x i8] c"../drivers/thunderbolt/nhi.c\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.307, i32 949, i32 42 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_nhi_unload, ptr @__initcall__kmod_thunderbolt__249_1408_nhi_initrootfs, ptr @__ksymtab___tb_ring_enqueue, ptr @__ksymtab_tb_ring_alloc_rx, ptr @__ksymtab_tb_ring_alloc_tx, ptr @__ksymtab_tb_ring_free, ptr @__ksymtab_tb_ring_poll, ptr @__ksymtab_tb_ring_poll_complete, ptr @__ksymtab_tb_ring_start, ptr @__ksymtab_tb_ring_stop, ptr @nhi_alloc_hop._entry, ptr @nhi_alloc_hop._entry.26, ptr @nhi_alloc_hop._entry.29, ptr @nhi_alloc_hop._entry_ptr, ptr @nhi_alloc_hop._entry_ptr.28, ptr @nhi_alloc_hop._entry_ptr.31, ptr @nhi_init_msi._entry, ptr @nhi_init_msi._entry_ptr, ptr @nhi_interrupt_work._entry, ptr @nhi_interrupt_work._entry.67, ptr @nhi_interrupt_work._entry_ptr, ptr @nhi_interrupt_work._entry_ptr.69, ptr @nhi_probe._entry, ptr @nhi_probe._entry.41, ptr @nhi_probe._entry.45, ptr @nhi_probe._entry.49, ptr @nhi_probe._entry.53, ptr @nhi_probe._entry.56, ptr @nhi_probe._entry_ptr, ptr @nhi_probe._entry_ptr.44, ptr @nhi_probe._entry_ptr.47, ptr @nhi_probe._entry_ptr.51, ptr @nhi_probe._entry_ptr.55, ptr @nhi_probe._entry_ptr.58, ptr @nhi_unload, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @nhi_driver, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tb_ring_alloc.__key, ptr @.str.19, ptr @tb_ring_alloc.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @nhi_ids, ptr @nhi_pm_ops, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @nhi_probe.__key, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @nhi_init_msi.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @xa_init_flags.__key, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_ring_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_ring_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_alloc_hop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_alloc_hop._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_alloc_hop._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_ids to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_init_msi.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_init_msi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_interrupt_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nhi_interrupt_work._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tb_ring_enqueue(ptr noundef %ring, ptr noundef %frame) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring) #7
  %running = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %running, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.ring_frame, ptr %frame, i32 0, i32 2
  %queue = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %3, ptr noundef %queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %queue, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ring_frame, ptr %frame, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  tail call fastcc void @ring_write_descriptors(ptr noundef %ring)
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %list_add_tail.exit ], [ -108, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring, i32 noundef %call2) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ring_write_descriptors(ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %head.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 4
  %cmp.not95 = icmp eq ptr %1, %queue
  br i1 %cmp.not95, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %size.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 2
  %tail.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 5
  %in_flight = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 9
  %prev.i2.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 9, i32 1
  %descriptors = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 6
  %is_tx = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %nhi.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %hop.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in96 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn100, %for.inc.for.body_crit_edge ]
  %frame.099 = getelementptr i8, ptr %.pn.in96, i32 -8
  %2 = ptrtoint ptr %.pn.in96 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn100 = load ptr, ptr %.pn.in96, align 4
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %head.i, align 4
  %add.i = add i32 %4, 1
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size.i, align 4
  %rem.i = srem i32 %add.i, %6
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %8)
  %cmp.i = icmp eq i32 %rem.i, %8
  br i1 %cmp.i, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in96) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in96, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in96 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in96, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in96, ptr noundef %16, ptr noundef %in_flight) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in96, ptr %prev.i2.i, align 4
  %18 = ptrtoint ptr %.pn.in96 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %in_flight, ptr %.pn.in96, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in96, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in96, ptr %16, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %21 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %descriptors, align 4
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %head.i, align 4
  %arrayidx = getelementptr %struct.ring_desc, ptr %22, i32 %24
  %25 = ptrtoint ptr %frame.099 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frame.099, align 4
  %conv = zext i32 %26 to i64
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %conv, ptr %arrayidx, align 1
  %time = getelementptr %struct.ring_desc, ptr %22, i32 %24, i32 2
  %28 = ptrtoint ptr %time to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %time, align 1
  %flags = getelementptr %struct.ring_desc, ptr %22, i32 %24, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %bf.load = load i32, ptr %flags, align 1
  %bf.clear = and i32 %bf.load, -4096
  %bf.set = or i32 %bf.clear, 12
  store i32 %bf.set, ptr %flags, align 1
  %30 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load8 = load i8, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load8)
  %bf.cast.not = icmp sgt i8 %bf.load8, -1
  br i1 %bf.cast.not, label %if.end32.thread, label %if.end32

if.end32.thread:                                  ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %head.i, align 4
  %add88 = add i32 %32, 1
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  %rem89 = srem i32 %add88, %34
  store i32 %rem89, ptr %head.i, align 4
  br label %if.else

if.end32:                                         ; preds = %list_move_tail.exit
  %size = getelementptr i8, ptr %.pn.in96, i32 8
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load10 = load i32, ptr %size, align 4
  %bf.lshr11 = and i32 %bf.load10, -1048576
  %bf.clear13 = and i32 %bf.set, 1044492
  %bf.set14 = or i32 %bf.lshr11, %bf.clear13
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %bf.set14, ptr %flags, align 1
  %bf.load15 = load i32, ptr %size, align 4
  %37 = shl i32 %bf.load15, 12
  %bf.shl21 = and i32 %37, 983040
  %bf.clear22 = and i32 %bf.set14, -987124
  %bf.set23 = or i32 %bf.shl21, %bf.clear22
  store i32 %bf.set23, ptr %flags, align 1
  %bf.load24 = load i32, ptr %size, align 4
  %bf.clear25 = shl i32 %bf.load24, 12
  %bf.shl29 = and i32 %bf.clear25, 61440
  %bf.clear30 = and i32 %bf.set23, -65524
  %bf.set31 = or i32 %bf.clear30, %bf.shl29
  store i32 %bf.set31, ptr %flags, align 1
  %38 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load37.pr = load i8, ptr %is_tx, align 4
  %39 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %head.i, align 4
  %add = add i32 %40, 1
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i, align 4
  %rem = srem i32 %add, %42
  store i32 %rem, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37.pr)
  %bf.cast39.not = icmp sgt i8 %bf.load37.pr, -1
  br i1 %bf.cast39.not, label %if.end32.if.else_crit_edge, label %if.then40

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %conv42 = trunc i32 %rem to i16
  %43 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nhi.i.i, align 4
  %iobase.i.i = getelementptr inbounds %struct.tb_nhi, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i.i, align 4
  %47 = and i8 %bf.load37.pr, -128
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = xor i32 %49, 32768
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 8
  %51 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hop.i.i, align 4
  %mul.i.i = shl i32 %52, 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %50
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv42) #7
  %54 = zext i16 %53 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %54) #7, !srcloc !171
  br label %for.inc

if.else:                                          ; preds = %if.end32.if.else_crit_edge, %if.end32.thread
  %rem92 = phi i32 [ %rem89, %if.end32.thread ], [ %rem, %if.end32.if.else_crit_edge ]
  %bf.load3791 = phi i8 [ %bf.load8, %if.end32.thread ], [ %bf.load37.pr, %if.end32.if.else_crit_edge ]
  %conv.i = and i32 %rem92, 65535
  %55 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nhi.i.i, align 4
  %iobase.i.i79 = getelementptr inbounds %struct.tb_nhi, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %iobase.i.i79 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i.i79, align 4
  %59 = and i8 %bf.load3791, -128
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = xor i32 %61, 32768
  %add.ptr.i.i82 = getelementptr i8, ptr %58, i32 8
  %63 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hop.i.i, align 4
  %mul.i.i84 = shl i32 %64, 4
  %add.ptr1.i.i85 = getelementptr i8, ptr %add.ptr.i.i82, i32 %62
  %add.ptr.i86 = getelementptr i8, ptr %add.ptr1.i.i85, i32 %mul.i.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %65) #7, !srcloc !171
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then40
  %cmp.not = icmp eq ptr %.pn100, %queue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_ring_poll(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ring) #7
  %running = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %running, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 4
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i = icmp eq i32 %3, %5
  br i1 %cmp.i, label %if.end.unlock_crit_edge, label %if.end7

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end7:                                          ; preds = %if.end
  %descriptors = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 6
  %6 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descriptors, align 4
  %flags8 = getelementptr %struct.ring_desc, ptr %7, i32 %5, i32 1
  %8 = ptrtoint ptr %flags8 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load9 = load i32, ptr %flags8, align 1
  %and = and i32 %bf.load9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.unlock_crit_edge, label %if.then11

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then11:                                        ; preds = %if.end7
  %in_flight = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 9
  %9 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in_flight, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del_init.exit_crit_edge

if.then11.list_del_init.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then11.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %10, ptr %10, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load13 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13)
  %bf.cast15.not = icmp sgt i8 %bf.load13, -1
  br i1 %bf.cast15.not, label %if.then16, label %list_del_init.exit.if.end59_crit_edge

list_del_init.exit.if.end59_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then16:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %descriptors, align 4
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail.i, align 4
  %length = getelementptr %struct.ring_desc, ptr %21, i32 %23, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load20 = load i32, ptr %length, align 1
  %bf.lshr21 = and i32 %bf.load20, -1048576
  %size = getelementptr i8, ptr %10, i32 8
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load22 = load i32, ptr %size, align 4
  %bf.clear23 = and i32 %bf.load22, 1048575
  %bf.set = or i32 %bf.clear23, %bf.lshr21
  store i32 %bf.set, ptr %size, align 4
  %26 = load ptr, ptr %descriptors, align 4
  %27 = load i32, ptr %tail.i, align 4
  %eof = getelementptr %struct.ring_desc, ptr %26, i32 %27, i32 1
  %28 = ptrtoint ptr %eof to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load27 = load i32, ptr %eof, align 1
  %29 = lshr i32 %bf.load27, 12
  %bf.shl33 = and i32 %29, 240
  %bf.clear34 = and i32 %bf.set, -241
  %bf.set35 = or i32 %bf.shl33, %bf.clear34
  store i32 %bf.set35, ptr %size, align 4
  %30 = load ptr, ptr %descriptors, align 4
  %31 = load i32, ptr %tail.i, align 4
  %sof = getelementptr %struct.ring_desc, ptr %30, i32 %31, i32 1
  %32 = ptrtoint ptr %sof to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %bf.load39 = load i32, ptr %sof, align 1
  %bf.lshr40 = lshr i32 %bf.load39, 12
  %bf.clear41 = and i32 %bf.lshr40, 15
  %bf.clear45 = and i32 %bf.set35, -16
  %bf.set46 = or i32 %bf.clear41, %bf.clear45
  store i32 %bf.set46, ptr %size, align 4
  %33 = load ptr, ptr %descriptors, align 4
  %34 = load i32, ptr %tail.i, align 4
  %flags50 = getelementptr %struct.ring_desc, ptr %33, i32 %34, i32 1
  %35 = ptrtoint ptr %flags50 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %bf.load51 = load i32, ptr %flags50, align 1
  %bf.clear52 = shl i32 %bf.load51, 8
  %bf.shl56 = and i32 %bf.clear52, 1048320
  %bf.clear57 = and i32 %bf.set46, -1048321
  %bf.set58 = or i32 %bf.shl56, %bf.clear57
  store i32 %bf.set58, ptr %size, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then16, %list_del_init.exit.if.end59_crit_edge
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail.i, align 4
  %add = add i32 %37, 1
  %size61 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 2
  %38 = ptrtoint ptr %size61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size61, align 4
  %rem = srem i32 %add, %39
  store i32 %rem, ptr %tail.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end59, %if.end7.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %frame.0 = phi ptr [ null, %if.end.unlock_crit_edge ], [ %add.ptr, %if.end59 ], [ null, %if.end7.unlock_crit_edge ], [ null, %entry.unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ring, i32 noundef %call2) #7
  ret ptr %frame.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_ring_poll_complete(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #7
  tail call void @_raw_spin_lock(ptr noundef %ring) #7
  %start_poll = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 18
  %2 = ptrtoint ptr %start_poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_poll, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %hop.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %4 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hop.i.i, align 4
  %is_tx.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %is_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %is_tx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %bf.cast.not.i.i, label %if.then.i.i, label %if.then.__ring_interrupt_mask.exit_crit_edge

if.then.__ring_interrupt_mask.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ring_interrupt_mask.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nhi, align 4
  %hop_count.i.i = getelementptr inbounds %struct.tb_nhi, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %hop_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hop_count.i.i, align 4
  %add.i.i = add i32 %10, %5
  br label %__ring_interrupt_mask.exit

__ring_interrupt_mask.exit:                       ; preds = %if.then.i.i, %if.then.__ring_interrupt_mask.exit_crit_edge
  %bit.0.i.i = phi i32 [ %5, %if.then.__ring_interrupt_mask.exit_crit_edge ], [ %add.i.i, %if.then.i.i ]
  %div.i = sdiv i32 %bit.0.i.i, 32
  %mul.i = shl nsw i32 %div.i, 2
  %add.i = add nsw i32 %mul.i, 229888
  %11 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nhi, align 4
  %iobase.i = getelementptr inbounds %struct.tb_nhi, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %rem13.i = and i32 %bit.0.i.i, 31
  %shl.i = shl nuw i32 1, %rem13.i
  %or.i = or i32 %16, %shl.i
  %17 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nhi, align 4
  %iobase4.i = getelementptr inbounds %struct.tb_nhi, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %iobase4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %20, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %21) #7, !srcloc !171
  br label %if.end

if.end:                                           ; preds = %__ring_interrupt_mask.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ring) #7
  %22 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_ring_alloc_tx(ptr noundef %nhi, i32 noundef %hop, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tb_ring_alloc(ptr noundef %nhi, i32 noundef %hop, i32 noundef %size, i1 noundef zeroext true, i32 noundef %flags, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tb_ring_alloc(ptr noundef %nhi, i32 noundef %hop, i32 noundef %size, i1 noundef zeroext %transmit, i32 noundef %flags, i32 noundef %e2e_tx_hop, i16 noundef zeroext %sof_mask, i16 noundef zeroext %eof_mask, ptr noundef %start_poll, ptr noundef %poll_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ring_alloc.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ring_alloc, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %cond = select i1 %transmit, ptr @.str.17, ptr @.str.18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ring_alloc.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond, i32 noundef %hop, i32 noundef %size) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %do.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @tb_ring_alloc.__key, i16 noundef signext 3) #7
  %queue = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queue, ptr %queue, align 8
  %prev.i = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %queue, ptr %prev.i, align 4
  %in_flight = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %in_flight to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %in_flight, ptr %in_flight, align 8
  %prev.i100 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %prev.i100 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %in_flight, ptr %prev.i100, align 4
  %work = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %7 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @tb_ring_alloc.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry17 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i101 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 10, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry17, ptr %prev.i101, align 8
  %func = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ring_work, ptr %func, align 4
  %nhi21 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %nhi21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %nhi, ptr %nhi21, align 4
  %hop22 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %hop22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %hop, ptr %hop22, align 4
  %is_tx = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %is_tx, align 4
  %bf.shl = select i1 %transmit, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %size25 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %size25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size, ptr %size25, align 8
  %flags26 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %flags26, align 8
  %e2e_tx_hop27 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %e2e_tx_hop27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %e2e_tx_hop, ptr %e2e_tx_hop27, align 4
  %sof_mask28 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %sof_mask28 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %sof_mask, ptr %sof_mask28, align 8
  %eof_mask29 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 17
  %18 = ptrtoint ptr %eof_mask29 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %eof_mask, ptr %eof_mask29, align 2
  %head = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %head, align 8
  %tail = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tail, align 4
  store i8 %bf.set, ptr %is_tx, align 4
  %start_poll33 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 18
  %21 = ptrtoint ptr %start_poll33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %start_poll, ptr %start_poll33, align 4
  %poll_data34 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 19
  %22 = ptrtoint ptr %poll_data34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %poll_data, ptr %poll_data34, align 8
  %pdev36 = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %23 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %mul = shl i32 %size, 4
  %descriptors_dma = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev37, i32 noundef %mul, ptr noundef %descriptors_dma, i32 noundef 3520, i32 noundef 0) #7
  %descriptors = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %descriptors, align 8
  %tobool40.not = icmp eq ptr %call.i, null
  br i1 %tobool40.not, label %do.body9.err_free_ring_crit_edge, label %if.end42

do.body9.err_free_ring_crit_edge:                 ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_ring

if.end42:                                         ; preds = %do.body9
  %26 = ptrtoint ptr %nhi21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nhi21, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 4
  %msix_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 49
  %30 = ptrtoint ptr %msix_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 5)
  %bf.load.i = load i40, ptr %msix_enabled.i, align 1
  %31 = and i40 %bf.load.i, 67108864
  %tobool.not.i = icmp eq i40 %31, 0
  br i1 %tobool.not.i, label %if.end42.if.end47_crit_edge, label %if.end.i

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end.i:                                         ; preds = %if.end42
  %msix_ida.i = getelementptr inbounds %struct.tb_nhi, ptr %27, i32 0, i32 6
  %call.i102 = tail call i32 @ida_alloc_range(ptr noundef %msix_ida.i, i32 noundef 0, i32 noundef 15, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i = icmp slt i32 %call.i102, 0
  br i1 %cmp.i, label %if.end.i.err_free_descs_crit_edge, label %if.end3.i

if.end.i.err_free_descs_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_descs

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = trunc i32 %call.i102 to i8
  %vector.i = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 13
  %32 = ptrtoint ptr %vector.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %vector.i, align 4
  %33 = ptrtoint ptr %nhi21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nhi21, align 4
  %pdev5.i = getelementptr inbounds %struct.tb_nhi, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pdev5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev5.i, align 4
  %conv7.i = and i32 %call.i102, 255
  %call8.i = tail call i32 @pci_irq_vector(ptr noundef %36, i32 noundef %conv7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end3.i.err_ida_remove.i_crit_edge, label %if.end12.i

if.end3.i.err_ida_remove.i_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ida_remove.i

if.end12.i:                                       ; preds = %if.end3.i
  %irq.i = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 12
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call8.i, ptr %irq.i, align 8
  %and = shl i32 %flags, 14
  %38 = and i32 %and, 16384
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %call8.i, ptr noundef nonnull @ring_msix, ptr noundef null, i32 noundef %38, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not.i, label %if.end12.i.if.end47_crit_edge, label %if.end12.i.err_ida_remove.i_crit_edge

if.end12.i.err_ida_remove.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ida_remove.i

if.end12.i.if.end47_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

err_ida_remove.i:                                 ; preds = %if.end12.i.err_ida_remove.i_crit_edge, %if.end3.i.err_ida_remove.i_crit_edge
  %39 = ptrtoint ptr %vector.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %vector.i, align 4
  %conv22.i = zext i8 %40 to i32
  tail call void @ida_free(ptr noundef %msix_ida.i, i32 noundef %conv22.i) #7
  br label %err_free_descs

if.end47:                                         ; preds = %if.end12.i.if.end47_crit_edge, %if.end42.if.end47_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %nhi) #7
  %41 = ptrtoint ptr %hop22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hop22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i104 = icmp slt i32 %42, 0
  br i1 %cmp.i104, label %for.cond.preheader.i, label %if.end47.lor.lhs.false.i_crit_edge

if.end47.lor.lhs.false.i_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

for.cond.preheader.i:                             ; preds = %if.end47
  %hop_count.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 9
  %43 = ptrtoint ptr %hop_count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hop_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp1105.i = icmp ugt i32 %44, 1
  br i1 %cmp1105.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.do.end.i_crit_edge

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %45 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i105 = load i8, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i105)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i105, -1
  %tx_rings.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 4
  %rx_rings.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0106.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %for.body.i
  %46 = ptrtoint ptr %tx_rings.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_rings.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %47, i32 %i.0106.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i106 = icmp eq ptr %49, null
  br i1 %tobool.not.i106, label %if.then2.i.if.end11.i.sink.split_crit_edge, label %if.then2.i.for.inc.i_crit_edge

if.then2.i.for.inc.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then2.i.if.end11.i.sink.split_crit_edge:       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.sink.split

if.else.i:                                        ; preds = %for.body.i
  %50 = ptrtoint ptr %rx_rings.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_rings.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %51, i32 %i.0106.i
  %52 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %53, null
  br i1 %tobool6.not.i, label %if.else.i.if.end11.i.sink.split_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i.if.end11.i.sink.split_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.sink.split

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %if.then2.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0106.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %44
  br i1 %exitcond.not.i, label %for.inc.i.if.end11.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end11.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i.sink.split:                            ; preds = %if.else.i.if.end11.i.sink.split_crit_edge, %if.then2.i.if.end11.i.sink.split_crit_edge
  %54 = ptrtoint ptr %hop22 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %i.0106.i, ptr %hop22, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.i.sink.split, %for.inc.i.if.end11.i_crit_edge
  %55 = phi i32 [ %i.0106.i, %if.end11.i.sink.split ], [ %42, %for.inc.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp13.i = icmp slt i32 %55, 0
  br i1 %cmp13.i, label %if.end11.i.do.end.i_crit_edge, label %if.end11.i.lor.lhs.false.i_crit_edge

if.end11.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

if.end11.i.do.end.i_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end11.i.lor.lhs.false.i_crit_edge, %if.end47.lor.lhs.false.i_crit_edge
  %56 = phi i32 [ %55, %if.end11.i.lor.lhs.false.i_crit_edge ], [ %42, %if.end47.lor.lhs.false.i_crit_edge ]
  %hop_count15.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 9
  %57 = ptrtoint ptr %hop_count15.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hop_count15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp16.not.i = icmp ult i32 %56, %58
  br i1 %cmp16.not.i, label %if.end19.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end11.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %59 = phi i32 [ %55, %if.end11.i.do.end.i_crit_edge ], [ %56, %lor.lhs.false.i.do.end.i_crit_edge ], [ %42, %for.cond.preheader.i.do.end.i_crit_edge ]
  %60 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev36, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %59) #11
  br label %err_release_msix

if.end19.i:                                       ; preds = %lor.lhs.false.i
  %62 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load21.i = load i8, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load21.i)
  %bf.cast23.not.i = icmp sgt i8 %bf.load21.i, -1
  br i1 %bf.cast23.not.i, label %land.lhs.true40.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %tx_rings24.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 4
  %63 = ptrtoint ptr %tx_rings24.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_rings24.i, align 4
  %arrayidx26.i = getelementptr ptr, ptr %64, i32 %56
  %65 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx26.i, align 4
  %tobool27.not.i = icmp eq ptr %66, null
  br i1 %tobool27.not.i, label %land.lhs.true.i.nhi_alloc_hop.exit_crit_edge, label %do.end31.i

land.lhs.true.i.nhi_alloc_hop.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_alloc_hop.exit

do.end31.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev36, align 4
  %dev33.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev33.i, ptr noundef nonnull @.str.27, i32 noundef %56) #11
  br label %err_release_msix

land.lhs.true40.i:                                ; preds = %if.end19.i
  %rx_rings41.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 5
  %69 = ptrtoint ptr %rx_rings41.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx_rings41.i, align 4
  %arrayidx43.i = getelementptr ptr, ptr %70, i32 %56
  %71 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx43.i, align 4
  %tobool44.not.i = icmp eq ptr %72, null
  br i1 %tobool44.not.i, label %land.lhs.true40.i.nhi_alloc_hop.exit_crit_edge, label %do.end48.i

land.lhs.true40.i.nhi_alloc_hop.exit_crit_edge:   ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_alloc_hop.exit

do.end48.i:                                       ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev36, align 4
  %dev50.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev50.i, ptr noundef nonnull @.str.30, i32 noundef %56) #11
  br label %err_release_msix

nhi_alloc_hop.exit:                               ; preds = %land.lhs.true40.i.nhi_alloc_hop.exit_crit_edge, %land.lhs.true.i.nhi_alloc_hop.exit_crit_edge
  %arrayidx26.i.sink = phi ptr [ %arrayidx26.i, %land.lhs.true.i.nhi_alloc_hop.exit_crit_edge ], [ %arrayidx43.i, %land.lhs.true40.i.nhi_alloc_hop.exit_crit_edge ]
  %75 = ptrtoint ptr %arrayidx26.i.sink to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %arrayidx26.i.sink, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %nhi) #7
  br label %cleanup

err_release_msix:                                 ; preds = %do.end48.i, %do.end31.i, %do.end.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %nhi) #7
  %irq.i109 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 12
  %76 = ptrtoint ptr %irq.i109 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq.i109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.i110 = icmp slt i32 %77, 1
  br i1 %cmp.i110, label %err_release_msix.err_free_descs_crit_edge, label %if.end.i115

err_release_msix.err_free_descs_crit_edge:        ; preds = %err_release_msix
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_descs

if.end.i115:                                      ; preds = %err_release_msix
  call void @__sanitizer_cov_trace_pc() #9
  %call.i111 = tail call ptr @free_irq(i32 noundef %77, ptr noundef %call7.i.i) #7
  %78 = ptrtoint ptr %nhi21 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nhi21, align 4
  %msix_ida.i112 = getelementptr inbounds %struct.tb_nhi, ptr %79, i32 0, i32 6
  %vector.i113 = getelementptr inbounds %struct.tb_ring, ptr %call7.i.i, i32 0, i32 13
  %80 = ptrtoint ptr %vector.i113 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vector.i113, align 4
  %conv.i114 = zext i8 %81 to i32
  tail call void @ida_free(ptr noundef %msix_ida.i112, i32 noundef %conv.i114) #7
  %82 = ptrtoint ptr %vector.i113 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %vector.i113, align 4
  %83 = ptrtoint ptr %irq.i109 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %irq.i109, align 8
  br label %err_free_descs

err_free_descs:                                   ; preds = %if.end.i115, %err_release_msix.err_free_descs_crit_edge, %err_ida_remove.i, %if.end.i.err_free_descs_crit_edge
  %84 = ptrtoint ptr %nhi21 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %nhi21, align 4
  %pdev53 = getelementptr inbounds %struct.tb_nhi, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %pdev53 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev53, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size25, align 8
  %mul56 = shl i32 %89, 4
  %90 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %descriptors, align 8
  %92 = ptrtoint ptr %descriptors_dma to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %descriptors_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev54, i32 noundef %mul56, ptr noundef %91, i32 noundef %93, i32 noundef 0) #7
  br label %err_free_ring

err_free_ring:                                    ; preds = %err_free_descs, %do.body9.err_free_ring_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_ring, %nhi_alloc_hop.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_free_ring ], [ null, %do.end.cleanup_crit_edge ], [ %call7.i.i, %nhi_alloc_hop.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_ring_alloc_rx(ptr noundef %nhi, i32 noundef %hop, i32 noundef %size, i32 noundef %flags, i32 noundef %e2e_tx_hop, i16 noundef zeroext %sof_mask, i16 noundef zeroext %eof_mask, ptr noundef %start_poll, ptr noundef %poll_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @tb_ring_alloc(ptr noundef %nhi, i32 noundef %hop, i32 noundef %size, i1 noundef zeroext false, i32 noundef %flags, i32 noundef %e2e_tx_hop, i16 noundef zeroext %sof_mask, i16 noundef zeroext %eof_mask, ptr noundef %start_poll, ptr noundef %poll_data)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_ring_start(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #7
  tail call void @_raw_spin_lock(ptr noundef %ring) #7
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %going_away = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %going_away to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %going_away, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end:                                           ; preds = %entry
  %running = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %running, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %bf.cast.not = icmp eq i8 %7, 0
  br i1 %bf.cast.not, label %do.body27, label %do.end

do.end:                                           ; preds = %if.end
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %10 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi, align 4
  %pdev11 = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev11, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i190 = phi ptr [ %17, %if.end.i ], [ %15, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 626, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call, ptr noundef %retval.0.i190) #7
  br label %err

do.body27:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ring_start.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ring_start, %if.then37)) #7
          to label %do.end46 [label %if.then37], !srcloc !174

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nhi, align 4
  %pdev39 = getelementptr inbounds %struct.tb_nhi, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load41 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41)
  %bf.cast43.not = icmp sgt i8 %bf.load41, -1
  %cond = select i1 %bf.cast43.not, ptr @.str.6, ptr @.str.5
  %hop = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %23 = ptrtoint ptr %hop to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hop, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ring_start.__UNIQUE_ID_ddebug239, ptr noundef %dev40, ptr noundef nonnull @.str.4, ptr noundef nonnull %cond, i32 noundef %24) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then37, %do.body27
  %flags47 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 14
  %25 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags47, align 4
  %and = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  %. = select i1 %tobool48.not, i32 -1073741824, i32 -2147483648
  %descriptors_dma = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 7
  %27 = ptrtoint ptr %descriptors_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %descriptors_dma, align 4
  %29 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nhi, align 4
  %iobase.i.i = getelementptr inbounds %struct.tb_nhi, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase.i.i, align 4
  %33 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %running, align 4
  %34 = and i8 %bf.load.i.i, -128
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = xor i32 %36, 32768
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %37
  %hop.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %38 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hop.i.i, align 4
  %mul.i.i = shl i32 %39, 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %40) #7, !srcloc !171
  %41 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nhi, align 4
  %iobase.i2.i = getelementptr inbounds %struct.tb_nhi, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i2.i, align 4
  %45 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i4.i = load i8, ptr %running, align 4
  %46 = and i8 %bf.load.i4.i, -128
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = xor i32 %48, 32768
  %add.ptr.i5.i = getelementptr i8, ptr %44, i32 %49
  %50 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hop.i.i, align 4
  %mul.i7.i = shl i32 %51, 4
  %add.ptr1.i8.i = getelementptr i8, ptr %add.ptr.i5.i, i32 %mul.i7.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr1.i8.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !171
  %52 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load52 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load52)
  %bf.cast54.not = icmp sgt i8 %bf.load52, -1
  br i1 %bf.cast54.not, label %if.else56, label %if.then55

if.then55:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 2
  %53 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size, align 4
  %55 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nhi, align 4
  %iobase.i.i192 = getelementptr inbounds %struct.tb_nhi, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %iobase.i.i192 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iobase.i.i192, align 4
  %59 = and i8 %bf.load52, -128
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 8
  %62 = xor i32 %61, 32768
  %add.ptr.i.i195 = getelementptr i8, ptr %58, i32 %62
  %63 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hop.i.i, align 4
  %mul.i.i197 = shl i32 %64, 4
  %add.ptr1.i.i198 = getelementptr i8, ptr %add.ptr.i.i195, i32 %mul.i.i197
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i198, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %65) #7, !srcloc !171
  %66 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nhi, align 4
  %iobase.i.i200 = getelementptr inbounds %struct.tb_nhi, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %iobase.i.i200 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iobase.i.i200, align 4
  %70 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i.i202 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i202)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i202, -1
  %cond.i.i = select i1 %bf.cast.not.i.i, i32 169984, i32 104448
  %add.ptr.i.i203 = getelementptr i8, ptr %69, i32 %cond.i.i
  %71 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hop.i.i, align 4
  %mul.i.i205 = shl i32 %72, 5
  %add.ptr1.i.i206 = getelementptr i8, ptr %add.ptr.i.i203, i32 %mul.i.i205
  %add.ptr.i207 = getelementptr i8, ptr %add.ptr1.i.i206, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 0) #7, !srcloc !171
  %73 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %nhi, align 4
  %iobase.i.i209 = getelementptr inbounds %struct.tb_nhi, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %iobase.i.i209 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iobase.i.i209, align 4
  %77 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i.i211 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i211)
  %bf.cast.not.i.i212 = icmp sgt i8 %bf.load.i.i211, -1
  %cond.i.i213 = select i1 %bf.cast.not.i.i212, i32 169984, i32 104448
  %add.ptr.i.i214 = getelementptr i8, ptr %76, i32 %cond.i.i213
  %78 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hop.i.i, align 4
  %mul.i.i216 = shl i32 %79, 5
  %add.ptr1.i.i217 = getelementptr i8, ptr %add.ptr.i.i214, i32 %mul.i.i216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %80 = lshr exact i32 %., 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i217, i32 %80) #7, !srcloc !171
  br label %if.end63

if.else56:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  %81 = shl nuw nsw i32 %and, 23
  %82 = xor i32 %81, 16777216
  %sof_mask = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 16
  %83 = ptrtoint ptr %sof_mask to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sof_mask, align 4
  %conv57 = zext i16 %84 to i32
  %shl = shl nuw i32 %conv57, 16
  %eof_mask = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 17
  %85 = ptrtoint ptr %eof_mask to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %eof_mask, align 2
  %conv58 = zext i16 %86 to i32
  %or = or i32 %shl, %conv58
  %size61 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 2
  %87 = ptrtoint ptr %size61 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size61, align 4
  %or62 = or i32 %88, %82
  %89 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %nhi, align 4
  %iobase.i.i219 = getelementptr inbounds %struct.tb_nhi, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %iobase.i.i219 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iobase.i.i219, align 4
  %93 = and i8 %bf.load52, -128
  %94 = zext i8 %93 to i32
  %95 = shl nuw nsw i32 %94, 8
  %96 = xor i32 %95, 32768
  %add.ptr.i.i222 = getelementptr i8, ptr %92, i32 %96
  %97 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hop.i.i, align 4
  %mul.i.i224 = shl i32 %98, 4
  %add.ptr1.i.i225 = getelementptr i8, ptr %add.ptr.i.i222, i32 %mul.i.i224
  %add.ptr.i226 = getelementptr i8, ptr %add.ptr1.i.i225, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %99 = tail call i32 @llvm.bswap.i32(i32 %or62) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 %99) #7, !srcloc !171
  %100 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nhi, align 4
  %iobase.i.i228 = getelementptr inbounds %struct.tb_nhi, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %iobase.i.i228 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %iobase.i.i228, align 4
  %104 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i.i230 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i230)
  %bf.cast.not.i.i231 = icmp sgt i8 %bf.load.i.i230, -1
  %cond.i.i232 = select i1 %bf.cast.not.i.i231, i32 169984, i32 104448
  %add.ptr.i.i233 = getelementptr i8, ptr %103, i32 %cond.i.i232
  %105 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hop.i.i, align 4
  %mul.i.i235 = shl i32 %106, 5
  %add.ptr1.i.i236 = getelementptr i8, ptr %add.ptr.i.i233, i32 %mul.i.i235
  %add.ptr.i237 = getelementptr i8, ptr %add.ptr1.i.i236, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %107 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %107) #7, !srcloc !171
  %108 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %nhi, align 4
  %iobase.i.i239 = getelementptr inbounds %struct.tb_nhi, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %iobase.i.i239 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %iobase.i.i239, align 4
  %112 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load.i.i241 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i241)
  %bf.cast.not.i.i242 = icmp sgt i8 %bf.load.i.i241, -1
  %cond.i.i243 = select i1 %bf.cast.not.i.i242, i32 169984, i32 104448
  %add.ptr.i.i244 = getelementptr i8, ptr %111, i32 %cond.i.i243
  %113 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %hop.i.i, align 4
  %mul.i.i246 = shl i32 %114, 5
  %add.ptr1.i.i247 = getelementptr i8, ptr %add.ptr.i.i244, i32 %mul.i.i246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %115 = lshr exact i32 %., 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i247, i32 %115) #7, !srcloc !171
  br label %if.end63

if.end63:                                         ; preds = %if.else56, %if.then55
  %116 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %flags47, align 4
  %and65 = and i32 %117, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end133_crit_edge, label %if.then67

if.end63.if.end133_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then67:                                        ; preds = %if.end63
  %118 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load69 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load69)
  %bf.cast71.not = icmp sgt i8 %bf.load69, -1
  br i1 %bf.cast71.not, label %if.then72, label %do.body105

if.then72:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %e2e_tx_hop = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 15
  %119 = ptrtoint ptr %e2e_tx_hop to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %e2e_tx_hop, align 4
  %shl74 = shl i32 %120, 12
  %and75 = and i32 %shl74, 8384512
  %or76 = or i32 %and75, %.
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ring_start.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ring_start, %if.then89)) #7
          to label %if.end131 [label %if.then89], !srcloc !174

if.then89:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nhi, align 4
  %pdev91 = getelementptr inbounds %struct.tb_nhi, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %pdev91 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev91, align 4
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %124, i32 0, i32 44
  %125 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load94 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load94)
  %bf.cast96.not = icmp sgt i8 %bf.load94, -1
  %cond98 = select i1 %bf.cast96.not, ptr @.str.6, ptr @.str.5
  %126 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %hop.i.i, align 4
  %128 = ptrtoint ptr %e2e_tx_hop to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %e2e_tx_hop, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ring_start.__UNIQUE_ID_ddebug240, ptr noundef %dev92, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond98, i32 noundef %127, i32 noundef %129) #7
  br label %if.end131

do.body105:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ring_start.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ring_start, %if.then117)) #7
          to label %if.end131 [label %if.then117], !srcloc !174

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %nhi, align 4
  %pdev119 = getelementptr inbounds %struct.tb_nhi, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %pdev119 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev119, align 4
  %dev120 = getelementptr inbounds %struct.pci_dev, ptr %133, i32 0, i32 44
  %134 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load122 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load122)
  %bf.cast124.not = icmp sgt i8 %bf.load122, -1
  %cond126 = select i1 %bf.cast124.not, ptr @.str.6, ptr @.str.5
  %135 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hop.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ring_start.__UNIQUE_ID_ddebug241, ptr noundef %dev120, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond126, i32 noundef %136) #7
  br label %if.end131

if.end131:                                        ; preds = %if.then117, %do.body105, %if.then89, %if.then72
  %flags.1 = phi i32 [ %., %if.then117 ], [ %or76, %if.then89 ], [ %or76, %if.then72 ], [ %., %do.body105 ]
  %or132 = or i32 %flags.1, 268435456
  %137 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %nhi, align 4
  %iobase.i.i249 = getelementptr inbounds %struct.tb_nhi, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %iobase.i.i249 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %iobase.i.i249, align 4
  %141 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load.i.i251 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i251)
  %bf.cast.not.i.i252 = icmp sgt i8 %bf.load.i.i251, -1
  %cond.i.i253 = select i1 %bf.cast.not.i.i252, i32 169984, i32 104448
  %add.ptr.i.i254 = getelementptr i8, ptr %140, i32 %cond.i.i253
  %142 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %hop.i.i, align 4
  %mul.i.i256 = shl i32 %143, 5
  %add.ptr1.i.i257 = getelementptr i8, ptr %add.ptr.i.i254, i32 %mul.i.i256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %144 = tail call i32 @llvm.bswap.i32(i32 %or132) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i257, i32 %144) #7, !srcloc !171
  br label %if.end133

if.end133:                                        ; preds = %if.end131, %if.end63.if.end133_crit_edge
  tail call fastcc void @ring_interrupt_active(ptr noundef %ring, i1 noundef zeroext true)
  %145 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load135 = load i8, ptr %running, align 4
  %bf.set = or i8 %bf.load135, 64
  store i8 %bf.set, ptr %running, align 4
  br label %err

err:                                              ; preds = %if.end133, %dev_name.exit, %entry.err_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ring) #7
  %146 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %147) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ring_interrupt_active(ptr nocapture noundef readonly %ring, i1 noundef zeroext %active) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hop.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %hop.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hop.i, align 4
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %ring_interrupt_index.exit154, label %ring_interrupt_index.exit154.thread

ring_interrupt_index.exit154:                     ; preds = %entry
  %nhi.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nhi.i, align 4
  %hop_count.i = getelementptr inbounds %struct.tb_nhi, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %hop_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hop_count.i, align 4
  %add.i = add i32 %6, %1
  %div157 = sdiv i32 %add.i, 32
  %mul158 = shl nsw i32 %div157, 2
  %add159 = add nsw i32 %mul158, 229888
  %and = and i32 %add.i, 31
  %shl = shl nuw i32 1, %and
  %irq = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 12
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.else, label %ring_interrupt_index.exit154.if.end34_crit_edge

ring_interrupt_index.exit154.if.end34_crit_edge:  ; preds = %ring_interrupt_index.exit154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

ring_interrupt_index.exit154.thread:              ; preds = %entry
  %div = sdiv i32 %1, 32
  %mul = shl nsw i32 %div, 2
  %add = add nsw i32 %mul, 229888
  %and165 = and i32 %1, 31
  %shl166 = shl nuw i32 1, %and165
  %irq167 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 12
  %9 = ptrtoint ptr %irq167 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp168 = icmp sgt i32 %10, 0
  br i1 %cmp168, label %ring_interrupt_index.exit154.thread.if.end_crit_edge, label %ring_interrupt_index.exit154.thread.if.end34_crit_edge

ring_interrupt_index.exit154.thread.if.end34_crit_edge: ; preds = %ring_interrupt_index.exit154.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

ring_interrupt_index.exit154.thread.if.end_crit_edge: ; preds = %ring_interrupt_index.exit154.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %ring_interrupt_index.exit154
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nhi.i, align 4
  %hop_count = getelementptr inbounds %struct.tb_nhi, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hop_count, align 4
  %add4 = add i32 %14, %1
  br label %if.end

if.end:                                           ; preds = %if.else, %ring_interrupt_index.exit154.thread.if.end_crit_edge
  %add160170182 = phi i32 [ %add159, %if.else ], [ %add, %ring_interrupt_index.exit154.thread.if.end_crit_edge ]
  %and172180 = phi i32 [ %and, %if.else ], [ %and165, %ring_interrupt_index.exit154.thread.if.end_crit_edge ]
  %shl174178 = phi i32 [ %shl, %if.else ], [ %shl166, %ring_interrupt_index.exit154.thread.if.end_crit_edge ]
  %index.0 = phi i32 [ %add4, %if.else ], [ %1, %ring_interrupt_index.exit154.thread.if.end_crit_edge ]
  %nhi5 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %15 = ptrtoint ptr %nhi5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nhi5, align 4
  %quirks = getelementptr inbounds %struct.tb_nhi, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks, align 4
  %and6 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then7:                                         ; preds = %if.end
  %iobase = getelementptr inbounds %struct.tb_nhi, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 235620
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !172
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %and10 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then12, label %if.then7.if.end17_crit_edge

if.then7.if.end17_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then12:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %22, 4
  %23 = ptrtoint ptr %nhi5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nhi5, align 4
  %iobase14 = getelementptr inbounds %struct.tb_nhi, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %iobase14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase14, align 4
  %add.ptr15 = getelementptr i8, ptr %26, i32 235620
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %27) #7, !srcloc !171
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then7.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %28 = ptrtoint ptr %nhi5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nhi5, align 4
  %iobase19 = getelementptr inbounds %struct.tb_nhi, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %iobase19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase19, align 4
  %add.ptr20 = getelementptr i8, ptr %31, i32 232512
  %index.0.frozen = freeze i32 %index.0
  %div21 = sdiv i32 %index.0.frozen, 8
  %mul22 = shl nsw i32 %div21, 2
  %32 = mul i32 %div21, 8
  %rem.decomposed = sub i32 %index.0.frozen, %32
  %mul23 = shl nsw i32 %rem.decomposed, 2
  %add.ptr24 = getelementptr i8, ptr %add.ptr20, i32 %mul22
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !172
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %shl26 = shl i32 15, %mul23
  %neg = xor i32 %shl26, -1
  %and27 = and i32 %34, %neg
  br i1 %active, label %if.then29, label %if.end17.if.end32_crit_edge

if.end17.if.end32_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %vector = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 13
  %35 = ptrtoint ptr %vector to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vector, align 4
  %conv = zext i8 %36 to i32
  %shl30 = shl i32 %conv, %mul23
  %or31 = or i32 %shl30, %and27
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end17.if.end32_crit_edge
  %ivr.0 = phi i32 [ %or31, %if.then29 ], [ %and27, %if.end17.if.end32_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %ivr.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %37) #7, !srcloc !171
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %ring_interrupt_index.exit154.thread.if.end34_crit_edge, %ring_interrupt_index.exit154.if.end34_crit_edge
  %shl173 = phi i32 [ %shl166, %ring_interrupt_index.exit154.thread.if.end34_crit_edge ], [ %shl174178, %if.end32 ], [ %shl, %ring_interrupt_index.exit154.if.end34_crit_edge ]
  %and171 = phi i32 [ %and165, %ring_interrupt_index.exit154.thread.if.end34_crit_edge ], [ %and172180, %if.end32 ], [ %and, %ring_interrupt_index.exit154.if.end34_crit_edge ]
  %add160169 = phi i32 [ %add, %ring_interrupt_index.exit154.thread.if.end34_crit_edge ], [ %add160170182, %if.end32 ], [ %add159, %ring_interrupt_index.exit154.if.end34_crit_edge ]
  %nhi35 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %38 = ptrtoint ptr %nhi35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nhi35, align 4
  %iobase36 = getelementptr inbounds %struct.tb_nhi, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %iobase36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase36, align 4
  %add.ptr37 = getelementptr i8, ptr %41, i32 %add160169
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #7, !srcloc !172
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %or41 = or i32 %43, %shl173
  %neg43 = xor i32 %shl173, -1
  %and44 = and i32 %43, %neg43
  %new.0 = select i1 %active, i32 %or41, i32 %and44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_interrupt_active.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_interrupt_active, %if.then51)) #7
          to label %do.end [label %if.then51], !srcloc !174

if.then51:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %nhi35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nhi35, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %cond = select i1 %active, ptr @.str.34, ptr @.str.35
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ring_interrupt_active.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond, i32 noundef %add160169, i32 noundef %and171, i32 noundef %43, i32 noundef %new.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then51, %if.end34
  call void @__sanitizer_cov_trace_cmp4(i32 %new.0, i32 %43)
  %cmp56 = icmp eq i32 %new.0, %43
  br i1 %cmp56, label %do.end70, label %do.end.if.end102_crit_edge

do.end.if.end102_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

do.end70:                                         ; preds = %do.end
  %48 = ptrtoint ptr %nhi35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nhi35, align 4
  %pdev72 = getelementptr inbounds %struct.tb_nhi, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pdev72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev72, align 4
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %call74 = tail call ptr @dev_driver_string(ptr noundef %dev73) #7
  %52 = ptrtoint ptr %nhi35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nhi35, align 4
  %pdev76 = getelementptr inbounds %struct.tb_nhi, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev76, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44, i32 3
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end70.dev_name.exit_crit_edge

do.end70.dev_name.exit_crit_edge:                 ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #9
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %58 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev77, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end70.dev_name.exit_crit_edge
  %retval.0.i155 = phi ptr [ %59, %if.end.i ], [ %57, %do.end70.dev_name.exit_crit_edge ]
  %60 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load80 = load i8, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load80)
  %bf.cast82.not = icmp sgt i8 %bf.load80, -1
  %cond84 = select i1 %bf.cast82.not, ptr @.str.6, ptr @.str.5
  %61 = ptrtoint ptr %hop.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %hop.i, align 4
  %cond88 = select i1 %active, ptr @.str.37, ptr @.str.38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %call74, ptr noundef %retval.0.i155, ptr noundef nonnull %cond84, i32 noundef %62, ptr noundef nonnull %cond88) #7
  br label %if.end102

if.end102:                                        ; preds = %dev_name.exit, %do.end.if.end102_crit_edge
  %63 = ptrtoint ptr %nhi35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nhi35, align 4
  %iobase104 = getelementptr inbounds %struct.tb_nhi, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %iobase104 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %iobase104, align 4
  %add.ptr105 = getelementptr i8, ptr %66, i32 %add160169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %67 = tail call i32 @llvm.bswap.i32(i32 %new.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %67) #7, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_ring_stop(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #7
  tail call void @_raw_spin_lock(ptr noundef %ring) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ring_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ring_stop, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %is_tx = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %6 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %bf.cast.not, ptr @.str.6, ptr @.str.5
  %hop = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %7 = ptrtoint ptr %hop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hop, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ring_stop.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nhi, align 4
  %going_away = getelementptr inbounds %struct.tb_nhi, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %going_away to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %going_away, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.err_crit_edge

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end8:                                          ; preds = %do.end
  %running = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %13 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load9 = load i8, ptr %running, align 4
  %14 = and i8 %bf.load9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast11.not = icmp eq i8 %14, 0
  br i1 %bf.cast11.not, label %do.end23, label %if.end51

do.end23:                                         ; preds = %if.end8
  %pdev25 = getelementptr inbounds %struct.tb_nhi, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev25, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %call27 = tail call ptr @dev_driver_string(ptr noundef %dev26) #7
  %17 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nhi, align 4
  %pdev29 = getelementptr inbounds %struct.tb_nhi, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pdev29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev29, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end23.dev_name.exit_crit_edge

do.end23.dev_name.exit_crit_edge:                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %23 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev30, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end23.dev_name.exit_crit_edge
  %retval.0.i84 = phi ptr [ %24, %if.end.i ], [ %22, %do.end23.dev_name.exit_crit_edge ]
  %25 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load33 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33)
  %bf.cast35.not = icmp sgt i8 %bf.load33, -1
  %cond36 = select i1 %bf.cast35.not, ptr @.str.6, ptr @.str.5
  %hop37 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %26 = ptrtoint ptr %hop37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hop37, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 710, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call27, ptr noundef %retval.0.i84, ptr noundef nonnull %cond36, i32 noundef %27) #7
  br label %err

if.end51:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ring_interrupt_active(ptr noundef %ring, i1 noundef zeroext false)
  %28 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nhi, align 4
  %iobase.i.i = getelementptr inbounds %struct.tb_nhi, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase.i.i, align 4
  %32 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cond.i.i = select i1 %bf.cast.not.i.i, i32 169984, i32 104448
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %cond.i.i
  %hop.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %33 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hop.i.i, align 4
  %mul.i.i = shl i32 %34, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #7, !srcloc !171
  %35 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nhi, align 4
  %iobase.i.i86 = getelementptr inbounds %struct.tb_nhi, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %iobase.i.i86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i.i86, align 4
  %39 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.i88 = load i8, ptr %running, align 4
  %40 = and i8 %bf.load.i.i88, -128
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = xor i32 %42, 32768
  %add.ptr.i.i89 = getelementptr i8, ptr %38, i32 %43
  %44 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hop.i.i, align 4
  %mul.i.i91 = shl i32 %45, 4
  %add.ptr1.i.i92 = getelementptr i8, ptr %add.ptr.i.i89, i32 %mul.i.i91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i92, i32 0) #7, !srcloc !171
  %46 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nhi, align 4
  %iobase.i2.i = getelementptr inbounds %struct.tb_nhi, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %iobase.i2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase.i2.i, align 4
  %50 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i4.i = load i8, ptr %running, align 4
  %51 = and i8 %bf.load.i4.i, -128
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = xor i32 %53, 32768
  %add.ptr.i5.i = getelementptr i8, ptr %49, i32 %54
  %55 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hop.i.i, align 4
  %mul.i7.i = shl i32 %56, 4
  %add.ptr1.i8.i = getelementptr i8, ptr %add.ptr.i5.i, i32 %mul.i7.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr1.i8.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #7, !srcloc !171
  %57 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nhi, align 4
  %iobase.i.i94 = getelementptr inbounds %struct.tb_nhi, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %iobase.i.i94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i.i94, align 4
  %61 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load.i.i96 = load i8, ptr %running, align 4
  %62 = and i8 %bf.load.i.i96, -128
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = xor i32 %64, 32768
  %add.ptr.i.i97 = getelementptr i8, ptr %60, i32 %65
  %66 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hop.i.i, align 4
  %mul.i.i99 = shl i32 %67, 4
  %add.ptr1.i.i100 = getelementptr i8, ptr %add.ptr.i.i97, i32 %mul.i.i99
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i100, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !171
  %68 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nhi, align 4
  %iobase.i.i102 = getelementptr inbounds %struct.tb_nhi, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %iobase.i.i102 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iobase.i.i102, align 4
  %72 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i.i104 = load i8, ptr %running, align 4
  %73 = and i8 %bf.load.i.i104, -128
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = xor i32 %75, 32768
  %add.ptr.i.i105 = getelementptr i8, ptr %71, i32 %76
  %77 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hop.i.i, align 4
  %mul.i.i107 = shl i32 %78, 4
  %add.ptr1.i.i108 = getelementptr i8, ptr %add.ptr.i.i105, i32 %mul.i.i107
  %add.ptr.i109 = getelementptr i8, ptr %add.ptr1.i.i108, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 0) #7, !srcloc !171
  %head = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 4
  %79 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 5
  %80 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %tail, align 4
  %81 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load53 = load i8, ptr %running, align 4
  %bf.clear54 = and i8 %bf.load53, -65
  store i8 %bf.clear54, ptr %running, align 4
  br label %err

err:                                              ; preds = %if.end51, %dev_name.exit, %do.end.err_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ring) #7
  %82 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %83) #7
  %work = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %84 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %84, ptr noundef %work) #7
  %call60 = tail call zeroext i1 @flush_work(ptr noundef %work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_ring_free(ptr noundef %ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #7
  %is_tx = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_tx, align 4
  %3 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nhi, align 4
  %rx_rings = getelementptr inbounds %struct.tb_nhi, ptr %4, i32 0, i32 5
  %tx_rings = getelementptr inbounds %struct.tb_nhi, ptr %4, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %bf.cast.not95 = icmp slt i8 %bf.load, 0
  %rx_rings.sink = select i1 %bf.cast.not95, ptr %tx_rings, ptr %rx_rings
  %5 = ptrtoint ptr %rx_rings.sink to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_rings.sink, align 4
  %hop3 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %7 = ptrtoint ptr %hop3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hop3, align 4
  %arrayidx4 = getelementptr ptr, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load5 = load i8, ptr %is_tx, align 4
  %11 = and i8 %bf.load5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast7.not = icmp eq i8 %11, 0
  br i1 %bf.cast7.not, label %entry.if.end35_crit_edge, label %do.end

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %16 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nhi, align 4
  %pdev15 = getelementptr inbounds %struct.tb_nhi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev15, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %22 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev16, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i91 = phi ptr [ %23, %if.end.i ], [ %21, %do.end.dev_name.exit_crit_edge ]
  %24 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load19 = load i8, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %bf.cast21.not = icmp sgt i8 %bf.load19, -1
  %cond = select i1 %bf.cast21.not, ptr @.str.6, ptr @.str.5
  %hop22 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %25 = ptrtoint ptr %hop22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hop22, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 759, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call, ptr noundef %retval.0.i91, ptr noundef nonnull %cond, i32 noundef %26) #7
  br label %if.end35

if.end35:                                         ; preds = %dev_name.exit, %entry.if.end35_crit_edge
  %27 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %28) #7
  %irq.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 12
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i = icmp slt i32 %30, 1
  br i1 %cmp.i, label %if.end35.ring_release_msix.exit_crit_edge, label %if.end.i92

if.end35.ring_release_msix.exit_crit_edge:        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %ring_release_msix.exit

if.end.i92:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call ptr @free_irq(i32 noundef %30, ptr noundef %ring) #7
  %31 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nhi, align 4
  %msix_ida.i = getelementptr inbounds %struct.tb_nhi, ptr %32, i32 0, i32 6
  %vector.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 13
  %33 = ptrtoint ptr %vector.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %vector.i, align 4
  %conv.i = zext i8 %34 to i32
  tail call void @ida_free(ptr noundef %msix_ida.i, i32 noundef %conv.i) #7
  %35 = ptrtoint ptr %vector.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %vector.i, align 4
  %36 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %irq.i, align 4
  br label %ring_release_msix.exit

ring_release_msix.exit:                           ; preds = %if.end.i92, %if.end35.ring_release_msix.exit_crit_edge
  %37 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nhi, align 4
  %pdev39 = getelementptr inbounds %struct.tb_nhi, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev39, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %size = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 2
  %41 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size, align 4
  %mul = shl i32 %42, 4
  %descriptors = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 6
  %43 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %descriptors, align 4
  %descriptors_dma = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 7
  %45 = ptrtoint ptr %descriptors_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %descriptors_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev40, i32 noundef %mul, ptr noundef %44, i32 noundef %46, i32 noundef 0) #7
  %47 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %descriptors, align 4
  %48 = ptrtoint ptr %descriptors_dma to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %descriptors_dma, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_ring_free.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_ring_free, %if.then53)) #7
          to label %do.end65 [label %if.then53], !srcloc !174

if.then53:                                        ; preds = %ring_release_msix.exit
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nhi, align 4
  %pdev55 = getelementptr inbounds %struct.tb_nhi, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %pdev55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load58 = load i8, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load58)
  %bf.cast60.not = icmp sgt i8 %bf.load58, -1
  %cond61 = select i1 %bf.cast60.not, ptr @.str.6, ptr @.str.5
  %hop62 = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %54 = ptrtoint ptr %hop62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hop62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_ring_free.__UNIQUE_ID_ddebug243, ptr noundef %dev56, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond61, i32 noundef %55) #7
  br label %do.end65

do.end65:                                         ; preds = %if.then53, %ring_release_msix.exit
  %work = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 10
  %call66 = tail call zeroext i1 @flush_work(ptr noundef %work) #7
  tail call void @kfree(ptr noundef %ring) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nhi_mailbox_cmd(ptr nocapture noundef readonly %nhi, i32 noundef %cmd, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 235776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %data) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !171
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 235780
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %6 = and i32 %5, 16777023
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or = or i32 %7, %cmd
  %or3 = or i32 %or, -2147483648
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 235780
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or3) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #7, !srcloc !171
  %call6 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call6, 500000000
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 235780
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !172
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not = icmp sgt i32 %14, -1
  br i1 %tobool.not, label %if.end17, label %if.end

if.end:                                           ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %call12 = tail call i64 @ktime_get() #7
  %cmp.i.i = icmp slt i64 %call12, %add.i
  br i1 %cmp.i.i, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end17:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %and18 = and i32 %14, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %. = select i1 %tobool19.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %if.end17 ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nhi_mailbox_mode(ptr nocapture noundef readonly %nhi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 235788
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !172
  %3 = lshr i32 %2, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %shr = and i32 %3, 15
  ret i32 %shr
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nhi_unload() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @nhi_driver) #7
  tail call void @tb_domain_exit() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_domain_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tb_domain_init() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @nhi_driver, ptr noundef null, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tb_domain_exit() #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ring_work(ptr noundef %work) #0 align 64 {
entry:
  %done = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %done) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %done, i32 0, i32 1
  %1 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %done, ptr %done, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %done, ptr %0, align 4
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #7
  %running = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %running, align 4
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %bf.cast.not = icmp eq i8 %4, 0
  br i1 %bf.cast.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %descriptors = getelementptr i8, ptr %work, i32 -24
  %head.i = getelementptr i8, ptr %work, i32 -32
  %tail.i = getelementptr i8, ptr %work, i32 -28
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %head.i, align 4
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.i126 = icmp eq i32 %6, %8
  br i1 %cmp.i126, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %in_flight13 = getelementptr i8, ptr %work, i32 -8
  %size65 = getelementptr i8, ptr %work, i32 -40
  br label %while.body

if.then:                                          ; preds = %entry
  %in_flight = getelementptr i8, ptr %work, i32 -8
  %9 = ptrtoint ptr %in_flight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %in_flight, align 4
  %cmp.i.not.i = icmp eq ptr %10, %in_flight
  br i1 %cmp.i.not.i, label %if.then.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.then.list_splice_tail_init.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %0, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -4
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %10, ptr %12, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %done, ptr %14, align 4
  store ptr %14, ptr %0, align 4
  %18 = ptrtoint ptr %in_flight to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %in_flight, ptr %in_flight, align 4
  store ptr %in_flight, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.then.list_splice_tail_init.exit_crit_edge
  %queue = getelementptr i8, ptr %work, i32 -16
  %19 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i114 = icmp eq ptr %20, %queue
  br i1 %cmp.i.not.i114, label %list_splice_tail_init.exit.invoke_callback_crit_edge, label %if.then.i118

list_splice_tail_init.exit.invoke_callback_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %invoke_callback

if.then.i118:                                     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %0, align 4
  %prev2.i.i116 = getelementptr i8, ptr %work, i32 -12
  %23 = ptrtoint ptr %prev2.i.i116 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev2.i.i116, align 4
  %prev3.i.i117 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i117 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i117, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %20, ptr %22, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %done, ptr %24, align 4
  store ptr %24, ptr %0, align 4
  %28 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i116, align 4
  br label %invoke_callback

while.body:                                       ; preds = %if.end63.while.body_crit_edge, %while.body.lr.ph
  %29 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %descriptors, align 4
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tail.i, align 4
  %flags7 = getelementptr %struct.ring_desc, ptr %30, i32 %32, i32 1
  %33 = ptrtoint ptr %flags7 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %bf.load8 = load i32, ptr %flags7, align 1
  %and = and i32 %bf.load8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end11

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end11:                                         ; preds = %while.body
  %34 = ptrtoint ptr %in_flight13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_flight13, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.__list_del_entry.exit.i_crit_edge

if.end11.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end11.__list_del_entry.exit.i_crit_edge
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %35, ptr noundef %43, ptr noundef nonnull %done) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %35, ptr %0, align 4
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %done, ptr %35, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %35, ptr %43, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %48 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load17 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %bf.cast19.not = icmp sgt i8 %bf.load17, -1
  br i1 %bf.cast19.not, label %if.then20, label %list_move_tail.exit.if.end63_crit_edge

list_move_tail.exit.if.end63_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then20:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %descriptors, align 4
  %51 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tail.i, align 4
  %length = getelementptr %struct.ring_desc, ptr %50, i32 %52, i32 1
  %53 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %bf.load24 = load i32, ptr %length, align 1
  %bf.lshr25 = and i32 %bf.load24, -1048576
  %size = getelementptr i8, ptr %35, i32 8
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load26 = load i32, ptr %size, align 4
  %bf.clear27 = and i32 %bf.load26, 1048575
  %bf.set = or i32 %bf.clear27, %bf.lshr25
  store i32 %bf.set, ptr %size, align 4
  %55 = load ptr, ptr %descriptors, align 4
  %56 = load i32, ptr %tail.i, align 4
  %eof = getelementptr %struct.ring_desc, ptr %55, i32 %56, i32 1
  %57 = ptrtoint ptr %eof to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %bf.load31 = load i32, ptr %eof, align 1
  %58 = lshr i32 %bf.load31, 12
  %bf.shl37 = and i32 %58, 240
  %bf.clear38 = and i32 %bf.set, -241
  %bf.set39 = or i32 %bf.shl37, %bf.clear38
  store i32 %bf.set39, ptr %size, align 4
  %59 = load ptr, ptr %descriptors, align 4
  %60 = load i32, ptr %tail.i, align 4
  %sof = getelementptr %struct.ring_desc, ptr %59, i32 %60, i32 1
  %61 = ptrtoint ptr %sof to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %bf.load43 = load i32, ptr %sof, align 1
  %bf.lshr44 = lshr i32 %bf.load43, 12
  %bf.clear45 = and i32 %bf.lshr44, 15
  %bf.clear49 = and i32 %bf.set39, -16
  %bf.set50 = or i32 %bf.clear45, %bf.clear49
  store i32 %bf.set50, ptr %size, align 4
  %62 = load ptr, ptr %descriptors, align 4
  %63 = load i32, ptr %tail.i, align 4
  %flags54 = getelementptr %struct.ring_desc, ptr %62, i32 %63, i32 1
  %64 = ptrtoint ptr %flags54 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %bf.load55 = load i32, ptr %flags54, align 1
  %bf.clear56 = shl i32 %bf.load55, 8
  %bf.shl60 = and i32 %bf.clear56, 1048320
  %bf.clear61 = and i32 %bf.set50, -1048321
  %bf.set62 = or i32 %bf.shl60, %bf.clear61
  store i32 %bf.set62, ptr %size, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then20, %list_move_tail.exit.if.end63_crit_edge
  %65 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tail.i, align 4
  %add = add i32 %66, 1
  %67 = ptrtoint ptr %size65 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %size65, align 4
  %rem = srem i32 %add, %68
  store i32 %rem, ptr %tail.i, align 4
  %69 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %head.i, align 4
  %cmp.i = icmp eq i32 %70, %rem
  br i1 %cmp.i, label %if.end63.while.end_crit_edge, label %if.end63.while.body_crit_edge

if.end63.while.body_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end63.while.end_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end63.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call fastcc void @ring_write_descriptors(ptr noundef %add.ptr)
  br label %invoke_callback

invoke_callback:                                  ; preds = %while.end, %if.then.i118, %list_splice_tail_init.exit.invoke_callback_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #7
  %71 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %done, align 4
  %cmp.i120.not127 = icmp eq ptr %72, %done
  br i1 %cmp.i120.not127, label %invoke_callback.while.end83_crit_edge, label %invoke_callback.while.body72_crit_edge

invoke_callback.while.body72_crit_edge:           ; preds = %invoke_callback
  br label %while.body72

invoke_callback.while.end83_crit_edge:            ; preds = %invoke_callback
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end83

while.body72:                                     ; preds = %if.end82.while.body72_crit_edge, %invoke_callback.while.body72_crit_edge
  %73 = phi ptr [ %85, %if.end82.while.body72_crit_edge ], [ %72, %invoke_callback.while.body72_crit_edge ]
  %call.i.i121 = call zeroext i1 @__list_del_entry_valid(ptr noundef %73) #7
  br i1 %call.i.i121, label %if.end.i.i124, label %while.body72.list_del_init.exit_crit_edge

while.body72.list_del_init.exit_crit_edge:        ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i124:                                    ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i122 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i122 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i122, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %73, align 4
  %prev1.i.i.i123 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i123, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i124, %while.body72.list_del_init.exit_crit_edge
  %80 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %73, ptr %73, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %73, ptr %prev.i3.i, align 4
  %callback = getelementptr i8, ptr %73, i32 -4
  %82 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %callback, align 4
  %tobool78.not = icmp eq ptr %83, null
  br i1 %tobool78.not, label %list_del_init.exit.if.end82_crit_edge, label %if.then79

list_del_init.exit.if.end82_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then79:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr76 = getelementptr i8, ptr %73, i32 -8
  call void %83(ptr noundef %add.ptr, ptr noundef %add.ptr76, i1 noundef zeroext %bf.cast.not) #7
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %list_del_init.exit.if.end82_crit_edge
  %84 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %done, align 4
  %cmp.i120.not = icmp eq ptr %85, %done
  br i1 %cmp.i120.not, label %if.end82.while.end83_crit_edge, label %if.end82.while.body72_crit_edge

if.end82.while.body72_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body72

if.end82.while.end83_crit_edge:                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end83

while.end83:                                      ; preds = %if.end82.while.end83_crit_edge, %invoke_callback.while.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %done) #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ring_msix(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nhi = getelementptr inbounds %struct.tb_ring, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #7
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %quirks.i = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.ring_clear_msix.exit_crit_edge

entry.ring_clear_msix.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ring_clear_msix.exit

if.end.i:                                         ; preds = %entry
  %is_tx.i = getelementptr inbounds %struct.tb_ring, ptr %data, i32 0, i32 11
  %6 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  %iobase4.i = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %iobase4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 227328
  br i1 %bf.cast.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  br label %ring_clear_msix.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %hop_count.i = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %hop_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hop_count.i, align 4
  %12 = lshr i32 %11, 3
  %mul.i = and i32 %12, 536870908
  %add.ptr7.i = getelementptr i8, ptr %add.ptr5.i, i32 %mul.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  br label %ring_clear_msix.exit

ring_clear_msix.exit:                             ; preds = %if.else.i, %if.then1.i, %entry.ring_clear_msix.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %data) #7
  tail call fastcc void @__ring_interrupt(ptr noundef %data)
  tail call void @_raw_spin_unlock(ptr noundef %data) #7
  %14 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nhi, align 4
  tail call void @_raw_spin_unlock(ptr noundef %15) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ring_interrupt(ptr noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 11
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %running, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %entry.if.end3_crit_edge, label %if.end

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end:                                           ; preds = %entry
  %start_poll = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 18
  %2 = ptrtoint ptr %start_poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start_poll, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %hop.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 3
  %4 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hop.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not.i.i, label %if.then.i.i, label %if.then1.__ring_interrupt_mask.exit_crit_edge

if.then1.__ring_interrupt_mask.exit_crit_edge:    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ring_interrupt_mask.exit

if.then.i.i:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %nhi.i.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %6 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nhi.i.i, align 4
  %hop_count.i.i = getelementptr inbounds %struct.tb_nhi, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %hop_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hop_count.i.i, align 4
  %add.i.i = add i32 %9, %5
  br label %__ring_interrupt_mask.exit

__ring_interrupt_mask.exit:                       ; preds = %if.then.i.i, %if.then1.__ring_interrupt_mask.exit_crit_edge
  %bit.0.i.i = phi i32 [ %5, %if.then1.__ring_interrupt_mask.exit_crit_edge ], [ %add.i.i, %if.then.i.i ]
  %div.i = sdiv i32 %bit.0.i.i, 32
  %mul.i = shl nsw i32 %div.i, 2
  %add.i = add nsw i32 %mul.i, 229888
  %nhi.i = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 1
  %10 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi.i, align 4
  %iobase.i = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !172
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %rem13.i = and i32 %bit.0.i.i, 31
  %shl.i = shl nuw i32 1, %rem13.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %15, %neg.i
  %16 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nhi.i, align 4
  %iobase4.i = getelementptr inbounds %struct.tb_nhi, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %iobase4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #7, !srcloc !171
  %21 = ptrtoint ptr %start_poll to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %start_poll, align 4
  %poll_data = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 19
  %23 = ptrtoint ptr %poll_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %poll_data, align 4
  tail call void %22(ptr noundef %24) #7
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.tb_ring, ptr %ring, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %work) #7
  br label %if.end3

if.end3:                                          ; preds = %if.else, %__ring_interrupt_mask.exit, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !176
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i = call i32 @device_property_read_u8_array(ptr noundef %dev.i, ptr noundef nonnull @.str.60, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %nhi_imr_valid.exit, label %nhi_imr_valid.exit.thread

nhi_imr_valid.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %if.end

nhi_imr_valid.exit:                               ; preds = %entry
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.i.not = icmp eq i8 %2, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br i1 %tobool1.i.not, label %do.end, label %nhi_imr_valid.exit.if.end_crit_edge

nhi_imr_valid.exit.if.end_crit_edge:              ; preds = %nhi_imr_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %nhi_imr_valid.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end:                                           ; preds = %nhi_imr_valid.exit.if.end_crit_edge, %nhi_imr_valid.exit.thread
  %call1 = call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end7, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 172, i32 noundef 3520) #7
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %pdev21 = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pdev21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev21, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  %ops = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ops, align 4
  %call22 = call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %8 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call22, align 4
  %iobase = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 235072
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %12 = and i32 %11, -16580608
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %hop_count = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %hop_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %hop_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nhi_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nhi_probe, %if.then30)) #7
          to label %do.end35 [label %if.then30], !srcloc !174

if.then30:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hop_count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nhi_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev.i, ptr noundef nonnull @.str.48, i32 noundef %16) #7
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %if.end20
  %17 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hop_count, align 4
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #7
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %do.end35.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !177

do.end35.devm_kcalloc.exit_crit_edge:             ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %21 = extractvalue { i32, i1 } %19, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %21, i32 noundef 3520) #7
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %do.end35.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %do.end35.devm_kcalloc.exit_crit_edge ]
  %tx_rings = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %tx_rings to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.0.i.i, ptr %tx_rings, align 4
  %23 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hop_count, align 4
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 4) #7
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %devm_kcalloc.exit194.thread, label %devm_kcalloc.exit194, !prof !177

devm_kcalloc.exit194.thread:                      ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rx_rings215 = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %rx_rings215 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rx_rings215, align 4
  br label %cleanup

devm_kcalloc.exit194:                             ; preds = %devm_kcalloc.exit
  %28 = extractvalue { i32, i1 } %25, 0
  %call5.i.i191 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %28, i32 noundef 3520) #7
  %rx_rings = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %rx_rings to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i191, ptr %rx_rings, align 4
  %30 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_rings, align 4
  %tobool43.not = icmp eq ptr %31, null
  %tobool45.not = icmp eq ptr %call5.i.i191, null
  %or.cond = select i1 %tobool43.not, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %devm_kcalloc.exit194.cleanup_crit_edge, label %if.end47

devm_kcalloc.exit194.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit194
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %devm_kcalloc.exit194
  %32 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev21, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %35)
  %cmp.i = icmp eq i16 %35, -32634
  br i1 %cmp.i, label %if.then.i195, label %if.end47.nhi_check_quirks.exit_crit_edge

if.end47.nhi_check_quirks.exit_crit_edge:         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_check_quirks.exit

if.then.i195:                                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %quirks.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks.i, align 4
  %or.i = or i32 %37, 1
  store i32 %or.i, ptr %quirks.i, align 4
  br label %nhi_check_quirks.exit

nhi_check_quirks.exit:                            ; preds = %if.then.i195, %if.end47.nhi_check_quirks.exit_crit_edge
  %38 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev21, align 4
  %40 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hop_count, align 4
  %mul27.i.i = shl i32 %41, 1
  %add28.i.i = add i32 %mul27.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add28.i.i)
  %cmp30.not.i.i = icmp ult i32 %add28.i.i, 32
  br i1 %cmp30.not.i.i, label %nhi_check_quirks.exit.for.cond3.preheader.i.i_crit_edge, label %nhi_check_quirks.exit.for.body.i.i_crit_edge

nhi_check_quirks.exit.for.body.i.i_crit_edge:     ; preds = %nhi_check_quirks.exit
  br label %for.body.i.i

nhi_check_quirks.exit.for.cond3.preheader.i.i_crit_edge: ; preds = %nhi_check_quirks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i.i.for.cond3.preheader.i.i_crit_edge, %nhi_check_quirks.exit.for.cond3.preheader.i.i_crit_edge
  %42 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hop_count, align 4
  %mul532.i.i = mul i32 %43, 3
  %add633.i.i = add i32 %mul532.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add633.i.i)
  %cmp835.not.i.i = icmp ult i32 %add633.i.i, 32
  br i1 %cmp835.not.i.i, label %for.cond3.preheader.i.i.nhi_disable_interrupts.exit.i_crit_edge, label %for.cond3.preheader.i.i.for.body9.i.i_crit_edge

for.cond3.preheader.i.i.for.body9.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  br label %for.body9.i.i

for.cond3.preheader.i.i.nhi_disable_interrupts.exit.i_crit_edge: ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_disable_interrupts.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %nhi_check_quirks.exit.for.body.i.i_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %nhi_check_quirks.exit.for.body.i.i_crit_edge ]
  %44 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 229888
  %mul1.i.i = shl i32 %i.031.i.i, 2
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul1.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #7, !srcloc !171
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %46 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hop_count, align 4
  %mul.i.i = shl i32 %47, 1
  %add.i.i = add i32 %mul.i.i, 31
  %div25.i.i = lshr i32 %add.i.i, 5
  %cmp.i.i = icmp ult i32 %inc.i.i, %div25.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.cond3.preheader.i.i_crit_edge

for.body.i.i.for.cond3.preheader.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %for.cond3.preheader.i.i.for.body9.i.i_crit_edge
  %i.136.i.i = phi i32 [ %inc15.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ], [ 0, %for.cond3.preheader.i.i.for.body9.i.i_crit_edge ]
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iobase, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %49, i32 227328
  %mul12.i.i = shl i32 %i.136.i.i, 2
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 %mul12.i.i
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #7, !srcloc !172
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %inc15.i.i = add nuw nsw i32 %i.136.i.i, 1
  %51 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hop_count, align 4
  %mul5.i.i = mul i32 %52, 3
  %add6.i.i = add i32 %mul5.i.i, 31
  %div726.i.i = lshr i32 %add6.i.i, 5
  %cmp8.i.i = icmp ult i32 %inc15.i.i, %div726.i.i
  br i1 %cmp8.i.i, label %for.body9.i.i.for.body9.i.i_crit_edge, label %for.body9.i.i.nhi_disable_interrupts.exit.i_crit_edge

for.body9.i.i.nhi_disable_interrupts.exit.i_crit_edge: ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_disable_interrupts.exit.i

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i.i

nhi_disable_interrupts.exit.i:                    ; preds = %for.body9.i.i.nhi_disable_interrupts.exit.i_crit_edge, %for.cond3.preheader.i.i.nhi_disable_interrupts.exit.i_crit_edge
  call fastcc void @nhi_enable_int_throttling(ptr noundef %call.i) #7
  %msix_ida.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %msix_ida.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %53 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 67108869, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 6, i32 0, i32 2
  %54 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %call.i.i196 = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %39, i32 noundef 6, i32 noundef 16, i32 noundef 4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i196)
  %cmp.i197 = icmp slt i32 %call.i.i196, 0
  br i1 %cmp.i197, label %if.then.i198, label %nhi_disable_interrupts.exit.i.do.body56_crit_edge

nhi_disable_interrupts.exit.i.do.body56_crit_edge: ; preds = %nhi_disable_interrupts.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

if.then.i198:                                     ; preds = %nhi_disable_interrupts.exit.i
  %call.i44.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %39, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %cmp3.i = icmp slt i32 %call.i44.i, 0
  br i1 %cmp3.i, label %if.then.i198.do.end53_crit_edge, label %do.body.i

if.then.i198.do.end53_crit_edge:                  ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

do.body.i:                                        ; preds = %if.then.i198
  %interrupt_work.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 8
  call void @__init_work(ptr noundef %interrupt_work.i, i32 noundef 0) #7
  %55 = ptrtoint ptr %interrupt_work.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -64, ptr %interrupt_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 8, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @nhi_init_msi.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry8.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.tb_nhi, ptr %call.i, i32 0, i32 8, i32 2
  %58 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @nhi_interrupt_work, ptr %func.i, align 4
  %59 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev21, align 4
  %call11.i = call i32 @pci_irq_vector(ptr noundef %60, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.body.i.do.end53_crit_edge, label %if.end14.i

do.body.i.do.end53_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.end14.i:                                       ; preds = %do.body.i
  %dev.i199 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %call.i45.i = call i32 @devm_request_threaded_irq(ptr noundef %dev.i199, i32 noundef %call11.i, ptr noundef nonnull @nhi_msi, ptr noundef null, i32 noundef 16384, ptr noundef nonnull @.str.2, ptr noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool.not.i200 = icmp eq i32 %call.i45.i, 0
  br i1 %tobool.not.i200, label %if.end14.i.do.body56_crit_edge, label %do.end19.i

if.end14.i.do.body56_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

do.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i199, ptr noundef nonnull @.str.62) #11
  br label %do.end53

do.end53:                                         ; preds = %do.end19.i, %do.body.i.do.end53_crit_edge, %if.then.i198.do.end53_crit_edge
  %retval.0.i201.ph = phi i32 [ %call11.i, %do.body.i.do.end53_crit_edge ], [ %call.i44.i, %if.then.i198.do.end53_crit_edge ], [ %call.i45.i, %do.end19.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50) #11
  br label %cleanup

do.body56:                                        ; preds = %if.end14.i.do.body56_crit_edge, %nhi_disable_interrupts.exit.i.do.body56_crit_edge
  call void @__raw_spin_lock_init(ptr noundef %call.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @nhi_probe.__key, i16 noundef signext 3) #7
  %call.i202 = call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202)
  %cmp.i203 = icmp eq i32 %call.i202, 0
  br i1 %cmp.i203, label %do.body56.if.end73_crit_edge, label %if.then63

do.body56.if.end73_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

if.then63:                                        ; preds = %do.body56
  %call.i205 = call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp.i206 = icmp eq i32 %call.i205, 0
  br i1 %cmp.i206, label %if.then63.if.end73_crit_edge, label %do.end71

if.then63.if.end73_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

do.end71:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.54) #11
  br label %cleanup

if.end73:                                         ; preds = %if.then63.if.end73_crit_edge, %do.body56.if.end73_crit_edge
  %.sink = phi i64 [ -1, %do.body56.if.end73_crit_edge ], [ 4294967295, %if.then63.if.end73_crit_edge ]
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef %.sink) #7
  call void @pci_set_master(ptr noundef %pdev) #7
  %61 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops, align 4
  %tobool75.not = icmp eq ptr %62, null
  br i1 %tobool75.not, label %if.end73.if.end85_crit_edge, label %land.lhs.true

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

land.lhs.true:                                    ; preds = %if.end73
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %tobool77.not = icmp eq ptr %64, null
  br i1 %tobool77.not, label %land.lhs.true.if.end85_crit_edge, label %if.then78

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then78:                                        ; preds = %land.lhs.true
  %call81 = call i32 %64(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then78.if.end85_crit_edge, label %if.then78.cleanup_crit_edge

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then78.if.end85_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.end85:                                         ; preds = %if.then78.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge, %if.end73.if.end85_crit_edge
  %call1.i210 = call ptr @tb_probe(ptr noundef %call.i) #7
  %tobool87.not = icmp eq ptr %call1.i210, null
  br i1 %tobool87.not, label %do.end91, label %do.body95

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev21, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93, ptr noundef nonnull @.str.57) #11
  br label %cleanup

do.body95:                                        ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nhi_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nhi_probe, %if.then107)) #7
          to label %do.end112 [label %if.then107], !srcloc !174

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev21, align 4
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nhi_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev109, ptr noundef nonnull @.str.59) #7
  br label %do.end112

do.end112:                                        ; preds = %if.then107, %do.body95
  %call113 = call i32 @tb_domain_add(ptr noundef nonnull %call1.i210) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  call void @put_device(ptr noundef nonnull %call1.i210) #7
  call fastcc void @nhi_shutdown(ptr noundef nonnull %call.i)
  br label %cleanup

if.end116:                                        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %69 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call1.i210, ptr %driver_data.i.i, align 4
  %call118 = call i32 @device_wakeup_enable(ptr noundef %dev.i) #7
  call void @pm_runtime_allow(ptr noundef %dev.i) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev.i, i32 noundef 15000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev.i, i1 noundef zeroext true) #7
  %call.i211 = call i32 @__pm_runtime_suspend(ptr noundef %dev.i, i32 noundef 13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then115, %do.end91, %if.then78.cleanup_crit_edge, %do.end71, %do.end53, %devm_kcalloc.exit194.cleanup_crit_edge, %devm_kcalloc.exit194.thread, %if.end15.cleanup_crit_edge, %do.end13, %do.end5, %do.end
  %retval.0 = phi i32 [ %call1, %do.end5 ], [ %call8, %do.end13 ], [ %retval.0.i201.ph, %do.end53 ], [ %call.i205, %do.end71 ], [ %call113, %if.then115 ], [ 0, %if.end116 ], [ -19, %do.end91 ], [ -19, %do.end ], [ -12, %if.end15.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit194.cleanup_crit_edge ], [ %call81, %if.then78.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit194.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nhi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nhi1 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #7
  tail call void @pm_runtime_forbid(ptr noundef %dev) #7
  tail call void @tb_domain_remove(ptr noundef %1) #7
  tail call fastcc void @nhi_shutdown(ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nhi_shutdown(ptr noundef %nhi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nhi_shutdown.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nhi_shutdown, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nhi_shutdown.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.71) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hop_count = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 9
  %2 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hop_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp121.not = icmp eq i32 %3, 0
  br i1 %cmp121.not, label %do.end.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph

do.end.for.cond3.preheader.i_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i

for.body.lr.ph:                                   ; preds = %do.end
  %tx_rings = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 4
  %pdev17 = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %rx_rings = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %tx_rings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_rings, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.0122
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %for.body.if.end36_crit_edge, label %do.end16

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end16:                                         ; preds = %for.body
  %8 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call19 = tail call ptr @dev_driver_string(ptr noundef %dev18) #7
  %10 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev17, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end16.dev_name.exit_crit_edge

do.end16.dev_name.exit_crit_edge:                 ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev21, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end16.dev_name.exit_crit_edge
  %retval.0.i114 = phi ptr [ %15, %if.end.i ], [ %13, %do.end16.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1075, i32 noundef 9, ptr noundef nonnull @.str.72, ptr noundef %call19, ptr noundef %retval.0.i114, i32 noundef %i.0122) #7
  br label %if.end36

if.end36:                                         ; preds = %dev_name.exit, %for.body.if.end36_crit_edge
  %16 = ptrtoint ptr %rx_rings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_rings, align 4
  %arrayidx37 = getelementptr ptr, ptr %17, i32 %i.0122
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %19, null
  br i1 %tobool38.not, label %if.end36.for.inc_crit_edge, label %do.end52

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end52:                                         ; preds = %if.end36
  %20 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev17, align 4
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call55 = tail call ptr @dev_driver_string(ptr noundef %dev54) #7
  %22 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev17, align 4
  %init_name.i115 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44, i32 3
  %24 = ptrtoint ptr %init_name.i115 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i115, align 8
  %tobool.not.i116 = icmp eq ptr %25, null
  br i1 %tobool.not.i116, label %if.end.i117, label %do.end52.dev_name.exit119_crit_edge

do.end52.dev_name.exit119_crit_edge:              ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit119

if.end.i117:                                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %26 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev57, align 4
  br label %dev_name.exit119

dev_name.exit119:                                 ; preds = %if.end.i117, %do.end52.dev_name.exit119_crit_edge
  %retval.0.i118 = phi ptr [ %27, %if.end.i117 ], [ %25, %do.end52.dev_name.exit119_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1078, i32 noundef 9, ptr noundef nonnull @.str.73, ptr noundef %call55, ptr noundef %retval.0.i118, i32 noundef %i.0122) #7
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit119, %if.end36.for.inc_crit_edge
  %inc = add nuw i32 %i.0122, 1
  %28 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hop_count, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %phi.bo = shl i32 %29, 1
  %phi.bo126 = add i32 %phi.bo, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %phi.bo126)
  %phi.cmp = icmp ult i32 %phi.bo126, 32
  br i1 %phi.cmp, label %for.end.for.cond3.preheader.i_crit_edge, label %for.body.lr.ph.i

for.end.for.cond3.preheader.i_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.end
  %iobase.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 3
  br label %for.body.i

for.cond3.preheader.i:                            ; preds = %for.body.i.for.cond3.preheader.i_crit_edge, %for.end.for.cond3.preheader.i_crit_edge, %do.end.for.cond3.preheader.i_crit_edge
  %30 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hop_count, align 4
  %mul532.i = mul i32 %31, 3
  %add633.i = add i32 %mul532.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add633.i)
  %cmp835.not.i = icmp ult i32 %add633.i, 32
  br i1 %cmp835.not.i, label %for.cond3.preheader.i.nhi_disable_interrupts.exit_crit_edge, label %for.body9.lr.ph.i

for.cond3.preheader.i.nhi_disable_interrupts.exit_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_disable_interrupts.exit

for.body9.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %iobase10.i = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 3
  br label %for.body9.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 229888
  %mul1.i = shl i32 %i.031.i, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !171
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %34 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hop_count, align 4
  %mul.i = shl i32 %35, 1
  %add.i = add i32 %mul.i, 31
  %div25.i = lshr i32 %add.i, 5
  %cmp.i = icmp ult i32 %inc.i, %div25.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond3.preheader.i_crit_edge

for.body.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %for.body9.lr.ph.i
  %i.136.i = phi i32 [ 0, %for.body9.lr.ph.i ], [ %inc15.i, %for.body9.i.for.body9.i_crit_edge ]
  %36 = ptrtoint ptr %iobase10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %37, i32 227328
  %mul12.i = shl i32 %i.136.i, 2
  %add.ptr13.i = getelementptr i8, ptr %add.ptr11.i, i32 %mul12.i
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %inc15.i = add nuw nsw i32 %i.136.i, 1
  %39 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hop_count, align 4
  %mul5.i = mul i32 %40, 3
  %add6.i = add i32 %mul5.i, 31
  %div726.i = lshr i32 %add6.i, 5
  %cmp8.i = icmp ult i32 %inc15.i, %div726.i
  br i1 %cmp8.i, label %for.body9.i.for.body9.i_crit_edge, label %for.body9.i.nhi_disable_interrupts.exit_crit_edge

for.body9.i.nhi_disable_interrupts.exit_crit_edge: ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_disable_interrupts.exit

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

nhi_disable_interrupts.exit:                      ; preds = %for.body9.i.nhi_disable_interrupts.exit_crit_edge, %for.cond3.preheader.i.nhi_disable_interrupts.exit_crit_edge
  %pdev73 = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %41 = ptrtoint ptr %pdev73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev73, align 4
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 49
  %43 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %43, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %44 = and i40 %bf.load, 67108864
  %tobool74.not = icmp eq i40 %44, 0
  br i1 %tobool74.not, label %if.then75, label %nhi_disable_interrupts.exit.if.end80_crit_edge

nhi_disable_interrupts.exit.if.end80_crit_edge:   ; preds = %nhi_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then75:                                        ; preds = %nhi_disable_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 46
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev77, i32 noundef %46, ptr noundef %nhi) #7
  %interrupt_work = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 8
  %call79 = tail call zeroext i1 @flush_work(ptr noundef %interrupt_work) #7
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %nhi_disable_interrupts.exit.if.end80_crit_edge
  %msix_ida = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 6
  tail call void @ida_destroy(ptr noundef %msix_ida) #7
  %ops = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 2
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %tobool81.not = icmp eq ptr %48, null
  br i1 %tobool81.not, label %if.end80.if.end87_crit_edge, label %land.lhs.true

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end80
  %shutdown = getelementptr inbounds %struct.tb_nhi_ops, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shutdown, align 4
  %tobool83.not = icmp eq ptr %50, null
  br i1 %tobool83.not, label %land.lhs.true.if.end87_crit_edge, label %if.then84

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then84:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %50(ptr noundef %nhi) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %land.lhs.true.if.end87_crit_edge, %if.end80.if.end87_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nhi_enable_int_throttling(ptr nocapture noundef readonly %nhi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 3
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 232448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -201261056) #7, !srcloc !171
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase, align 4
  %add.ptr.1 = getelementptr i8, ptr %3, i32 232452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1, i32 -201261056) #7, !srcloc !171
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  %add.ptr.2 = getelementptr i8, ptr %5, i32 232456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2, i32 -201261056) #7, !srcloc !171
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase, align 4
  %add.ptr.3 = getelementptr i8, ptr %7, i32 232460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3, i32 -201261056) #7, !srcloc !171
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %add.ptr.4 = getelementptr i8, ptr %9, i32 232464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4, i32 -201261056) #7, !srcloc !171
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase, align 4
  %add.ptr.5 = getelementptr i8, ptr %11, i32 232468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5, i32 -201261056) #7, !srcloc !171
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase, align 4
  %add.ptr.6 = getelementptr i8, ptr %13, i32 232472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6, i32 -201261056) #7, !srcloc !171
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 4
  %add.ptr.7 = getelementptr i8, ptr %15, i32 232476
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7, i32 -201261056) #7, !srcloc !171
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase, align 4
  %add.ptr.8 = getelementptr i8, ptr %17, i32 232480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.8, i32 -201261056) #7, !srcloc !171
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase, align 4
  %add.ptr.9 = getelementptr i8, ptr %19, i32 232484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.9, i32 -201261056) #7, !srcloc !171
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase, align 4
  %add.ptr.10 = getelementptr i8, ptr %21, i32 232488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.10, i32 -201261056) #7, !srcloc !171
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase, align 4
  %add.ptr.11 = getelementptr i8, ptr %23, i32 232492
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.11, i32 -201261056) #7, !srcloc !171
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase, align 4
  %add.ptr.12 = getelementptr i8, ptr %25, i32 232496
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.12, i32 -201261056) #7, !srcloc !171
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase, align 4
  %add.ptr.13 = getelementptr i8, ptr %27, i32 232500
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.13, i32 -201261056) #7, !srcloc !171
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iobase, align 4
  %add.ptr.14 = getelementptr i8, ptr %29, i32 232504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.14, i32 -201261056) #7, !srcloc !171
  %30 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iobase, align 4
  %add.ptr.15 = getelementptr i8, ptr %31, i32 232508
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.15, i32 -201261056) #7, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nhi_interrupt_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -120
  tail call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #7
  %hop_count = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hop_count, align 4
  %mul56 = mul i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul56)
  %cmp57.not = icmp eq i32 %mul56, 0
  br i1 %cmp57.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr i8, ptr %work, i32 -68
  %tx_rings = getelementptr i8, ptr %work, i32 -64
  %pdev = getelementptr i8, ptr %work, i32 -76
  %rx_rings = getelementptr i8, ptr %work, i32 -60
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %type.062 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select55, %for.inc.for.body_crit_edge ]
  %hop.061 = phi i32 [ -1, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %bit.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc31, %for.inc.for.body_crit_edge ]
  %value.058 = phi i32 [ 0, %for.body.lr.ph ], [ %value.1, %for.inc.for.body_crit_edge ]
  %bit.059.frozen = freeze i32 %bit.059
  %div = sdiv i32 %bit.059.frozen, 32
  %2 = mul i32 %div, 32
  %rem.decomposed = sub i32 %bit.059.frozen, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp1 = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp1, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 227328
  %mul3 = shl nsw i32 %div, 2
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 %mul3
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !172
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %value.1 = phi i32 [ %6, %if.then ], [ %value.058, %for.body.if.end_crit_edge ]
  %inc = add i32 %hop.061, 1
  %7 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hop_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %8)
  %cmp6 = icmp eq i32 %inc, %8
  %spec.select = select i1 %cmp6, i32 0, i32 %inc
  %inc8 = zext i1 %cmp6 to i32
  %spec.select55 = add i32 %type.062, %inc8
  %shl = shl nuw i32 1, %rem.decomposed
  %and = and i32 %value.1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.end.for.inc_crit_edge, label %if.end13

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end13:                                         ; preds = %if.end
  %9 = zext i32 %spec.select55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select55, label %if.else [
    i32 2, label %do.end
    i32 0, label %if.end13.if.end20_crit_edge
  ]

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %spec.select) #11
  br label %for.inc

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.end13.if.end20_crit_edge
  %.pn.in = phi ptr [ %rx_rings, %if.else ], [ %tx_rings, %if.end13.if.end20_crit_edge ]
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in, align 4
  %ring.0.in = getelementptr ptr, ptr %.pn, i32 %spec.select
  %13 = ptrtoint ptr %ring.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %ring.0 = load ptr, ptr %ring.0.in, align 4
  %cmp21 = icmp eq ptr %ring.0, null
  br i1 %cmp21, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select55)
  %tobool.not = icmp eq i32 %spec.select55, 0
  %cond = select i1 %tobool.not, ptr @.str.17, ptr @.str.18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev27, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond, i32 noundef %spec.select) #11
  br label %for.inc

if.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef nonnull %ring.0) #7
  tail call fastcc void @__ring_interrupt(ptr noundef nonnull %ring.0)
  tail call void @_raw_spin_unlock(ptr noundef nonnull %ring.0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %do.end25, %do.end, %if.end.for.inc_crit_edge
  %inc31 = add nuw i32 %bit.059, 1
  %16 = ptrtoint ptr %hop_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hop_count, align 4
  %mul = mul i32 %17, 3
  %cmp = icmp ult i32 %inc31, %mul
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_msi(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_work = getelementptr inbounds %struct.tb_nhi, ptr %data, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %interrupt_work) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nhi_complete(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then, label %pm_runtime_suspended.exit.if.else_crit_edge

pm_runtime_suspended.exit.if.else_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 0) #7
  br label %if.end

if.else:                                          ; preds = %pm_runtime_suspended.exit.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @tb_domain_complete(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @tb_domain_suspend(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_suspend_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.device_may_wakeup.exit_crit_edge, label %land.rhs.i

entry.device_may_wakeup.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_may_wakeup.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %2, null
  br label %device_may_wakeup.exit

device_may_wakeup.exit:                           ; preds = %land.rhs.i, %entry.device_may_wakeup.exit_crit_edge
  %3 = phi i1 [ false, %entry.device_may_wakeup.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %nhi1.i = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nhi1.i, align 4
  %call2.i = tail call i32 @tb_domain_suspend_noirq(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i3 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i3, label %if.end.i, label %device_may_wakeup.exit.__nhi_suspend_noirq.exit_crit_edge

device_may_wakeup.exit.__nhi_suspend_noirq.exit_crit_edge: ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__nhi_suspend_noirq.exit

if.end.i:                                         ; preds = %device_may_wakeup.exit
  %ops.i = getelementptr inbounds %struct.tb_nhi, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %suspend_noirq.i = getelementptr inbounds %struct.tb_nhi_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %suspend_noirq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend_noirq.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nhi1.i, align 4
  %call11.i = tail call i32 %11(ptr noundef %13, i1 noundef zeroext %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then6.i.if.end15.i_crit_edge, label %if.then6.i.__nhi_suspend_noirq.exit_crit_edge

if.then6.i.__nhi_suspend_noirq.exit_crit_edge:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__nhi_suspend_noirq.exit

if.then6.i.if.end15.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then6.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  br label %__nhi_suspend_noirq.exit

__nhi_suspend_noirq.exit:                         ; preds = %if.end15.i, %if.then6.i.__nhi_suspend_noirq.exit_crit_edge, %device_may_wakeup.exit.__nhi_suspend_noirq.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end15.i ], [ %call2.i, %device_may_wakeup.exit.__nhi_suspend_noirq.exit_crit_edge ], [ %call11.i, %if.then6.i.__nhi_suspend_noirq.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_resume_noirq(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nhi1 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi1, align 4
  %call2 = tail call zeroext i1 @pci_device_is_present(ptr noundef %add.ptr) #7
  br i1 %call2, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %going_away = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %going_away to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %going_away, align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else.if.end11_crit_edge, label %land.lhs.true

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.else
  %resume_noirq = getelementptr inbounds %struct.tb_nhi_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %resume_noirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resume_noirq, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end11_crit_edge, label %if.then5

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then5:                                         ; preds = %land.lhs.true
  %call8 = tail call i32 %8(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.else.if.end11_crit_edge
  %9 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nhi1, align 4
  tail call fastcc void @nhi_enable_int_throttling(ptr noundef %10)
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then
  %call14 = tail call i32 @tb_domain_resume_noirq(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ %call8, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_freeze_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @tb_domain_freeze_noirq(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_thaw_noirq(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @tb_domain_thaw_noirq(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_poweroff_noirq(ptr noundef %dev) #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %device_may_wakeup.exit

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.land.end_crit_edge, label %land.rhs

device_may_wakeup.exit.land.end_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %device_may_wakeup.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !176
  %call.i.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i5 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i5, label %land.rhs.nhi_wake_supported.exit_crit_edge, label %if.then.i

land.rhs.nhi_wake_supported.exit_crit_edge:       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %nhi_wake_supported.exit

if.then.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.i = icmp ne i8 %5, 0
  br label %nhi_wake_supported.exit

nhi_wake_supported.exit:                          ; preds = %if.then.i, %land.rhs.nhi_wake_supported.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool1.i, %if.then.i ], [ true, %land.rhs.nhi_wake_supported.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %land.end

land.end:                                         ; preds = %nhi_wake_supported.exit, %device_may_wakeup.exit.land.end_crit_edge, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %device_may_wakeup.exit.land.end_crit_edge ], [ %retval.0.i, %nhi_wake_supported.exit ], [ false, %entry.land.end_crit_edge ]
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %nhi1.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nhi1.i, align 4
  %call2.i = call i32 @tb_domain_suspend_noirq(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i6 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i6, label %if.end.i, label %land.end.__nhi_suspend_noirq.exit_crit_edge

land.end.__nhi_suspend_noirq.exit_crit_edge:      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__nhi_suspend_noirq.exit

if.end.i:                                         ; preds = %land.end
  %ops.i = getelementptr inbounds %struct.tb_nhi, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %suspend_noirq.i = getelementptr inbounds %struct.tb_nhi_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %suspend_noirq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %suspend_noirq.i, align 4
  %tobool5.not.i = icmp eq ptr %14, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %nhi1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nhi1.i, align 4
  %call11.i = call i32 %14(ptr noundef %16, i1 noundef zeroext %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then6.i.if.end15.i_crit_edge, label %if.then6.i.__nhi_suspend_noirq.exit_crit_edge

if.then6.i.__nhi_suspend_noirq.exit_crit_edge:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__nhi_suspend_noirq.exit

if.then6.i.if.end15.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then6.i.if.end15.i_crit_edge, %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  br label %__nhi_suspend_noirq.exit

__nhi_suspend_noirq.exit:                         ; preds = %if.end15.i, %if.then6.i.__nhi_suspend_noirq.exit_crit_edge, %land.end.__nhi_suspend_noirq.exit_crit_edge
  %retval.0.i7 = phi i32 [ 0, %if.end15.i ], [ %call2.i, %land.end.__nhi_suspend_noirq.exit_crit_edge ], [ %call11.i, %if.then6.i.__nhi_suspend_noirq.exit_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nhi1 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi1, align 4
  %call2 = tail call i32 @tb_domain_runtime_suspend(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %runtime_suspend = getelementptr inbounds %struct.tb_nhi_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime_suspend, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.if.end14_crit_edge, label %if.then6

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then6:                                         ; preds = %land.lhs.true
  %8 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nhi1, align 4
  %call10 = tail call i32 %7(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then6.if.end14_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %if.then6.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call2, %entry.cleanup_crit_edge ], [ %call10, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nhi_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nhi1 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nhi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi1, align 4
  %ops = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %land.lhs.true

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  %runtime_resume = getelementptr inbounds %struct.tb_nhi_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime_resume, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %call6 = tail call i32 %7(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  tail call fastcc void @nhi_enable_int_throttling(ptr noundef %3)
  %call10 = tail call i32 @tb_domain_runtime_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call6, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_domain_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_suspend_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_device_is_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_resume_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_freeze_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_thaw_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_runtime_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_domain_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__ksymtab___tb_ring_enqueue, !1, !"__ksymtab___tb_ring_enqueue", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/nhi.c", i32 293, i32 1}
!2 = !{ptr @__ksymtab_tb_ring_poll, !3, !"__ksymtab_tb_ring_poll", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/nhi.c", i32 334, i32 1}
!4 = !{ptr @__ksymtab_tb_ring_poll_complete, !5, !"__ksymtab_tb_ring_poll_complete", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/nhi.c", i32 383, i32 1}
!6 = !{ptr @__ksymtab_tb_ring_alloc_tx, !7, !"__ksymtab_tb_ring_alloc_tx", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/nhi.c", i32 584, i32 1}
!8 = !{ptr @__ksymtab_tb_ring_alloc_rx, !9, !"__ksymtab_tb_ring_alloc_rx", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/nhi.c", i32 608, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thunderbolt/nhi.c", i32 626, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/nhi.c", i32 629, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tb_ring_start.__UNIQUE_ID_ddebug239, !14, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thunderbolt/nhi.c", i32 666, i32 4}
!22 = !{ptr @tb_ring_start.__UNIQUE_ID_ddebug240, !21, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thunderbolt/nhi.c", i32 670, i32 4}
!25 = !{ptr @tb_ring_start.__UNIQUE_ID_ddebug241, !24, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!26 = !{ptr @__ksymtab_tb_ring_start, !27, !"__ksymtab_tb_ring_start", i1 false, i1 false}
!27 = !{!"../drivers/thunderbolt/nhi.c", i32 684, i32 1}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thunderbolt/nhi.c", i32 704, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tb_ring_stop.__UNIQUE_ID_ddebug242, !29, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thunderbolt/nhi.c", i32 709, i32 3}
!34 = !{ptr @__ksymtab_tb_ring_stop, !35, !"__ksymtab_tb_ring_stop", i1 false, i1 false}
!35 = !{!"../drivers/thunderbolt/nhi.c", i32 733, i32 1}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thunderbolt/nhi.c", i32 758, i32 3}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/thunderbolt/nhi.c", i32 773, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tb_ring_free.__UNIQUE_ID_ddebug243, !39, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!42 = !{ptr @__ksymtab_tb_ring_free, !43, !"__ksymtab_tb_ring_free", i1 false, i1 false}
!43 = !{!"../drivers/thunderbolt/nhi.c", i32 784, i32 1}
!44 = !{ptr @__UNIQUE_ID_file247, !45, !"__UNIQUE_ID_file247", i1 false, i1 false}
!45 = !{!"../drivers/thunderbolt/nhi.c", i32 1378, i32 1}
!46 = !{ptr @__UNIQUE_ID_license248, !45, !"__UNIQUE_ID_license248", i1 false, i1 false}
!47 = !{ptr @__initcall__kmod_thunderbolt__249_1408_nhi_initrootfs, !48, !"__initcall__kmod_thunderbolt__249_1408_nhi_initrootfs", i1 false, i1 false}
!48 = !{!"../drivers/thunderbolt/nhi.c", i32 1408, i32 1}
!49 = !{ptr @__exitcall_nhi_unload, !50, !"__exitcall_nhi_unload", i1 false, i1 false}
!50 = !{!"../drivers/thunderbolt/nhi.c", i32 1409, i32 1}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/thunderbolt/nhi.c", i32 520, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tb_ring_alloc.__UNIQUE_ID_ddebug238, !52, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!55 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tb_ring_alloc.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/thunderbolt/nhi.c", i32 527, i32 2}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @tb_ring_alloc.__key.20, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/thunderbolt/nhi.c", i32 530, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thunderbolt/nhi.c", i32 485, i32 3}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nhi_alloc_hop._entry, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @nhi_alloc_hop._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/thunderbolt/nhi.c", i32 490, i32 3}
!72 = !{ptr @nhi_alloc_hop._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nhi_alloc_hop._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/thunderbolt/nhi.c", i32 495, i32 3}
!76 = !{ptr @nhi_alloc_hop._entry.29, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nhi_alloc_hop._entry_ptr.31, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/thunderbolt/nhi.c", i32 100, i32 2}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ring_interrupt_active.__UNIQUE_ID_ddebug237, !79, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!82 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/thunderbolt/nhi.c", i32 105, i32 3}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @nhi_driver, !89, !"nhi_driver", i1 false, i1 false}
!89 = !{!"../drivers/thunderbolt/nhi.c", i32 1380, i32 26}
!90 = !{ptr @nhi_ids, !91, !"nhi_ids", i1 false, i1 false}
!91 = !{!"../drivers/thunderbolt/nhi.c", i32 1313, i32 29}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/thunderbolt/nhi.c", i32 1187, i32 3}
!94 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @nhi_probe._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @nhi_probe._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/thunderbolt/nhi.c", i32 1193, i32 3}
!99 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @nhi_probe._entry.41, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @nhi_probe._entry_ptr.44, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/thunderbolt/nhi.c", i32 1199, i32 3}
!104 = !{ptr @nhi_probe._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @nhi_probe._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/thunderbolt/nhi.c", i32 1212, i32 2}
!108 = !{ptr @nhi_probe.__UNIQUE_ID_ddebug245, !107, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/thunderbolt/nhi.c", i32 1225, i32 3}
!111 = !{ptr @nhi_probe._entry.49, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @nhi_probe._entry_ptr.51, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @nhi_probe.__key, !114, !"__key", i1 false, i1 false}
!114 = !{!"../drivers/thunderbolt/nhi.c", i32 1229, i32 2}
!115 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/thunderbolt/nhi.c", i32 1235, i32 3}
!118 = !{ptr @nhi_probe._entry.53, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @nhi_probe._entry_ptr.55, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/thunderbolt/nhi.c", i32 1249, i32 3}
!122 = !{ptr @nhi_probe._entry.56, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @nhi_probe._entry_ptr.58, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/thunderbolt/nhi.c", i32 1254, i32 2}
!126 = !{ptr @nhi_probe.__UNIQUE_ID_ddebug246, !125, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/thunderbolt/nhi.c", i32 1151, i32 43}
!129 = !{ptr @nhi_init_msi.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/thunderbolt/nhi.c", i32 1130, i32 3}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/thunderbolt/nhi.c", i32 1139, i32 4}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @nhi_init_msi._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @nhi_init_msi._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @xa_init_flags.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!139 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/thunderbolt/nhi.c", i32 869, i32 4}
!142 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @nhi_interrupt_work._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @nhi_interrupt_work._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/thunderbolt/nhi.c", i32 879, i32 4}
!147 = !{ptr @nhi_interrupt_work._entry.67, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @nhi_interrupt_work._entry_ptr.69, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/thunderbolt/nhi.c", i32 1070, i32 2}
!151 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @nhi_shutdown.__UNIQUE_ID_ddebug244, !150, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/thunderbolt/nhi.c", i32 1074, i32 4}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/thunderbolt/nhi.c", i32 1077, i32 4}
!157 = !{ptr @nhi_pm_ops, !158, !"nhi_pm_ops", i1 false, i1 false}
!158 = !{!"../drivers/thunderbolt/nhi.c", i32 1296, i32 32}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/thunderbolt/nhi.c", i32 949, i32 42}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2152975784}
!171 = !{i64 5433662}
!172 = !{i64 5434080}
!173 = !{i64 2152974429}
!174 = !{i64 2148331181, i64 2148331186, i64 2148331199, i64 2148331243, i64 2148331277, i64 2148331298}
!175 = !{i8 0, i8 2}
!176 = !{!"auto-init"}
!177 = !{!"branch_weights", i32 1, i32 2000}
