; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/restrict.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/restrict.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.9 = type { %struct.asymmetric_key_id, [10 x i8] }
%struct.asymmetric_key_id = type { i16, [0 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.7, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.7 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }

@__setup_str_ca_keys_setup = internal constant [9 x i8] c"ca_keys=\00", section ".init.rodata", align 1
@__setup_ca_keys_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ca_keys_setup, ptr @ca_keys_setup, i32 0 }, section ".init.setup", align 4
@key_type_asymmetric = external dso_local global %struct.key_type, align 4
@ca_keyid = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@use_builtin_keys = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"id:\00", [28 x i8] zeroinitializer }, align 32
@cakey = internal global { %struct.anon.9, [20 x i8] } zeroinitializer, align 32
@ca_keys_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ASYM: Missing or invalid ca_keys id\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ca_keys_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"crypto/asymmetric_keys/restrict.c\00", [62 x i8] zeroinitializer }, align 32
@ca_keys_setup._entry_ptr = internal global ptr @ca_keys_setup._entry, section ".printk_index", align 4
@ca_keys_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013ASYM: Unparsable ca_keys id hex string\0A\00", [54 x i8] zeroinitializer }, align 32
@ca_keys_setup._entry_ptr.6 = internal global ptr @ca_keys_setup._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"builtin\00", [24 x i8] zeroinitializer }, align 32
@key_type_keyring = external dso_local global %struct.key_type, align 4
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"ca_keyid\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 16, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"use_builtin_keys\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 29, i32 19 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"cakey\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 22, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 35, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 41, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [37 x i8] c"../crypto/asymmetric_keys/restrict.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 44, i32 25 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__setup_ca_keys_setup, ptr @ca_keys_setup._entry, ptr @ca_keys_setup._entry.4, ptr @ca_keys_setup._entry_ptr, ptr @ca_keys_setup._entry_ptr.6, ptr @ca_keyid, ptr @use_builtin_keys, ptr @.str, ptr @cakey, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_keyid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_builtin_keys to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cakey to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_keys_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca_keys_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ca_keys_setup(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(4) @.str, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.else19

if.then1:                                         ; preds = %if.end
  %call2 = tail call i32 @strlen(ptr noundef nonnull %str) #10
  %0 = add i32 %call2, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %0)
  %1 = icmp ult i32 %0, -20
  br i1 %1, label %do.end, label %if.end7

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %return

if.end7:                                          ; preds = %if.then1
  %sub = add nsw i32 %call2, -3
  %div32 = lshr i32 %sub, 1
  %add.ptr = getelementptr i8, ptr %str, i32 3
  %call8 = tail call i32 @__asymmetric_key_hex_to_key_id(ptr noundef %add.ptr, ptr noundef nonnull @cakey, i32 noundef %div32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.else

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %return

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  store ptr @cakey, ptr @ca_keyid, align 4
  br label %return

if.else19:                                        ; preds = %if.end
  %call20 = tail call i32 @strcmp(ptr noundef nonnull %str, ptr noundef nonnull dereferenceable(8) @.str.7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.else19.return_crit_edge

if.else19.return_crit_edge:                       ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then22:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @use_builtin_keys, align 1
  br label %return

return:                                           ; preds = %if.then22, %if.else19.return_crit_edge, %if.else, %do.end13, %do.end, %entry.return_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @restrict_link_by_signature(ptr nocapture noundef readnone %dest_keyring, ptr noundef readnone %type, ptr nocapture noundef readonly %payload, ptr noundef %trust_keyring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %trust_keyring, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %type, @key_type_asymmetric
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx = getelementptr [4 x ptr], ptr %payload, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %land.lhs.true, label %if.end5.if.end16_crit_edge

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end5
  %arrayidx9 = getelementptr [3 x ptr], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true11, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %arrayidx13 = getelementptr [3 x ptr], ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true11.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  %8 = load ptr, ptr @ca_keyid, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %land.lhs.true18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

land.lhs.true18:                                  ; preds = %if.end16
  %arrayidx20 = getelementptr [3 x ptr], ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx20, align 4
  %call = tail call zeroext i1 @asymmetric_key_id_partial(ptr noundef %10, ptr noundef nonnull %8) #7
  br i1 %call, label %land.lhs.true18.if.end22_crit_edge, label %land.lhs.true18.cleanup_crit_edge

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %arrayidx26 = getelementptr [3 x ptr], ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr [3 x ptr], ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call ptr @find_asymmetric_key(ptr noundef nonnull %trust_keyring, ptr noundef %12, ptr noundef %14, ptr noundef %16, i1 noundef zeroext false) #7
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end22.cleanup_crit_edge, label %if.end32

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %.b55 = load i1, ptr @use_builtin_keys, align 1
  br i1 %.b55, label %land.lhs.true34, label %if.end32.if.else_crit_edge

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true34:                                  ; preds = %if.end32
  %flags = getelementptr inbounds %struct.key, ptr %call29, i32 0, i32 15
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool36.not = icmp eq i32 %19, 0
  br i1 %tobool36.not, label %land.lhs.true34.if.end39_crit_edge, label %land.lhs.true34.if.else_crit_edge

land.lhs.true34.if.else_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true34.if.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true34.if.else_crit_edge, %if.end32.if.else_crit_edge
  %call38 = tail call i32 @verify_signature(ptr noundef %call29, ptr noundef nonnull %1) #7
  br label %if.end39

if.end39:                                         ; preds = %if.else, %land.lhs.true34.if.end39_crit_edge
  %ret.0 = phi i32 [ %call38, %if.else ], [ -126, %land.lhs.true34.if.end39_crit_edge ]
  tail call void @key_put(ptr noundef %call29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end22.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end39 ], [ -126, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -65, %if.end2.cleanup_crit_edge ], [ -126, %land.lhs.true11.cleanup_crit_edge ], [ -1, %land.lhs.true18.cleanup_crit_edge ], [ -126, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_partial(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_asymmetric_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_signature(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @restrict_link_by_key_or_keyring(ptr noundef %dest_keyring, ptr noundef %type, ptr nocapture noundef readonly %payload, ptr noundef %trusted) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @key_or_keyring_common(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trusted, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @key_or_keyring_common(ptr noundef %dest_keyring, ptr noundef readnone %type, ptr nocapture noundef readonly %payload, ptr noundef %trusted, i1 noundef zeroext %check_dest) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dest_keyring, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %type1 = getelementptr inbounds %struct.key, ptr %dest_keyring, i32 0, i32 16, i32 0, i32 2
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type1, align 8
  %cmp.not = icmp eq ptr %1, @key_type_keyring
  br i1 %cmp.not, label %if.end3, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %tobool4.not = icmp eq ptr %trusted, null
  %tobool4.not.not = xor i1 %tobool4.not, true
  %brmerge = or i1 %tobool4.not.not, %check_dest
  br i1 %brmerge, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %cmp8.not = icmp eq ptr %type, @key_type_asymmetric
  br i1 %cmp8.not, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %arrayidx = getelementptr [4 x ptr], ptr %payload, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool15.not = icmp eq ptr %5, null
  br i1 %tobool15.not, label %land.lhs.true16, label %if.end13.if.end25_crit_edge

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true16:                                  ; preds = %if.end13
  %arrayidx18 = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %land.lhs.true20, label %land.lhs.true16.if.end25_crit_edge

land.lhs.true16.if.end25_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %arrayidx22 = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %9, null
  br i1 %tobool23.not, label %land.lhs.true20.cleanup_crit_edge, label %land.lhs.true20.if.end25_crit_edge

land.lhs.true20.if.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true20.if.end25_crit_edge, %land.lhs.true16.if.end25_crit_edge, %if.end13.if.end25_crit_edge
  br i1 %tobool4.not, label %if.end25.if.end94_crit_edge, label %if.then27

if.end25.if.end94_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then27:                                        ; preds = %if.end25
  %type28 = getelementptr inbounds %struct.key, ptr %trusted, i32 0, i32 16, i32 0, i32 2
  %10 = ptrtoint ptr %type28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type28, align 8
  %cmp29 = icmp eq ptr %11, @key_type_keyring
  br i1 %cmp29, label %if.then30, label %if.else40

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx34 = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx36, align 4
  %call = tail call ptr @find_asymmetric_key(ptr noundef nonnull %trusted, ptr noundef %5, ptr noundef %13, ptr noundef %15, i1 noundef zeroext false) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call
  br label %if.end94

if.else40:                                        ; preds = %if.then27
  %cmp42 = icmp eq ptr %11, @key_type_asymmetric
  br i1 %cmp42, label %if.then43, label %if.else40.cleanup_crit_edge

if.else40.cleanup_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.else40
  %arrayidx.i = getelementptr %struct.key, ptr %trusted, i32 0, i32 17, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx50 = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %land.lhs.true48, label %lor.lhs.false

land.lhs.true48:                                  ; preds = %if.then43
  br i1 %tobool51.not, label %if.then52, label %cond.false

if.then52:                                        ; preds = %land.lhs.true48
  %arrayidx53 = getelementptr ptr, ptr %17, i32 2
  %20 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx55, align 4
  %call56 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %21, ptr noundef %23) #7
  br i1 %call56, label %if.then52.if.end112.sink.split_crit_edge, label %if.then52.if.end94_crit_edge

if.then52.if.end94_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then52.if.end112.sink.split_crit_edge:         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.sink.split

lor.lhs.false:                                    ; preds = %if.then43
  br i1 %tobool51.not, label %lor.lhs.false.cond.end_crit_edge, label %if.else77

lor.lhs.false.cond.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.lhs.false.cond.end_crit_edge
  %cond = phi ptr [ %25, %cond.false ], [ %5, %lor.lhs.false.cond.end_crit_edge ]
  %call73 = tail call fastcc zeroext i1 @match_either_id(ptr noundef %17, ptr noundef %cond)
  br i1 %call73, label %cond.end.if.end112.sink.split_crit_edge, label %cond.end.if.end94_crit_edge

cond.end.if.end94_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

cond.end.if.end112.sink.split_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.sink.split

if.else77:                                        ; preds = %lor.lhs.false
  %arrayidx78 = getelementptr ptr, ptr %17, i32 1
  %26 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx78, align 4
  %call81 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %27, ptr noundef nonnull %19) #7
  br i1 %call81, label %land.lhs.true82, label %if.else77.if.end94_crit_edge

if.else77.if.end94_crit_edge:                     ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.lhs.true82:                                  ; preds = %if.else77
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %call85 = tail call fastcc zeroext i1 @match_either_id(ptr noundef %17, ptr noundef %29)
  br i1 %call85, label %land.lhs.true82.if.end112.sink.split_crit_edge, label %land.lhs.true82.if.end94_crit_edge

land.lhs.true82.if.end94_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

land.lhs.true82.if.end112.sink.split_crit_edge:   ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.sink.split

if.end94:                                         ; preds = %land.lhs.true82.if.end94_crit_edge, %if.else77.if.end94_crit_edge, %cond.end.if.end94_crit_edge, %if.then52.if.end94_crit_edge, %if.then30, %if.end25.if.end94_crit_edge
  %key.2 = phi ptr [ null, %if.end25.if.end94_crit_edge ], [ %spec.select, %if.then30 ], [ null, %land.lhs.true82.if.end94_crit_edge ], [ null, %if.else77.if.end94_crit_edge ], [ null, %if.then52.if.end94_crit_edge ], [ null, %cond.end.if.end94_crit_edge ]
  %tobool97.not = icmp eq ptr %key.2, null
  %or.cond = select i1 %check_dest, i1 %tobool97.not, i1 false
  br i1 %or.cond, label %if.then98, label %if.end94.if.end109_crit_edge

if.end94.if.end109_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then98:                                        ; preds = %if.end94
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %arrayidx102 = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx102, align 4
  %arrayidx104 = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx104, align 4
  %call105 = tail call ptr @find_asymmetric_key(ptr noundef nonnull %dest_keyring, ptr noundef %31, ptr noundef %33, ptr noundef %35, i1 noundef zeroext false) #7
  %cmp.i164 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then98.cleanup_crit_edge, label %if.then98.if.end109_crit_edge

if.then98.if.end109_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end109:                                        ; preds = %if.then98.if.end109_crit_edge, %if.end94.if.end109_crit_edge
  %key.3 = phi ptr [ %key.2, %if.end94.if.end109_crit_edge ], [ %call105, %if.then98.if.end109_crit_edge ]
  %tobool110.not = icmp eq ptr %key.3, null
  br i1 %tobool110.not, label %if.end109.cleanup_crit_edge, label %if.end109.if.end112_crit_edge

if.end109.if.end112_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end112.sink.split:                             ; preds = %land.lhs.true82.if.end112.sink.split_crit_edge, %cond.end.if.end112.sink.split_crit_edge, %if.then52.if.end112.sink.split_crit_edge
  %call87 = tail call fastcc ptr @__key_get(ptr noundef nonnull %trusted)
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.end109.if.end112_crit_edge
  %key.3172 = phi ptr [ %key.3, %if.end109.if.end112_crit_edge ], [ %trusted, %if.end112.sink.split ]
  %call113 = tail call i32 @key_validate(ptr noundef nonnull %key.3172) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp eq i32 %call113, 0
  br i1 %cmp114, label %if.then115, label %if.end112.if.end117_crit_edge

if.end112.if.end117_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %call116 = tail call i32 @verify_signature(ptr noundef nonnull %key.3172, ptr noundef nonnull %3) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112.if.end117_crit_edge
  %ret.0 = phi i32 [ %call116, %if.then115 ], [ %call113, %if.end112.if.end117_crit_edge ]
  tail call void @key_put(ptr noundef nonnull %key.3172) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.end109.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %if.else40.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end117 ], [ -126, %entry.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ -126, %if.end3.cleanup_crit_edge ], [ -95, %if.end7.cleanup_crit_edge ], [ -65, %if.end10.cleanup_crit_edge ], [ -126, %land.lhs.true20.cleanup_crit_edge ], [ -95, %if.else40.cleanup_crit_edge ], [ -126, %if.end109.cleanup_crit_edge ], [ -126, %if.then98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @restrict_link_by_key_or_keyring_chain(ptr noundef %dest_keyring, ptr noundef %type, ptr nocapture noundef readonly %payload, ptr noundef %trusted) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @key_or_keyring_common(ptr noundef %dest_keyring, ptr noundef %type, ptr noundef %payload, ptr noundef %trusted, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__asymmetric_key_hex_to_key_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @asymmetric_key_id_same(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__key_get(ptr noundef returned %key) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %key, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %key, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %key, ptr %key, i32 1, ptr elementtype(i32) %key) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !33

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !34

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %key, i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr %key
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @match_either_id(ptr nocapture noundef readonly %pair, ptr noundef %single) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pair, align 4
  %call = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %1, ptr noundef %single) #7
  br i1 %call, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1 = getelementptr ptr, ptr %pair, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %call2 = tail call zeroext i1 @asymmetric_key_id_same(ptr noundef %3, ptr noundef %single) #7
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %call2, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__setup_ca_keys_setup, !1, !"__setup_ca_keys_setup", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/restrict.c", i32 50, i32 1}
!2 = distinct !{null, !3, !"use_builtin_keys", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/restrict.c", i32 15, i32 13}
!4 = !{ptr @ca_keyid, !5, !"ca_keyid", i1 false, i1 false}
!5 = !{!"../crypto/asymmetric_keys/restrict.c", i32 16, i32 34}
!6 = !{ptr @__setup_str_ca_keys_setup, !1, !"__setup_str_ca_keys_setup", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../crypto/asymmetric_keys/restrict.c", i32 29, i32 19}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../crypto/asymmetric_keys/restrict.c", i32 35, i32 4}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ca_keys_setup._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @ca_keys_setup._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../crypto/asymmetric_keys/restrict.c", i32 41, i32 4}
!17 = !{ptr @ca_keys_setup._entry.4, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ca_keys_setup._entry_ptr.6, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/asymmetric_keys/restrict.c", i32 44, i32 25}
!21 = !{ptr @cakey, !22, !"cakey", i1 false, i1 false}
!22 = !{!"../crypto/asymmetric_keys/restrict.c", i32 22, i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2148348144, i64 2148348176, i64 2148348205, i64 2148348239, i64 2148348270, i64 2148348293}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{!"branch_weights", i32 2000, i32 1}
