; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_gss/gss_krb5_keys.c_pt.bc'
source_filename = "../net/sunrpc/auth_gss/gss_krb5_keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_krb5_enctype = type { i32, i32, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@krb5_derive_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: got %d from mk_key function for '%s'\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"krb5_derive_key\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/sunrpc/auth_gss/gss_krb5_keys.c\00", [60 x i8] zeroinitializer }, align 32
@krb5_derive_key._entry_ptr = internal global ptr @krb5_derive_key._entry, section ".printk_index", align 4
@gss_krb5_des3_make_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: key->len is %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gss_krb5_des3_make_key\00", [41 x i8] zeroinitializer }, align 32
@gss_krb5_des3_make_key._entry_ptr = internal global ptr @gss_krb5_des3_make_key._entry, section ".printk_index", align 4
@gss_krb5_des3_make_key._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: randombits->len is %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gss_krb5_des3_make_key._entry_ptr.7 = internal global ptr @gss_krb5_des3_make_key._entry.5, section ".printk_index", align 4
@gss_krb5_aes_make_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.8, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gss_krb5_aes_make_key\00", [42 x i8] zeroinitializer }, align 32
@gss_krb5_aes_make_key._entry_ptr = internal global ptr @gss_krb5_aes_make_key._entry, section ".printk_index", align 4
@gss_krb5_aes_make_key._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gss_krb5_aes_make_key._entry_ptr.10 = internal global ptr @gss_krb5_aes_make_key._entry.9, section ".printk_index", align 4
@gss_krb5_aes_make_key._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: randombits->len is %d, key->len is %d\0A\00", [53 x i8] zeroinitializer }, align 32
@gss_krb5_aes_make_key._entry_ptr.13 = internal global ptr @gss_krb5_aes_make_key._entry.11, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 221, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 266, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 270, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 305, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 309, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [39 x i8] c"../net/sunrpc/auth_gss/gss_krb5_keys.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 314, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @gss_krb5_aes_make_key._entry, ptr @gss_krb5_aes_make_key._entry.11, ptr @gss_krb5_aes_make_key._entry.9, ptr @gss_krb5_aes_make_key._entry_ptr, ptr @gss_krb5_aes_make_key._entry_ptr.10, ptr @gss_krb5_aes_make_key._entry_ptr.13, ptr @gss_krb5_des3_make_key._entry, ptr @gss_krb5_des3_make_key._entry.5, ptr @gss_krb5_des3_make_key._entry_ptr, ptr @gss_krb5_des3_make_key._entry_ptr.7, ptr @krb5_derive_key._entry, ptr @krb5_derive_key._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @krb5_derive_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_krb5_des3_make_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_krb5_des3_make_key._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_krb5_aes_make_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_krb5_aes_make_key._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gss_krb5_aes_make_key._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @krb5_derive_key(ptr noundef %gk5e, ptr nocapture noundef readonly %inkey, ptr noundef %outkey, ptr nocapture noundef readonly %in_constant, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  %inblock = alloca %struct.xdr_netobj, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inblock) #7
  %0 = ptrtoint ptr %inblock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %inblock, align 4, !annotation !35
  %1 = getelementptr inbounds %struct.xdr_netobj, ptr %inblock, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !35
  %blocksize1 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %gk5e, i32 0, i32 7
  %3 = ptrtoint ptr %blocksize1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blocksize1, align 4
  %keybytes2 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %gk5e, i32 0, i32 11
  %5 = ptrtoint ptr %keybytes2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keybytes2, align 4
  %keylength3 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %gk5e, i32 0, i32 12
  %7 = ptrtoint ptr %keylength3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keylength3, align 4
  %9 = ptrtoint ptr %inkey to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inkey, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not = icmp eq i32 %10, %8
  br i1 %cmp.not, label %lor.lhs.false, label %entry.err_return_crit_edge

entry.err_return_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_return

lor.lhs.false:                                    ; preds = %entry
  %11 = ptrtoint ptr %outkey to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %outkey, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp5.not = icmp eq i32 %12, %8
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.err_return_crit_edge

lor.lhs.false.err_return_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_return

if.end:                                           ; preds = %lor.lhs.false
  %encrypt_name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %gk5e, i32 0, i32 3
  %13 = ptrtoint ptr %encrypt_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encrypt_name, align 4
  %call = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef %14, i32 noundef 0, i32 noundef 0) #7
  %cmp.i227 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.end.err_return_crit_edge, label %if.end8

if.end.err_return_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_return

if.end8:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %inkey, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %inkey to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inkey, align 4
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %call, ptr noundef %16, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %kmalloc.exit.thread234, label %if.end8.err_return_crit_edge

if.end8.err_return_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_return

kmalloc.exit.thread234:                           ; preds = %if.end8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef %gfp_mask) #10
  %cmp14236 = icmp eq ptr %call9.i, null
  br i1 %cmp14236, label %kmalloc.exit.thread234.err_free_cipher_crit_edge, label %if.end8.i184

kmalloc.exit.thread234.err_free_cipher_crit_edge: ; preds = %kmalloc.exit.thread234
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_cipher

if.end8.i184:                                     ; preds = %kmalloc.exit.thread234
  %call9.i183 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef %gfp_mask) #10
  %cmp18 = icmp eq ptr %call9.i183, null
  br i1 %cmp18, label %if.end8.i184.err_free_in_crit_edge, label %if.end8.i224

if.end8.i184.err_free_in_crit_edge:               ; preds = %if.end8.i184
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_in

if.end8.i224:                                     ; preds = %if.end8.i184
  %call9.i223 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef %gfp_mask) #10
  %cmp22 = icmp eq ptr %call9.i223, null
  br i1 %cmp22, label %if.end8.i224.err_free_out_crit_edge, label %if.end24

if.end8.i224.err_free_out_crit_edge:              ; preds = %if.end8.i224
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_out

if.end24:                                         ; preds = %if.end8.i224
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i, ptr %1, align 4
  %20 = ptrtoint ptr %inblock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %4, ptr %inblock, align 4
  %21 = ptrtoint ptr %in_constant to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_constant, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %4)
  %cmp31 = icmp eq i32 %22, %4
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %data34 = getelementptr inbounds %struct.xdr_netobj, ptr %in_constant, i32 0, i32 1
  %23 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data34, align 4
  %25 = call ptr @memcpy(ptr %call9.i, ptr %24, i32 %4)
  br label %if.end41

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %22, 3
  %data37 = getelementptr inbounds %struct.xdr_netobj, ptr %in_constant, i32 0, i32 1
  %26 = ptrtoint ptr %data37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data37, align 4
  %mul39 = shl i32 %4, 3
  tail call fastcc void @krb5_nfold(i32 noundef %mul, ptr noundef %27, i32 noundef %mul39, ptr noundef nonnull %call9.i)
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp42256.not = icmp eq i32 %6, 0
  br i1 %cmp42256.not, label %if.end41.while.end_crit_edge, label %while.body.lr.ph

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end41
  %encrypt = getelementptr inbounds %struct.gss_krb5_enctype, ptr %gk5e, i32 0, i32 13
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %inblock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %inblock, align 4
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %while.body.lr.ph
  %n.0257 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end52.while.body_crit_edge ]
  %32 = ptrtoint ptr %encrypt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %encrypt, align 4
  %call46 = tail call i32 %33(ptr noundef %call, ptr noundef null, ptr noundef %29, ptr noundef nonnull %call9.i183, i32 noundef %31) #7
  %sub = sub i32 %6, %n.0257
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp48.not = icmp ugt i32 %sub, %4
  %add.ptr53 = getelementptr i8, ptr %call9.i223, i32 %n.0257
  br i1 %cmp48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %34 = call ptr @memcpy(ptr %add.ptr53, ptr %call9.i183, i32 %sub)
  br label %while.end

if.end52:                                         ; preds = %while.body
  %35 = call ptr @memcpy(ptr %add.ptr53, ptr %call9.i183, i32 %4)
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = call ptr @memcpy(ptr %37, ptr %call9.i183, i32 %4)
  %add = add i32 %n.0257, %4
  %cmp42 = icmp ugt i32 %6, %add
  br i1 %cmp42, label %if.end52.while.body_crit_edge, label %if.end52.while.end_crit_edge

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %if.then49, %if.end41.while.end_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i223, ptr %1, align 4
  %40 = ptrtoint ptr %inblock to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %6, ptr %inblock, align 4
  %mk_key = getelementptr inbounds %struct.gss_krb5_enctype, ptr %gk5e, i32 0, i32 15
  %41 = ptrtoint ptr %mk_key to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mk_key, align 4
  %cmp62 = icmp eq ptr %42, null
  br i1 %cmp62, label %do.body66, label %do.end72, !prof !36

do.body66:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/auth_gss/gss_krb5_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

do.end72:                                         ; preds = %while.end
  %call74 = call i32 %42(ptr noundef %gk5e, ptr noundef nonnull %inblock, ptr noundef %outkey) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.end72.err_free_raw_crit_edge, label %do.body77

do.end72.err_free_raw_crit_edge:                  ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_raw

do.body77:                                        ; preds = %do.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %43 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  br i1 %tobool78.not, label %do.body77.err_free_raw_crit_edge, label %do.end88, !prof !38

do.body77.err_free_raw_crit_edge:                 ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_raw

do.end88:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %encrypt_name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %encrypt_name, align 4
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call74, ptr noundef %45) #11
  br label %err_free_raw

err_free_raw:                                     ; preds = %do.end88, %do.body77.err_free_raw_crit_edge, %do.end72.err_free_raw_crit_edge
  call void @kfree_sensitive(ptr noundef nonnull %call9.i223) #7
  br label %err_free_out

err_free_out:                                     ; preds = %err_free_raw, %if.end8.i224.err_free_out_crit_edge
  %ret.1 = phi i32 [ 12, %if.end8.i224.err_free_out_crit_edge ], [ %call74, %err_free_raw ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i183) #7
  br label %err_free_in

err_free_in:                                      ; preds = %err_free_out, %if.end8.i184.err_free_in_crit_edge
  %ret.2 = phi i32 [ 12, %if.end8.i184.err_free_in_crit_edge ], [ %ret.1, %err_free_out ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i) #7
  br label %err_free_cipher

err_free_cipher:                                  ; preds = %err_free_in, %kmalloc.exit.thread234.err_free_cipher_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_free_in ], [ 12, %kmalloc.exit.thread234.err_free_cipher_crit_edge ]
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i.i) #7
  br label %err_return

err_return:                                       ; preds = %err_free_cipher, %if.end8.err_return_crit_edge, %if.end.err_return_crit_edge, %lor.lhs.false.err_return_crit_edge, %entry.err_return_crit_edge
  %ret.4 = phi i32 [ 22, %entry.err_return_crit_edge ], [ 22, %lor.lhs.false.err_return_crit_edge ], [ 22, %if.end.err_return_crit_edge ], [ 22, %if.end8.err_return_crit_edge ], [ %ret.3, %err_free_cipher ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inblock) #7
  ret i32 %ret.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @krb5_nfold(i32 noundef %inbits, ptr nocapture noundef readonly %in, i32 noundef %outbits, ptr nocapture noundef %out) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %inbits, 3
  %shr1 = lshr i32 %outbits, 3
  %call = tail call i32 @lcm(i32 noundef %shr, i32 noundef %shr1) #12
  %0 = call ptr @memset(ptr %out, i32 0, i32 %shr1)
  %i.087 = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.087)
  %cmp88 = icmp sgt i32 %i.087, -1
  br i1 %cmp88, label %for.body.lr.ph, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %shl = and i32 %inbits, -8
  %sub2 = add i32 %shl, -1
  %add = add i32 %shl, 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ %i.087, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %byte.089 = phi i32 [ 0, %for.body.lr.ph ], [ %shr32, %for.body.for.body_crit_edge ]
  %i.090.frozen = freeze i32 %i.090
  %div = udiv i32 %i.090.frozen, %shr
  %mul = mul i32 %div, %add
  %add4 = add i32 %sub2, %mul
  %1 = mul i32 %div, %shr
  %rem.decomposed = sub i32 %i.090.frozen, %1
  %sub5 = sub nsw i32 %shr, %rem.decomposed
  %shl6 = shl i32 %sub5, 3
  %add7 = add i32 %add4, %shl6
  %rem9 = urem i32 %add7, %shl
  %shr11 = ashr i32 %rem9, 3
  %2 = xor i32 %shr11, -1
  %sub12 = add nsw i32 %shr, %2
  %rem13 = urem i32 %sub12, %shr
  %arrayidx = getelementptr i8, ptr %in, i32 %rem13
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shl14 = shl nuw nsw i32 %conv, 8
  %sub16 = sub nsw i32 %shr, %shr11
  %rem17 = urem i32 %sub16, %shr
  %arrayidx18 = getelementptr i8, ptr %in, i32 %rem17
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %6 to i32
  %or = or i32 %shl14, %conv19
  %and = and i32 %rem9, 7
  %add20 = add nuw nsw i32 %and, 1
  %shr21 = lshr i32 %or, %add20
  %and22 = and i32 %shr21, 255
  %rem24 = urem i32 %i.090, %shr1
  %arrayidx25 = getelementptr i8, ptr %out, i32 %rem24
  %7 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %8 to i32
  %add23 = add nsw i32 %byte.089, %conv26
  %add27 = add nsw i32 %add23, %and22
  %conv29 = trunc i32 %add27 to i8
  store i8 %conv29, ptr %arrayidx25, align 1
  %shr32 = ashr i32 %add27, 8
  %i.0 = add nsw i32 %i.090, -1
  %cmp = icmp sgt i32 %i.090, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add27)
  %phi.cmp = icmp ugt i32 %add27, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %outbits)
  %cmp3592 = icmp ugt i32 %outbits, 7
  %or.cond = and i1 %phi.cmp, %cmp3592
  br i1 %or.cond, label %for.end.for.body37_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end.for.body37_crit_edge:                     ; preds = %for.end
  br label %for.body37

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.end.for.body37_crit_edge
  %i.194.in = phi i32 [ %i.194, %for.body37.for.body37_crit_edge ], [ %shr1, %for.end.for.body37_crit_edge ]
  %byte.193 = phi i32 [ %shr44, %for.body37.for.body37_crit_edge ], [ 1, %for.end.for.body37_crit_edge ]
  %i.194 = add nsw i32 %i.194.in, -1
  %arrayidx38 = getelementptr i8, ptr %out, i32 %i.194
  %9 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %10 to i32
  %add40 = add nsw i32 %byte.193, %conv39
  %conv42 = trunc i32 %add40 to i8
  store i8 %conv42, ptr %arrayidx38, align 1
  %shr44 = ashr i32 %add40, 8
  %cmp35 = icmp sgt i32 %i.194.in, 1
  br i1 %cmp35, label %for.body37.for.body37_crit_edge, label %for.body37.if.end_crit_edge

for.body37.if.end_crit_edge:                      ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37

if.end:                                           ; preds = %for.body37.if.end_crit_edge, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_krb5_des3_make_key(ptr nocapture noundef readnone %gk5e, ptr nocapture noundef readonly %randombits, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp.not = icmp eq i32 %1, 24
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %2 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.err_out_crit_edge, label %do.end, !prof !38

do.body.err_out_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %1) #11
  br label %err_out

if.end8:                                          ; preds = %entry
  %3 = ptrtoint ptr %randombits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %randombits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %4)
  %cmp10.not = icmp eq i32 %4, 21
  br i1 %cmp10.not, label %for.cond.preheader, label %do.body12

for.cond.preheader:                               ; preds = %if.end8
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %key, i32 0, i32 1
  %data33 = getelementptr inbounds %struct.xdr_netobj, ptr %randombits, i32 0, i32 1
  br label %for.body

do.body12:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and13 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body12.err_out_crit_edge, label %do.end24, !prof !38

do.body12.err_out_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

do.end24:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %4) #11
  br label %err_out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0125 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %mul = shl i32 %i.0125, 3
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %8 = ptrtoint ptr %data33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data33, align 4
  %mul34 = mul nuw nsw i32 %i.0125, 7
  %add.ptr35 = getelementptr i8, ptr %9, i32 %mul34
  %10 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr35, i32 7)
  %11 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %mul
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = shl i8 %13, 1
  %15 = and i8 %14, 2
  %add = or i32 %mul, 1
  %arrayidx41 = getelementptr i8, ptr %11, i32 %add
  %16 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx41, align 1
  %18 = shl i8 %17, 2
  %19 = and i8 %18, 4
  %or119 = or i8 %19, %15
  %add47 = or i32 %mul, 2
  %arrayidx48 = getelementptr i8, ptr %11, i32 %add47
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx48, align 1
  %22 = shl i8 %21, 3
  %23 = and i8 %22, 8
  %or52120 = or i8 %or119, %23
  %add55 = or i32 %mul, 3
  %arrayidx56 = getelementptr i8, ptr %11, i32 %add55
  %24 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx56, align 1
  %26 = shl i8 %25, 4
  %27 = and i8 %26, 16
  %or60121 = or i8 %or52120, %27
  %add63 = or i32 %mul, 4
  %arrayidx64 = getelementptr i8, ptr %11, i32 %add63
  %28 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx64, align 1
  %30 = shl i8 %29, 5
  %31 = and i8 %30, 32
  %or68122 = or i8 %or60121, %31
  %add71 = or i32 %mul, 5
  %arrayidx72 = getelementptr i8, ptr %11, i32 %add71
  %32 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx72, align 1
  %34 = shl i8 %33, 6
  %35 = and i8 %34, 64
  %or76123 = or i8 %or68122, %35
  %add79 = or i32 %mul, 6
  %arrayidx80 = getelementptr i8, ptr %11, i32 %add79
  %36 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx80, align 1
  %38 = shl i8 %37, 7
  %or84124 = or i8 %or76123, %38
  %add88 = or i32 %mul, 7
  %arrayidx89 = getelementptr i8, ptr %11, i32 %add88
  %39 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %or84124, ptr %arrayidx89, align 1
  %40 = load ptr, ptr %data, align 4
  %add.ptr92 = getelementptr i8, ptr %40, i32 %mul
  %41 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr92, align 1
  %43 = and i8 %42, -2
  %conv3.i = zext i8 %43 to i32
  %and4.i = and i32 %conv3.i, 14
  %44 = lshr i32 %conv3.i, 4
  %xor.i = xor i32 %and4.i, %44
  %and8.i = and i32 %xor.i, 3
  %45 = lshr i32 %xor.i, 2
  %xor19.i = xor i32 %and8.i, %45
  %46 = lshr i32 %xor19.i, 1
  %xor19.masked.i = and i32 %xor19.i, 1
  %xor43.i = xor i32 %xor19.masked.i, %46
  %47 = trunc i32 %xor43.i to i8
  %48 = or i8 %43, %47
  %conv47.i = xor i8 %48, 1
  store i8 %conv47.i, ptr %add.ptr92, align 1
  %arrayidx.1.i = getelementptr i8, ptr %add.ptr92, i32 1
  %49 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.1.i, align 1
  %51 = and i8 %50, -2
  %conv3.1.i = zext i8 %51 to i32
  %and4.1.i = and i32 %conv3.1.i, 14
  %52 = lshr i32 %conv3.1.i, 4
  %xor.1.i = xor i32 %and4.1.i, %52
  %and8.1.i = and i32 %xor.1.i, 3
  %53 = lshr i32 %xor.1.i, 2
  %xor19.1.i = xor i32 %and8.1.i, %53
  %54 = lshr i32 %xor19.1.i, 1
  %xor19.masked.1.i = and i32 %xor19.1.i, 1
  %xor43.1.i = xor i32 %xor19.masked.1.i, %54
  %55 = trunc i32 %xor43.1.i to i8
  %56 = or i8 %51, %55
  %conv47.1.i = xor i8 %56, 1
  store i8 %conv47.1.i, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %add.ptr92, i32 2
  %57 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.2.i, align 1
  %59 = and i8 %58, -2
  %conv3.2.i = zext i8 %59 to i32
  %and4.2.i = and i32 %conv3.2.i, 14
  %60 = lshr i32 %conv3.2.i, 4
  %xor.2.i = xor i32 %and4.2.i, %60
  %and8.2.i = and i32 %xor.2.i, 3
  %61 = lshr i32 %xor.2.i, 2
  %xor19.2.i = xor i32 %and8.2.i, %61
  %62 = lshr i32 %xor19.2.i, 1
  %xor19.masked.2.i = and i32 %xor19.2.i, 1
  %xor43.2.i = xor i32 %xor19.masked.2.i, %62
  %63 = trunc i32 %xor43.2.i to i8
  %64 = or i8 %59, %63
  %conv47.2.i = xor i8 %64, 1
  store i8 %conv47.2.i, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %add.ptr92, i32 3
  %65 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.3.i, align 1
  %67 = and i8 %66, -2
  %conv3.3.i = zext i8 %67 to i32
  %and4.3.i = and i32 %conv3.3.i, 14
  %68 = lshr i32 %conv3.3.i, 4
  %xor.3.i = xor i32 %and4.3.i, %68
  %and8.3.i = and i32 %xor.3.i, 3
  %69 = lshr i32 %xor.3.i, 2
  %xor19.3.i = xor i32 %and8.3.i, %69
  %70 = lshr i32 %xor19.3.i, 1
  %xor19.masked.3.i = and i32 %xor19.3.i, 1
  %xor43.3.i = xor i32 %xor19.masked.3.i, %70
  %71 = trunc i32 %xor43.3.i to i8
  %72 = or i8 %67, %71
  %conv47.3.i = xor i8 %72, 1
  store i8 %conv47.3.i, ptr %arrayidx.3.i, align 1
  %arrayidx.4.i = getelementptr i8, ptr %add.ptr92, i32 4
  %73 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.4.i, align 1
  %75 = and i8 %74, -2
  %conv3.4.i = zext i8 %75 to i32
  %and4.4.i = and i32 %conv3.4.i, 14
  %76 = lshr i32 %conv3.4.i, 4
  %xor.4.i = xor i32 %and4.4.i, %76
  %and8.4.i = and i32 %xor.4.i, 3
  %77 = lshr i32 %xor.4.i, 2
  %xor19.4.i = xor i32 %and8.4.i, %77
  %78 = lshr i32 %xor19.4.i, 1
  %xor19.masked.4.i = and i32 %xor19.4.i, 1
  %xor43.4.i = xor i32 %xor19.masked.4.i, %78
  %79 = trunc i32 %xor43.4.i to i8
  %80 = or i8 %75, %79
  %conv47.4.i = xor i8 %80, 1
  store i8 %conv47.4.i, ptr %arrayidx.4.i, align 1
  %arrayidx.5.i = getelementptr i8, ptr %add.ptr92, i32 5
  %81 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.5.i, align 1
  %83 = and i8 %82, -2
  %conv3.5.i = zext i8 %83 to i32
  %and4.5.i = and i32 %conv3.5.i, 14
  %84 = lshr i32 %conv3.5.i, 4
  %xor.5.i = xor i32 %and4.5.i, %84
  %and8.5.i = and i32 %xor.5.i, 3
  %85 = lshr i32 %xor.5.i, 2
  %xor19.5.i = xor i32 %and8.5.i, %85
  %86 = lshr i32 %xor19.5.i, 1
  %xor19.masked.5.i = and i32 %xor19.5.i, 1
  %xor43.5.i = xor i32 %xor19.masked.5.i, %86
  %87 = trunc i32 %xor43.5.i to i8
  %88 = or i8 %83, %87
  %conv47.5.i = xor i8 %88, 1
  store i8 %conv47.5.i, ptr %arrayidx.5.i, align 1
  %arrayidx.6.i = getelementptr i8, ptr %add.ptr92, i32 6
  %89 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.6.i, align 1
  %91 = and i8 %90, -2
  %conv3.6.i = zext i8 %91 to i32
  %and4.6.i = and i32 %conv3.6.i, 14
  %92 = lshr i32 %conv3.6.i, 4
  %xor.6.i = xor i32 %and4.6.i, %92
  %and8.6.i = and i32 %xor.6.i, 3
  %93 = lshr i32 %xor.6.i, 2
  %xor19.6.i = xor i32 %and8.6.i, %93
  %94 = lshr i32 %xor19.6.i, 1
  %xor19.masked.6.i = and i32 %xor19.6.i, 1
  %xor43.6.i = xor i32 %xor19.masked.6.i, %94
  %95 = trunc i32 %xor43.6.i to i8
  %96 = or i8 %91, %95
  %conv47.6.i = xor i8 %96, 1
  store i8 %conv47.6.i, ptr %arrayidx.6.i, align 1
  %arrayidx.7.i = getelementptr i8, ptr %add.ptr92, i32 7
  %97 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.7.i, align 1
  %99 = and i8 %98, -2
  %conv3.7.i = zext i8 %99 to i32
  %and4.7.i = and i32 %conv3.7.i, 14
  %100 = lshr i32 %conv3.7.i, 4
  %xor.7.i = xor i32 %and4.7.i, %100
  %and8.7.i = and i32 %xor.7.i, 3
  %101 = lshr i32 %xor.7.i, 2
  %xor19.7.i = xor i32 %and8.7.i, %101
  %102 = lshr i32 %xor19.7.i, 1
  %xor19.masked.7.i = and i32 %xor19.7.i, 1
  %xor43.7.i = xor i32 %xor19.masked.7.i, %102
  %103 = trunc i32 %xor43.7.i to i8
  %104 = or i8 %99, %103
  %conv47.7.i = xor i8 %104, 1
  store i8 %conv47.7.i, ptr %arrayidx.7.i, align 1
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.body.err_out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

err_out:                                          ; preds = %for.body.err_out_crit_edge, %do.end24, %do.body12.err_out_crit_edge, %do.end, %do.body.err_out_crit_edge
  %ret.0 = phi i32 [ 22, %do.end ], [ 22, %do.body.err_out_crit_edge ], [ 22, %do.end24 ], [ 22, %do.body12.err_out_crit_edge ], [ 0, %for.body.err_out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gss_krb5_aes_make_key(ptr nocapture noundef readnone %gk5e, ptr nocapture noundef readonly %randombits, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 16, label %entry.if.end10_crit_edge
    i32 32, label %entry.if.end10_crit_edge78
  ]

entry.if.end10_crit_edge78:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %3 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.err_out_crit_edge, label %do.end, !prof !38

do.body.err_out_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef %1) #11
  br label %err_out

if.end10:                                         ; preds = %entry.if.end10_crit_edge, %entry.if.end10_crit_edge78
  %4 = ptrtoint ptr %randombits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %randombits, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %5, label %do.body17 [
    i32 16, label %if.end10.if.end36_crit_edge
    i32 32, label %if.end10.if.end36_crit_edge79
  ]

if.end10.if.end36_crit_edge79:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.body17:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %7 = load i32, ptr @rpc_debug, align 4
  %and18 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.err_out_crit_edge, label %do.end29, !prof !38

do.body17.err_out_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

do.end29:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %5) #11
  br label %err_out

if.end36:                                         ; preds = %if.end10.if.end36_crit_edge, %if.end10.if.end36_crit_edge79
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp39.not = icmp eq i32 %5, %1
  br i1 %cmp39.not, label %if.end61, label %do.body41

do.body41:                                        ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %8 = load i32, ptr @rpc_debug, align 4
  %and42 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.err_out_crit_edge, label %do.end53, !prof !38

do.body41.err_out_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

do.end53:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8, i32 noundef %5, i32 noundef %1) #11
  br label %err_out

if.end61:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %data62 = getelementptr inbounds %struct.xdr_netobj, ptr %randombits, i32 0, i32 1
  %11 = ptrtoint ptr %data62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data62, align 4
  %13 = call ptr @memcpy(ptr %10, ptr %12, i32 %1)
  br label %err_out

err_out:                                          ; preds = %if.end61, %do.end53, %do.body41.err_out_crit_edge, %do.end29, %do.body17.err_out_crit_edge, %do.end, %do.body.err_out_crit_edge
  %ret.0 = phi i32 [ 22, %do.end ], [ 22, %do.body.err_out_crit_edge ], [ 22, %do.end29 ], [ 22, %do.body17.err_out_crit_edge ], [ 22, %do.end53 ], [ 22, %do.body41.err_out_crit_edge ], [ 0, %if.end61 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_gss/gss_krb5_keys.c", i32 221, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @krb5_derive_key._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @krb5_derive_key._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_gss/gss_krb5_keys.c", i32 266, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @gss_krb5_des3_make_key._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @gss_krb5_des3_make_key._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/sunrpc/auth_gss/gss_krb5_keys.c", i32 270, i32 3}
!13 = !{ptr @gss_krb5_des3_make_key._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @gss_krb5_des3_make_key._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/sunrpc/auth_gss/gss_krb5_keys.c", i32 305, i32 3}
!17 = !{ptr @gss_krb5_aes_make_key._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @gss_krb5_aes_make_key._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @gss_krb5_aes_make_key._entry.9, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../net/sunrpc/auth_gss/gss_krb5_keys.c", i32 309, i32 3}
!21 = !{ptr @gss_krb5_aes_make_key._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sunrpc/auth_gss/gss_krb5_keys.c", i32 314, i32 3}
!24 = !{ptr @gss_krb5_aes_make_key._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @gss_krb5_aes_make_key._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2155084784, i64 2155085284, i64 2155084821, i64 2155084877, i64 2155084911, i64 2155084935, i64 2155084976, i64 2155084997, i64 2155085025, i64 2155085059}
!38 = !{!"branch_weights", i32 2000, i32 1}
