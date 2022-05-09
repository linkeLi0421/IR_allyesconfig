; ModuleID = '/llk/IR_all_yes/net/mac80211/aead_api.c_pt.bc'
source_filename = "../net/mac80211/aead_api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.1, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.65 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aead_encrypt(ptr noundef %tfm, ptr noundef %b_0, ptr nocapture noundef readonly %aad, i32 noundef %aad_len, ptr noundef %data, i32 noundef %data_len, ptr noundef %mic) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca [3 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tfm, align 128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sg) #4
  %2 = call ptr @memset(ptr %sg, i32 255, i32 60)
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %4, 128
  %add2 = add i32 %add, %aad_len
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 2848) #7
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %add
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %aad, i32 %aad_len)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 3) #4
  %6 = ptrtoint ptr %add.ptr to i32
  %cmp.i = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.do.body5.i_crit_edge, !prof !9

if.end.do.body5.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %7 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %7, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !9

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %8, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !10

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i28 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i28, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !9

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !9

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %6, 4095
  %and.i.i.i = and i32 %11, 3
  %or.i.i.i = or i32 %and.i.i.i, %12
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i.i, ptr %sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %14 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %aad_len, ptr %length.i.i, align 4
  %arrayidx4 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  %cmp.i29 = icmp ugt ptr %data, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i29, label %land.lhs.true.i31, label %sg_set_buf.exit.do.body5.i38_crit_edge, !prof !9

sg_set_buf.exit.do.body5.i38_crit_edge:           ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i38

land.lhs.true.i31:                                ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %17 = load ptr, ptr @high_memory, align 4
  %cmp1.i30 = icmp ugt ptr %17, %data
  br i1 %cmp1.i30, label %land.rhs.i37, label %land.lhs.true.i31.do.body5.i38_crit_edge, !prof !9

land.lhs.true.i31.do.body5.i38_crit_edge:         ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i38

land.rhs.i37:                                     ; preds = %land.lhs.true.i31
  %sub.i32 = add i32 %16, 1073741824
  %shr.i33 = lshr i32 %sub.i32, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i34 = add i32 %18, %shr.i33
  %call.i35 = call i32 @pfn_valid(i32 noundef %add.i34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.i36, label %land.rhs.i37.do.body5.i38_crit_edge, label %do.end8.i42, !prof !10

land.rhs.i37.do.body5.i38_crit_edge:              ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i38

do.body5.i38:                                     ; preds = %land.rhs.i37.do.body5.i38_crit_edge, %land.lhs.true.i31.do.body5.i38_crit_edge, %sg_set_buf.exit.do.body5.i38_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

do.end8.i42:                                      ; preds = %land.rhs.i37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %add.ptr.i39 = getelementptr %struct.page, ptr %19, i32 %shr.i33
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4, align 4
  %22 = ptrtoint ptr %add.ptr.i39 to i32
  %and2.i.i.i40 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i40)
  %tobool.not.i.i.i41 = icmp eq i32 %and2.i.i.i40, 0
  br i1 %tobool.not.i.i.i41, label %do.body11.i.i.i46, label %do.body5.i.i.i43, !prof !9

do.body5.i.i.i43:                                 ; preds = %do.end8.i42
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.body11.i.i.i46:                                ; preds = %do.end8.i42
  %and.i.i.i.i44 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i44)
  %tobool.i.not.i.i.i45 = icmp eq i32 %and.i.i.i.i44, 0
  br i1 %tobool.i.not.i.i.i45, label %sg_set_buf.exit53, label %do.body19.i.i.i47, !prof !9

do.body19.i.i.i47:                                ; preds = %do.body11.i.i.i46
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

sg_set_buf.exit53:                                ; preds = %do.body11.i.i.i46
  %and.i48 = and i32 %16, 4095
  %and.i.i.i49 = and i32 %21, 3
  %or.i.i.i50 = or i32 %and.i.i.i49, %22
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i.i50, ptr %arrayidx4, align 4
  %offset1.i.i51 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %offset1.i.i51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i48, ptr %offset1.i.i51, align 4
  %length.i.i52 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %length.i.i52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %data_len, ptr %length.i.i52, align 4
  %arrayidx5 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 2
  %26 = ptrtoint ptr %mic to i32
  %cmp.i54 = icmp ugt ptr %mic, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i54, label %land.lhs.true.i56, label %sg_set_buf.exit53.do.body5.i63_crit_edge, !prof !9

sg_set_buf.exit53.do.body5.i63_crit_edge:         ; preds = %sg_set_buf.exit53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i63

land.lhs.true.i56:                                ; preds = %sg_set_buf.exit53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %27 = load ptr, ptr @high_memory, align 4
  %cmp1.i55 = icmp ugt ptr %27, %mic
  br i1 %cmp1.i55, label %land.rhs.i62, label %land.lhs.true.i56.do.body5.i63_crit_edge, !prof !9

land.lhs.true.i56.do.body5.i63_crit_edge:         ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i63

land.rhs.i62:                                     ; preds = %land.lhs.true.i56
  %sub.i57 = add i32 %26, 1073741824
  %shr.i58 = lshr i32 %sub.i57, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i59 = add i32 %28, %shr.i58
  %call.i60 = call i32 @pfn_valid(i32 noundef %add.i59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.i61, label %land.rhs.i62.do.body5.i63_crit_edge, label %do.end8.i67, !prof !10

land.rhs.i62.do.body5.i63_crit_edge:              ; preds = %land.rhs.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i63

do.body5.i63:                                     ; preds = %land.rhs.i62.do.body5.i63_crit_edge, %land.lhs.true.i56.do.body5.i63_crit_edge, %sg_set_buf.exit53.do.body5.i63_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

do.end8.i67:                                      ; preds = %land.rhs.i62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %add.ptr.i64 = getelementptr %struct.page, ptr %29, i32 %shr.i58
  %30 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5, align 4
  %32 = ptrtoint ptr %add.ptr.i64 to i32
  %and2.i.i.i65 = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i65)
  %tobool.not.i.i.i66 = icmp eq i32 %and2.i.i.i65, 0
  br i1 %tobool.not.i.i.i66, label %do.body11.i.i.i71, label %do.body5.i.i.i68, !prof !9

do.body5.i.i.i68:                                 ; preds = %do.end8.i67
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.body11.i.i.i71:                                ; preds = %do.end8.i67
  %and.i.i.i.i69 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i69)
  %tobool.i.not.i.i.i70 = icmp eq i32 %and.i.i.i.i69, 0
  br i1 %tobool.i.not.i.i.i70, label %sg_set_buf.exit78, label %do.body19.i.i.i72, !prof !9

do.body19.i.i.i72:                                ; preds = %do.body11.i.i.i71
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

sg_set_buf.exit78:                                ; preds = %do.body11.i.i.i71
  call void @__sanitizer_cov_trace_pc() #6
  %and.i73 = and i32 %26, 4095
  %and.i.i.i74 = and i32 %31, 3
  %or.i.i.i75 = or i32 %and.i.i.i74, %32
  %33 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i.i75, ptr %arrayidx5, align 4
  %offset1.i.i76 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %offset1.i.i76 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i73, ptr %offset1.i.i76, align 4
  %length.i.i77 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %length.i.i77 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %1, ptr %length.i.i77, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sg, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sg, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %data_len, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b_0, ptr %iv4.i, align 32
  %41 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i.i, align 4
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %assoclen1.i, align 8
  %call9 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i) #4
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit78, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sg_set_buf.exit78 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aead_decrypt(ptr noundef %tfm, ptr noundef %b_0, ptr nocapture noundef readonly %aad, i32 noundef %aad_len, ptr noundef %data, i32 noundef %data_len, ptr noundef %mic) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca [3 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tfm, align 128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sg) #4
  %2 = call ptr @memset(ptr %sg, i32 255, i32 60)
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp = icmp eq i32 %data_len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %add2 = add i32 %add, %aad_len
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 2848) #7
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %add
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %aad, i32 %aad_len)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 3) #4
  %6 = ptrtoint ptr %add.ptr to i32
  %cmp.i = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.do.body5.i_crit_edge, !prof !9

if.end5.do.body5.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %7 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %7, %add.ptr
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !9

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %8, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !10

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end5.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %shr.i
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i33 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i33, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !9

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !9

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %6, 4095
  %and.i.i.i = and i32 %11, 3
  %or.i.i.i = or i32 %and.i.i.i, %12
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i.i, ptr %sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %14 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %aad_len, ptr %length.i.i, align 4
  %arrayidx6 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  %cmp.i34 = icmp ugt ptr %data, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i34, label %land.lhs.true.i36, label %sg_set_buf.exit.do.body5.i43_crit_edge, !prof !9

sg_set_buf.exit.do.body5.i43_crit_edge:           ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i43

land.lhs.true.i36:                                ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %17 = load ptr, ptr @high_memory, align 4
  %cmp1.i35 = icmp ugt ptr %17, %data
  br i1 %cmp1.i35, label %land.rhs.i42, label %land.lhs.true.i36.do.body5.i43_crit_edge, !prof !9

land.lhs.true.i36.do.body5.i43_crit_edge:         ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i43

land.rhs.i42:                                     ; preds = %land.lhs.true.i36
  %sub.i37 = add i32 %16, 1073741824
  %shr.i38 = lshr i32 %sub.i37, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i39 = add i32 %18, %shr.i38
  %call.i40 = call i32 @pfn_valid(i32 noundef %add.i39) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.i41, label %land.rhs.i42.do.body5.i43_crit_edge, label %do.end8.i47, !prof !10

land.rhs.i42.do.body5.i43_crit_edge:              ; preds = %land.rhs.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i43

do.body5.i43:                                     ; preds = %land.rhs.i42.do.body5.i43_crit_edge, %land.lhs.true.i36.do.body5.i43_crit_edge, %sg_set_buf.exit.do.body5.i43_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

do.end8.i47:                                      ; preds = %land.rhs.i42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %add.ptr.i44 = getelementptr %struct.page, ptr %19, i32 %shr.i38
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx6, align 4
  %22 = ptrtoint ptr %add.ptr.i44 to i32
  %and2.i.i.i45 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i45)
  %tobool.not.i.i.i46 = icmp eq i32 %and2.i.i.i45, 0
  br i1 %tobool.not.i.i.i46, label %do.body11.i.i.i51, label %do.body5.i.i.i48, !prof !9

do.body5.i.i.i48:                                 ; preds = %do.end8.i47
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.body11.i.i.i51:                                ; preds = %do.end8.i47
  %and.i.i.i.i49 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i49)
  %tobool.i.not.i.i.i50 = icmp eq i32 %and.i.i.i.i49, 0
  br i1 %tobool.i.not.i.i.i50, label %sg_set_buf.exit58, label %do.body19.i.i.i52, !prof !9

do.body19.i.i.i52:                                ; preds = %do.body11.i.i.i51
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

sg_set_buf.exit58:                                ; preds = %do.body11.i.i.i51
  %and.i53 = and i32 %16, 4095
  %and.i.i.i54 = and i32 %21, 3
  %or.i.i.i55 = or i32 %and.i.i.i54, %22
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i.i55, ptr %arrayidx6, align 4
  %offset1.i.i56 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %offset1.i.i56 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and.i53, ptr %offset1.i.i56, align 4
  %length.i.i57 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %length.i.i57 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %data_len, ptr %length.i.i57, align 4
  %arrayidx7 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 2
  %26 = ptrtoint ptr %mic to i32
  %cmp.i59 = icmp ugt ptr %mic, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i59, label %land.lhs.true.i61, label %sg_set_buf.exit58.do.body5.i68_crit_edge, !prof !9

sg_set_buf.exit58.do.body5.i68_crit_edge:         ; preds = %sg_set_buf.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i68

land.lhs.true.i61:                                ; preds = %sg_set_buf.exit58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %27 = load ptr, ptr @high_memory, align 4
  %cmp1.i60 = icmp ugt ptr %27, %mic
  br i1 %cmp1.i60, label %land.rhs.i67, label %land.lhs.true.i61.do.body5.i68_crit_edge, !prof !9

land.lhs.true.i61.do.body5.i68_crit_edge:         ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i68

land.rhs.i67:                                     ; preds = %land.lhs.true.i61
  %sub.i62 = add i32 %26, 1073741824
  %shr.i63 = lshr i32 %sub.i62, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i64 = add i32 %28, %shr.i63
  %call.i65 = call i32 @pfn_valid(i32 noundef %add.i64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.i66, label %land.rhs.i67.do.body5.i68_crit_edge, label %do.end8.i72, !prof !10

land.rhs.i67.do.body5.i68_crit_edge:              ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i68

do.body5.i68:                                     ; preds = %land.rhs.i67.do.body5.i68_crit_edge, %land.lhs.true.i61.do.body5.i68_crit_edge, %sg_set_buf.exit58.do.body5.i68_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !11
  unreachable

do.end8.i72:                                      ; preds = %land.rhs.i67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %add.ptr.i69 = getelementptr %struct.page, ptr %29, i32 %shr.i63
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7, align 4
  %32 = ptrtoint ptr %add.ptr.i69 to i32
  %and2.i.i.i70 = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i70)
  %tobool.not.i.i.i71 = icmp eq i32 %and2.i.i.i70, 0
  br i1 %tobool.not.i.i.i71, label %do.body11.i.i.i76, label %do.body5.i.i.i73, !prof !9

do.body5.i.i.i73:                                 ; preds = %do.end8.i72
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

do.body11.i.i.i76:                                ; preds = %do.end8.i72
  %and.i.i.i.i74 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i74)
  %tobool.i.not.i.i.i75 = icmp eq i32 %and.i.i.i.i74, 0
  br i1 %tobool.i.not.i.i.i75, label %sg_set_buf.exit83, label %do.body19.i.i.i77, !prof !9

do.body19.i.i.i77:                                ; preds = %do.body11.i.i.i76
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

sg_set_buf.exit83:                                ; preds = %do.body11.i.i.i76
  call void @__sanitizer_cov_trace_pc() #6
  %and.i78 = and i32 %26, 4095
  %and.i.i.i79 = and i32 %31, 3
  %or.i.i.i80 = or i32 %and.i.i.i79, %32
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i.i80, ptr %arrayidx7, align 4
  %offset1.i.i81 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %offset1.i.i81 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i78, ptr %offset1.i.i81, align 4
  %length.i.i82 = getelementptr inbounds [3 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %length.i.i82 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %1, ptr %length.i.i82, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %add10 = add i32 %1, %data_len
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sg, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sg, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add10, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b_0, ptr %iv4.i, align 32
  %41 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %length.i.i, align 4
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %assoclen1.i, align 8
  %call12 = call i32 @crypto_aead_decrypt(ptr noundef nonnull %call9.i.i) #4
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sg_set_buf.exit83, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %sg_set_buf.exit83 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @aead_key_setup_encrypt(ptr noundef %alg, ptr noundef %key, i32 noundef %key_len, i32 noundef %mic_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_aead(ptr noundef %alg, i32 noundef 0, i32 noundef 128) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @crypto_aead_setkey(ptr noundef %call, ptr noundef %key, i32 noundef %key_len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.free_aead_crit_edge

if.end.free_aead_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_aead

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @crypto_aead_setauthsize(ptr noundef %call, i32 noundef %mic_len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end4.free_aead_crit_edge

if.end4.free_aead_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_aead

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

free_aead:                                        ; preds = %if.end4.free_aead_crit_edge, %if.end.free_aead_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.free_aead_crit_edge ], [ %call5, %if.end4.free_aead_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #4
  %0 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_aead, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %free_aead ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aead_key_free(ptr noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %tfm, ptr noundef %base.i.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2153353482, i64 2153353974, i64 2153353519, i64 2153353575, i64 2153353609, i64 2153353633, i64 2153353674, i64 2153353695, i64 2153353723, i64 2153353757}
!12 = !{i64 2153343102, i64 2153343594, i64 2153343139, i64 2153343195, i64 2153343229, i64 2153343253, i64 2153343294, i64 2153343315, i64 2153343343, i64 2153343377}
!13 = !{i64 2153344712, i64 2153345204, i64 2153344749, i64 2153344805, i64 2153344839, i64 2153344863, i64 2153344904, i64 2153344925, i64 2153344953, i64 2153344987}
