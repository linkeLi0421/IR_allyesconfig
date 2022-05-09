; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_krb5_unseal.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_krb5_unseal.c"
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
@gss_verify_mic_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RPC:       krb5_read_token\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gss_verify_mic_v1\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/sunrpc/auth_gss/gss_krb5_unseal.c\00", [58 x i8] zeroinitializer }, align 32
@gss_verify_mic_v1._entry_ptr = internal global ptr @gss_verify_mic_v1._entry, section ".printk_index", align 4
@gss_verify_mic_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RPC:       %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gss_verify_mic_v2\00", [46 x i8] zeroinitializer }, align 32
@gss_verify_mic_v2._entry_ptr = internal global ptr @gss_verify_mic_v2._entry, section ".printk_index", align 4
@gss_verify_mic_v2._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: token has unexpected sealed flag\0A\00", [58 x i8] zeroinitializer }, align 32
@gss_verify_mic_v2._entry_ptr.7 = internal global ptr @gss_verify_mic_v2._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 6, i64 17, i64 18]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 89, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 160, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [41 x i8] c"../net/sunrpc/auth_gss/gss_krb5_unseal.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 172, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @gss_verify_mic_v1._entry, ptr @gss_verify_mic_v1._entry_ptr, ptr @gss_verify_mic_v2._entry, ptr @gss_verify_mic_v2._entry.5, ptr @gss_verify_mic_v2._entry_ptr, ptr @gss_verify_mic_v2._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_verify_mic_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_verify_mic_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_verify_mic_v2._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_verify_mic_kerberos(ptr nocapture noundef readonly %gss_ctx, ptr noundef %message_buffer, ptr nocapture noundef readonly %read_token) local_unnamed_addr #0 align 64 {
entry:
  %cksumdata.i10 = alloca [20 x i8], align 1
  %cksumobj.i = alloca %struct.xdr_netobj, align 4
  %cksumdata.i = alloca [20 x i8], align 1
  %md5cksum.i = alloca %struct.xdr_netobj, align 4
  %direction.i = alloca i32, align 4
  %seqnum.i = alloca i32, align 4
  %ptr.i = alloca ptr, align 4
  %bodysize.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
    i32 6, label %entry.sw.bb_crit_edge25
    i32 17, label %entry.sw.bb4_crit_edge
    i32 18, label %entry.sw.bb4_crit_edge26
  ]

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_unseal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #5, !srcloc !24
  unreachable

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cksumdata.i) #5
  %5 = call ptr @memset(ptr %cksumdata.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %md5cksum.i) #5
  %6 = getelementptr inbounds %struct.xdr_netobj, ptr %md5cksum.i, i32 0, i32 1
  %7 = ptrtoint ptr %md5cksum.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 20, ptr %md5cksum.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cksumdata.i, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %direction.i) #5
  %9 = ptrtoint ptr %direction.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %direction.i, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seqnum.i) #5
  %10 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %seqnum.i, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr.i) #5
  %data1.i = getelementptr inbounds %struct.xdr_netobj, ptr %read_token, i32 0, i32 1
  %11 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data1.i, align 4
  %13 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bodysize.i) #5
  %14 = ptrtoint ptr %bodysize.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %bodysize.i, align 4, !annotation !25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %15 = load i32, ptr @rpc_debug, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.do.end6.i_crit_edge, label %do.end.i, !prof !26

sw.bb.do.end6.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %sw.bb.do.end6.i_crit_edge
  %mech_used.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %read_token to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_token, align 4
  %call8.i = call i32 @g_verify_token_header(ptr noundef %mech_used.i, ptr noundef nonnull %bodysize.i, ptr noundef nonnull %ptr.i, i32 noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %do.end6.i.gss_verify_mic_v1.exit_crit_edge

do.end6.i.gss_verify_mic_v1.exit_crit_edge:       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end11.i:                                       ; preds = %do.end6.i
  %18 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptr.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp.not.i = icmp eq i8 %21, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end11.i.gss_verify_mic_v1.exit_crit_edge

if.end11.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %arrayidx13.i = getelementptr i8, ptr %19, i32 1
  %22 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp15.not.i = icmp eq i8 %23, 1
  br i1 %cmp15.not.i, label %if.end18.i, label %lor.lhs.false.i.gss_verify_mic_v1.exit_crit_edge

lor.lhs.false.i.gss_verify_mic_v1.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end18.i:                                       ; preds = %lor.lhs.false.i
  %arrayidx19.i = getelementptr i8, ptr %19, i32 2
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %25 to i32
  %arrayidx21.i = getelementptr i8, ptr %19, i32 3
  %26 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %conv22.i, 8
  %add.i = or i32 %shl.i, %conv20.i
  %gk5e.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gk5e.i, align 4
  %signalg23.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %signalg23.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %signalg23.i, align 4
  %conv24.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv24.i)
  %cmp25.not.i = icmp eq i32 %add.i, %conv24.i
  br i1 %cmp25.not.i, label %if.end28.i, label %if.end18.i.gss_verify_mic_v1.exit_crit_edge

if.end18.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end28.i:                                       ; preds = %if.end18.i
  %arrayidx29.i = getelementptr i8, ptr %19, i32 4
  %32 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %33 to i32
  %arrayidx31.i = getelementptr i8, ptr %19, i32 5
  %34 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %35 to i32
  %shl33.i = shl nuw nsw i32 %conv32.i, 8
  %add34.i = or i32 %shl33.i, %conv30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add34.i)
  %cmp35.not.i = icmp eq i32 %add34.i, 65535
  br i1 %cmp35.not.i, label %if.end38.i, label %if.end28.i.gss_verify_mic_v1.exit_crit_edge

if.end28.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end38.i:                                       ; preds = %if.end28.i
  %arrayidx39.i = getelementptr i8, ptr %19, i32 6
  %36 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx39.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp41.not.i = icmp eq i8 %37, -1
  br i1 %cmp41.not.i, label %lor.lhs.false43.i, label %if.end38.i.gss_verify_mic_v1.exit_crit_edge

if.end38.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

lor.lhs.false43.i:                                ; preds = %if.end38.i
  %arrayidx44.i = getelementptr i8, ptr %19, i32 7
  %38 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp46.not.i = icmp eq i8 %39, -1
  br i1 %cmp46.not.i, label %if.end49.i, label %lor.lhs.false43.i.gss_verify_mic_v1.exit_crit_edge

lor.lhs.false43.i.gss_verify_mic_v1.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end49.i:                                       ; preds = %lor.lhs.false43.i
  %keyed_cksum.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %29, i32 0, i32 10
  %40 = ptrtoint ptr %keyed_cksum.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %keyed_cksum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool51.not.i = icmp eq i32 %41, 0
  %cksum.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 11
  %cksumkey.0.i = select i1 %tobool51.not.i, ptr null, ptr %cksum.i
  %call55.i = call i32 @make_checksum(ptr noundef %1, ptr noundef %19, i32 noundef 8, ptr noundef %message_buffer, i32 noundef 0, ptr noundef %cksumkey.0.i, i32 noundef 23, ptr noundef nonnull %md5cksum.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end49.i.gss_verify_mic_v1.exit_crit_edge

if.end49.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end58.i:                                       ; preds = %if.end49.i
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 4
  %44 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 16
  %46 = ptrtoint ptr %gk5e.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gk5e.i, align 4
  %cksumlength.i = getelementptr inbounds %struct.gss_krb5_enctype, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %cksumlength.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cksumlength.i, align 4
  %bcmp.i = call i32 @bcmp(ptr %43, ptr %add.ptr.i, i32 %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool62.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end58.i.gss_verify_mic_v1.exit_crit_edge

if.end58.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end64.i:                                       ; preds = %if.end58.i
  %call65.i = call i64 @ktime_get_real_seconds() #5
  %50 = shl i64 %call65.i, 32
  %conv67.i = ashr exact i64 %50, 32
  %endtime.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %51 = ptrtoint ptr %endtime.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %endtime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv67.i, i64 %52)
  %cmp68.i = icmp sgt i64 %conv67.i, %52
  br i1 %cmp68.i, label %if.end64.i.gss_verify_mic_v1.exit_crit_edge, label %if.end71.i

if.end64.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end71.i:                                       ; preds = %if.end64.i
  %53 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ptr.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %54, i32 16
  %add.ptr73.i = getelementptr i8, ptr %54, i32 8
  %call74.i = call i32 @krb5_get_seq_num(ptr noundef %1, ptr noundef %add.ptr72.i, ptr noundef %add.ptr73.i, ptr noundef nonnull %direction.i, ptr noundef nonnull %seqnum.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end71.i.gss_verify_mic_v1.exit_crit_edge

if.end71.i.gss_verify_mic_v1.exit_crit_edge:      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

if.end77.i:                                       ; preds = %if.end71.i
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool78.not.i = icmp eq i32 %56, 0
  %57 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %direction.i, align 4
  br i1 %tobool78.not.i, label %land.lhs.true84.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %58)
  %cmp79.not.i = icmp eq i32 %58, 255
  br i1 %cmp79.not.i, label %land.lhs.true.i.if.end88.i_crit_edge, label %land.lhs.true.i.gss_verify_mic_v1.exit_crit_edge

land.lhs.true.i.gss_verify_mic_v1.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

land.lhs.true.i.if.end88.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88.i

land.lhs.true84.i:                                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp85.not.i = icmp eq i32 %58, 0
  br i1 %cmp85.not.i, label %land.lhs.true84.i.if.end88.i_crit_edge, label %land.lhs.true84.i.gss_verify_mic_v1.exit_crit_edge

land.lhs.true84.i.gss_verify_mic_v1.exit_crit_edge: ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v1.exit

land.lhs.true84.i.if.end88.i_crit_edge:           ; preds = %land.lhs.true84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88.i

if.end88.i:                                       ; preds = %land.lhs.true84.i.if.end88.i_crit_edge, %land.lhs.true.i.if.end88.i_crit_edge
  br label %gss_verify_mic_v1.exit

gss_verify_mic_v1.exit:                           ; preds = %if.end88.i, %land.lhs.true84.i.gss_verify_mic_v1.exit_crit_edge, %land.lhs.true.i.gss_verify_mic_v1.exit_crit_edge, %if.end71.i.gss_verify_mic_v1.exit_crit_edge, %if.end64.i.gss_verify_mic_v1.exit_crit_edge, %if.end58.i.gss_verify_mic_v1.exit_crit_edge, %if.end49.i.gss_verify_mic_v1.exit_crit_edge, %lor.lhs.false43.i.gss_verify_mic_v1.exit_crit_edge, %if.end38.i.gss_verify_mic_v1.exit_crit_edge, %if.end28.i.gss_verify_mic_v1.exit_crit_edge, %if.end18.i.gss_verify_mic_v1.exit_crit_edge, %lor.lhs.false.i.gss_verify_mic_v1.exit_crit_edge, %if.end11.i.gss_verify_mic_v1.exit_crit_edge, %do.end6.i.gss_verify_mic_v1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end88.i ], [ 589824, %do.end6.i.gss_verify_mic_v1.exit_crit_edge ], [ 589824, %lor.lhs.false.i.gss_verify_mic_v1.exit_crit_edge ], [ 589824, %if.end11.i.gss_verify_mic_v1.exit_crit_edge ], [ 589824, %if.end18.i.gss_verify_mic_v1.exit_crit_edge ], [ 589824, %if.end28.i.gss_verify_mic_v1.exit_crit_edge ], [ 589824, %lor.lhs.false43.i.gss_verify_mic_v1.exit_crit_edge ], [ 589824, %if.end38.i.gss_verify_mic_v1.exit_crit_edge ], [ 851968, %if.end49.i.gss_verify_mic_v1.exit_crit_edge ], [ 393216, %if.end58.i.gss_verify_mic_v1.exit_crit_edge ], [ 786432, %if.end64.i.gss_verify_mic_v1.exit_crit_edge ], [ 851968, %if.end71.i.gss_verify_mic_v1.exit_crit_edge ], [ 393216, %land.lhs.true84.i.gss_verify_mic_v1.exit_crit_edge ], [ 393216, %land.lhs.true.i.gss_verify_mic_v1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bodysize.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seqnum.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %direction.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %md5cksum.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cksumdata.i) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge26
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cksumdata.i10) #5
  %59 = call ptr @memset(ptr %cksumdata.i10, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cksumobj.i) #5
  %60 = getelementptr inbounds %struct.xdr_netobj, ptr %cksumobj.i, i32 0, i32 1
  %61 = ptrtoint ptr %cksumobj.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 20, ptr %cksumobj.i, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cksumdata.i10, ptr %60, align 4
  %data1.i11 = getelementptr inbounds %struct.xdr_netobj, ptr %read_token, i32 0, i32 1
  %63 = ptrtoint ptr %data1.i11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data1.i11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %65 = load i32, ptr @rpc_debug, align 4
  %and.i12 = and i32 %65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %sw.bb4.do.end6.i17_crit_edge, label %do.end.i15, !prof !26

sw.bb4.do.end6.i17_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i17

do.end.i15:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %call.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %do.end6.i17

do.end6.i17:                                      ; preds = %do.end.i15, %sw.bb4.do.end6.i17_crit_edge
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %be16_ptr.0.copyload.i = load i16, ptr %64, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1028, i16 %be16_ptr.0.copyload.i)
  %cmp.not.i16 = icmp eq i16 %be16_ptr.0.copyload.i, 1028
  br i1 %cmp.not.i16, label %if.end9.i, label %do.end6.i17.gss_verify_mic_v2.exit_crit_edge

do.end6.i17.gss_verify_mic_v2.exit_crit_edge:     ; preds = %do.end6.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

if.end9.i:                                        ; preds = %do.end6.i17
  %arrayidx.i = getelementptr i8, ptr %64, i32 2
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i, align 1
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool10.not.i = icmp ne i32 %70, 0
  %71 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool13.not.i = icmp eq i8 %71, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 true, i1 %tobool13.not.i
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond96.i = select i1 %tobool10.not.i, i1 %tobool13.not.i, i1 false
  %or.cond97.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond96.i
  br i1 %or.cond97.i, label %if.end9.i.gss_verify_mic_v2.exit_crit_edge, label %if.end21.i

if.end9.i.gss_verify_mic_v2.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

if.end21.i:                                       ; preds = %if.end9.i
  %72 = and i8 %68, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool24.not.i = icmp eq i8 %72, 0
  br i1 %tobool24.not.i, label %for.body.preheader.i, label %do.body26.i

for.body.preheader.i:                             ; preds = %if.end21.i
  %arrayidx47.i = getelementptr i8, ptr %64, i32 3
  %73 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx47.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %cmp49.not.i = icmp eq i8 %74, -1
  br i1 %cmp49.not.i, label %for.cond.i, label %for.body.preheader.i.gss_verify_mic_v2.exit_crit_edge

for.body.preheader.i.gss_verify_mic_v2.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

do.body26.i:                                      ; preds = %if.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %75 = load i32, ptr @rpc_debug, align 4
  %and27.i = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.gss_verify_mic_v2.exit_crit_edge, label %do.end38.i, !prof !26

do.body26.i.gss_verify_mic_v2.exit_crit_edge:     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

do.end38.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #7
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #8
  br label %gss_verify_mic_v2.exit

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx47.1.i = getelementptr i8, ptr %64, i32 4
  %76 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx47.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %77)
  %cmp49.not.1.i = icmp eq i8 %77, -1
  br i1 %cmp49.not.1.i, label %for.cond.1.i, label %for.cond.i.gss_verify_mic_v2.exit_crit_edge

for.cond.i.gss_verify_mic_v2.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx47.2.i = getelementptr i8, ptr %64, i32 5
  %78 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx47.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %79)
  %cmp49.not.2.i = icmp eq i8 %79, -1
  br i1 %cmp49.not.2.i, label %for.cond.2.i, label %for.cond.1.i.gss_verify_mic_v2.exit_crit_edge

for.cond.1.i.gss_verify_mic_v2.exit_crit_edge:    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx47.3.i = getelementptr i8, ptr %64, i32 6
  %80 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx47.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %81)
  %cmp49.not.3.i = icmp eq i8 %81, -1
  br i1 %cmp49.not.3.i, label %for.cond.3.i, label %for.cond.2.i.gss_verify_mic_v2.exit_crit_edge

for.cond.2.i.gss_verify_mic_v2.exit_crit_edge:    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx47.4.i = getelementptr i8, ptr %64, i32 7
  %82 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx47.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %83)
  %cmp49.not.4.i = icmp eq i8 %83, -1
  br i1 %cmp49.not.4.i, label %for.cond.4.i, label %for.cond.3.i.gss_verify_mic_v2.exit_crit_edge

for.cond.3.i.gss_verify_mic_v2.exit_crit_edge:    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool54.not.i = icmp eq i32 %70, 0
  %acceptor_sign.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 17
  %initiator_sign.i = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 16
  %cksumkey.0.i18 = select i1 %tobool54.not.i, ptr %initiator_sign.i, ptr %acceptor_sign.i
  %cksum_usage.0.i = select i1 %tobool54.not.i, i32 25, i32 23
  %call59.i = call i32 @make_checksum_v2(ptr noundef %1, ptr noundef %64, i32 noundef 16, ptr noundef %message_buffer, i32 noundef 0, ptr noundef %cksumkey.0.i18, i32 noundef %cksum_usage.0.i, ptr noundef nonnull %cksumobj.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %for.cond.4.i.gss_verify_mic_v2.exit_crit_edge

for.cond.4.i.gss_verify_mic_v2.exit_crit_edge:    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

if.end62.i:                                       ; preds = %for.cond.4.i
  %84 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %60, align 4
  %add.ptr.i19 = getelementptr i8, ptr %64, i32 16
  %gk5e.i20 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %gk5e.i20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gk5e.i20, align 4
  %cksumlength.i21 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %87, i32 0, i32 9
  %88 = ptrtoint ptr %cksumlength.i21 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cksumlength.i21, align 4
  %bcmp.i22 = call i32 @bcmp(ptr %85, ptr %add.ptr.i19, i32 %89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i22)
  %tobool65.not.i = icmp eq i32 %bcmp.i22, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %if.end62.i.gss_verify_mic_v2.exit_crit_edge

if.end62.i.gss_verify_mic_v2.exit_crit_edge:      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gss_verify_mic_v2.exit

if.end67.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  %call68.i = call i64 @ktime_get_real_seconds() #5
  %endtime.i23 = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 14
  %90 = ptrtoint ptr %endtime.i23 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %endtime.i23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call68.i, i64 %91)
  %cmp69.i = icmp sgt i64 %call68.i, %91
  %..i = select i1 %cmp69.i, i32 786432, i32 0
  br label %gss_verify_mic_v2.exit

gss_verify_mic_v2.exit:                           ; preds = %if.end67.i, %if.end62.i.gss_verify_mic_v2.exit_crit_edge, %for.cond.4.i.gss_verify_mic_v2.exit_crit_edge, %for.cond.3.i.gss_verify_mic_v2.exit_crit_edge, %for.cond.2.i.gss_verify_mic_v2.exit_crit_edge, %for.cond.1.i.gss_verify_mic_v2.exit_crit_edge, %for.cond.i.gss_verify_mic_v2.exit_crit_edge, %do.end38.i, %do.body26.i.gss_verify_mic_v2.exit_crit_edge, %for.body.preheader.i.gss_verify_mic_v2.exit_crit_edge, %if.end9.i.gss_verify_mic_v2.exit_crit_edge, %do.end6.i17.gss_verify_mic_v2.exit_crit_edge
  %retval.0.i24 = phi i32 [ 589824, %do.end6.i17.gss_verify_mic_v2.exit_crit_edge ], [ 393216, %if.end9.i.gss_verify_mic_v2.exit_crit_edge ], [ 851968, %do.end38.i ], [ 851968, %do.body26.i.gss_verify_mic_v2.exit_crit_edge ], [ 851968, %for.cond.4.i.gss_verify_mic_v2.exit_crit_edge ], [ 393216, %if.end62.i.gss_verify_mic_v2.exit_crit_edge ], [ %..i, %if.end67.i ], [ 589824, %for.cond.3.i.gss_verify_mic_v2.exit_crit_edge ], [ 589824, %for.cond.2.i.gss_verify_mic_v2.exit_crit_edge ], [ 589824, %for.cond.1.i.gss_verify_mic_v2.exit_crit_edge ], [ 589824, %for.cond.i.gss_verify_mic_v2.exit_crit_edge ], [ 589824, %for.body.preheader.i.gss_verify_mic_v2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cksumobj.i) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cksumdata.i10) #5
  br label %cleanup

cleanup:                                          ; preds = %gss_verify_mic_v2.exit, %gss_verify_mic_v1.exit
  %retval.0 = phi i32 [ %retval.0.i24, %gss_verify_mic_v2.exit ], [ %retval.0.i, %gss_verify_mic_v1.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_verify_token_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_checksum(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @krb5_get_seq_num(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_checksum_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_krb5_unseal.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gss_verify_mic_v1._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gss_verify_mic_v1._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_gss/gss_krb5_unseal.c", i32 160, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gss_verify_mic_v2._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @gss_verify_mic_v2._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sunrpc/auth_gss/gss_krb5_unseal.c", i32 172, i32 3}
!13 = !{ptr @gss_verify_mic_v2._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @gss_verify_mic_v2._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2155088381, i64 2155088883, i64 2155088418, i64 2155088474, i64 2155088508, i64 2155088532, i64 2155088573, i64 2155088594, i64 2155088622, i64 2155088656}
!25 = !{!"auto-init"}
!26 = !{!"branch_weights", i32 2000, i32 1}
