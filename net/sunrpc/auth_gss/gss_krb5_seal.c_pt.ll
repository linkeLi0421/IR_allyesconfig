; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_krb5_seal.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_krb5_seal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }
%struct.krb5_ctx = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.atomic_t, %struct.atomic64_t, i64, %struct.xdr_netobj, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8] }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.gss_krb5_enctype = type { i32, i32, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@gss_get_mic_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RPC:       %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gss_get_mic_v1\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/sunrpc/auth_gss/gss_krb5_seal.c\00", [60 x i8] zeroinitializer }, align 32
@gss_get_mic_v1._entry_ptr = internal global ptr @gss_get_mic_v1._entry, section ".printk_index", align 4
@gss_get_mic_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gss_get_mic_v2\00", [17 x i8] zeroinitializer }, align 32
@gss_get_mic_v2._entry_ptr = internal global ptr @gss_get_mic_v2._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 17, i64 18]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 138, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [39 x i8] c"../net/sunrpc/auth_gss/gss_krb5_seal.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 178, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @gss_get_mic_v1._entry, ptr @gss_get_mic_v1._entry_ptr, ptr @gss_get_mic_v2._entry, ptr @gss_get_mic_v2._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_get_mic_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_get_mic_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_get_mic_kerberos(ptr nocapture noundef readonly %gss_ctx, ptr noundef %text, ptr nocapture noundef %token) local_unnamed_addr #0 align 64 {
entry:
  %cksumdata.i10 = alloca [20 x i8], align 1
  %cksumobj.i = alloca %struct.xdr_netobj, align 4
  %ptr.i.i = alloca ptr, align 4
  %cksumdata.i = alloca [20 x i8], align 1
  %md5cksum.i = alloca %struct.xdr_netobj, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %gss_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %internal_ctx_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %internal_ctx_id, align 4
  %enctype = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enctype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enctype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge27
    i32 17, label %entry.sw.bb4_crit_edge
    i32 18, label %entry.sw.bb4_crit_edge28
  ]

entry.sw.bb4_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_seal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 214, 0\0A.popsection", ""() #6, !srcloc !19
  unreachable

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cksumdata.i) #6
  %5 = call ptr @memset(ptr %cksumdata.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %md5cksum.i) #6
  %6 = getelementptr inbounds %struct.xdr_netobj, ptr %md5cksum.i, i32 0, i32 1
  %7 = ptrtoint ptr %md5cksum.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %md5cksum.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cksumdata.i, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %9 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.do.body6.i_crit_edge, label %do.end.i, !prof !20

sw.bb.do.body6.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %sw.bb.do.body6.i_crit_edge
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %do.body14.i, label %do.end22.i, !prof !21

do.body14.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_seal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

do.end22.i:                                       ; preds = %do.body6.i
  %call23.i = call i64 @ktime_get_real_seconds() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i.i) #6
  %gk5e.i.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %gk5e.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gk5e.i.i, align 4
  %cksumlength.i.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %cksumlength.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cksumlength.i.i, align 4
  %add.i.i = add i32 %13, 16
  %mech_used.i.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 15
  %call.i.i = call i32 @g_token_size(ptr noundef %mech_used.i.i, i32 noundef %add.i.i) #6
  %14 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i.i, ptr %token, align 4
  %data.i.i = getelementptr inbounds %struct.xdr_netobj, ptr %token, i32 0, i32 1
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %17 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ptr.i.i, align 4
  call void @g_make_token_header(ptr noundef %mech_used.i.i, i32 noundef %add.i.i, ptr noundef nonnull %ptr.i.i) #6
  %18 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr.i.i, align 4
  %incdec.ptr.i.i = getelementptr i16, ptr %19, i32 1
  store ptr %incdec.ptr.i.i, ptr %ptr.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 257, ptr %19, align 2
  %21 = ptrtoint ptr %gk5e.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gk5e.i.i, align 4
  %signalg.i.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %signalg.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %signalg.i.i, align 4
  %25 = call i16 @llvm.bswap.i16(i16 %24) #6
  %26 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptr.i.i, align 4
  %incdec.ptr3.i.i = getelementptr i16, ptr %27, i32 1
  store ptr %incdec.ptr3.i.i, ptr %ptr.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %25, ptr %27, align 2
  %29 = load ptr, ptr %ptr.i.i, align 4
  %incdec.ptr4.i.i = getelementptr i16, ptr %29, i32 1
  store ptr %incdec.ptr4.i.i, ptr %ptr.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %29, align 2
  %31 = load ptr, ptr %ptr.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %31, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i.i) #6
  %33 = ptrtoint ptr %gk5e.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gk5e.i.i, align 4
  %keyed_cksum.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %keyed_cksum.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %keyed_cksum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool25.not.i = icmp eq i32 %36, 0
  %cksum.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 11
  %cksumkey.0.i = select i1 %tobool25.not.i, ptr null, ptr %cksum.i
  %call29.i = call i32 @make_checksum(ptr noundef nonnull %1, ptr noundef %19, i32 noundef 8, ptr noundef %text, i32 noundef 0, ptr noundef %cksumkey.0.i, i32 noundef 23, ptr noundef nonnull %md5cksum.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %do.end22.i.gss_get_mic_v1.exit_crit_edge

do.end22.i.gss_get_mic_v1.exit_crit_edge:         ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gss_get_mic_v1.exit

if.end32.i:                                       ; preds = %do.end22.i
  %add.ptr.i = getelementptr i8, ptr %19, i32 16
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %6, align 4
  %39 = ptrtoint ptr %md5cksum.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %md5cksum.i, align 4
  %41 = call ptr @memcpy(ptr %add.ptr.i, ptr %38, i32 %40)
  %seq_send35.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %seq_send35.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  call void @llvm.prefetch.p0(ptr %seq_send35.i, i32 1, i32 3, i32 1) #6
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seq_send35.i, ptr %seq_send35.i, i32 1, ptr elementtype(i32) %seq_send35.i) #6, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  %seq.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %seq.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool37.not.i = icmp eq i32 %46, 0
  %cond.i = select i1 %tobool37.not.i, i32 255, i32 0
  %add.ptr39.i = getelementptr i8, ptr %19, i32 8
  %call40.i = call i32 @krb5_make_seq_num(ptr noundef nonnull %1, ptr noundef %44, i32 noundef %cond.i, i32 noundef %asmresult.i.i.i.i.i, ptr noundef %add.ptr.i, ptr noundef %add.ptr39.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end32.i.gss_get_mic_v1.exit_crit_edge

if.end32.i.gss_get_mic_v1.exit_crit_edge:         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gss_get_mic_v1.exit

if.end43.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %endtime.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %47 = ptrtoint ptr %endtime.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %endtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %call23.i)
  %cmp44.i = icmp slt i64 %48, %call23.i
  %cond45.i = select i1 %cmp44.i, i32 786432, i32 0
  br label %gss_get_mic_v1.exit

gss_get_mic_v1.exit:                              ; preds = %if.end43.i, %if.end32.i.gss_get_mic_v1.exit_crit_edge, %do.end22.i.gss_get_mic_v1.exit_crit_edge
  %retval.0.i = phi i32 [ %cond45.i, %if.end43.i ], [ 851968, %do.end22.i.gss_get_mic_v1.exit_crit_edge ], [ 851968, %if.end32.i.gss_get_mic_v1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %md5cksum.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cksumdata.i) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cksumdata.i10) #6
  %49 = call ptr @memset(ptr %cksumdata.i10, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cksumobj.i) #6
  %50 = getelementptr inbounds %struct.xdr_netobj, ptr %cksumobj.i, i32 0, i32 1
  %51 = ptrtoint ptr %cksumobj.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 20, ptr %cksumobj.i, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cksumdata.i10, ptr %50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %53 = load i32, ptr @rpc_debug, align 4
  %and.i11 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %sw.bb4.do.end5.i_crit_edge, label %do.end.i14, !prof !20

sw.bb4.do.end5.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.i

do.end.i14:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i14, %sw.bb4.do.end5.i_crit_edge
  %flags1.i.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags1.i.i, align 8
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 5
  %58 = xor i8 %57, 1
  %data.i.i15 = getelementptr inbounds %struct.xdr_netobj, ptr %token, i32 0, i32 1
  %59 = ptrtoint ptr %data.i.i15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i15, align 4
  %incdec.ptr.i.i16 = getelementptr i16, ptr %60, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1028, ptr %60, align 2
  %incdec.ptr10.i.i = getelementptr i8, ptr %incdec.ptr.i.i16, i32 1
  %62 = ptrtoint ptr %incdec.ptr.i.i16 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %58, ptr %incdec.ptr.i.i16, align 1
  %gk5e.i.i17 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %63 = call ptr @memset(ptr %incdec.ptr10.i.i, i32 255, i32 5)
  %64 = ptrtoint ptr %gk5e.i.i17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gk5e.i.i17, align 4
  %cksumlength.i.i18 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %cksumlength.i.i18 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cksumlength.i.i18, align 4
  %add.i.i19 = add i32 %67, 16
  %68 = ptrtoint ptr %token to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i.i19, ptr %token, align 4
  %seq_send64.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 13
  %call.i.i.i20 = call zeroext i1 @__kasan_check_write(ptr noundef %seq_send64.i, i32 noundef 8) #6
  %call.i2.i.i = call i64 @generic_atomic64_fetch_add(i64 noundef 1, ptr noundef %seq_send64.i) #6
  %add.ptr.i21 = getelementptr i8, ptr %60, i32 8
  %69 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %call.i2.i.i, ptr %add.ptr.i21, align 1
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool8.not.i = icmp eq i32 %71, 0
  %initiator_sign.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 16
  %acceptor_sign.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 17
  %cksumkey.0.i22 = select i1 %tobool8.not.i, ptr %acceptor_sign.i, ptr %initiator_sign.i
  %cksum_usage.0.i = select i1 %tobool8.not.i, i32 23, i32 25
  %call13.i = call i32 @make_checksum_v2(ptr noundef %1, ptr noundef %60, i32 noundef 16, ptr noundef %text, i32 noundef 0, ptr noundef %cksumkey.0.i22, i32 noundef %cksum_usage.0.i, ptr noundef nonnull %cksumobj.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %do.end5.i.gss_get_mic_v2.exit_crit_edge

do.end5.i.gss_get_mic_v2.exit_crit_edge:          ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gss_get_mic_v2.exit

if.end16.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr17.i = getelementptr i8, ptr %60, i32 16
  %72 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %50, align 4
  %74 = ptrtoint ptr %cksumobj.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cksumobj.i, align 4
  %76 = call ptr @memcpy(ptr %add.ptr17.i, ptr %73, i32 %75)
  %call20.i = call i64 @ktime_get_real_seconds() #6
  %endtime.i23 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %77 = ptrtoint ptr %endtime.i23 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %endtime.i23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %call20.i)
  %cmp.i24 = icmp slt i64 %78, %call20.i
  %cond.i25 = select i1 %cmp.i24, i32 786432, i32 0
  br label %gss_get_mic_v2.exit

gss_get_mic_v2.exit:                              ; preds = %if.end16.i, %do.end5.i.gss_get_mic_v2.exit_crit_edge
  %retval.0.i26 = phi i32 [ %cond.i25, %if.end16.i ], [ 851968, %do.end5.i.gss_get_mic_v2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cksumobj.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cksumdata.i10) #6
  br label %cleanup

cleanup:                                          ; preds = %gss_get_mic_v2.exit, %gss_get_mic_v1.exit
  %retval.0 = phi i32 [ %retval.0.i26, %gss_get_mic_v2.exit ], [ %retval.0.i, %gss_get_mic_v1.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_checksum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_make_seq_num(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_token_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @g_make_token_header(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_checksum_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_fetch_add(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_krb5_seal.c", i32 138, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gss_get_mic_v1._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gss_get_mic_v1._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_gss/gss_krb5_seal.c", i32 178, i32 2}
!8 = !{ptr @gss_get_mic_v2._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @gss_get_mic_v2._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2155087500, i64 2155088000, i64 2155087537, i64 2155087593, i64 2155087627, i64 2155087651, i64 2155087692, i64 2155087713, i64 2155087741, i64 2155087775}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2155083920, i64 2155084420, i64 2155083957, i64 2155084013, i64 2155084047, i64 2155084071, i64 2155084112, i64 2155084133, i64 2155084161, i64 2155084195}
!23 = !{i64 2148306177}
!24 = !{i64 2148220776, i64 2148220808, i64 2148220837, i64 2148220871, i64 2148220902, i64 2148220925}
!25 = !{i64 2148306405}
