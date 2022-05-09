; ModuleID = '/llk/IR_all_yes/drivers/media/common/videobuf2/videobuf2-memops.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/videobuf2-memops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vb2_create_framevec\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_create_framevec\09\09\09\09"
module asm "\09.long\09__crc_vb2_create_framevec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_create_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_create_framevec\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_create_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vb2_destroy_framevec\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_destroy_framevec\09\09\09\09"
module asm "\09.long\09__crc_vb2_destroy_framevec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_destroy_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_destroy_framevec\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_destroy_framevec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vb2_common_vm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_vb2_common_vm_ops\09\09\09\09"
module asm "\09.long\09__crc_vb2_common_vm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vb2_common_vm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22vb2_common_vm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_vb2_common_vm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.69, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vb2_vmarea_handler = type { ptr, ptr, ptr }

@__kstrtab_vb2_create_framevec = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_create_framevec = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_create_framevec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_create_framevec to i32), ptr @__kstrtab_vb2_create_framevec, ptr @__kstrtabns_vb2_create_framevec }, section "___ksymtab+vb2_create_framevec", align 4
@__kstrtab_vb2_destroy_framevec = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_destroy_framevec = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_destroy_framevec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_destroy_framevec to i32), ptr @__kstrtab_vb2_destroy_framevec, ptr @__kstrtabns_vb2_destroy_framevec }, section "___ksymtab+vb2_destroy_framevec", align 4
@vb2_common_vm_ops = dso_local constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @vb2_common_vm_open, ptr @vb2_common_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_vb2_common_vm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vb2_common_vm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_vb2_common_vm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vb2_common_vm_ops to i32), ptr @__kstrtab_vb2_common_vm_ops, ptr @__kstrtabns_vb2_common_vm_ops }, section "___ksymtab_gpl+vb2_common_vm_ops", align 4
@__UNIQUE_ID_description238 = internal constant [75 x i8] c"videobuf2_memops.description=common memory handling routines for videobuf2\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [56 x i8] c"videobuf2_memops.author=Pawel Osciak <pawel@osciak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [70 x i8] c"videobuf2_memops.file=drivers/media/common/videobuf2/videobuf2-memops\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [29 x i8] c"videobuf2_memops.license=GPL\00", section ".modinfo", align 1
@vb2_common_vm_open.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"videobuf2_memops\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vb2_common_vm_open\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/common/videobuf2/videobuf2-memops.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %p, refcount: %d, vma: %08lx-%08lx\0A\00", [56 x i8] zeroinitializer }, align 32
@vb2_common_vm_close.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vb2_common_vm_close\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"vb2_common_vm_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 121, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 92, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [53 x i8] c"../drivers/media/common/videobuf2/videobuf2-memops.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 110, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__ksymtab_vb2_common_vm_ops, ptr @__ksymtab_vb2_create_framevec, ptr @__ksymtab_vb2_destroy_framevec, ptr @vb2_common_vm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_common_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vb2_create_framevec(i32 noundef %start, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %start, 12
  %add = add i32 %start, -1
  %sub = add i32 %add, %length
  %shr1 = lshr i32 %sub, 12
  %sub2 = sub nsw i32 %shr1, %shr
  %add3 = add nsw i32 %sub2, 1
  %call = tail call ptr @frame_vector_create(i32 noundef %add3) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %start, -4096
  %call5 = tail call i32 @get_vaddr_frames(i32 noundef %and, i32 noundef %add3, ptr noundef nonnull %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.out_destroy_crit_edge, label %if.end7

if.end.out_destroy_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_destroy

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %add3)
  %cmp8.not = icmp eq i32 %call5, %add3
  br i1 %cmp8.not, label %if.end7.cleanup_crit_edge, label %if.then9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @put_vaddr_frames(ptr noundef nonnull %call) #3
  br label %out_destroy

out_destroy:                                      ; preds = %if.then9, %if.end.out_destroy_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end.out_destroy_crit_edge ], [ -14, %if.then9 ]
  tail call void @frame_vector_destroy(ptr noundef nonnull %call) #3
  %0 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_destroy, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %out_destroy ], [ %call, %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @frame_vector_create(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_vaddr_frames(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_vaddr_frames(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @frame_vector_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vb2_destroy_framevec(ptr noundef %vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_vaddr_frames(ptr noundef %vec) #3
  tail call void @frame_vector_destroy(ptr noundef %vec) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_common_vm_open(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2_common_vm_open.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2_common_vm_open, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2_common_vm_open.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #3
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #3, !srcloc !34
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !35

do.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !36

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %.sink.i.i.i) #3
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vb2_common_vm_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vb2_common_vm_close.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vb2_common_vm_close, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #3
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vb2_common_vm_close.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %5, i32 noundef %7, i32 noundef %9) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %put = getelementptr inbounds %struct.vb2_vmarea_handler, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %put, align 4
  %arg = getelementptr inbounds %struct.vb2_vmarea_handler, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arg, align 4
  tail call void %11(ptr noundef %13) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_vb2_create_framevec, !1, !"__ksymtab_vb2_create_framevec", i1 false, i1 false}
!1 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 65, i32 1}
!2 = !{ptr @__ksymtab_vb2_destroy_framevec, !3, !"__ksymtab_vb2_destroy_framevec", i1 false, i1 false}
!3 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 79, i32 1}
!4 = !{ptr @vb2_common_vm_ops, !5, !"vb2_common_vm_ops", i1 false, i1 false}
!5 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 121, i32 35}
!6 = !{ptr @__ksymtab_vb2_common_vm_ops, !7, !"__ksymtab_vb2_common_vm_ops", i1 false, i1 false}
!7 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 125, i32 1}
!8 = !{ptr @__UNIQUE_ID_description238, !9, !"__UNIQUE_ID_description238", i1 false, i1 false}
!9 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 127, i32 1}
!10 = !{ptr @__UNIQUE_ID_author239, !11, !"__UNIQUE_ID_author239", i1 false, i1 false}
!11 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 128, i32 1}
!12 = !{ptr @__UNIQUE_ID_file240, !13, !"__UNIQUE_ID_file240", i1 false, i1 false}
!13 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 129, i32 1}
!14 = !{ptr @__UNIQUE_ID_license241, !13, !"__UNIQUE_ID_license241", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 92, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vb2_common_vm_open.__UNIQUE_ID_ddebug236, !16, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/common/videobuf2/videobuf2-memops.c", i32 110, i32 2}
!23 = !{ptr @vb2_common_vm_close.__UNIQUE_ID_ddebug237, !22, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148203058, i64 2148203063, i64 2148203076, i64 2148203120, i64 2148203154, i64 2148203175}
!34 = !{i64 2148583862, i64 2148583894, i64 2148583923, i64 2148583957, i64 2148583988, i64 2148584011}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
