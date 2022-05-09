; ModuleID = '/llk/IR_all_yes/lib/list_debug.c_pt.bc'
source_filename = "../lib/list_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__list_add_valid\22, \22a\22\09"
module asm "\09.weak\09__crc___list_add_valid\09\09\09\09"
module asm "\09.long\09__crc___list_add_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___list_add_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22__list_add_valid\22\09\09\09\09\09"
module asm "__kstrtabns___list_add_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__list_del_entry_valid\22, \22a\22\09"
module asm "\09.weak\09__crc___list_del_entry_valid\09\09\09\09"
module asm "\09.long\09__crc___list_del_entry_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___list_del_entry_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22__list_del_entry_valid\22\09\09\09\09\09"
module asm "__kstrtabns___list_del_entry_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__list_add_valid._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, ptr null, ptr null }, align 1
@.str = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013list_add corruption. next->prev should be prev (%px), but was %px. (next=%px).\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__list_add_valid\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/list_debug.c\00", [47 x i8] zeroinitializer }, align 32
@__list_add_valid._entry_ptr = internal global ptr @__list_add_valid._entry, section ".printk_index", align 4
@__list_add_valid._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, align 1
@.str.4 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013list_add corruption. prev->next should be next (%px), but was %px. (prev=%px).\0A\00", [46 x i8] zeroinitializer }, align 32
@__list_add_valid._entry_ptr.5 = internal global ptr @__list_add_valid._entry.3, section ".printk_index", align 4
@__list_add_valid._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, align 1
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013list_add double add: new=%px, prev=%px, next=%px.\0A\00", [43 x i8] zeroinitializer }, align 32
@__list_add_valid._entry_ptr.8 = internal global ptr @__list_add_valid._entry.6, section ".printk_index", align 4
@__kstrtab___list_add_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns___list_add_valid = external dso_local constant [0 x i8], align 1
@__ksymtab___list_add_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__list_add_valid to i32), ptr @__kstrtab___list_add_valid, ptr @__kstrtabns___list_add_valid }, section "___ksymtab+__list_add_valid", align 4
@__list_del_entry_valid._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 47, ptr null, ptr null }, align 1
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013list_del corruption, %px->next is LIST_POISON1 (%px)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__list_del_entry_valid\00", [41 x i8] zeroinitializer }, align 32
@__list_del_entry_valid._entry_ptr = internal global ptr @__list_del_entry_valid._entry, section ".printk_index", align 4
@__list_del_entry_valid._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 50, ptr null, ptr null }, align 1
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013list_del corruption, %px->prev is LIST_POISON2 (%px)\0A\00", [40 x i8] zeroinitializer }, align 32
@__list_del_entry_valid._entry_ptr.13 = internal global ptr @__list_del_entry_valid._entry.11, section ".printk_index", align 4
@__list_del_entry_valid._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 53, ptr null, ptr null }, align 1
@.str.15 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013list_del corruption. prev->next should be %px, but was %px. (prev=%px)\0A\00", [54 x i8] zeroinitializer }, align 32
@__list_del_entry_valid._entry_ptr.16 = internal global ptr @__list_del_entry_valid._entry.14, section ".printk_index", align 4
@__list_del_entry_valid._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 56, ptr null, ptr null }, align 1
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013list_del corruption. next->prev should be %px, but was %px. (next=%px)\0A\00", [54 x i8] zeroinitializer }, align 32
@__list_del_entry_valid._entry_ptr.19 = internal global ptr @__list_del_entry_valid._entry.17, section ".printk_index", align 4
@__kstrtab___list_del_entry_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns___list_del_entry_valid = external dso_local constant [0 x i8], align 1
@__ksymtab___list_del_entry_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__list_del_entry_valid to i32), ptr @__kstrtab___list_del_entry_valid, ptr @__kstrtabns___list_del_entry_valid }, section "___ksymtab+__list_del_entry_valid", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 23, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 26, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 29, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 45, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 48, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 51, i32 6 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [20 x i8] c"../lib/list_debug.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 54, i32 6 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab___list_add_valid, ptr @__ksymtab___list_del_entry_valid, ptr @__list_add_valid._entry, ptr @__list_add_valid._entry.3, ptr @__list_add_valid._entry.6, ptr @__list_add_valid._entry_ptr, ptr @__list_add_valid._entry_ptr.5, ptr @__list_add_valid._entry_ptr.8, ptr @__list_del_entry_valid._entry, ptr @__list_del_entry_valid._entry.11, ptr @__list_del_entry_valid._entry.14, ptr @__list_del_entry_valid._entry.17, ptr @__list_del_entry_valid._entry_ptr, ptr @__list_del_entry_valid._entry_ptr.13, ptr @__list_del_entry_valid._entry_ptr.16, ptr @__list_del_entry_valid._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #0 align 64 {
entry:
  %prev1 = getelementptr inbounds %struct.list_head, ptr %next, i32 0, i32 1
  %0 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev1, align 4
  %cmp.not = icmp eq ptr %1, %prev
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %prev, ptr noundef %1, ptr noundef %next) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/list_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 25, 0\0A.popsection", ""() #4, !srcloc !43
  unreachable

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp18.not = icmp eq ptr %3, %next
  br i1 %cmp18.not, label %if.end40, label %do.end30

do.end30:                                         ; preds = %if.end
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %next, ptr noundef %3, ptr noundef %prev) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/list_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 28, 0\0A.popsection", ""() #4, !srcloc !44
  unreachable

if.end40:                                         ; preds = %if.end
  %cmp48 = icmp eq ptr %new, %prev
  %cmp49 = icmp eq ptr %new, %next
  %4 = or i1 %cmp48, %cmp49
  br i1 %4, label %do.end61, label %if.end70

do.end61:                                         ; preds = %if.end40
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/list_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 31, 0\0A.popsection", ""() #4, !srcloc !45
  unreachable

if.end70:                                         ; preds = %if.end40
  ret i1 true
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #0 align 64 {
entry:
  %prev2 = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %prev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev2, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %cmp = icmp eq ptr %3, inttoptr (i32 256 to ptr)
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %entry1, ptr noundef nonnull inttoptr (i32 256 to ptr)) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/list_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 47, 0\0A.popsection", ""() #4, !srcloc !46
  unreachable

if.end:                                           ; preds = %entry
  %cmp18 = icmp eq ptr %1, inttoptr (i32 290 to ptr)
  br i1 %cmp18, label %do.end30, label %if.end39

do.end30:                                         ; preds = %if.end
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %entry1, ptr noundef nonnull inttoptr (i32 290 to ptr)) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/list_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #4, !srcloc !47
  unreachable

if.end39:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp48.not = icmp eq ptr %5, %entry1
  br i1 %cmp48.not, label %if.end70, label %do.end60

do.end60:                                         ; preds = %if.end39
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %entry1, ptr noundef %5, ptr noundef %1) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/list_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 53, 0\0A.popsection", ""() #4, !srcloc !48
  unreachable

if.end70:                                         ; preds = %if.end39
  %prev78 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev78 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev78, align 4
  %cmp79.not = icmp eq ptr %7, %entry1
  br i1 %cmp79.not, label %if.end101, label %do.end91

do.end91:                                         ; preds = %if.end70
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %entry1, ptr noundef %7, ptr noundef %3) #3
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/list_debug.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 56, 0\0A.popsection", ""() #4, !srcloc !49
  unreachable

if.end101:                                        ; preds = %if.end70
  ret i1 true
}

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/list_debug.c", i32 23, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__list_add_valid._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__list_add_valid._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/list_debug.c", i32 26, i32 6}
!8 = !{ptr @__list_add_valid._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @__list_add_valid._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/list_debug.c", i32 29, i32 6}
!12 = !{ptr @__list_add_valid._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @__list_add_valid._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab___list_add_valid, !15, !"__ksymtab___list_add_valid", i1 false, i1 false}
!15 = !{!"../lib/list_debug.c", i32 36, i32 1}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/list_debug.c", i32 45, i32 6}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__list_del_entry_valid._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @__list_del_entry_valid._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/list_debug.c", i32 48, i32 6}
!23 = !{ptr @__list_del_entry_valid._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @__list_del_entry_valid._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/list_debug.c", i32 51, i32 6}
!27 = !{ptr @__list_del_entry_valid._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @__list_del_entry_valid._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/list_debug.c", i32 54, i32 6}
!31 = !{ptr @__list_del_entry_valid._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @__list_del_entry_valid._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab___list_del_entry_valid, !34, !"__ksymtab___list_del_entry_valid", i1 false, i1 false}
!34 = !{!"../lib/list_debug.c", i32 62, i32 1}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2149317183, i64 2149317663, i64 2149317220, i64 2149317276, i64 2149317310, i64 2149317334, i64 2149317375, i64 2149317396, i64 2149317424, i64 2149317458}
!44 = !{i64 2149322454, i64 2149322934, i64 2149322491, i64 2149322547, i64 2149322581, i64 2149322605, i64 2149322646, i64 2149322667, i64 2149322695, i64 2149322729}
!45 = !{i64 2149331477, i64 2149331957, i64 2149331514, i64 2149331570, i64 2149331604, i64 2149331628, i64 2149331669, i64 2149331690, i64 2149331718, i64 2149331752}
!46 = !{i64 2149337949, i64 2149338429, i64 2149337986, i64 2149338042, i64 2149338076, i64 2149338100, i64 2149338141, i64 2149338162, i64 2149338190, i64 2149338224}
!47 = !{i64 2149343053, i64 2149343533, i64 2149343090, i64 2149343146, i64 2149343180, i64 2149343204, i64 2149343245, i64 2149343266, i64 2149343294, i64 2149343328}
!48 = !{i64 2149348253, i64 2149348733, i64 2149348290, i64 2149348346, i64 2149348380, i64 2149348404, i64 2149348445, i64 2149348466, i64 2149348494, i64 2149348528}
!49 = !{i64 2149353437, i64 2149353917, i64 2149353474, i64 2149353530, i64 2149353564, i64 2149353588, i64 2149353629, i64 2149353650, i64 2149353678, i64 2149353712}
