; ModuleID = '/llk/IR_all_yes/fs/ksmbd/asn1.c_pt.bc'
source_filename = "../fs/ksmbd/asn1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.asn1_decoder = type opaque
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@ksmbd_spnego_negtokeninit_decoder = external dso_local constant %struct.asn1_decoder, align 1
@ksmbd_spnego_negtokentarg_decoder = external dso_local constant %struct.asn1_decoder, align 1
@NTLMSSP_OID_STR = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"+\06\01\04\01\827\02\02\0A", [22 x i8] zeroinitializer }, align 32
@ksmbd_debug_types = external dso_local local_unnamed_addr global i32, align 4
@ksmbd_gssapi_this_mech._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016ksmbd: Unexpected OID: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ksmbd_gssapi_this_mech\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ksmbd/asn1.c\00", [16 x i8] zeroinitializer }, align 32
@ksmbd_gssapi_this_mech._entry_ptr = internal global ptr @ksmbd_gssapi_this_mech._entry, section ".printk_index", align 4
@ksmbd_neg_token_init_mech_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ksmbd_neg_token_init_mech_type\00", [33 x i8] zeroinitializer }, align 32
@ksmbd_neg_token_init_mech_type._entry_ptr = internal global ptr @ksmbd_neg_token_init_mech_type._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.ksmbd_neg_token_init_mech_type = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 4, i32 2, i32 8, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"NTLMSSP_OID_STR\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 26, i32 13 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 172, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [19 x i8] c"../fs/ksmbd/asn1.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 200, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [44 x i8] c"switch.table.ksmbd_neg_token_init_mech_type\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @ksmbd_gssapi_this_mech._entry, ptr @ksmbd_gssapi_this_mech._entry_ptr, ptr @ksmbd_neg_token_init_mech_type._entry, ptr @ksmbd_neg_token_init_mech_type._entry_ptr, ptr @NTLMSSP_OID_STR, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.ksmbd_neg_token_init_mech_type], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NTLMSSP_OID_STR to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_gssapi_this_mech._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_neg_token_init_mech_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ksmbd_neg_token_init_mech_type to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_decode_negTokenInit(ptr noundef %security_blob, i32 noundef %length, ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @ksmbd_spnego_negtokeninit_decoder, ptr noundef %conn, ptr noundef %security_blob, i32 noundef %length) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_decode_negTokenTarg(ptr noundef %security_blob, i32 noundef %length, ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @ksmbd_spnego_negtokentarg_decoder, ptr noundef %conn, ptr noundef %security_blob, i32 noundef %length) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_spnego_ntlmssp_neg_blob(ptr nocapture noundef writeonly %pbuffer, ptr nocapture noundef writeonly %buflen, ptr nocapture noundef readonly %ntlm_blob, i32 noundef %ntlm_blob_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %ntlm_blob_len)
  %cmp.i48 = icmp sgt i32 %ntlm_blob_len, 16777215
  br i1 %cmp.i48, label %entry.compute_asn_hdr_len_bytes.exit_crit_edge, label %if.else.i

entry.compute_asn_hdr_len_bytes.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %ntlm_blob_len)
  %cmp1.i = icmp sgt i32 %ntlm_blob_len, 65535
  br i1 %cmp1.i, label %if.else.i.compute_asn_hdr_len_bytes.exit_crit_edge, label %if.else3.i

if.else.i.compute_asn_hdr_len_bytes.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %ntlm_blob_len)
  %cmp4.i = icmp sgt i32 %ntlm_blob_len, 255
  br i1 %cmp4.i, label %if.else3.i.compute_asn_hdr_len_bytes.exit_crit_edge, label %if.else6.i

if.else3.i.compute_asn_hdr_len_bytes.exit_crit_edge: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %ntlm_blob_len)
  %cmp7.i = icmp sgt i32 %ntlm_blob_len, 127
  %phi.bo = select i1 %cmp7.i, i32 2, i32 0
  br label %compute_asn_hdr_len_bytes.exit

compute_asn_hdr_len_bytes.exit:                   ; preds = %if.else6.i, %if.else3.i.compute_asn_hdr_len_bytes.exit_crit_edge, %if.else.i.compute_asn_hdr_len_bytes.exit_crit_edge, %entry.compute_asn_hdr_len_bytes.exit_crit_edge
  %retval.0.i = phi i32 [ 8, %entry.compute_asn_hdr_len_bytes.exit_crit_edge ], [ 6, %if.else.i.compute_asn_hdr_len_bytes.exit_crit_edge ], [ 4, %if.else3.i.compute_asn_hdr_len_bytes.exit_crit_edge ], [ %phi.bo, %if.else6.i ]
  %add8 = add i32 %ntlm_blob_len, 4
  %add9 = add i32 %add8, %retval.0.i
  %add11 = add i32 %add9, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %add11)
  %cmp.i49 = icmp sgt i32 %add11, 16777215
  br i1 %cmp.i49, label %compute_asn_hdr_len_bytes.exit.compute_asn_hdr_len_bytes.exit58_crit_edge, label %if.else.i51

compute_asn_hdr_len_bytes.exit.compute_asn_hdr_len_bytes.exit58_crit_edge: ; preds = %compute_asn_hdr_len_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit58

if.else.i51:                                      ; preds = %compute_asn_hdr_len_bytes.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add11)
  %cmp1.i50 = icmp sgt i32 %add11, 65535
  br i1 %cmp1.i50, label %if.else.i51.compute_asn_hdr_len_bytes.exit58_crit_edge, label %if.else3.i53

if.else.i51.compute_asn_hdr_len_bytes.exit58_crit_edge: ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit58

if.else3.i53:                                     ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add11)
  %cmp4.i52 = icmp sgt i32 %add11, 255
  br i1 %cmp4.i52, label %if.else3.i53.compute_asn_hdr_len_bytes.exit58_crit_edge, label %if.else6.i56

if.else3.i53.compute_asn_hdr_len_bytes.exit58_crit_edge: ; preds = %if.else3.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit58

if.else6.i56:                                     ; preds = %if.else3.i53
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add11)
  %cmp7.i54 = icmp sgt i32 %add11, 127
  %phi.bo179 = select i1 %cmp7.i54, i32 2, i32 0
  br label %compute_asn_hdr_len_bytes.exit58

compute_asn_hdr_len_bytes.exit58:                 ; preds = %if.else6.i56, %if.else3.i53.compute_asn_hdr_len_bytes.exit58_crit_edge, %if.else.i51.compute_asn_hdr_len_bytes.exit58_crit_edge, %compute_asn_hdr_len_bytes.exit.compute_asn_hdr_len_bytes.exit58_crit_edge
  %retval.0.i57 = phi i32 [ 8, %compute_asn_hdr_len_bytes.exit.compute_asn_hdr_len_bytes.exit58_crit_edge ], [ 6, %if.else.i51.compute_asn_hdr_len_bytes.exit58_crit_edge ], [ 4, %if.else3.i53.compute_asn_hdr_len_bytes.exit58_crit_edge ], [ %phi.bo179, %if.else6.i56 ]
  %add16 = add i32 %add9, 23
  %add17 = add i32 %add16, %retval.0.i57
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add17, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %compute_asn_hdr_len_bytes.exit58.cleanup_crit_edge, label %if.end

compute_asn_hdr_len_bytes.exit58.cleanup_crit_edge: ; preds = %compute_asn_hdr_len_bytes.exit58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %compute_asn_hdr_len_bytes.exit58
  br i1 %cmp.i49, label %if.end.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge, label %if.else.i.i

if.end.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit.thread.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add11)
  %cmp1.i.i = icmp sgt i32 %add11, 65535
  br i1 %cmp1.i.i, label %if.else.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge, label %if.else3.i.i

if.else.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit.thread.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add11)
  %cmp4.i.i = icmp sgt i32 %add11, 255
  br i1 %cmp4.i.i, label %if.else3.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge, label %compute_asn_hdr_len_bytes.exit.i

if.else3.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge: ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit.thread.i

compute_asn_hdr_len_bytes.exit.thread.i:          ; preds = %if.else3.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge, %if.else.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge, %if.end.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge
  %retval.0.i.ph.i60 = phi i32 [ 2, %if.else3.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge ], [ 3, %if.else.i.i.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge ], [ 4, %if.end.compute_asn_hdr_len_bytes.exit.thread.i_crit_edge ]
  %conv84.i = trunc i32 %retval.0.i.ph.i60 to i8
  %add85.i = add nuw i32 %add9, 21
  %add287.i = add nuw i32 %add85.i, %retval.0.i.ph.i60
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -95, ptr %call9.i, align 128
  %phi.bo.i = or i8 %conv84.i, -128
  br label %for.body.preheader.i

compute_asn_hdr_len_bytes.exit.i:                 ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add11)
  %cmp7.i.i = icmp sgt i32 %add11, 127
  %..i.i = zext i1 %cmp7.i.i to i32
  %add.i = add i32 %add9, 21
  %add2.i = add nsw i32 %add.i, %..i.i
  %1 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -95, ptr %call9.i, align 128
  br i1 %cmp7.i.i, label %compute_asn_hdr_len_bytes.exit.i.for.body.preheader.i_crit_edge, label %if.end.thread.i

compute_asn_hdr_len_bytes.exit.i.for.body.preheader.i_crit_edge: ; preds = %compute_asn_hdr_len_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i

if.end.thread.i:                                  ; preds = %compute_asn_hdr_len_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i = trunc i32 %add2.i to i8
  %arrayidx5.i = getelementptr i8, ptr %call9.i, i32 1
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3.i, ptr %arrayidx5.i, align 1
  %arrayidx18108.i = getelementptr i8, ptr %call9.i, i32 2
  %3 = ptrtoint ptr %arrayidx18108.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 48, ptr %arrayidx18108.i, align 2
  %conv21.i = add i8 %conv3.i, -2
  %arrayidx23.i = getelementptr i8, ptr %call9.i, i32 3
  %4 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  br label %encode_asn_tag.exit

for.body.preheader.i:                             ; preds = %compute_asn_hdr_len_bytes.exit.i.for.body.preheader.i_crit_edge, %compute_asn_hdr_len_bytes.exit.thread.i
  %add295.i = phi i32 [ %add287.i, %compute_asn_hdr_len_bytes.exit.thread.i ], [ %add2.i, %compute_asn_hdr_len_bytes.exit.i.for.body.preheader.i_crit_edge ]
  %conv194.i = phi i32 [ %retval.0.i.ph.i60, %compute_asn_hdr_len_bytes.exit.thread.i ], [ 1, %compute_asn_hdr_len_bytes.exit.i.for.body.preheader.i_crit_edge ]
  %conv92.i = phi i8 [ %phi.bo.i, %compute_asn_hdr_len_bytes.exit.thread.i ], [ -127, %compute_asn_hdr_len_bytes.exit.i.for.body.preheader.i_crit_edge ]
  %arrayidx9.i = getelementptr i8, ptr %call9.i, i32 1
  %5 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv92.i, ptr %arrayidx9.i, align 1
  %i.0112.i = add nsw i32 %conv194.i, -1
  %mul.i = shl nsw i32 %i.0112.i, 3
  %shr.i = ashr i32 %add295.i, %mul.i
  %conv12.i = trunc i32 %shr.i to i8
  %arrayidx14.i = getelementptr i8, ptr %call9.i, i32 2
  %6 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv12.i, ptr %arrayidx14.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0112.i)
  %cmp.not.i = icmp eq i32 %i.0112.i, 0
  br i1 %cmp.not.i, label %for.body.preheader.i.for.body35.preheader.i_crit_edge, label %for.body.i.1

for.body.preheader.i.for.body35.preheader.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35.preheader.i

for.body.i.1:                                     ; preds = %for.body.preheader.i
  %i.0.i = add nsw i32 %conv194.i, -2
  %mul.i.1 = shl nsw i32 %i.0.i, 3
  %shr.i.1 = ashr i32 %add295.i, %mul.i.1
  %conv12.i.1 = trunc i32 %shr.i.1 to i8
  %arrayidx14.i.1 = getelementptr i8, ptr %call9.i, i32 3
  %7 = ptrtoint ptr %arrayidx14.i.1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12.i.1, ptr %arrayidx14.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.not.i.1 = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i.1, label %for.body.i.1.for.body35.preheader.i_crit_edge, label %for.body.i.2

for.body.i.1.for.body35.preheader.i_crit_edge:    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35.preheader.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %i.0.i.1 = add nsw i32 %conv194.i, -3
  %mul.i.2 = shl nsw i32 %i.0.i.1, 3
  %shr.i.2 = ashr i32 %add295.i, %mul.i.2
  %conv12.i.2 = trunc i32 %shr.i.2 to i8
  %arrayidx14.i.2 = getelementptr i8, ptr %call9.i, i32 4
  %8 = ptrtoint ptr %arrayidx14.i.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12.i.2, ptr %arrayidx14.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.1)
  %cmp.not.i.2 = icmp eq i32 %i.0.i.1, 0
  br i1 %cmp.not.i.2, label %for.body.i.2.for.body35.preheader.i_crit_edge, label %for.body.i.3

for.body.i.2.for.body35.preheader.i_crit_edge:    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35.preheader.i

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %i.0.i.2 = shl nsw i32 %conv194.i, 3
  %mul.i.3 = add nsw i32 %i.0.i.2, -32
  %shr.i.3 = ashr i32 %add295.i, %mul.i.3
  %conv12.i.3 = trunc i32 %shr.i.3 to i8
  %arrayidx14.i.3 = getelementptr i8, ptr %call9.i, i32 5
  %9 = ptrtoint ptr %arrayidx14.i.3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv12.i.3, ptr %arrayidx14.i.3, align 1
  br label %for.body35.preheader.i

for.body35.preheader.i:                           ; preds = %for.body.i.3, %for.body.i.2.for.body35.preheader.i_crit_edge, %for.body.i.1.for.body35.preheader.i_crit_edge, %for.body.preheader.i.for.body35.preheader.i_crit_edge
  %index.0114.i.lcssa = phi i32 [ 2, %for.body.preheader.i.for.body35.preheader.i_crit_edge ], [ 3, %for.body.i.1.for.body35.preheader.i_crit_edge ], [ 4, %for.body.i.2.for.body35.preheader.i_crit_edge ], [ 5, %for.body.i.3 ]
  %inc13.i.lcssa = phi i32 [ 3, %for.body.preheader.i.for.body35.preheader.i_crit_edge ], [ 4, %for.body.i.1.for.body35.preheader.i_crit_edge ], [ 5, %for.body.i.2.for.body35.preheader.i_crit_edge ], [ 6, %for.body.i.3 ]
  %sub15.neg.i = sub i32 %add295.i, %inc13.i.lcssa
  %inc17.i = add nuw nsw i32 %index.0114.i.lcssa, 2
  %arrayidx18.i = getelementptr i8, ptr %call9.i, i32 %inc13.i.lcssa
  %10 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 48, ptr %arrayidx18.i, align 1
  %arrayidx29.i = getelementptr i8, ptr %call9.i, i32 %inc17.i
  %11 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv92.i, ptr %arrayidx29.i, align 1
  %12 = add nsw i32 %conv194.i, %index.0114.i.lcssa
  %13 = add nsw i32 %12, 3
  %inc28.i = add nuw nsw i32 %index.0114.i.lcssa, 3
  %mul36.i = shl nsw i32 %i.0112.i, 3
  %shr37.i = ashr i32 %sub15.neg.i, %mul36.i
  %conv39.i = trunc i32 %shr37.i to i8
  %inc40.i = add nuw nsw i32 %index.0114.i.lcssa, 4
  %arrayidx41.i = getelementptr i8, ptr %call9.i, i32 %inc28.i
  %14 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv39.i, ptr %arrayidx41.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40.i, i32 %13)
  %exitcond.not = icmp eq i32 %inc40.i, %13
  br i1 %exitcond.not, label %for.body35.preheader.i.encode_asn_tag.exit_crit_edge, label %for.body35.i.1

for.body35.preheader.i.encode_asn_tag.exit_crit_edge: ; preds = %for.body35.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_asn_tag.exit

for.body35.i.1:                                   ; preds = %for.body35.preheader.i
  %i.1.i = shl nsw i32 %conv194.i, 3
  %mul36.i.1 = add nsw i32 %i.1.i, -16
  %shr37.i.1 = ashr i32 %sub15.neg.i, %mul36.i.1
  %conv39.i.1 = trunc i32 %shr37.i.1 to i8
  %inc40.i.1 = add nuw nsw i32 %index.0114.i.lcssa, 5
  %arrayidx41.i.1 = getelementptr i8, ptr %call9.i, i32 %inc40.i
  %15 = ptrtoint ptr %arrayidx41.i.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv39.i.1, ptr %arrayidx41.i.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40.i.1, i32 %13)
  %exitcond.not.1 = icmp eq i32 %inc40.i.1, %13
  br i1 %exitcond.not.1, label %for.body35.i.1.encode_asn_tag.exit_crit_edge, label %for.body35.i.2

for.body35.i.1.encode_asn_tag.exit_crit_edge:     ; preds = %for.body35.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_asn_tag.exit

for.body35.i.2:                                   ; preds = %for.body35.i.1
  %i.1.i.1 = shl nsw i32 %conv194.i, 3
  %mul36.i.2 = add nsw i32 %i.1.i.1, -24
  %shr37.i.2 = ashr i32 %sub15.neg.i, %mul36.i.2
  %conv39.i.2 = trunc i32 %shr37.i.2 to i8
  %inc40.i.2 = add nuw nsw i32 %index.0114.i.lcssa, 6
  %arrayidx41.i.2 = getelementptr i8, ptr %call9.i, i32 %inc40.i.1
  %16 = ptrtoint ptr %arrayidx41.i.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv39.i.2, ptr %arrayidx41.i.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc40.i.2, i32 %13)
  %exitcond.not.2 = icmp eq i32 %inc40.i.2, %13
  br i1 %exitcond.not.2, label %for.body35.i.2.encode_asn_tag.exit_crit_edge, label %for.body35.i.3

for.body35.i.2.encode_asn_tag.exit_crit_edge:     ; preds = %for.body35.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_asn_tag.exit

for.body35.i.3:                                   ; preds = %for.body35.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %i.1.i.2 = shl nsw i32 %conv194.i, 3
  %mul36.i.3 = add nsw i32 %i.1.i.2, -32
  %shr37.i.3 = ashr i32 %sub15.neg.i, %mul36.i.3
  %conv39.i.3 = trunc i32 %shr37.i.3 to i8
  %arrayidx41.i.3 = getelementptr i8, ptr %call9.i, i32 %inc40.i.2
  %17 = ptrtoint ptr %arrayidx41.i.3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv39.i.3, ptr %arrayidx41.i.3, align 1
  br label %encode_asn_tag.exit

encode_asn_tag.exit:                              ; preds = %for.body35.i.3, %for.body35.i.2.encode_asn_tag.exit_crit_edge, %for.body35.i.1.encode_asn_tag.exit_crit_edge, %for.body35.preheader.i.encode_asn_tag.exit_crit_edge, %if.end.thread.i
  %index.3.i = phi i32 [ 4, %if.end.thread.i ], [ %13, %for.body35.i.3 ], [ %13, %for.body35.i.2.encode_asn_tag.exit_crit_edge ], [ %13, %for.body35.i.1.encode_asn_tag.exit_crit_edge ], [ %13, %for.body35.preheader.i.encode_asn_tag.exit_crit_edge ]
  %inc.i63 = add nsw i32 %index.3.i, 1
  %arrayidx.i64 = getelementptr i8, ptr %call9.i, i32 %index.3.i
  %18 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -96, ptr %arrayidx.i64, align 1
  %inc4.i66 = add nsw i32 %index.3.i, 2
  %arrayidx5.i67 = getelementptr i8, ptr %call9.i, i32 %inc.i63
  %19 = ptrtoint ptr %arrayidx5.i67 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %arrayidx5.i67, align 1
  %inc17107.i71 = add nsw i32 %index.3.i, 3
  %arrayidx18108.i72 = getelementptr i8, ptr %call9.i, i32 %inc4.i66
  %20 = ptrtoint ptr %arrayidx18108.i72 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %arrayidx18108.i72, align 1
  %inc22.i74 = add nsw i32 %index.3.i, 4
  %arrayidx23.i75 = getelementptr i8, ptr %call9.i, i32 %inc17107.i71
  %21 = ptrtoint ptr %arrayidx23.i75 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx23.i75, align 1
  %inc = add nsw i32 %index.3.i, 5
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %inc22.i74
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx, align 1
  %inc.i80 = add nsw i32 %index.3.i, 6
  %arrayidx.i81 = getelementptr i8, ptr %call9.i, i32 %inc
  %23 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -95, ptr %arrayidx.i81, align 1
  %inc4.i83 = add nsw i32 %index.3.i, 7
  %arrayidx5.i84 = getelementptr i8, ptr %call9.i, i32 %inc.i80
  %24 = ptrtoint ptr %arrayidx5.i84 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 12, ptr %arrayidx5.i84, align 1
  %inc17107.i88 = add nsw i32 %index.3.i, 8
  %arrayidx18108.i89 = getelementptr i8, ptr %call9.i, i32 %inc4.i83
  %25 = ptrtoint ptr %arrayidx18108.i89 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %arrayidx18108.i89, align 1
  %inc22.i91 = add nsw i32 %index.3.i, 9
  %arrayidx23.i92 = getelementptr i8, ptr %call9.i, i32 %inc17107.i88
  %26 = ptrtoint ptr %arrayidx23.i92 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %arrayidx23.i92, align 1
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %inc22.i91
  %27 = call ptr @memcpy(ptr %add.ptr, ptr @NTLMSSP_OID_STR, i32 10)
  %add21 = add nsw i32 %index.3.i, 19
  br i1 %cmp.i48, label %encode_asn_tag.exit.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge, label %if.else.i.i97

encode_asn_tag.exit.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge: ; preds = %encode_asn_tag.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit.thread.i107

if.else.i.i97:                                    ; preds = %encode_asn_tag.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %ntlm_blob_len)
  %cmp1.i.i96 = icmp sgt i32 %ntlm_blob_len, 65535
  br i1 %cmp1.i.i96, label %if.else.i.i97.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge, label %if.else3.i.i99

if.else.i.i97.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge: ; preds = %if.else.i.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit.thread.i107

if.else3.i.i99:                                   ; preds = %if.else.i.i97
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %ntlm_blob_len)
  %cmp4.i.i98 = icmp sgt i32 %ntlm_blob_len, 255
  br i1 %cmp4.i.i98, label %if.else3.i.i99.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge, label %compute_asn_hdr_len_bytes.exit.i114

if.else3.i.i99.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge: ; preds = %if.else3.i.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %compute_asn_hdr_len_bytes.exit.thread.i107

compute_asn_hdr_len_bytes.exit.thread.i107:       ; preds = %if.else3.i.i99.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge, %if.else.i.i97.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge, %encode_asn_tag.exit.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge
  %retval.0.i.ph.i100 = phi i32 [ 2, %if.else3.i.i99.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge ], [ 3, %if.else.i.i97.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge ], [ 4, %encode_asn_tag.exit.compute_asn_hdr_len_bytes.exit.thread.i107_crit_edge ]
  %conv84.i101 = trunc i32 %retval.0.i.ph.i100 to i8
  %add85.i102 = add nuw i32 %ntlm_blob_len, 2
  %add287.i103 = add nuw i32 %add85.i102, %retval.0.i.ph.i100
  %inc88.i104 = add nsw i32 %index.3.i, 20
  %arrayidx89.i105 = getelementptr i8, ptr %call9.i, i32 %add21
  %28 = ptrtoint ptr %arrayidx89.i105 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -94, ptr %arrayidx89.i105, align 1
  %phi.bo.i106 = or i8 %conv84.i101, -128
  br label %for.body.preheader.i134

compute_asn_hdr_len_bytes.exit.i114:              ; preds = %if.else3.i.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %ntlm_blob_len)
  %cmp7.i.i108 = icmp sgt i32 %ntlm_blob_len, 127
  %..i.i109 = zext i1 %cmp7.i.i108 to i32
  %add.i110 = add nsw i32 %ntlm_blob_len, 2
  %add2.i111 = add nsw i32 %add.i110, %..i.i109
  %inc.i112 = add nsw i32 %index.3.i, 20
  %arrayidx.i113 = getelementptr i8, ptr %call9.i, i32 %add21
  %29 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -94, ptr %arrayidx.i113, align 1
  br i1 %cmp7.i.i108, label %compute_asn_hdr_len_bytes.exit.i114.for.body.preheader.i134_crit_edge, label %if.end.thread.i126

compute_asn_hdr_len_bytes.exit.i114.for.body.preheader.i134_crit_edge: ; preds = %compute_asn_hdr_len_bytes.exit.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader.i134

if.end.thread.i126:                               ; preds = %compute_asn_hdr_len_bytes.exit.i114
  call void @__sanitizer_cov_trace_pc() #8
  %conv3.i115 = trunc i32 %add2.i111 to i8
  %inc4.i116 = add nsw i32 %index.3.i, 21
  %arrayidx5.i117 = getelementptr i8, ptr %call9.i, i32 %inc.i112
  %30 = ptrtoint ptr %arrayidx5.i117 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv3.i115, ptr %arrayidx5.i117, align 1
  %inc17107.i121 = add nsw i32 %index.3.i, 22
  %arrayidx18108.i122 = getelementptr i8, ptr %call9.i, i32 %inc4.i116
  %31 = ptrtoint ptr %arrayidx18108.i122 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %arrayidx18108.i122, align 1
  %conv21.i123 = add i8 %conv3.i115, -2
  %inc22.i124 = add nsw i32 %index.3.i, 23
  %arrayidx23.i125 = getelementptr i8, ptr %call9.i, i32 %inc17107.i121
  %32 = ptrtoint ptr %arrayidx23.i125 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv21.i123, ptr %arrayidx23.i125, align 1
  br label %encode_asn_tag.exit163

for.body.preheader.i134:                          ; preds = %compute_asn_hdr_len_bytes.exit.i114.for.body.preheader.i134_crit_edge, %compute_asn_hdr_len_bytes.exit.thread.i107
  %inc97.i127 = phi i32 [ %inc88.i104, %compute_asn_hdr_len_bytes.exit.thread.i107 ], [ %inc.i112, %compute_asn_hdr_len_bytes.exit.i114.for.body.preheader.i134_crit_edge ]
  %add295.i128 = phi i32 [ %add287.i103, %compute_asn_hdr_len_bytes.exit.thread.i107 ], [ %add2.i111, %compute_asn_hdr_len_bytes.exit.i114.for.body.preheader.i134_crit_edge ]
  %conv194.i129 = phi i32 [ %retval.0.i.ph.i100, %compute_asn_hdr_len_bytes.exit.thread.i107 ], [ 1, %compute_asn_hdr_len_bytes.exit.i114.for.body.preheader.i134_crit_edge ]
  %conv92.i130 = phi i8 [ %phi.bo.i106, %compute_asn_hdr_len_bytes.exit.thread.i107 ], [ -127, %compute_asn_hdr_len_bytes.exit.i114.for.body.preheader.i134_crit_edge ]
  %arrayidx9.i132 = getelementptr i8, ptr %call9.i, i32 %inc97.i127
  %33 = ptrtoint ptr %arrayidx9.i132 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv92.i130, ptr %arrayidx9.i132, align 1
  %i.0112.i133 = add nsw i32 %conv194.i129, -1
  %inc8.i131 = add nsw i32 %index.3.i, 21
  %mul.i137 = shl nsw i32 %i.0112.i133, 3
  %shr.i138 = ashr i32 %add295.i128, %mul.i137
  %conv12.i139 = trunc i32 %shr.i138 to i8
  %inc13.i140 = add nsw i32 %index.3.i, 22
  %arrayidx14.i141 = getelementptr i8, ptr %call9.i, i32 %inc8.i131
  %34 = ptrtoint ptr %arrayidx14.i141 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv12.i139, ptr %arrayidx14.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0112.i133)
  %cmp.not.i143 = icmp eq i32 %i.0112.i133, 0
  br i1 %cmp.not.i143, label %for.body.preheader.i134.for.body35.preheader.i151_crit_edge, label %for.body.i144.1

for.body.preheader.i134.for.body35.preheader.i151_crit_edge: ; preds = %for.body.preheader.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35.preheader.i151

for.body.i144.1:                                  ; preds = %for.body.preheader.i134
  %i.0.i142 = add nsw i32 %conv194.i129, -2
  %mul.i137.1 = shl nsw i32 %i.0.i142, 3
  %shr.i138.1 = ashr i32 %add295.i128, %mul.i137.1
  %conv12.i139.1 = trunc i32 %shr.i138.1 to i8
  %inc13.i140.1 = add nsw i32 %index.3.i, 23
  %arrayidx14.i141.1 = getelementptr i8, ptr %call9.i, i32 %inc13.i140
  %35 = ptrtoint ptr %arrayidx14.i141.1 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv12.i139.1, ptr %arrayidx14.i141.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i142)
  %cmp.not.i143.1 = icmp eq i32 %i.0.i142, 0
  br i1 %cmp.not.i143.1, label %for.body.i144.1.for.body35.preheader.i151_crit_edge, label %for.body.i144.2

for.body.i144.1.for.body35.preheader.i151_crit_edge: ; preds = %for.body.i144.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35.preheader.i151

for.body.i144.2:                                  ; preds = %for.body.i144.1
  %i.0.i142.1 = add nsw i32 %conv194.i129, -3
  %mul.i137.2 = shl nsw i32 %i.0.i142.1, 3
  %shr.i138.2 = ashr i32 %add295.i128, %mul.i137.2
  %conv12.i139.2 = trunc i32 %shr.i138.2 to i8
  %inc13.i140.2 = add nsw i32 %index.3.i, 24
  %arrayidx14.i141.2 = getelementptr i8, ptr %call9.i, i32 %inc13.i140.1
  %36 = ptrtoint ptr %arrayidx14.i141.2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv12.i139.2, ptr %arrayidx14.i141.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i142.1)
  %cmp.not.i143.2 = icmp eq i32 %i.0.i142.1, 0
  br i1 %cmp.not.i143.2, label %for.body.i144.2.for.body35.preheader.i151_crit_edge, label %for.body.i144.3

for.body.i144.2.for.body35.preheader.i151_crit_edge: ; preds = %for.body.i144.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35.preheader.i151

for.body.i144.3:                                  ; preds = %for.body.i144.2
  call void @__sanitizer_cov_trace_pc() #8
  %i.0.i142.2 = shl nsw i32 %conv194.i129, 3
  %mul.i137.3 = add nsw i32 %i.0.i142.2, -32
  %shr.i138.3 = ashr i32 %add295.i128, %mul.i137.3
  %conv12.i139.3 = trunc i32 %shr.i138.3 to i8
  %inc13.i140.3 = add nsw i32 %index.3.i, 25
  %arrayidx14.i141.3 = getelementptr i8, ptr %call9.i, i32 %inc13.i140.2
  %37 = ptrtoint ptr %arrayidx14.i141.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv12.i139.3, ptr %arrayidx14.i141.3, align 1
  br label %for.body35.preheader.i151

for.body35.preheader.i151:                        ; preds = %for.body.i144.3, %for.body.i144.2.for.body35.preheader.i151_crit_edge, %for.body.i144.1.for.body35.preheader.i151_crit_edge, %for.body.preheader.i134.for.body35.preheader.i151_crit_edge
  %index.0114.i136.lcssa = phi i32 [ %inc8.i131, %for.body.preheader.i134.for.body35.preheader.i151_crit_edge ], [ %inc13.i140, %for.body.i144.1.for.body35.preheader.i151_crit_edge ], [ %inc13.i140.1, %for.body.i144.2.for.body35.preheader.i151_crit_edge ], [ %inc13.i140.2, %for.body.i144.3 ]
  %inc13.i140.lcssa = phi i32 [ %inc13.i140, %for.body.preheader.i134.for.body35.preheader.i151_crit_edge ], [ %inc13.i140.1, %for.body.i144.1.for.body35.preheader.i151_crit_edge ], [ %inc13.i140.2, %for.body.i144.2.for.body35.preheader.i151_crit_edge ], [ %inc13.i140.3, %for.body.i144.3 ]
  %inc13.i140.neg = xor i32 %index.0114.i136.lcssa, -1
  %sub15.neg.i145 = add i32 %add295.i128, %add21
  %sub16.i146 = add i32 %sub15.neg.i145, %inc13.i140.neg
  %inc17.i147 = add i32 %index.0114.i136.lcssa, 2
  %arrayidx18.i148 = getelementptr i8, ptr %call9.i, i32 %inc13.i140.lcssa
  %38 = ptrtoint ptr %arrayidx18.i148 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 4, ptr %arrayidx18.i148, align 1
  %arrayidx29.i150 = getelementptr i8, ptr %call9.i, i32 %inc17.i147
  %39 = ptrtoint ptr %arrayidx29.i150 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv92.i130, ptr %arrayidx29.i150, align 1
  %inc28.i149 = add i32 %index.0114.i136.lcssa, 3
  %mul36.i154 = shl nsw i32 %i.0112.i133, 3
  %shr37.i155 = ashr i32 %sub16.i146, %mul36.i154
  %conv39.i156 = trunc i32 %shr37.i155 to i8
  %inc40.i157 = add i32 %index.0114.i136.lcssa, 4
  %arrayidx41.i158 = getelementptr i8, ptr %call9.i, i32 %inc28.i149
  %40 = ptrtoint ptr %arrayidx41.i158 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv39.i156, ptr %arrayidx41.i158, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv194.i129)
  %cmp33.i160 = icmp sgt i32 %conv194.i129, 1
  br i1 %cmp33.i160, label %for.body35.i161.1, label %for.body35.preheader.i151.encode_asn_tag.exit163_crit_edge

for.body35.preheader.i151.encode_asn_tag.exit163_crit_edge: ; preds = %for.body35.preheader.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_asn_tag.exit163

for.body35.i161.1:                                ; preds = %for.body35.preheader.i151
  %i.1.i159 = shl nsw i32 %conv194.i129, 3
  %mul36.i154.1 = add nsw i32 %i.1.i159, -16
  %shr37.i155.1 = ashr i32 %sub16.i146, %mul36.i154.1
  %conv39.i156.1 = trunc i32 %shr37.i155.1 to i8
  %inc40.i157.1 = add i32 %index.0114.i136.lcssa, 5
  %arrayidx41.i158.1 = getelementptr i8, ptr %call9.i, i32 %inc40.i157
  %41 = ptrtoint ptr %arrayidx41.i158.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv39.i156.1, ptr %arrayidx41.i158.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv194.i129)
  %cmp33.i160.1.not = icmp eq i32 %conv194.i129, 2
  br i1 %cmp33.i160.1.not, label %for.body35.i161.1.encode_asn_tag.exit163_crit_edge, label %for.body35.i161.2

for.body35.i161.1.encode_asn_tag.exit163_crit_edge: ; preds = %for.body35.i161.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_asn_tag.exit163

for.body35.i161.2:                                ; preds = %for.body35.i161.1
  %i.1.i159.1 = shl nsw i32 %conv194.i129, 3
  %mul36.i154.2 = add nsw i32 %i.1.i159.1, -24
  %shr37.i155.2 = ashr i32 %sub16.i146, %mul36.i154.2
  %conv39.i156.2 = trunc i32 %shr37.i155.2 to i8
  %inc40.i157.2 = add i32 %index.0114.i136.lcssa, 6
  %arrayidx41.i158.2 = getelementptr i8, ptr %call9.i, i32 %inc40.i157.1
  %42 = ptrtoint ptr %arrayidx41.i158.2 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv39.i156.2, ptr %arrayidx41.i158.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv194.i129)
  %cmp33.i160.2 = icmp sgt i32 %conv194.i129, 3
  br i1 %cmp33.i160.2, label %for.body35.i161.3, label %for.body35.i161.2.encode_asn_tag.exit163_crit_edge

for.body35.i161.2.encode_asn_tag.exit163_crit_edge: ; preds = %for.body35.i161.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %encode_asn_tag.exit163

for.body35.i161.3:                                ; preds = %for.body35.i161.2
  call void @__sanitizer_cov_trace_pc() #8
  %i.1.i159.2 = shl nsw i32 %conv194.i129, 3
  %mul36.i154.3 = add nsw i32 %i.1.i159.2, -32
  %shr37.i155.3 = ashr i32 %sub16.i146, %mul36.i154.3
  %conv39.i156.3 = trunc i32 %shr37.i155.3 to i8
  %inc40.i157.3 = add i32 %index.0114.i136.lcssa, 7
  %arrayidx41.i158.3 = getelementptr i8, ptr %call9.i, i32 %inc40.i157.2
  %43 = ptrtoint ptr %arrayidx41.i158.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv39.i156.3, ptr %arrayidx41.i158.3, align 1
  br label %encode_asn_tag.exit163

encode_asn_tag.exit163:                           ; preds = %for.body35.i161.3, %for.body35.i161.2.encode_asn_tag.exit163_crit_edge, %for.body35.i161.1.encode_asn_tag.exit163_crit_edge, %for.body35.preheader.i151.encode_asn_tag.exit163_crit_edge, %if.end.thread.i126
  %index.3.i162 = phi i32 [ %inc22.i124, %if.end.thread.i126 ], [ %inc40.i157, %for.body35.preheader.i151.encode_asn_tag.exit163_crit_edge ], [ %inc40.i157.1, %for.body35.i161.1.encode_asn_tag.exit163_crit_edge ], [ %inc40.i157.2, %for.body35.i161.2.encode_asn_tag.exit163_crit_edge ], [ %inc40.i157.3, %for.body35.i161.3 ]
  %add.ptr22 = getelementptr i8, ptr %call9.i, i32 %index.3.i162
  %44 = call ptr @memcpy(ptr %add.ptr22, ptr %ntlm_blob, i32 %ntlm_blob_len)
  %45 = ptrtoint ptr %pbuffer to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i, ptr %pbuffer, align 4
  %conv = trunc i32 %add17 to i16
  %46 = ptrtoint ptr %buflen to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv, ptr %buflen, align 2
  br label %cleanup

cleanup:                                          ; preds = %encode_asn_tag.exit163, %compute_asn_hdr_len_bytes.exit58.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %encode_asn_tag.exit163 ], [ -12, %compute_asn_hdr_len_bytes.exit58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @build_spnego_ntlmssp_auth_blob(ptr nocapture noundef writeonly %pbuffer, ptr nocapture noundef writeonly %buflen, i32 noundef %neg_result) local_unnamed_addr #0 align 64 {
compute_asn_hdr_len_bytes.exit:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 9) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %compute_asn_hdr_len_bytes.exit.cleanup_crit_edge, label %encode_asn_tag.exit

compute_asn_hdr_len_bytes.exit.cleanup_crit_edge: ; preds = %compute_asn_hdr_len_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

encode_asn_tag.exit:                              ; preds = %compute_asn_hdr_len_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -95, ptr %call7.i, align 8
  %arrayidx5.i = getelementptr i8, ptr %call7.i, i32 1
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 7, ptr %arrayidx5.i, align 1
  %arrayidx18108.i = getelementptr i8, ptr %call7.i, i32 2
  %3 = ptrtoint ptr %arrayidx18108.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 48, ptr %arrayidx18108.i, align 2
  %arrayidx23.i = getelementptr i8, ptr %call7.i, i32 3
  %4 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %arrayidx23.i, align 1
  %arrayidx.i29 = getelementptr i8, ptr %call7.i, i32 4
  %5 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -96, ptr %arrayidx.i29, align 4
  %arrayidx5.i32 = getelementptr i8, ptr %call7.i, i32 5
  %6 = ptrtoint ptr %arrayidx5.i32 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %arrayidx5.i32, align 1
  %arrayidx18108.i37 = getelementptr i8, ptr %call7.i, i32 6
  %7 = ptrtoint ptr %arrayidx18108.i37 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %arrayidx18108.i37, align 2
  %arrayidx23.i40 = getelementptr i8, ptr %call7.i, i32 7
  %8 = ptrtoint ptr %arrayidx23.i40 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx23.i40, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg_result)
  %tobool7.not = icmp eq i32 %neg_result, 0
  %spec.select = select i1 %tobool7.not, i8 0, i8 2
  %9 = getelementptr i8, ptr %call7.i, i32 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 8
  %11 = ptrtoint ptr %pbuffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %pbuffer, align 4
  %12 = ptrtoint ptr %buflen to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 9, ptr %buflen, align 2
  br label %cleanup

cleanup:                                          ; preds = %encode_asn_tag.exit, %compute_asn_hdr_len_bytes.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %encode_asn_tag.exit ], [ -12, %compute_asn_hdr_len_bytes.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_gssapi_this_mech(ptr nocapture noundef readnone %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call)
  %cmp.not = icmp eq i32 %call, 40
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 50)
  %call1 = call i32 @sprint_oid(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull %buf, i32 noundef 50) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %1 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end7_crit_edge, label %do.end

if.then.do.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %buf) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.then.do.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %do.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sprint_oid(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_neg_token_init_mech_type(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #6
  %switch.tableidx = add i32 %call, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 10
  br i1 %0, label %switch.hole_check, label %entry.if.else9_crit_edge

entry.if.else9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else9

if.else9:                                         ; preds = %switch.hole_check.if.else9_crit_edge, %entry.if.else9_crit_edge
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #6
  %1 = call ptr @memset(ptr %buf, i32 255, i32 50)
  %call10 = call i32 @sprint_oid(ptr noundef %value, i32 noundef %vlen, ptr noundef nonnull %buf, i32 noundef 50) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ksmbd_debug_types to i32))
  %2 = load i32, ptr @ksmbd_debug_types, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else9.do.end16_crit_edge, label %do.end

if.else9.do.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end:                                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %buf) #11
  br label %do.end16

do.end16:                                         ; preds = %do.end, %if.else9.do.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #6
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 519, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.else9_crit_edge, label %switch.lookup

switch.hole_check.if.else9_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else9

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.ksmbd_neg_token_init_mech_type, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %auth_mechs = getelementptr inbounds %struct.ksmbd_conn, ptr %context, i32 0, i32 30
  %5 = ptrtoint ptr %auth_mechs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %auth_mechs, align 8
  %or = or i32 %6, %switch.load
  store i32 %or, ptr %auth_mechs, align 8
  %preferred_auth_mech = getelementptr inbounds %struct.ksmbd_conn, ptr %context, i32 0, i32 31
  %7 = ptrtoint ptr %preferred_auth_mech to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %preferred_auth_mech, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp21 = icmp eq i32 %8, 0
  br i1 %cmp21, label %if.then22, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %preferred_auth_mech to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %switch.load, ptr %preferred_auth_mech, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %switch.lookup.cleanup_crit_edge, %do.end16
  %retval.0 = phi i32 [ -74, %do.end16 ], [ 0, %if.then22 ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_neg_token_init_mech_token(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %vlen, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #9
  %mechToken = getelementptr inbounds %struct.ksmbd_conn, ptr %context, i32 0, i32 37
  %0 = ptrtoint ptr %mechToken to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i, ptr %mechToken, align 8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = call ptr @memcpy(ptr %call9.i, ptr %value, i32 %vlen)
  %2 = ptrtoint ptr %mechToken to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mechToken, align 8
  %arrayidx = getelementptr i8, ptr %3, i32 %vlen
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_neg_token_targ_resp_token(ptr nocapture noundef %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr nocapture noundef readonly %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %vlen, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #9
  %mechToken = getelementptr inbounds %struct.ksmbd_conn, ptr %context, i32 0, i32 37
  %0 = ptrtoint ptr %mechToken to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i, ptr %mechToken, align 8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = call ptr @memcpy(ptr %call9.i, ptr %value, i32 %vlen)
  %2 = ptrtoint ptr %mechToken to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mechToken, align 8
  %arrayidx = getelementptr i8, ptr %3, i32 %vlen
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/asn1.c", i32 172, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ksmbd_gssapi_this_mech._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ksmbd_gssapi_this_mech._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/asn1.c", i32 200, i32 3}
!8 = !{ptr @ksmbd_neg_token_init_mech_type._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ksmbd_neg_token_init_mech_type._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @NTLMSSP_OID_STR, !11, !"NTLMSSP_OID_STR", i1 false, i1 false}
!11 = !{!"../fs/ksmbd/asn1.c", i32 26, i32 13}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
