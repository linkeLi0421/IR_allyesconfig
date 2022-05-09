; ModuleID = '/llk/IR_all_yes/drivers/dma/virt-dma.c_pt.bc'
source_filename = "../drivers/dma/virt-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vchan_tx_submit\22, \22a\22\09"
module asm "\09.weak\09__crc_vchan_tx_submit\09\09\09\09"
module asm "\09.long\09__crc_vchan_tx_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_tx_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_tx_submit\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_tx_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vchan_tx_desc_free\22, \22a\22\09"
module asm "\09.weak\09__crc_vchan_tx_desc_free\09\09\09\09"
module asm "\09.long\09__crc_vchan_tx_desc_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_tx_desc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_tx_desc_free\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_tx_desc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vchan_find_desc\22, \22a\22\09"
module asm "\09.weak\09__crc_vchan_find_desc\09\09\09\09"
module asm "\09.long\09__crc_vchan_find_desc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_find_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_find_desc\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_find_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vchan_dma_desc_free_list\22, \22a\22\09"
module asm "\09.weak\09__crc_vchan_dma_desc_free_list\09\09\09\09"
module asm "\09.long\09__crc_vchan_dma_desc_free_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_dma_desc_free_list:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_dma_desc_free_list\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_dma_desc_free_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vchan_init\22, \22a\22\09"
module asm "\09.weak\09__crc_vchan_init\09\09\09\09"
module asm "\09.long\09__crc_vchan_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vchan_init:\09\09\09\09\09"
module asm "\09.asciz \09\22vchan_init\22\09\09\09\09\09"
module asm "__kstrtabns_vchan_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@vchan_tx_submit.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"virt_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vchan_tx_submit\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vchan %p: txd %p[%x]: submitted\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_vchan_tx_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_tx_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_tx_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_tx_submit to i32), ptr @__kstrtab_vchan_tx_submit, ptr @__kstrtabns_vchan_tx_submit }, section "___ksymtab_gpl+vchan_tx_submit", align 4
@vchan_tx_desc_free.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vchan_tx_desc_free\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vchan %p: txd %p[%x]: freeing\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_vchan_tx_desc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_tx_desc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_tx_desc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_tx_desc_free to i32), ptr @__kstrtab_vchan_tx_desc_free, ptr @__kstrtabns_vchan_tx_desc_free }, section "___ksymtab_gpl+vchan_tx_desc_free", align 4
@__kstrtab_vchan_find_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_find_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_find_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_find_desc to i32), ptr @__kstrtab_vchan_find_desc, ptr @__kstrtabns_vchan_find_desc }, section "___ksymtab_gpl+vchan_find_desc", align 4
@__kstrtab_vchan_dma_desc_free_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_dma_desc_free_list = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_dma_desc_free_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_dma_desc_free_list to i32), ptr @__kstrtab_vchan_dma_desc_free_list, ptr @__kstrtabns_vchan_dma_desc_free_list }, section "___ksymtab_gpl+vchan_dma_desc_free_list", align 4
@vchan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&vc->lock\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_vchan_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_vchan_init = external dso_local constant [0 x i8], align 1
@__ksymtab_vchan_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vchan_init to i32), ptr @__kstrtab_vchan_init, ptr @__kstrtabns_vchan_init }, section "___ksymtab_gpl+vchan_init", align 4
@__UNIQUE_ID_author238 = internal constant [29 x i8] c"virt_dma.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [35 x i8] c"virt_dma.file=drivers/dma/virt-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"virt_dma.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 32, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 59, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [26 x i8] c"../drivers/dma/virt-dma.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 127, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__ksymtab_vchan_dma_desc_free_list, ptr @__ksymtab_vchan_find_desc, ptr @__ksymtab_vchan_init, ptr @__ksymtab_vchan_tx_desc_free, ptr @__ksymtab_vchan_tx_submit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vchan_init.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vchan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vchan_tx_submit(ptr noundef %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #5
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %16, ptr noundef %desc_submitted) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node, ptr %prev.i2.i, align 4
  %18 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %desc_submitted, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node, ptr %16, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_tx_submit.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vchan_tx_submit, %do.end17)) #5
          to label %if.then [label %do.end17], !srcloc !37

if.then:                                          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_tx_submit.__UNIQUE_ID_ddebug236, ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef %tx, i32 noundef %6) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then, %list_move_tail.exit
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vchan_tx_desc_free(ptr noundef %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
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

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %tx, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_tx_desc_free.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vchan_tx_desc_free, %do.end17)) #5
          to label %if.then [label %do.end17], !srcloc !37

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_tx_desc_free.__UNIQUE_ID_ddebug237, ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %tx, i32 noundef %15) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then, %list_del.exit
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %desc_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_free, align 4
  tail call void %17(ptr noundef %tx) #5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vchan_find_desc(ptr noundef readonly %vc, i32 noundef %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %desc_issued, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %desc_issued
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %vd.0 = getelementptr i8, ptr %.pn, i32 -108
  %1 = ptrtoint ptr %vd.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vd.0, align 4
  %cmp3 = icmp eq i32 %2, %cookie
  br i1 %cmp3, label %cleanup.split.loop.exit16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

cleanup.split.loop.exit16:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %vd.0.le = getelementptr i8, ptr %.pn, i32 -108
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit16, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %vd.0.le, %cleanup.split.loop.exit16 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vchan_dma_desc_free_list(ptr nocapture readnone %vc, ptr noundef readonly %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not19 = icmp eq ptr %1, %head
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %vchan_vdesc_fini.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %vchan_vdesc_fini.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %vd.0 = getelementptr i8, ptr %.pn.in20, i32 -108
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan.i = getelementptr i8, ptr %.pn.in20, i32 -96
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i, align 4
  %flags.i.i = getelementptr i8, ptr %.pn.in20, i32 -104
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del.exit
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 3
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_allocated.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in20, ptr noundef %desc_allocated.i, ptr noundef %16) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add.exit.i_crit_edge

if.then.i.list_add.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.pn.in20, ptr %prev1.i.i.i18, align 4
  %18 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %.pn.in20, align 4
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %desc_allocated.i, ptr %prev.i, align 4
  %20 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn.in20, ptr %desc_allocated.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  br label %vchan_vdesc_fini.exit

if.else.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_free.i, align 4
  tail call void %22(ptr noundef %vd.0) #5
  br label %vchan_vdesc_fini.exit

vchan_vdesc_fini.exit:                            ; preds = %if.else.i, %list_add.exit.i
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %vchan_vdesc_fini.exit.for.end_crit_edge, label %vchan_vdesc_fini.exit.for.body_crit_edge

vchan_vdesc_fini.exit.for.body_crit_edge:         ; preds = %vchan_vdesc_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

vchan_vdesc_fini.exit.for.end_crit_edge:          ; preds = %vchan_vdesc_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %vchan_vdesc_fini.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vchan_init(ptr noundef %vc, ptr noundef %dmadev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %vc, i32 0, i32 2
  %0 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %completed_cookie.i, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @vchan_init.__key, i16 noundef signext 3) #5
  %desc_allocated = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 4
  %2 = ptrtoint ptr %desc_allocated to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %desc_allocated, ptr %desc_allocated, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %desc_allocated, ptr %prev.i, align 4
  %desc_submitted = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 5
  %4 = ptrtoint ptr %desc_submitted to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %desc_submitted, ptr %desc_submitted, align 4
  %prev.i13 = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %desc_submitted, ptr %prev.i13, align 4
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 6
  %6 = ptrtoint ptr %desc_issued to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %desc_issued, ptr %desc_issued, align 4
  %prev.i14 = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %desc_issued, ptr %prev.i14, align 4
  %desc_completed = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 7
  %8 = ptrtoint ptr %desc_completed to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %desc_completed, ptr %desc_completed, align 4
  %prev.i15 = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %desc_completed, ptr %prev.i15, align 4
  %desc_terminated = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 8
  %10 = ptrtoint ptr %desc_terminated to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %desc_terminated, ptr %desc_terminated, align 4
  %prev.i16 = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %desc_terminated, ptr %prev.i16, align 4
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %vc, i32 0, i32 1
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @vchan_complete) #5
  %12 = ptrtoint ptr %vc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dmadev, ptr %vc, align 4
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %vc, i32 0, i32 8
  %channels = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 3
  %prev.i17 = getelementptr inbounds %struct.dma_device, ptr %dmadev, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i17, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %14, ptr noundef %channels) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %device_node, ptr %prev.i17, align 4
  %16 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dma_chan, ptr %vc, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %device_node, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vchan_complete(ptr noundef %t) #0 align 64 {
entry:
  %dummy_result.i43 = alloca %struct.dmaengine_result, align 8
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr i8, ptr %t, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %desc_completed = getelementptr i8, ptr %t, i32 96
  %3 = ptrtoint ptr %desc_completed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_completed, align 4
  %cmp.i.not.i = icmp eq ptr %4, %desc_completed
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i = getelementptr i8, ptr %t, i32 100
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_completed to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_completed, ptr %desc_completed, align 4
  store ptr %desc_completed, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %cyclic = getelementptr i8, ptr %t, i32 112
  %13 = ptrtoint ptr %cyclic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cyclic, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.else.i.thread, label %if.end

if.else.i.thread:                                 ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #5
  br label %dmaengine_desc_callback_invoke.exit

if.end:                                           ; preds = %list_splice_tail_init.exit
  %15 = ptrtoint ptr %cyclic to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cyclic, align 4
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %14, i32 0, i32 6
  %16 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %14, i32 0, i32 7
  %18 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %14, i32 0, i32 8
  %20 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %callback_param.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #5
  %22 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i36

if.then.i36:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %tx_result = getelementptr inbounds %struct.virt_dma_desc, ptr %14, i32 0, i32 1
  %tobool1.not.i = icmp eq ptr %tx_result, null
  %spec.store.select.i = select i1 %tobool1.not.i, ptr %dummy_result.i, ptr %tx_result
  call void %19(ptr noundef %21, ptr noundef %spec.store.select.i) #5
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %if.end
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  call void %17(ptr noundef %21) #5
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i36, %if.else.i.thread
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #5
  %23 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head, align 4
  %cmp.not64 = icmp eq ptr %24, %head
  br i1 %cmp.not64, label %dmaengine_desc_callback_invoke.exit.for.end_crit_edge, label %dmaengine_desc_callback_invoke.exit.for.body_crit_edge

dmaengine_desc_callback_invoke.exit.for.body_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  br label %for.body

dmaengine_desc_callback_invoke.exit.for.end_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %vchan_vdesc_fini.exit.for.body_crit_edge, %dmaengine_desc_callback_invoke.exit.for.body_crit_edge
  %.pn.in65 = phi ptr [ %.pn, %vchan_vdesc_fini.exit.for.body_crit_edge ], [ %24, %dmaengine_desc_callback_invoke.exit.for.body_crit_edge ]
  %vd.0 = getelementptr i8, ptr %.pn.in65, i32 -108
  %25 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn.in65, align 4
  %callback.i37 = getelementptr i8, ptr %.pn.in65, i32 -84
  %26 = ptrtoint ptr %callback.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %callback.i37, align 4
  %callback_result.i38 = getelementptr i8, ptr %.pn.in65, i32 -80
  %28 = ptrtoint ptr %callback_result.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %callback_result.i38, align 4
  %callback_param.i40 = getelementptr i8, ptr %.pn.in65, i32 -76
  %30 = ptrtoint ptr %callback_param.i40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %callback_param.i40, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in65) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in65, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in65, align 4
  %prev.i42 = getelementptr %struct.list_head, ptr %.pn.in65, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i42, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i43) #5
  %40 = ptrtoint ptr %dummy_result.i43 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %dummy_result.i43, align 8
  %tobool.not.i45 = icmp eq ptr %29, null
  br i1 %tobool.not.i45, label %if.else.i51, label %if.then.i49

if.then.i49:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %tx_result14 = getelementptr i8, ptr %.pn.in65, i32 -8
  %tobool1.not.i46 = icmp eq ptr %tx_result14, null
  %spec.store.select.i47 = select i1 %tobool1.not.i46, ptr %dummy_result.i43, ptr %tx_result14
  call void %29(ptr noundef %31, ptr noundef %spec.store.select.i47) #5
  br label %dmaengine_desc_callback_invoke.exit54

if.else.i51:                                      ; preds = %list_del.exit
  %tobool4.not.i50 = icmp eq ptr %27, null
  br i1 %tobool4.not.i50, label %if.else.i51.dmaengine_desc_callback_invoke.exit54_crit_edge, label %if.then5.i53

if.else.i51.dmaengine_desc_callback_invoke.exit54_crit_edge: ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %dmaengine_desc_callback_invoke.exit54

if.then5.i53:                                     ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #7
  call void %27(ptr noundef %31) #5
  br label %dmaengine_desc_callback_invoke.exit54

dmaengine_desc_callback_invoke.exit54:            ; preds = %if.then5.i53, %if.else.i51.dmaengine_desc_callback_invoke.exit54_crit_edge, %if.then.i49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i43) #5
  %chan.i = getelementptr i8, ptr %.pn.in65, i32 -96
  %41 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chan.i, align 4
  %flags.i.i = getelementptr i8, ptr %.pn.in65, i32 -104
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i55 = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i55, label %if.else.i58, label %if.then.i56

if.then.i56:                                      ; preds = %dmaengine_desc_callback_invoke.exit54
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %42, i32 0, i32 3
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc_allocated.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in65, ptr noundef %desc_allocated.i, ptr noundef %46) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i56.list_add.exit.i_crit_edge

if.then.i56.list_add.exit.i_crit_edge:            ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %.pn.in65, ptr %prev1.i.i.i57, align 4
  %48 = ptrtoint ptr %.pn.in65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %.pn.in65, align 4
  %49 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %desc_allocated.i, ptr %prev.i42, align 4
  %50 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %.pn.in65, ptr %desc_allocated.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i56.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  br label %vchan_vdesc_fini.exit

if.else.i58:                                      ; preds = %dmaengine_desc_callback_invoke.exit54
  call void @__sanitizer_cov_trace_pc() #7
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %42, i32 0, i32 2
  %51 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc_free.i, align 4
  call void %52(ptr noundef %vd.0) #5
  br label %vchan_vdesc_fini.exit

vchan_vdesc_fini.exit:                            ; preds = %if.else.i58, %list_add.exit.i
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %vchan_vdesc_fini.exit.for.end_crit_edge, label %vchan_vdesc_fini.exit.for.body_crit_edge

vchan_vdesc_fini.exit.for.body_crit_edge:         ; preds = %vchan_vdesc_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

vchan_vdesc_fini.exit.for.end_crit_edge:          ; preds = %vchan_vdesc_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %vchan_vdesc_fini.exit.for.end_crit_edge, %dmaengine_desc_callback_invoke.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma/virt-dma.c", i32 32, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vchan_tx_submit.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @__ksymtab_vchan_tx_submit, !7, !"__ksymtab_vchan_tx_submit", i1 false, i1 false}
!7 = !{!"../drivers/dma/virt-dma.c", i32 37, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/virt-dma.c", i32 59, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vchan_tx_desc_free.__UNIQUE_ID_ddebug237, !9, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!12 = !{ptr @__ksymtab_vchan_tx_desc_free, !13, !"__ksymtab_vchan_tx_desc_free", i1 false, i1 false}
!13 = !{!"../drivers/dma/virt-dma.c", i32 64, i32 1}
!14 = !{ptr @__ksymtab_vchan_find_desc, !15, !"__ksymtab_vchan_find_desc", i1 false, i1 false}
!15 = !{!"../drivers/dma/virt-dma.c", i32 77, i32 1}
!16 = !{ptr @__ksymtab_vchan_dma_desc_free_list, !17, !"__ksymtab_vchan_dma_desc_free_list", i1 false, i1 false}
!17 = !{!"../drivers/dma/virt-dma.c", i32 121, i32 1}
!18 = !{ptr @vchan_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/dma/virt-dma.c", i32 127, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_vchan_init, !22, !"__ksymtab_vchan_init", i1 false, i1 false}
!22 = !{!"../drivers/dma/virt-dma.c", i32 139, i32 1}
!23 = !{ptr @__UNIQUE_ID_author238, !24, !"__UNIQUE_ID_author238", i1 false, i1 false}
!24 = !{!"../drivers/dma/virt-dma.c", i32 141, i32 1}
!25 = !{ptr @__UNIQUE_ID_file239, !26, !"__UNIQUE_ID_file239", i1 false, i1 false}
!26 = !{!"../drivers/dma/virt-dma.c", i32 142, i32 1}
!27 = !{ptr @__UNIQUE_ID_license240, !26, !"__UNIQUE_ID_license240", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148279059, i64 2148279064, i64 2148279077, i64 2148279121, i64 2148279155, i64 2148279176}
