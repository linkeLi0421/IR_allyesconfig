; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/map_funcs.c_pt.bc'
source_filename = "../drivers/mtd/maps/map_funcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+simple_map_init\22, \22a\22\09"
module asm "\09.weak\09__crc_simple_map_init\09\09\09\09"
module asm "\09.long\09__crc_simple_map_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_map_init:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_map_init\22\09\09\09\09\09"
module asm "__kstrtabns_simple_map_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%union.map_word = type { [8 x i32] }

@__kstrtab_simple_map_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_map_init = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_map_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_map_init to i32), ptr @__kstrtab_simple_map_init, ptr @__kstrtabns_simple_map_init }, section "___ksymtab+simple_map_init", align 4
@__UNIQUE_ID_file106 = internal constant [42 x i8] c"map_funcs.file=drivers/mtd/maps/map_funcs\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [22 x i8] c"map_funcs.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_file106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_simple_map_init], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @simple_map_init(ptr nocapture noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bankwidth = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %0 = ptrtoint ptr %bankwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bankwidth, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body4 [
    i32 1, label %entry.do.end7_crit_edge
    i32 2, label %entry.do.end7_crit_edge14
    i32 4, label %entry.do.end7_crit_edge15
    i32 8, label %entry.do.end7_crit_edge16
    i32 16, label %entry.do.end7_crit_edge17
    i32 32, label %entry.do.end7_crit_edge18
  ]

entry.do.end7_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

entry.do.end7_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

entry.do.end7_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

entry.do.end7_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

entry.do.end7_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/maps/map_funcs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 35, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.end7:                                          ; preds = %entry.do.end7_crit_edge, %entry.do.end7_crit_edge14, %entry.do.end7_crit_edge15, %entry.do.end7_crit_edge16, %entry.do.end7_crit_edge17, %entry.do.end7_crit_edge18
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %3 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @simple_map_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %4 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @simple_map_write, ptr %write, align 4
  %copy_from = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 8
  %5 = ptrtoint ptr %copy_from to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @simple_map_copy_from, ptr %copy_from, align 4
  %copy_to = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 10
  %6 = ptrtoint ptr %copy_to to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @simple_map_copy_to, ptr %copy_to, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_map_read(ptr noalias sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %ofs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %0 = call ptr @memset(ptr %agg.result, i32 255, i32 32)
  %1 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bankwidth.i, align 4, !noalias !15
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %2, label %if.else19.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 4, label %if.then14.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt.i, align 4, !noalias !15
  %add.ptr.i = getelementptr i8, ptr %5, i32 %ofs
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !noalias !15, !srcloc !18
  %conv.i = zext i8 %6 to i32
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %agg.result, align 4, !alias.scope !15
  br label %inline_map_read.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %virt5.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %8 = ptrtoint ptr %virt5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt5.i, align 4, !noalias !15
  %add.ptr6.i = getelementptr i8, ptr %9, i32 %ofs
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i) #4, !noalias !15, !srcloc !19
  %conv8.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv8.i, ptr %agg.result, align 4, !alias.scope !15
  br label %inline_map_read.exit

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %virt15.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %12 = ptrtoint ptr %virt15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt15.i, align 4, !noalias !15
  %add.ptr16.i = getelementptr i8, ptr %13, i32 %ofs
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #4, !noalias !15, !srcloc !20
  %15 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %agg.result, align 4, !alias.scope !15
  br label %inline_map_read.exit

if.else19.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp21.i = icmp sgt i32 %2, 4
  br i1 %cmp21.i, label %if.then23.i, label %do.body.i

if.then23.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #6
  %virt24.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %16 = ptrtoint ptr %virt24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt24.i, align 4, !noalias !15
  %add.ptr25.i = getelementptr i8, ptr %17, i32 %ofs
  tail call void @mmiocpy(ptr noundef %agg.result, ptr noundef %add.ptr25.i, i32 noundef %2) #4
  br label %inline_map_read.exit

do.body.i:                                        ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 406, 0\0A.popsection", ""() #4, !noalias !15, !srcloc !21
  unreachable

inline_map_read.exit:                             ; preds = %if.then23.i, %if.then14.i, %if.then4.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_map_write(ptr nocapture noundef readonly %map, [8 x i32] %datum.coerce, i32 noundef %ofs) #0 align 64 {
entry:
  %datum.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %datum.i)
  %datum.coerce.fca.0.extract.i = extractvalue [8 x i32] %datum.coerce, 0
  %0 = ptrtoint ptr %datum.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %datum.coerce.fca.0.extract.i, ptr %datum.i, align 4
  %datum.coerce.fca.1.extract.i = extractvalue [8 x i32] %datum.coerce, 1
  %datum.coerce.fca.1.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 1
  %1 = ptrtoint ptr %datum.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %datum.coerce.fca.1.extract.i, ptr %datum.coerce.fca.1.gep.i, align 4
  %datum.coerce.fca.2.extract.i = extractvalue [8 x i32] %datum.coerce, 2
  %datum.coerce.fca.2.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 2
  %2 = ptrtoint ptr %datum.coerce.fca.2.gep.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %datum.coerce.fca.2.extract.i, ptr %datum.coerce.fca.2.gep.i, align 4
  %datum.coerce.fca.3.extract.i = extractvalue [8 x i32] %datum.coerce, 3
  %datum.coerce.fca.3.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 3
  %3 = ptrtoint ptr %datum.coerce.fca.3.gep.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %datum.coerce.fca.3.extract.i, ptr %datum.coerce.fca.3.gep.i, align 4
  %datum.coerce.fca.4.extract.i = extractvalue [8 x i32] %datum.coerce, 4
  %datum.coerce.fca.4.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 4
  %4 = ptrtoint ptr %datum.coerce.fca.4.gep.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %datum.coerce.fca.4.extract.i, ptr %datum.coerce.fca.4.gep.i, align 4
  %datum.coerce.fca.5.extract.i = extractvalue [8 x i32] %datum.coerce, 5
  %datum.coerce.fca.5.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 5
  %5 = ptrtoint ptr %datum.coerce.fca.5.gep.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %datum.coerce.fca.5.extract.i, ptr %datum.coerce.fca.5.gep.i, align 4
  %datum.coerce.fca.6.extract.i = extractvalue [8 x i32] %datum.coerce, 6
  %datum.coerce.fca.6.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 6
  %6 = ptrtoint ptr %datum.coerce.fca.6.gep.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %datum.coerce.fca.6.extract.i, ptr %datum.coerce.fca.6.gep.i, align 4
  %datum.coerce.fca.7.extract.i = extractvalue [8 x i32] %datum.coerce, 7
  %datum.coerce.fca.7.gep.i = getelementptr inbounds [8 x i32], ptr %datum.i, i32 0, i32 7
  %7 = ptrtoint ptr %datum.coerce.fca.7.gep.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %datum.coerce.fca.7.extract.i, ptr %datum.coerce.fca.7.gep.i, align 4
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %8 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bankwidth.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %9, label %if.else17.i [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
    i32 4, label %if.then13.i
  ]

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %datum.coerce.fca.0.extract.i to i8
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %11 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %ofs
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #4, !srcloc !22
  br label %inline_map_write.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv6.i = trunc i32 %datum.coerce.fca.0.extract.i to i16
  %virt7.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %13 = ptrtoint ptr %virt7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %14, i32 %ofs
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %conv6.i) #4, !srcloc !23
  br label %inline_map_write.exit

if.then13.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %virt15.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %15 = ptrtoint ptr %virt15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %16, i32 %ofs
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %datum.coerce.fca.0.extract.i) #4, !srcloc !24
  br label %inline_map_write.exit

if.else17.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp19.i = icmp sgt i32 %9, 4
  br i1 %cmp19.i, label %if.then21.i, label %do.body.i

if.then21.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  %virt22.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %17 = ptrtoint ptr %virt22.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %18, i32 %ofs
  call void @mmiocpy(ptr noundef %add.ptr23.i, ptr noundef nonnull %datum.i, i32 noundef %9) #4
  br label %inline_map_write.exit

do.body.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mtd/map.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

inline_map_write.exit:                            ; preds = %if.then21.i, %if.then13.i, %if.then4.i, %if.then.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  call void @arm_heavy_mb() #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %datum.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_map_copy_from(ptr nocapture noundef readonly %map, ptr noundef %to, i32 noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cached.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %cached.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cached.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %1, i32 %from
  %2 = call ptr @memcpy(ptr %to, ptr %add.ptr.i, i32 %len)
  br label %inline_map_copy_from.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %3 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 %from
  tail call void @mmiocpy(ptr noundef %to, ptr noundef %add.ptr2.i, i32 noundef %len) #4
  br label %inline_map_copy_from.exit

inline_map_copy_from.exit:                        ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @simple_map_copy_to(ptr nocapture noundef readonly %map, i32 noundef %to, ptr noundef %from, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %virt.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %to
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %from, i32 noundef %len) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @__ksymtab_simple_map_init, !1, !"__ksymtab_simple_map_init", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/map_funcs.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_file106, !3, !"__UNIQUE_ID_file106", i1 false, i1 false}
!3 = !{!"../drivers/mtd/maps/map_funcs.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_license107, !3, !"__UNIQUE_ID_license107", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i64 2151637814, i64 2151638306, i64 2151637851, i64 2151637907, i64 2151637941, i64 2151637965, i64 2151638006, i64 2151638027, i64 2151638055, i64 2151638089}
!15 = !{!16}
!16 = distinct !{!16, !17, !"inline_map_read: %agg.result"}
!17 = distinct !{!17, !"inline_map_read"}
!18 = !{i64 4048036}
!19 = !{i64 4047418}
!20 = !{i64 4048256}
!21 = !{i64 2151631023, i64 2151631511, i64 2151631060, i64 2151631116, i64 2151631150, i64 2151631174, i64 2151631215, i64 2151631236, i64 2151631264, i64 2151631298}
!22 = !{i64 4047641}
!23 = !{i64 4047218}
!24 = !{i64 4047838}
!25 = !{i64 2151633016, i64 2151633504, i64 2151633053, i64 2151633109, i64 2151633143, i64 2151633167, i64 2151633208, i64 2151633229, i64 2151633257, i64 2151633291}
!26 = !{i64 2151634407}
