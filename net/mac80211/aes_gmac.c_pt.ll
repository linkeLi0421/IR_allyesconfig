; ModuleID = '/llk/IR_all_yes/net/mac80211/aes_gmac.c_pt.bc'
source_filename = "../net/mac80211/aes_gmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.3, %union.anon.97, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.97 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [27 x i8] c"../net/mac80211/aes_gmac.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 75, i32 26 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ieee80211_aes_gmac(ptr noundef %tfm, ptr nocapture noundef readonly %aad, ptr nocapture noundef readonly %nonce, ptr noundef %data, i32 noundef %data_len, ptr noundef %mic) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca [5 x %struct.scatterlist], align 4
  %iv = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %sg) #4
  %0 = call ptr @memset(ptr %sg, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iv) #4
  %1 = getelementptr inbounds [16 x i8], ptr %iv, i32 0, i32 12
  %reqsize.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %2 = call ptr @memset(ptr %iv, i32 255, i32 16)
  %3 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reqsize.i, align 4
  %add = add i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %data_len)
  %cmp = icmp ult i32 %data_len, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %add2 = add i32 %4, 164
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef 2848) #7
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %add
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 16
  %5 = call ptr @memcpy(ptr %add.ptr6, ptr %aad, i32 20)
  %6 = ptrtoint ptr %aad to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aad, align 2
  %8 = and i16 %7, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp.i = icmp eq i16 %8, -32768
  br i1 %cmp.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 5) #4
  %9 = ptrtoint ptr %add.ptr6 to i32
  %cmp.i57 = icmp ugt ptr %add.ptr6, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i57, label %land.lhs.true.i, label %if.then8.do.body5.i_crit_edge, !prof !11

if.then8.do.body5.i_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %10 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %10, %add.ptr6
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !11

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %11, %shr.i
  %call.i = call i32 @pfn_valid(i32 noundef %add.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !12

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.then8.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i58 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i58, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !11

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !11

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %9, 4095
  %and.i.i.i = and i32 %14, 3
  %or.i.i.i = or i32 %and.i.i.i, %15
  %16 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i.i.i, ptr %sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %17 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %18 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %length.i.i, align 4
  %arrayidx9 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  %19 = ptrtoint ptr %add.ptr to i32
  %cmp.i59 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i59, label %land.lhs.true.i61, label %sg_set_buf.exit.do.body5.i68_crit_edge, !prof !11

sg_set_buf.exit.do.body5.i68_crit_edge:           ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i68

land.lhs.true.i61:                                ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %20 = load ptr, ptr @high_memory, align 4
  %cmp1.i60 = icmp ugt ptr %20, %add.ptr
  br i1 %cmp1.i60, label %land.rhs.i67, label %land.lhs.true.i61.do.body5.i68_crit_edge, !prof !11

land.lhs.true.i61.do.body5.i68_crit_edge:         ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i68

land.rhs.i67:                                     ; preds = %land.lhs.true.i61
  %sub.i62 = add i32 %19, 1073741824
  %shr.i63 = lshr i32 %sub.i62, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %21 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i64 = add i32 %21, %shr.i63
  %call.i65 = call i32 @pfn_valid(i32 noundef %add.i64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.i66, label %land.rhs.i67.do.body5.i68_crit_edge, label %do.end8.i72, !prof !12

land.rhs.i67.do.body5.i68_crit_edge:              ; preds = %land.rhs.i67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i68

do.body5.i68:                                     ; preds = %land.rhs.i67.do.body5.i68_crit_edge, %land.lhs.true.i61.do.body5.i68_crit_edge, %sg_set_buf.exit.do.body5.i68_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i72:                                      ; preds = %land.rhs.i67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %22 = load ptr, ptr @mem_map, align 4
  %add.ptr.i69 = getelementptr %struct.page, ptr %22, i32 %shr.i63
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9, align 4
  %25 = ptrtoint ptr %add.ptr.i69 to i32
  %and2.i.i.i70 = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i70)
  %tobool.not.i.i.i71 = icmp eq i32 %and2.i.i.i70, 0
  br i1 %tobool.not.i.i.i71, label %do.body11.i.i.i76, label %do.body5.i.i.i73, !prof !11

do.body5.i.i.i73:                                 ; preds = %do.end8.i72
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i76:                                ; preds = %do.end8.i72
  %and.i.i.i.i74 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i74)
  %tobool.i.not.i.i.i75 = icmp eq i32 %and.i.i.i.i74, 0
  br i1 %tobool.i.not.i.i.i75, label %sg_set_buf.exit83, label %do.body19.i.i.i77, !prof !11

do.body19.i.i.i77:                                ; preds = %do.body11.i.i.i76
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

sg_set_buf.exit83:                                ; preds = %do.body11.i.i.i76
  %and.i78 = and i32 %19, 4095
  %and.i.i.i79 = and i32 %24, 3
  %or.i.i.i80 = or i32 %and.i.i.i79, %25
  %26 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i.i.i80, ptr %arrayidx9, align 4
  %offset1.i.i81 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %offset1.i.i81 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and.i78, ptr %offset1.i.i81, align 4
  %length.i.i82 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %length.i.i82 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %length.i.i82, align 4
  %arrayidx10 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 2
  %add.ptr11 = getelementptr i8, ptr %data, i32 8
  %sub12 = add i32 %data_len, -24
  %29 = ptrtoint ptr %add.ptr11 to i32
  %cmp.i84 = icmp ugt ptr %add.ptr11, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i84, label %land.lhs.true.i86, label %sg_set_buf.exit83.do.body5.i93_crit_edge, !prof !11

sg_set_buf.exit83.do.body5.i93_crit_edge:         ; preds = %sg_set_buf.exit83
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i93

land.lhs.true.i86:                                ; preds = %sg_set_buf.exit83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %30 = load ptr, ptr @high_memory, align 4
  %cmp1.i85 = icmp ugt ptr %30, %add.ptr11
  br i1 %cmp1.i85, label %land.rhs.i92, label %land.lhs.true.i86.do.body5.i93_crit_edge, !prof !11

land.lhs.true.i86.do.body5.i93_crit_edge:         ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i93

land.rhs.i92:                                     ; preds = %land.lhs.true.i86
  %sub.i87 = add i32 %29, 1073741824
  %shr.i88 = lshr i32 %sub.i87, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i89 = add i32 %31, %shr.i88
  %call.i90 = call i32 @pfn_valid(i32 noundef %add.i89) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool.i91 = icmp eq i32 %call.i90, 0
  br i1 %tobool.i91, label %land.rhs.i92.do.body5.i93_crit_edge, label %do.end8.i97, !prof !12

land.rhs.i92.do.body5.i93_crit_edge:              ; preds = %land.rhs.i92
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i93

do.body5.i93:                                     ; preds = %land.rhs.i92.do.body5.i93_crit_edge, %land.lhs.true.i86.do.body5.i93_crit_edge, %sg_set_buf.exit83.do.body5.i93_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i97:                                      ; preds = %land.rhs.i92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %add.ptr.i94 = getelementptr %struct.page, ptr %32, i32 %shr.i88
  %33 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx10, align 4
  %35 = ptrtoint ptr %add.ptr.i94 to i32
  %and2.i.i.i95 = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i95)
  %tobool.not.i.i.i96 = icmp eq i32 %and2.i.i.i95, 0
  br i1 %tobool.not.i.i.i96, label %do.body11.i.i.i101, label %do.body5.i.i.i98, !prof !11

do.body5.i.i.i98:                                 ; preds = %do.end8.i97
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i101:                               ; preds = %do.end8.i97
  %and.i.i.i.i99 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i99)
  %tobool.i.not.i.i.i100 = icmp eq i32 %and.i.i.i.i99, 0
  br i1 %tobool.i.not.i.i.i100, label %land.lhs.true.i111, label %do.body19.i.i.i102, !prof !11

do.body19.i.i.i102:                               ; preds = %do.body11.i.i.i101
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

land.lhs.true.i111:                               ; preds = %do.body11.i.i.i101
  %and.i103 = and i32 %29, 4095
  %and.i.i.i104 = and i32 %34, 3
  %or.i.i.i105 = or i32 %and.i.i.i104, %35
  %36 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i.i105, ptr %arrayidx10, align 4
  %offset1.i.i106 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %offset1.i.i106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i103, ptr %offset1.i.i106, align 4
  %length.i.i107 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %length.i.i107 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub12, ptr %length.i.i107, align 4
  %arrayidx13 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %39 = load ptr, ptr @high_memory, align 4
  %cmp1.i110 = icmp ugt ptr %39, %add.ptr
  br i1 %cmp1.i110, label %land.rhs.i117, label %land.lhs.true.i111.do.body5.i118_crit_edge, !prof !11

land.lhs.true.i111.do.body5.i118_crit_edge:       ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i118

land.rhs.i117:                                    ; preds = %land.lhs.true.i111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i114 = add i32 %40, %shr.i63
  %call.i115 = call i32 @pfn_valid(i32 noundef %add.i114) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.i116, label %land.rhs.i117.do.body5.i118_crit_edge, label %do.end8.i122, !prof !12

land.rhs.i117.do.body5.i118_crit_edge:            ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i118

do.body5.i118:                                    ; preds = %land.rhs.i117.do.body5.i118_crit_edge, %land.lhs.true.i111.do.body5.i118_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i122:                                     ; preds = %land.rhs.i117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %add.ptr.i119 = getelementptr %struct.page, ptr %41, i32 %shr.i63
  %42 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx13, align 4
  %44 = ptrtoint ptr %add.ptr.i119 to i32
  %and2.i.i.i120 = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i120)
  %tobool.not.i.i.i121 = icmp eq i32 %and2.i.i.i120, 0
  br i1 %tobool.not.i.i.i121, label %do.body11.i.i.i126, label %do.body5.i.i.i123, !prof !11

do.body5.i.i.i123:                                ; preds = %do.end8.i122
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i126:                               ; preds = %do.end8.i122
  %and.i.i.i.i124 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i124)
  %tobool.i.not.i.i.i125 = icmp eq i32 %and.i.i.i.i124, 0
  br i1 %tobool.i.not.i.i.i125, label %sg_set_buf.exit133, label %do.body19.i.i.i127, !prof !11

do.body19.i.i.i127:                               ; preds = %do.body11.i.i.i126
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

sg_set_buf.exit133:                               ; preds = %do.body11.i.i.i126
  %and.i.i.i129 = and i32 %43, 3
  %or.i.i.i130 = or i32 %and.i.i.i129, %44
  %45 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i.i130, ptr %arrayidx13, align 4
  %offset1.i.i131 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %offset1.i.i131 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i78, ptr %offset1.i.i131, align 4
  %length.i.i132 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %length.i.i132 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16, ptr %length.i.i132, align 4
  %arrayidx14 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 4
  %48 = ptrtoint ptr %mic to i32
  %cmp.i134 = icmp ugt ptr %mic, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i134, label %land.lhs.true.i136, label %sg_set_buf.exit133.do.body5.i143_crit_edge, !prof !11

sg_set_buf.exit133.do.body5.i143_crit_edge:       ; preds = %sg_set_buf.exit133
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i143

land.lhs.true.i136:                               ; preds = %sg_set_buf.exit133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %49 = load ptr, ptr @high_memory, align 4
  %cmp1.i135 = icmp ugt ptr %49, %mic
  br i1 %cmp1.i135, label %land.rhs.i142, label %land.lhs.true.i136.do.body5.i143_crit_edge, !prof !11

land.lhs.true.i136.do.body5.i143_crit_edge:       ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i143

land.rhs.i142:                                    ; preds = %land.lhs.true.i136
  %sub.i137 = add i32 %48, 1073741824
  %shr.i138 = lshr i32 %sub.i137, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i139 = add i32 %50, %shr.i138
  %call.i140 = call i32 @pfn_valid(i32 noundef %add.i139) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.i141 = icmp eq i32 %call.i140, 0
  br i1 %tobool.i141, label %land.rhs.i142.do.body5.i143_crit_edge, label %do.end8.i147, !prof !12

land.rhs.i142.do.body5.i143_crit_edge:            ; preds = %land.rhs.i142
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i143

do.body5.i143:                                    ; preds = %land.rhs.i142.do.body5.i143_crit_edge, %land.lhs.true.i136.do.body5.i143_crit_edge, %sg_set_buf.exit133.do.body5.i143_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i147:                                     ; preds = %land.rhs.i142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %add.ptr.i144 = getelementptr %struct.page, ptr %51, i32 %shr.i138
  %52 = ptrtoint ptr %add.ptr.i144 to i32
  %and2.i.i.i145 = and i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i145)
  %tobool.not.i.i.i146 = icmp eq i32 %and2.i.i.i145, 0
  br i1 %tobool.not.i.i.i146, label %do.body11.i.i.i151, label %do.body5.i.i.i148, !prof !11

do.body5.i.i.i148:                                ; preds = %do.end8.i147
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i151:                               ; preds = %do.end8.i147
  %53 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx14, align 4
  %and.i.i.i.i149 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i149)
  %tobool.i.not.i.i.i150 = icmp eq i32 %and.i.i.i.i149, 0
  br i1 %tobool.i.not.i.i.i150, label %do.body11.i.i.i151.if.end21_crit_edge, label %do.body19.i.i.i152, !prof !11

do.body11.i.i.i151.if.end21_crit_edge:            ; preds = %do.body11.i.i.i151
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.body19.i.i.i152:                               ; preds = %do.body11.i.i.i151
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

if.else:                                          ; preds = %if.end5
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 4) #4
  %55 = ptrtoint ptr %add.ptr6 to i32
  %cmp.i159 = icmp ugt ptr %add.ptr6, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i159, label %land.lhs.true.i161, label %if.else.do.body5.i168_crit_edge, !prof !11

if.else.do.body5.i168_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i168

land.lhs.true.i161:                               ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %56 = load ptr, ptr @high_memory, align 4
  %cmp1.i160 = icmp ugt ptr %56, %add.ptr6
  br i1 %cmp1.i160, label %land.rhs.i167, label %land.lhs.true.i161.do.body5.i168_crit_edge, !prof !11

land.lhs.true.i161.do.body5.i168_crit_edge:       ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i168

land.rhs.i167:                                    ; preds = %land.lhs.true.i161
  %sub.i162 = add i32 %55, 1073741824
  %shr.i163 = lshr i32 %sub.i162, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %57 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i164 = add i32 %57, %shr.i163
  %call.i165 = call i32 @pfn_valid(i32 noundef %add.i164) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool.i166 = icmp eq i32 %call.i165, 0
  br i1 %tobool.i166, label %land.rhs.i167.do.body5.i168_crit_edge, label %do.end8.i172, !prof !12

land.rhs.i167.do.body5.i168_crit_edge:            ; preds = %land.rhs.i167
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i168

do.body5.i168:                                    ; preds = %land.rhs.i167.do.body5.i168_crit_edge, %land.lhs.true.i161.do.body5.i168_crit_edge, %if.else.do.body5.i168_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i172:                                     ; preds = %land.rhs.i167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %58 = load ptr, ptr @mem_map, align 4
  %add.ptr.i169 = getelementptr %struct.page, ptr %58, i32 %shr.i163
  %59 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sg, align 4
  %61 = ptrtoint ptr %add.ptr.i169 to i32
  %and2.i.i.i170 = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i170)
  %tobool.not.i.i.i171 = icmp eq i32 %and2.i.i.i170, 0
  br i1 %tobool.not.i.i.i171, label %do.body11.i.i.i176, label %do.body5.i.i.i173, !prof !11

do.body5.i.i.i173:                                ; preds = %do.end8.i172
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i176:                               ; preds = %do.end8.i172
  %and.i.i.i.i174 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i174)
  %tobool.i.not.i.i.i175 = icmp eq i32 %and.i.i.i.i174, 0
  br i1 %tobool.i.not.i.i.i175, label %sg_set_buf.exit183, label %do.body19.i.i.i177, !prof !11

do.body19.i.i.i177:                               ; preds = %do.body11.i.i.i176
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

sg_set_buf.exit183:                               ; preds = %do.body11.i.i.i176
  %and.i178 = and i32 %55, 4095
  %and.i.i.i179 = and i32 %60, 3
  %or.i.i.i180 = or i32 %and.i.i.i179, %61
  %62 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or.i.i.i180, ptr %sg, align 4
  %offset1.i.i181 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %63 = ptrtoint ptr %offset1.i.i181 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and.i178, ptr %offset1.i.i181, align 4
  %length.i.i182 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %64 = ptrtoint ptr %length.i.i182 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 20, ptr %length.i.i182, align 4
  %arrayidx17 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 1
  %sub18 = add i32 %data_len, -16
  %65 = ptrtoint ptr %data to i32
  %cmp.i184 = icmp ugt ptr %data, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i184, label %land.lhs.true.i186, label %sg_set_buf.exit183.do.body5.i193_crit_edge, !prof !11

sg_set_buf.exit183.do.body5.i193_crit_edge:       ; preds = %sg_set_buf.exit183
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i193

land.lhs.true.i186:                               ; preds = %sg_set_buf.exit183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %66 = load ptr, ptr @high_memory, align 4
  %cmp1.i185 = icmp ugt ptr %66, %data
  br i1 %cmp1.i185, label %land.rhs.i192, label %land.lhs.true.i186.do.body5.i193_crit_edge, !prof !11

land.lhs.true.i186.do.body5.i193_crit_edge:       ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i193

land.rhs.i192:                                    ; preds = %land.lhs.true.i186
  %sub.i187 = add i32 %65, 1073741824
  %shr.i188 = lshr i32 %sub.i187, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %67 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i189 = add i32 %67, %shr.i188
  %call.i190 = call i32 @pfn_valid(i32 noundef %add.i189) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool.i191 = icmp eq i32 %call.i190, 0
  br i1 %tobool.i191, label %land.rhs.i192.do.body5.i193_crit_edge, label %do.end8.i197, !prof !12

land.rhs.i192.do.body5.i193_crit_edge:            ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i193

do.body5.i193:                                    ; preds = %land.rhs.i192.do.body5.i193_crit_edge, %land.lhs.true.i186.do.body5.i193_crit_edge, %sg_set_buf.exit183.do.body5.i193_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i197:                                     ; preds = %land.rhs.i192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %add.ptr.i194 = getelementptr %struct.page, ptr %68, i32 %shr.i188
  %69 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx17, align 4
  %71 = ptrtoint ptr %add.ptr.i194 to i32
  %and2.i.i.i195 = and i32 %71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i195)
  %tobool.not.i.i.i196 = icmp eq i32 %and2.i.i.i195, 0
  br i1 %tobool.not.i.i.i196, label %do.body11.i.i.i201, label %do.body5.i.i.i198, !prof !11

do.body5.i.i.i198:                                ; preds = %do.end8.i197
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i201:                               ; preds = %do.end8.i197
  %and.i.i.i.i199 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i199)
  %tobool.i.not.i.i.i200 = icmp eq i32 %and.i.i.i.i199, 0
  br i1 %tobool.i.not.i.i.i200, label %sg_set_buf.exit208, label %do.body19.i.i.i202, !prof !11

do.body19.i.i.i202:                               ; preds = %do.body11.i.i.i201
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

sg_set_buf.exit208:                               ; preds = %do.body11.i.i.i201
  %and.i203 = and i32 %65, 4095
  %and.i.i.i204 = and i32 %70, 3
  %or.i.i.i205 = or i32 %and.i.i.i204, %71
  %72 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or.i.i.i205, ptr %arrayidx17, align 4
  %offset1.i.i206 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %offset1.i.i206 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i203, ptr %offset1.i.i206, align 4
  %length.i.i207 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %length.i.i207 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %sub18, ptr %length.i.i207, align 4
  %arrayidx19 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 2
  %75 = ptrtoint ptr %add.ptr to i32
  %cmp.i209 = icmp ugt ptr %add.ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i209, label %land.lhs.true.i211, label %sg_set_buf.exit208.do.body5.i218_crit_edge, !prof !11

sg_set_buf.exit208.do.body5.i218_crit_edge:       ; preds = %sg_set_buf.exit208
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i218

land.lhs.true.i211:                               ; preds = %sg_set_buf.exit208
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %76 = load ptr, ptr @high_memory, align 4
  %cmp1.i210 = icmp ugt ptr %76, %add.ptr
  br i1 %cmp1.i210, label %land.rhs.i217, label %land.lhs.true.i211.do.body5.i218_crit_edge, !prof !11

land.lhs.true.i211.do.body5.i218_crit_edge:       ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i218

land.rhs.i217:                                    ; preds = %land.lhs.true.i211
  %sub.i212 = add i32 %75, 1073741824
  %shr.i213 = lshr i32 %sub.i212, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %77 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i214 = add i32 %77, %shr.i213
  %call.i215 = call i32 @pfn_valid(i32 noundef %add.i214) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.i216, label %land.rhs.i217.do.body5.i218_crit_edge, label %do.end8.i222, !prof !12

land.rhs.i217.do.body5.i218_crit_edge:            ; preds = %land.rhs.i217
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i218

do.body5.i218:                                    ; preds = %land.rhs.i217.do.body5.i218_crit_edge, %land.lhs.true.i211.do.body5.i218_crit_edge, %sg_set_buf.exit208.do.body5.i218_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i222:                                     ; preds = %land.rhs.i217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %78 = load ptr, ptr @mem_map, align 4
  %add.ptr.i219 = getelementptr %struct.page, ptr %78, i32 %shr.i213
  %79 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx19, align 4
  %81 = ptrtoint ptr %add.ptr.i219 to i32
  %and2.i.i.i220 = and i32 %81, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i220)
  %tobool.not.i.i.i221 = icmp eq i32 %and2.i.i.i220, 0
  br i1 %tobool.not.i.i.i221, label %do.body11.i.i.i226, label %do.body5.i.i.i223, !prof !11

do.body5.i.i.i223:                                ; preds = %do.end8.i222
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i226:                               ; preds = %do.end8.i222
  %and.i.i.i.i224 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i224)
  %tobool.i.not.i.i.i225 = icmp eq i32 %and.i.i.i.i224, 0
  br i1 %tobool.i.not.i.i.i225, label %sg_set_buf.exit233, label %do.body19.i.i.i227, !prof !11

do.body19.i.i.i227:                               ; preds = %do.body11.i.i.i226
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

sg_set_buf.exit233:                               ; preds = %do.body11.i.i.i226
  %and.i228 = and i32 %75, 4095
  %and.i.i.i229 = and i32 %80, 3
  %or.i.i.i230 = or i32 %and.i.i.i229, %81
  %82 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or.i.i.i230, ptr %arrayidx19, align 4
  %offset1.i.i231 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %offset1.i.i231 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and.i228, ptr %offset1.i.i231, align 4
  %length.i.i232 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 2, i32 2
  %84 = ptrtoint ptr %length.i.i232 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16, ptr %length.i.i232, align 4
  %arrayidx20 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 3
  %85 = ptrtoint ptr %mic to i32
  %cmp.i234 = icmp ugt ptr %mic, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i234, label %land.lhs.true.i236, label %sg_set_buf.exit233.do.body5.i243_crit_edge, !prof !11

sg_set_buf.exit233.do.body5.i243_crit_edge:       ; preds = %sg_set_buf.exit233
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i243

land.lhs.true.i236:                               ; preds = %sg_set_buf.exit233
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %86 = load ptr, ptr @high_memory, align 4
  %cmp1.i235 = icmp ugt ptr %86, %mic
  br i1 %cmp1.i235, label %land.rhs.i242, label %land.lhs.true.i236.do.body5.i243_crit_edge, !prof !11

land.lhs.true.i236.do.body5.i243_crit_edge:       ; preds = %land.lhs.true.i236
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i243

land.rhs.i242:                                    ; preds = %land.lhs.true.i236
  %sub.i237 = add i32 %85, 1073741824
  %shr.i238 = lshr i32 %sub.i237, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %87 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i239 = add i32 %87, %shr.i238
  %call.i240 = call i32 @pfn_valid(i32 noundef %add.i239) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool.i241 = icmp eq i32 %call.i240, 0
  br i1 %tobool.i241, label %land.rhs.i242.do.body5.i243_crit_edge, label %do.end8.i247, !prof !12

land.rhs.i242.do.body5.i243_crit_edge:            ; preds = %land.rhs.i242
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5.i243

do.body5.i243:                                    ; preds = %land.rhs.i242.do.body5.i243_crit_edge, %land.lhs.true.i236.do.body5.i243_crit_edge, %sg_set_buf.exit233.do.body5.i243_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

do.end8.i247:                                     ; preds = %land.rhs.i242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %88 = load ptr, ptr @mem_map, align 4
  %add.ptr.i244 = getelementptr %struct.page, ptr %88, i32 %shr.i238
  %89 = ptrtoint ptr %add.ptr.i244 to i32
  %and2.i.i.i245 = and i32 %89, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i245)
  %tobool.not.i.i.i246 = icmp eq i32 %and2.i.i.i245, 0
  br i1 %tobool.not.i.i.i246, label %do.body11.i.i.i251, label %do.body5.i.i.i248, !prof !11

do.body5.i.i.i248:                                ; preds = %do.end8.i247
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.body11.i.i.i251:                               ; preds = %do.end8.i247
  %90 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx20, align 4
  %and.i.i.i.i249 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i249)
  %tobool.i.not.i.i.i250 = icmp eq i32 %and.i.i.i.i249, 0
  br i1 %tobool.i.not.i.i.i250, label %do.body11.i.i.i251.if.end21_crit_edge, label %do.body19.i.i.i252, !prof !11

do.body11.i.i.i251.if.end21_crit_edge:            ; preds = %do.body11.i.i.i251
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.body19.i.i.i252:                               ; preds = %do.body11.i.i.i251
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

if.end21:                                         ; preds = %do.body11.i.i.i251.if.end21_crit_edge, %do.body11.i.i.i151.if.end21_crit_edge
  %.sink265 = phi i32 [ %48, %do.body11.i.i.i151.if.end21_crit_edge ], [ %85, %do.body11.i.i.i251.if.end21_crit_edge ]
  %.sink264 = phi i32 [ %54, %do.body11.i.i.i151.if.end21_crit_edge ], [ %91, %do.body11.i.i.i251.if.end21_crit_edge ]
  %.sink263 = phi i32 [ %52, %do.body11.i.i.i151.if.end21_crit_edge ], [ %89, %do.body11.i.i.i251.if.end21_crit_edge ]
  %arrayidx20.sink = phi ptr [ %arrayidx14, %do.body11.i.i.i151.if.end21_crit_edge ], [ %arrayidx20, %do.body11.i.i.i251.if.end21_crit_edge ]
  %.sink262 = phi i32 [ 4, %do.body11.i.i.i151.if.end21_crit_edge ], [ 3, %do.body11.i.i.i251.if.end21_crit_edge ]
  %and.i253 = and i32 %.sink265, 4095
  %and.i.i.i254 = and i32 %.sink264, 3
  %or.i.i.i255 = or i32 %and.i.i.i254, %.sink263
  %92 = ptrtoint ptr %arrayidx20.sink to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or.i.i.i255, ptr %arrayidx20.sink, align 4
  %offset1.i.i256 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 %.sink262, i32 1
  %93 = ptrtoint ptr %offset1.i.i256 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and.i253, ptr %offset1.i.i256, align 4
  %length.i.i257 = getelementptr inbounds [5 x %struct.scatterlist], ptr %sg, i32 0, i32 %.sink262, i32 2
  %94 = ptrtoint ptr %length.i.i257 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 16, ptr %length.i.i257, align 4
  %95 = call ptr @memcpy(ptr %iv, ptr %nonce, i32 12)
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %96, i32 4)
  store i32 1, ptr %1, align 1
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %97 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 4
  %98 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %sg, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 5
  %99 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %sg, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 3
  %101 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %iv, ptr %iv4.i, align 32
  %add29 = add i32 %data_len, 20
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %call9.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add29, ptr %assoclen1.i, align 8
  %call30 = call i32 @crypto_aead_encrypt(ptr noundef nonnull %call9.i.i) #4
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iv) #4
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %sg) #4
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
define dso_local ptr @ieee80211_aes_gmac_key_setup(ptr noundef %key, i32 noundef %key_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_aead(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 128) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @crypto_aead_setkey(ptr noundef %call, ptr noundef %key, i32 noundef %key_len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end5:                                          ; preds = %if.end
  %call4 = tail call i32 @crypto_aead_setauthsize(ptr noundef %call, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end5.if.end8_crit_edge

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %err.020 = phi i32 [ %call4, %if.end5.if.end8_crit_edge ], [ %call2, %if.end.if.end8_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #4
  %0 = inttoptr i32 %err.020 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.end8 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ieee80211_aes_gmac_key_free(ptr noundef %tfm) local_unnamed_addr #0 align 64 {
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

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/mac80211/aes_gmac.c", i32 75, i32 26}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2154671736, i64 2154672228, i64 2154671773, i64 2154671829, i64 2154671863, i64 2154671887, i64 2154671928, i64 2154671949, i64 2154671977, i64 2154672011}
!14 = !{i64 2154665417, i64 2154665909, i64 2154665454, i64 2154665510, i64 2154665544, i64 2154665568, i64 2154665609, i64 2154665630, i64 2154665658, i64 2154665692}
!15 = !{i64 2154667027, i64 2154667519, i64 2154667064, i64 2154667120, i64 2154667154, i64 2154667178, i64 2154667219, i64 2154667240, i64 2154667268, i64 2154667302}
